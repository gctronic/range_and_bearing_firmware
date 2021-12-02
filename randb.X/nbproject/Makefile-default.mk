#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/randb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/randb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../ADCDrv.c ../I2CSlaveDrv.c ../IREmission.c ../IRReception.c ../ports.c ../PWMEmission.c ../queue.c ../registers.c ../SPIMasterDrv.c ../UARTDrv.c ../randb.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/ADCDrv.o ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o ${OBJECTDIR}/_ext/1472/IREmission.o ${OBJECTDIR}/_ext/1472/IRReception.o ${OBJECTDIR}/_ext/1472/ports.o ${OBJECTDIR}/_ext/1472/PWMEmission.o ${OBJECTDIR}/_ext/1472/queue.o ${OBJECTDIR}/_ext/1472/registers.o ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o ${OBJECTDIR}/_ext/1472/UARTDrv.o ${OBJECTDIR}/_ext/1472/randb.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/ADCDrv.o.d ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o.d ${OBJECTDIR}/_ext/1472/IREmission.o.d ${OBJECTDIR}/_ext/1472/IRReception.o.d ${OBJECTDIR}/_ext/1472/ports.o.d ${OBJECTDIR}/_ext/1472/PWMEmission.o.d ${OBJECTDIR}/_ext/1472/queue.o.d ${OBJECTDIR}/_ext/1472/registers.o.d ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o.d ${OBJECTDIR}/_ext/1472/UARTDrv.o.d ${OBJECTDIR}/_ext/1472/randb.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/ADCDrv.o ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o ${OBJECTDIR}/_ext/1472/IREmission.o ${OBJECTDIR}/_ext/1472/IRReception.o ${OBJECTDIR}/_ext/1472/ports.o ${OBJECTDIR}/_ext/1472/PWMEmission.o ${OBJECTDIR}/_ext/1472/queue.o ${OBJECTDIR}/_ext/1472/registers.o ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o ${OBJECTDIR}/_ext/1472/UARTDrv.o ${OBJECTDIR}/_ext/1472/randb.o

# Source Files
SOURCEFILES=../ADCDrv.c ../I2CSlaveDrv.c ../IREmission.c ../IRReception.c ../ports.c ../PWMEmission.c ../queue.c ../registers.c ../SPIMasterDrv.c ../UARTDrv.c ../randb.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/randb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ256GP710
MP_LINKER_FILE_OPTION=,--script=p33FJ256GP710.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/ADCDrv.o: ../ADCDrv.c  .generated_files/flags/default/ae566f095a51b201096a45c7341cc63fae484956 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ADCDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ADCDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ADCDrv.c  -o ${OBJECTDIR}/_ext/1472/ADCDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ADCDrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o: ../I2CSlaveDrv.c  .generated_files/flags/default/dbdd45be1102597687fbf0fcfc50c602c46c84b7 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../I2CSlaveDrv.c  -o ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/IREmission.o: ../IREmission.c  .generated_files/flags/default/dde5f854dd2aec27f0680f87ca082a653568d9c0 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/IREmission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IREmission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../IREmission.c  -o ${OBJECTDIR}/_ext/1472/IREmission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/IREmission.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/IRReception.o: ../IRReception.c  .generated_files/flags/default/45f889bb665b60d373685b8582d0b624f329206f .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/IRReception.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IRReception.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../IRReception.c  -o ${OBJECTDIR}/_ext/1472/IRReception.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/IRReception.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/ports.o: ../ports.c  .generated_files/flags/default/ed03aaf5b9c83db1e6fb15c4999e455c46fe6fe6 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ports.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ports.c  -o ${OBJECTDIR}/_ext/1472/ports.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ports.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/PWMEmission.o: ../PWMEmission.c  .generated_files/flags/default/1b82bb58ffdd7ed911426b76c11ce071dbc99d9a .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PWMEmission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PWMEmission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../PWMEmission.c  -o ${OBJECTDIR}/_ext/1472/PWMEmission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/PWMEmission.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/queue.o: ../queue.c  .generated_files/flags/default/6045b9a9540c286abc5ae29c0188f4fe591d6665 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../queue.c  -o ${OBJECTDIR}/_ext/1472/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/registers.o: ../registers.c  .generated_files/flags/default/fc637c6de719da57606f1eb8eddd915b5935f122 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../registers.c  -o ${OBJECTDIR}/_ext/1472/registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/registers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/SPIMasterDrv.o: ../SPIMasterDrv.c  .generated_files/flags/default/30abdd594440e5a2826337a465e663f6738cb574 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../SPIMasterDrv.c  -o ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SPIMasterDrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/UARTDrv.o: ../UARTDrv.c  .generated_files/flags/default/a53a2dd3149329c499dbf613f62f7fd201b4b8a2 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../UARTDrv.c  -o ${OBJECTDIR}/_ext/1472/UARTDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTDrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/randb.o: ../randb.c  .generated_files/flags/default/ce6a8ae3d2f91582b41ed9f9831bda68e97edc95 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/randb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/randb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../randb.c  -o ${OBJECTDIR}/_ext/1472/randb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/randb.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
else
${OBJECTDIR}/_ext/1472/ADCDrv.o: ../ADCDrv.c  .generated_files/flags/default/4c147bfe1a5f95efd3bd92cf1032ec16d5b6edca .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ADCDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ADCDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ADCDrv.c  -o ${OBJECTDIR}/_ext/1472/ADCDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ADCDrv.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o: ../I2CSlaveDrv.c  .generated_files/flags/default/fbdb6e08a75834834dce6938c922c08a0fc5b964 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../I2CSlaveDrv.c  -o ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/IREmission.o: ../IREmission.c  .generated_files/flags/default/7ad63759e00d7b2c63c3bea447bdabfbbe199559 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/IREmission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IREmission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../IREmission.c  -o ${OBJECTDIR}/_ext/1472/IREmission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/IREmission.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/IRReception.o: ../IRReception.c  .generated_files/flags/default/fc18931be61a49cb5f75153692cba2fc45e667d9 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/IRReception.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IRReception.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../IRReception.c  -o ${OBJECTDIR}/_ext/1472/IRReception.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/IRReception.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/ports.o: ../ports.c  .generated_files/flags/default/80c804ad1a53b5089940fd021a856905a1f6bfb5 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ports.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ports.c  -o ${OBJECTDIR}/_ext/1472/ports.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ports.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/PWMEmission.o: ../PWMEmission.c  .generated_files/flags/default/bb8f46c1c0e3c6c9c79bbf8aa9c6a6ce603afec1 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PWMEmission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PWMEmission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../PWMEmission.c  -o ${OBJECTDIR}/_ext/1472/PWMEmission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/PWMEmission.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/queue.o: ../queue.c  .generated_files/flags/default/bb7c34297dad392997301f345963920bf4806803 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../queue.c  -o ${OBJECTDIR}/_ext/1472/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/queue.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/registers.o: ../registers.c  .generated_files/flags/default/b245ce5e2e8c5310a4c697b8c9a37a0db949e9ad .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../registers.c  -o ${OBJECTDIR}/_ext/1472/registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/registers.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/SPIMasterDrv.o: ../SPIMasterDrv.c  .generated_files/flags/default/a7567cb8d989f4421e3e094ebe6429daf42b19f4 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../SPIMasterDrv.c  -o ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SPIMasterDrv.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/UARTDrv.o: ../UARTDrv.c  .generated_files/flags/default/9d658bbe04df5b6682b696c1bbfb7f9bd9fc910b .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../UARTDrv.c  -o ${OBJECTDIR}/_ext/1472/UARTDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTDrv.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/randb.o: ../randb.c  .generated_files/flags/default/97da51ab9a4e4afd5f2ef902d6f1102f9c52105e .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/randb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/randb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../randb.c  -o ${OBJECTDIR}/_ext/1472/randb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/randb.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/randb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/randb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="../../../../../../Archivos de programa/Microchip/MPLAB C30/lib",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/randb.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/randb.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/randb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="../../../../../../Archivos de programa/Microchip/MPLAB C30/lib",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/randb.X.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/randb.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=coff   
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
