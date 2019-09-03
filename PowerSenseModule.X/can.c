
#include "can.h"
#include "globals.h"
#include <string.h>
#include "mcc_generated_files/pin_manager.h"

/**************************************************************************
 * 
 *                              ISRs
 * 
 **************************************************************************/
/**
 * CAN1 Receieve Data Ready Interrupt
 */
void __attribute__((interrupt, auto_psv)) _C1RxRdyInterrupt(void) {
    
    IFS2bits.C1RXIF = 0;        // clear interrupt flag
}

/**
 * CAN1 Transmit Data Request Interrupt
 */
void __attribute__((interrupt, auto_psv)) _C1TXInterrupt(void) {
    IFS4bits.C1TXIF = 0;        // clear interrupt flag
}

/**
 * CAN1 Event Interrupt
 */
void __attribute__((interrupt, auto_psv)) _C1Interrupt(void) {
    
    IFS2bits.C1IF = 0;      // clear interrupt flag
}


/**************************************************************************
 * 
 *                              INIT
 * 
 **************************************************************************/
void CAN_Initialize(void) {
    //test
//    float d = 69.420;
//    CAN_ConfigBufForStandardDataFrame(0);
//    CAN_TransmitData(0,789,sizeof(d));
    //end
    
    enum opmode mode = OP_Normal;
    
    C1CTRL1bits.REQOP   = OP_Config;             // request configuration operation - module acknowledges request in OPMODE
    while (C1CTRL1bits.OPMODE != OP_Config);     // wait for mode request to be acknowledged
    
    // bit timing configuration - time quanta factor, N = 20
    C1CTRL1bits.CANCKS = 0x0;
    /* Phase Segment 1 time is 9 TQ */
    C1CFG2bits.SEG1PH = 0x8;
    /* Phase Segment 2 time is set to be programmable */
    C1CFG2bits.SEG2PHTS = 0x1;
    /* Phase Segment 2 time is 6 TQ */
    C1CFG2bits.SEG2PH = 0x5;
    /* Propagation Segment time is 5 TQ */
    C1CFG2bits.PRSEG = 0x4;
    /* Bus line is sampled three times at the sample point */
    C1CFG2bits.SAM = 0x1;
    /* Synchronization Jump Width set to 4 TQ */
    C1CFG1bits.SJW = 0x3;
    /* Baud Rate pre-scaler bits set to 1:2 */
    C1CFG1bits.BRP = 0x1;
    
//    C1CFG1 = 0x47; // BRP = 8 SJW = 2 Tq
//    C1CFG2 = 0x2D2;
//    C1FCTRL = 0xC01F; // No FIFO, 32 Buffers
    
    //set DMA buffer size
    C1FCTRLbits.DMABS = 2;      // 8 message buffer
    
    //enable CAN event, RX, and TX interrupts TODO: event disabled until implementation created, assign priorities
    IEC2bits.C1RXIE = 1;
    IEC4bits.C1TXIE = 1;
    IEC2bits.C1IE = 1;
    C1INTEbits.ERRIE = 1;
    C1INTEbits.TBIE = 1;
    C1INTEbits.RBIE = 1;
    IEC0bits.DMA0IE = 1;
    
    //clear flags
    IFS2bits.C1IF = 0;
    IFS2bits.C1RXIF = 0;
    IFS4bits.C1TXIF = 0;
    
    //C1CTRL1bits.WIN     = 1;                // use message filter, must be last since some regs arent visible when this is set
    
    // simulator doesnt support CAN
    //#ifndef __MPLAB_DEBUGGER_SIMULATOR
        C1CTRL1bits.REQOP   = OP_Loopback;             // request normal operation - module acknowledges request in OPMODE
        while (C1CTRL1bits.OPMODE != OP_Loopback);     // wait for mode request to be acknowledged
    //#endif
        
        
    // control registers
    C1CTRL1bits.CSIDL   = 0;                // continue in idle mode
    C1CTRL1bits.CANCAP  = 0;                // disable timestamping 
    C1CTRL2bits.DNCNT   = 0;                // no DeviceNet data filtering
    
    // configure TX/RX message buffers 
    C1TR01CONbits.TXEN0 = 1;                
    if (NUM_CANTX_MSGS > 1)
        C1TR01CONbits.TXEN1 = 1;            // set buffer for TX
    if (NUM_CANTX_MSGS > 2)
        C1TR23CONbits.TXEN2 = 1;
    if (NUM_CANTX_MSGS > 3)
        C1TR23CONbits.TXEN3 = 1;
    if (NUM_CANTX_MSGS > 4)
        C1TR45CONbits.TXEN4 = 1;
    if (NUM_CANTX_MSGS > 5)
        C1TR45CONbits.TXEN5 = 1;
    if (NUM_CANTX_MSGS == 6)
        C1TR67CONbits.TXEN6 = 1;
    else {
        C1TR67CONbits.TXEN6 = 1;
        C1TR67CONbits.TXEN7 = 1;       
    }
    
    //buffer priority
    C1TR01CONbits.TX0PRI = 3;
}


/**************************************************************************
 * 
 *                             FUNCTIONS
 * 
 **************************************************************************/
uint16_t CAN_WriteBuf(void* data, uint16_t buf_num, uint16_t num_bytes, uint16_t starting_byte) {
    //get byte addressable pointer
    char* data_byte_addr = (char*)&(canTXBuffer[buf_num].data_byte0);
    
    //if number of bytes is longer than the max data field
    if ((num_bytes >= CAN_MSG_SIZE) || (starting_byte >= CAN_MSG_SIZE)) 
        return 1;   // error
    
    //add offset to select byte
    data_byte_addr += starting_byte;
    
    //copy data to location
    memcpy(data_byte_addr, data, num_bytes);
    
    return 0;
}


void CAN_ConfigBufForStandardDataFrame(uint16_t buf_num) {
    can_msg_t* buffer = &canTXBuffer[buf_num];
    buffer->SRR = 0;        // normal message
    buffer->IDE = 0;        // standard frame
    buffer->EIDH = 0;       // extended ID high
    buffer->EIDL = 0;       // extended ID high
    buffer->RTR = 0;        // normal message
    buffer->RB0 = 0;
    buffer->RB1 = 0;
}


uint16_t CAN_TransmitData(uint16_t buf_num, uint16_t sid, uint16_t num_bytes) {
    can_msg_t* buffer = &canTXBuffer[buf_num];
    
    //SID must be an 11-bit number - 2^11 = 2048
    if (sid > 2028)
        return 1;   // not an 11-bit number
    
    if (num_bytes > 8)
        return 1;   // max 8 bytes
    
    if (buf_num >= NUM_CANTX_MSGS)
        return 1;   
    
    buffer->SID = sid;          // bus peripheral address
    buffer->DLC = num_bytes;    // number of bytes in buffer to send (starting from byte 0)
    
    //request transmission
    switch(buf_num) {
        case 0:
            C1TR01CONbits.TXREQ0 = 1;
            break;
        case 1:
            C1TR01CONbits.TXREQ1 = 1;
            break;
        case 2:
            C1TR23CONbits.TXREQ2 = 1;
            break;
        case 3:
            C1TR23CONbits.TXREQ3 = 1;
            break;
        case 4:
            C1TR45CONbits.TXREQ4 = 1;
            break;
        case 5:
            C1TR45CONbits.TXREQ5 = 1;
            break;
        case 6:
            C1TR67CONbits.TXREQ6 = 1;
            break;
        case 7:
            C1TR67CONbits.TXREQ7 = 1;
            break;
        default:
            return 1;   // invalid buffer number
    }
    
    // successful
    return 0;
}