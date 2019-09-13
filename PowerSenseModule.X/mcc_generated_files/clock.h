/**
  @Generated PIC24 / dsPIC33 / PIC32MM MCUs Source File

  @Company:
    Microchip Technology Inc.

  @File Name:
    clock.h

  @Summary:
    This is the clock.h file generated using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC24 / dsPIC33 / PIC32MM MCUs - 1.125
        Device            :  dsPIC33EV32GM102
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.36B
        MPLAB             :  MPLAB X v5.20
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/
#include "../device_configuration.h"

#ifndef CLOCK_H
#define	CLOCK_H

#ifndef _XTAL_FREQ
#if defined(FRC_40MHz)

#define _XTAL_FREQ  79395351UL

#elif defined(FRC_NORMAL)

#define _XTAL_FREQ  7370000UL

#elif defined(FRC_SLOWEST)

#define _XTAL_FREQ  14395UL

#elif defined(POSC_24MHz)

#define _XTAL_FREQ  24000000UL

#else
#error NO CLOCK DEFINED
#endif
#define FCY         _XTAL_FREQ / 2
#endif

#define CLOCK_SystemFrequencyGet()        (_XTAL_FREQ)

#define CLOCK_PeripheralFrequencyGet()    (CLOCK_SystemFrequencyGet() / 2)

#define CLOCK_InstructionFrequencyGet()   (CLOCK_SystemFrequencyGet() / 2)



/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Initializes the oscillator to the default states configured in the
 *                  MCC GUI
 * @Example
    CLOCK_Initialize(void);
 */
void CLOCK_Initialize_FRC_NORMAL(void);
void CLOCK_Initialize_FRC_SLOWEST(void);
void CLOCK_Initialize_FRC_40MHz(void);
void CLOCK_Initialize_POSC_24MHz(void);

uint16_t CLOCK_PeriodnsGet(void);

/* ADC */
uint16_t ADC1CLOCK_GENMultiplier(void);

uint16_t ADC1CLOCK_PeriodnsGet(void);

uint16_t ADC1CLOCK_MultiplierGet(void);

//MUST RE-INITIALIZE ADC
void ADC1CLOCK_PeriodnsSet(uint16_t);
//MUST RE-INITIALIZE ADC
void ADC1CLOCK_MultiplierSet(uint16_t);



#endif	/* CLOCK_H */
/**
 End of File
*/