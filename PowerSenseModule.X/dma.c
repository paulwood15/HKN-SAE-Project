#include "dma.h"
#include "globals.h"


DMAxINIT DMA_CANRX_InitConfig =   { .CHEN   = 1,    // enabled
                                    .SIZE   = 0,    // word transfer
                                    .DIR    = 0,    // peripheral to RAM direction  
                                    .HALF   = 0,    // interrupt after all transfers
                                    .NULLW  = 0,    // normal operation 
                                    .AMODE  = 2,    // peripheral controls address 
                                    .MODE   = 0,    // continuous, ping-pong disabled
                                    .IRQSEL = 0x22, 
                                    .STAH   = (uint16_t*)&canRXBuffer,
                                    .STAL   = (uint16_t*)&canRXBuffer,     
                                    .STBH   = 0,     
                                    .STBL   = 0,     
                                    .PAD    = (volatile uint16_t*)&C1RXD,     
                                    .CNT    = CAN_MSG_SIZE - 1 
                                    };

DMAxINIT DMA_CANTX_InitConfig =   { .CHEN   = 1,    // enabled  
                                    .SIZE   = 0,    // word transfer
                                    .DIR    = 1,    // RAM to peripheral
                                    .HALF   = 0,    // interrupt after all transfers
                                    .NULLW  = 0,    // normal operation 
                                    .AMODE  = 2,    // peripheral controls address 
                                    .MODE   = 0,    // continuous, ping-pong disabled
                                    .IRQSEL = 0x46,     
                                    .STAH   = (uint16_t*)&canTXBuffer,     
                                    .STAL   = (uint16_t*)&canTXBuffer,     
                                    .STBH   = 0,     
                                    .STBL   = 0,     
                                    .PAD    = (volatile uint16_t*)&C1TXD,    
                                    .CNT    = CAN_MSG_SIZE - 1
                                    };


uint8_t active_chs[NUM_DMA_CH] = { 0 };


void DMA_Initialize() {
    DMA_InitializeCH(DMA_CANRX_CH, DMA_CANRX_InitConfig);
    DMA_InitializeCH(DMA_CANTX_CH, DMA_CANTX_InitConfig);
}


uint16_t DMA_InitializeCH(uint16_t ch, DMAxINIT init_data) {
    if ((ch >= NUM_DMA_CH) || (ch < 0))
        return 1;
    
    if (active_chs[ch] == 1)
        return 1;
    else 
        active_chs[ch] = 1;
    
    // channel enabling needs to be last
    switch (ch)
    {
        case 0:
            DMA0CONbits.SIZE = init_data.SIZE;
            DMA0CONbits.DIR = init_data.DIR;
            DMA0CONbits.HALF = init_data.HALF;
            DMA0CONbits.NULLW = init_data.NULLW;
            DMA0CONbits.AMODE = init_data.AMODE;
            DMA0CONbits.MODE = init_data.MODE;
            DMA0REQbits.IRQSEL = init_data.IRQSEL;
            DMA0STAHbits.STA = init_data.STAH;
            DMA0STAL = init_data.STAL;
            DMA0STBHbits.STB = init_data.STBH;
            DMA0STBL = init_data.STBL;
            DMA0PAD = init_data.PAD;
            DMA0CNTbits.CNT = init_data.CNT;
            DMA0CONbits.CHEN = init_data.CHEN;
            break;
        case 1:
            DMA1CONbits.SIZE = init_data.SIZE;
            DMA1CONbits.DIR = init_data.DIR;
            DMA1CONbits.HALF = init_data.HALF;
            DMA1CONbits.NULLW = init_data.NULLW;
            DMA1CONbits.AMODE = init_data.AMODE;
            DMA1CONbits.MODE = init_data.MODE;
            DMA1REQbits.IRQSEL = init_data.IRQSEL;
            DMA1STAHbits.STA = init_data.STAH;
            DMA1STAL = init_data.STAL;
            DMA1STBHbits.STB = init_data.STBH;
            DMA1STBL = init_data.STBL;
            DMA1PAD = init_data.PAD;
            DMA1CNTbits.CNT = init_data.CNT;
            DMA1CONbits.CHEN = init_data.CHEN;
            break;
        case 2:
            DMA2CONbits.SIZE = init_data.SIZE;
            DMA2CONbits.DIR = init_data.DIR;
            DMA2CONbits.HALF = init_data.HALF;
            DMA2CONbits.NULLW = init_data.NULLW;
            DMA2CONbits.AMODE = init_data.AMODE;
            DMA2CONbits.MODE = init_data.MODE;
            DMA2REQbits.IRQSEL = init_data.IRQSEL;
            DMA2STAHbits.STA = init_data.STAH;
            DMA2STAL = init_data.STAL;
            DMA2STBHbits.STB = init_data.STBH;
            DMA2STBL = init_data.STBL;
            DMA2PAD = init_data.PAD;
            DMA2CNTbits.CNT = init_data.CNT;
            DMA2CONbits.CHEN = init_data.CHEN;
            break;
        case 3:
            DMA3CONbits.SIZE = init_data.SIZE;
            DMA3CONbits.DIR = init_data.DIR;
            DMA3CONbits.HALF = init_data.HALF;
            DMA3CONbits.NULLW = init_data.NULLW;
            DMA3CONbits.AMODE = init_data.AMODE;
            DMA3CONbits.MODE = init_data.MODE;
            DMA3REQbits.IRQSEL = init_data.IRQSEL;
            DMA3STAHbits.STA = init_data.STAH;
            DMA3STAL = init_data.STAL;
            DMA3STBHbits.STB = init_data.STBH;
            DMA3STBL = init_data.STBL;
            DMA3PAD = init_data.PAD;
            DMA3CNTbits.CNT = init_data.CNT;
            DMA3CONbits.CHEN = init_data.CHEN;
            break;
        default:
            return 1;
    }
    
    return 0;
}

uint16_t DMA_TerminateCH(uint16_t ch) {
    
    switch (ch)
    {
        case 0:
            DMA0CONbits.CHEN = 0;
            DMA0REQbits.IRQSEL = 0;
            DMA0PAD = 0;
            break;
        case 1:
            DMA1CONbits.CHEN = 0;
            DMA1REQbits.IRQSEL = 0;
            DMA1PAD = 0;
            break;
        case 2:
            DMA2CONbits.CHEN = 0;
            DMA2REQbits.IRQSEL = 0;
            DMA2PAD = 0;
            break;
        case 3:
            DMA3CONbits.CHEN = 0;
            DMA3REQbits.IRQSEL = 0;
            DMA3PAD = 0;
            break;
        default:
            return 1;
            
    }
    
    active_chs[ch] = 0;
        
    return 0;
}
