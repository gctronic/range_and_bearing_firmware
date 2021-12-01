/*
* REVISION HISTORY:
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* Author            	Date      Comments on this revision
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* Alvaro Gutierrez		09/02/2007	  First release of source file
*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
* ADDITIONAL NOTES: 
* Code For the Epuck Range and Bearing Board
**********************************************************************/
#include "PWMEmission.h"
#include "ports.h"
#include "queue.h"
#include "stdlib.h"
#include "SPIMasterDrv.h"

#define CARRIER_455_KHZ 0
#define CARRIER_57_6_KHZ 1

char FrameToSend = FALSE;
int bufferIndex = 0;
unsigned int bufferEmission[FRAME_BITS];
unsigned char curr_carrier = CARRIER_455_KHZ;
unsigned char pause_between_carriers = 0;
unsigned char change_carrier = 0;
extern uint8_t tx_power;
uint16_t tx_power_temp;

queue queueEmission;

long int FramesCounter=0;

/* Counter for the CSMA*/ 
int CSMAcounter = 0;

void init_PWM( void ){
	// Initialize and enable Timer2 to generate the carrier frequency.
	T2CONbits.TON = 0; // Disable Timer
	T2CONbits.TCS = 0; // Select internal instruction cycle clock
	T2CONbits.TGATE = 0; // Disable Gated Timer mode
	TMR2 = 0x00; // Clear timer register
    T2CONbits.TCKPS = 0; // Select 1:1 Prescaler
	
	/* Fosc = 80MHz (see "ports.c") => Tosc = 12.5 ns => Tcy = 25ns
	 * Tpwm = (PR2 + 1) * Tcy * Preescaler 
     * Prescaler = 1
     * => PR2 = Tpwm / Tcy - 1
     * PWMresolution(bits) = log10(Fcy/Fpwm)/log10(2)
	 * PWMresolution = 5.46 bits
     * 
     * For Fpwm = 455KHz => Tpwm = 2.1978us
     * PR2 = 2197.8/25 - 1 = 87
     * To actually get 455 KHz we need to set PR2=89, so a more precise Tcy is:
     * 2197.8/(89+1) = 24.42 ns
	 * DutyCycle 50%:
	 * PR2 = 89 --> OC1R and OC1RS = 44
     * 
     * For Fpwm = 56 KHz => Tpwm = 17.857 us
     * PR2 = 17857/24.42 - 1 = 730
     * OC1R = OC1RS = 365
     * 
     * For Fpwm = 57.6 KHz => Tpwm = 17361 ns
     * PR2 = 17361/24.42 - 1 = 710
     * OC1R = OC1RS = 355
     * 
     * */

    OC1CONbits.OCM = 0; // Disable Output Compare Module
    // 455 KHz
	PR2 = 89;	
	OC1R = 44;
	OC1RS = 44;

    // 56 KHz
    //PR2 = 730;
	//OC1R = 365;
    //OC1RS = 365;

    // 57.6 KHz
    //PR2 = 710;
	//OC1R = 355;
    //OC1RS = 355;
    
	OC1CONbits.OCTSEL = 0; // Select Timer 2 as output compare time base
	OC1CONbits.OCM = 0b110; // Select the Output Compare mode	
	
	IPC1bits.T2IP = 5; // Set Timer 2 Interrupt Priority Level
	IFS0bits.T2IF = 0; // Clear Timer 2 Interrupt Flag
	IEC0bits.T2IE = 0; // Disable Timer 2 interrupt
	T2CONbits.TON = 1; // Start Timer

	init_queue(&queueEmission);
}

void init_T1( void ){
    // Initialize and enable Timer1 to generate data communication frequency.
	/* Timer 1 reset */
	T1CONbits.TON = 0;
	/* Select internal clock */
	T1CONbits.TCS = 0;
	/* Disable Gated Timer mode*/
	T1CONbits.TGATE = 0; 
	/* Set Timer1 interrupt priority to 4 */
	IPC0bits.T1IP = 4;
	/* Reset Timer1 interrupt flag */
	IFS0bits.T1IF = 0;
	/* Enable Timer1 interrupt */
	IEC0bits.T1IE = 1;
	
	T1CONbits.TCKPS = 0; //Preescaler 1:1
    TMR1=  0x0000; 
    
	/* Tcy = 25 ns
     * PR1 = Tirdata / Tcy
     * 
     * When using 455 KHz receivers, the bit frequency is 100 us, this results in a theoretical throughput of 5 kbps (Manchester encoding).
	 * Fpwm data = 10 KHz => Tirdata = 100 us
	 * PR1 = 100000/25 = 4000
     * 
     * When using 57.6 KHz receivers, we neeed to reduce a bit the bit frequency to 140 us (accordingly to specifications), this results in a theoretical throughput of about 3.57 kbps (Manchester encoding).
	 * Tirdata = 140 us
	 * PR1 = 140000/24.42 = 5733
     * 
     *  */
	PR1 = 4000;
    //PR1 = 5733;
    
	/* Enable Timer1 and start the counter */
	T1CONbits.TON = 1;      
	
}

void init_Emmision( void ){
	init_PWM();
	init_T1();
}

void __attribute__((__interrupt__, no_auto_psv)) _T1Interrupt(void)
{
	int aux;
	/* Read Emission Port Actual Value*/
	aux = EMPort;
	/* Mask Port with no emission used bits */
	aux &= 0x00C6;	

    // Make a "frame" pause when switching between 455 KHz and 57.6 KHz for the transmission of the data.
    // This pause helps the receiver not to mix the two signals.
    if(pause_between_carriers == 1) {
        bufferIndex++;
        if(bufferIndex == FRAME_BITS){
            bufferIndex = 0;
            pause_between_carriers = 0;
        }        
        EMPort = 0x00; //aux;
        IFS0bits.T1IF = 0;
        return;
    }

    // Transmit the data using both 455 KHz and 57.6 KHz carrier in order to support both type of sensors.
    // Basically the transmitter will send the data twice: the first using the 455 KHz, then pause, then using 57.6 KHz, then pause.
    if(change_carrier == 1) {
        change_carrier = 0;
        if(curr_carrier == CARRIER_455_KHZ) {
            // Adapt the transmission power to get a similar communication range when using the 57.6 KHz receivers.
            // The digital potentiometer will take about 1 ms to actually change the transmission power.
            if(tx_power <= 100) {
                write_SPI(0);
            } else if(tx_power <= 175) {
                tx_power_temp = (tx_power<<1)-200;
                write_SPI(tx_power_temp);
            } else if(tx_power <= 218) {
                tx_power_temp = ((3*tx_power)>>1)-127;
                write_SPI(tx_power_temp);
            } else {
                write_SPI(200);
            }
            curr_carrier = CARRIER_57_6_KHZ;
            PR1 = 5733;
            PR2 = 710;
            OC1R = 355;        
            OC1RS = 355;
            pause_between_carriers = 1;
        } else {
            write_SPI(tx_power); // The digital potentiometer will take about 1 ms to actually change the transmission power.
            curr_carrier = CARRIER_455_KHZ;
            PR1 = 4000;
            PR2 = 89;
            OC1R = 44;
            OC1RS = 44;             
            FrameToSend = FALSE;
            pause_between_carriers = 1;
        }        
    }
    
	if(FrameToSend == TRUE){
		/* Load Value to Send */
		aux |= bufferEmission[bufferIndex];
		/* Increase Pointer */
		bufferIndex++;
		/* If Frame finished Clear FrameToSend Flag*/
		if(bufferIndex == FRAME_BITS){
			bufferIndex = 0;
			FrameToSend = FALSE;            
            change_carrier = 1;
		}
	}
	else{
		#ifdef _CSMA_
			if ( CSMAcounter <= 0)
			{
				if(mediumStatus == IDLE)
				{
					FrameToSend = GetEmissionFrame(bufferEmission);
				}
				else {
					double r = ((double)rand()/((double)(RAND_MAX)+(double)(1)) ); 
		    		CSMAcounter=(int)(r*(16));
				}
			}
			else{
				CSMAcounter--;
			}
		#else
			FrameToSend = GetEmissionFrame(bufferEmission);
			/*************** DEBUG RS232 - PC *****************/
			//if(FrameToSend==TRUE)
			//{
			//	FramesCounter++;
			//	char SerialTX[50];
			//	sprintf(SerialTX,"Frame: %ld\n\r ",FramesCounter);
			//	WriteUart2((unsigned int*) SerialTX); 		
			//}
			/*************** END DEBUG *****************/

		#endif
	}	
	EMPort = aux;

	/* Clear Timer1 interrupt */
	IFS0bits.T1IF = 0;
}

char GetEmissionFrame ( unsigned int *frame ){
	return QueueOut(&queueEmission,frame);
}

char SetEmissionFrame ( unsigned int *frame){
	return QueueIn(&queueEmission,frame);
}
