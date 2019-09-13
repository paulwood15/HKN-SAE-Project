
/**
  TMR3 Generated Driver API Source File 

  @Company
    Microchip Technology Inc.

  @File Name
    tmr3.c

  @Summary
    This is the generated source file for the TMR3 driver using PIC24 / dsPIC33 / PIC32MM MCUs

  @Description
    This source file provides APIs for driver for TMR3. 
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

/**
  Section: Included Files
*/

#include <stdio.h>
#include "tmr3.h"
#include "clock.h"
#include "adc1.h"   
#include "../device_configuration.h"

/**
 Section: File specific functions
*/

/**
  Section: Data Type Definitions
*/


/**
  Section: Driver Interface
*/

// Initialize after ADC
void TMR3_Initialize (void)
{
    //TMR3 0; 
    TMR3 = 0x00;
  
    // tmr3 triggers conversion - so needs enough time to same and convert, plus a fudge factor
    // TAD: ADC clock period = multiplier * TCY
    // every trigger converts each channel 0 then 1 then 2... sequentially so the period needs to account for that sample time

#ifdef ADC1_BURST_SMPL_FREQ
    PR3 = FCY/ADC1_BURST_SMPL_FREQ;
#else
    PR3 = (ADC_CONV_TIME_TAD + ADC1CLOCK_MultiplierGet()) * (AD1CON2bits.CHPS + 1) + ADC_SAMPLE_TIME_TAD_MIN + 4;
#endif
    
    //TCKPS 1:1; TON disabled; TSIDL disabled; TCS FOSC/2; TGATE disabled; 
    T3CON = 0x0000;

}

/**
 End of File
*/
