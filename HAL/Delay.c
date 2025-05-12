#include <8051.h>
#include "Delay.h"

void delay_ms(unsigned int ms) {
    while (ms--)
    {
        unsigned int i, j;
        for(i = 0; i < 1; i++){
            for(j = 0; j < 1275; j++);
        }
    }    
}

void Tim_delay_ms(unsigned int ms){
    while (ms--)
    {
        TMOD &= 0xF0;      // Clear Timer0 bits
        TMOD |= 0x01;      // Timer0 Mode 1 (16-bit)

        TH0 = 0xFC;        // High byte
        TL0 = 0x67;        // Low byte

        TR0 = 1;           // Start Timer0
        while (TF0 == 0);  // Wait for overflow
        TR0 = 0;           // Stop Timer0
        TF0 = 0;           // Clear overflow flag
    } 
    
}