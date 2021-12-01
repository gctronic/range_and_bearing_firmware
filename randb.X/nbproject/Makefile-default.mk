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
${OBJECTDIR}/_ext/1472/ADCDrv.o: ../ADCDrv.c  .generated_files/flags/default/bebef2122c1866449a67e3ab17ed634f22991150 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ADCDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ADCDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ADCDrv.c  -o ${OBJECTDIR}/_ext/1472/ADCDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ADCDrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o: ../I2CSlaveDrv.c  .generated_files/flags/default/65a2b76379eebf0a4fb825080bdf16abb806770 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../I2CSlaveDrv.c  -o ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/IREmission.o: ../IREmission.c  .generated_files/flags/default/78b31f1523ea9b9f52713f03b6e2e913b1bbe2e1 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/IREmission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IREmission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../IREmission.c  -o ${OBJECTDIR}/_ext/1472/IREmission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/IREmission.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/IRReception.o: ../IRReception.c  .generated_files/flags/default/f6f460191c47834c44b635cd2dcfaa7f77e52ae4 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/IRReception.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IRReception.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../IRReception.c  -o ${OBJECTDIR}/_ext/1472/IRReception.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/IRReception.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/ports.o: ../ports.c  .generated_files/flags/default/604eca72d70db822c515eb1ed07cd13abd1f0f59 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ports.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ports.c  -o ${OBJECTDIR}/_ext/1472/ports.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ports.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/PWMEmission.o: ../PWMEmission.c  .generated_files/flags/default/77879c0a98f51a68ac3eb3b049809a200c4517c3 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PWMEmission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PWMEmission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../PWMEmission.c  -o ${OBJECTDIR}/_ext/1472/PWMEmission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/PWMEmission.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/queue.o: ../queue.c  .generated_files/flags/default/1bdd6f6674fd4bd843a331c83ffc19a5bdfae55c .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../queue.c  -o ${OBJECTDIR}/_ext/1472/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/queue.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/registers.o: ../registers.c  .generated_files/flags/default/e47e457c4330a7ad4bdc0f6eea39c78d260d2014 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../registers.c  -o ${OBJECTDIR}/_ext/1472/registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/registers.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/SPIMasterDrv.o: ../SPIMasterDrv.c  .generated_files/flags/default/b4bcda409afd45e192edd0f6e320c6c39d215895 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../SPIMasterDrv.c  -o ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SPIMasterDrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/UARTDrv.o: ../UARTDrv.c  .generated_files/flags/default/845bdd5123354be34e962166631fe0f5a9deba7f .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../UARTDrv.c  -o ${OBJECTDIR}/_ext/1472/UARTDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTDrv.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/randb.o: ../randb.c  .generated_files/flags/default/939aab0903a71e6d65d61ff7a12fc2a6344c0e83 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/randb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/randb.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../randb.c  -o ${OBJECTDIR}/_ext/1472/randb.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/randb.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1    -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
else
${OBJECTDIR}/_ext/1472/ADCDrv.o: ../ADCDrv.c  .generated_files/flags/default/62f0cf803cc715c2a1d337bc244b21ee2d905c4 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ADCDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ADCDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ADCDrv.c  -o ${OBJECTDIR}/_ext/1472/ADCDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ADCDrv.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o: ../I2CSlaveDrv.c  .generated_files/flags/default/e9891454df00996ffc2df28429710db52fe884c1 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../I2CSlaveDrv.c  -o ${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/I2CSlaveDrv.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/IREmission.o: ../IREmission.c  .generated_files/flags/default/734c53270775669cb88dcaec506cdfdf12c0d774 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/IREmission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IREmission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../IREmission.c  -o ${OBJECTDIR}/_ext/1472/IREmission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/IREmission.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/IRReception.o: ../IRReception.c  .generated_files/flags/default/d905fcf1f023cbffdcdc82032852df278bf833e1 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/IRReception.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/IRReception.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../IRReception.c  -o ${OBJECTDIR}/_ext/1472/IRReception.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/IRReception.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/ports.o: ../ports.c  .generated_files/flags/default/22a05b01128cff01152eb91824082d401838ea43 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ports.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../ports.c  -o ${OBJECTDIR}/_ext/1472/ports.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/ports.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/PWMEmission.o: ../PWMEmission.c  .generated_files/flags/default/c3d245e49e73e354daec7d8b6c49420fe5560485 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/PWMEmission.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PWMEmission.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../PWMEmission.c  -o ${OBJECTDIR}/_ext/1472/PWMEmission.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/PWMEmission.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/queue.o: ../queue.c  .generated_files/flags/default/e2cbeec60a4fadcdee9c7be0c4207c13dfbfb636 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../queue.c  -o ${OBJECTDIR}/_ext/1472/queue.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/queue.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/registers.o: ../registers.c  .generated_files/flags/default/efb3f718bd11736684f82b64dc33b0857105f4ea .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/registers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/registers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../registers.c  -o ${OBJECTDIR}/_ext/1472/registers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/registers.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/SPIMasterDrv.o: ../SPIMasterDrv.c  .generated_files/flags/default/2bebabb86374651d6deabb4c779b746b4eb850af .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../SPIMasterDrv.c  -o ${OBJECTDIR}/_ext/1472/SPIMasterDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/SPIMasterDrv.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/UARTDrv.o: ../UARTDrv.c  .generated_files/flags/default/7107338399e1c68c918e4d19c7d6fa6f6f2b9748 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTDrv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../UARTDrv.c  -o ${OBJECTDIR}/_ext/1472/UARTDrv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/UARTDrv.o.d"        -g -omf=coff -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O1 -I".." -I"." -msmart-io=1 -Wall -msfr-warn=off   
	
${OBJECTDIR}/_ext/1472/randb.o: ../randb.c  .generated_files/flags/default/5bed104a12804a949a76ca4fe9a00a31b1e0f922 .generated_files/flags/default/bb9c332fb0c2e171c9cb4f01b7667c80b6e23b10
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
