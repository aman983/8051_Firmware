#include <8051.h>
#include "Sys_tick.h"

volatile unsigned long sys_tick_ms = 0;


// Timer1 Interrupt Service Routine
void timer1_ISR(void) __interrupt(3) {
    TH1 = TH1_INIT;
    TL1 = TL1_INIT;
    sys_tick_ms++;
}

// Timer1 Initialization Function
void Sys_Tick_Init() {
    TMOD &= 0x0F;     // Clear upper 4 bits (Timer1)
    TMOD |= 0x10;     // Set Timer1 Mode 1 (16-bit)

    TH1 = TH1_INIT;
    TL1 = TL1_INIT;

    ET1 = 1;          // Enable Timer1 interrupt
    EA = 1;           // Enable global interrupts
    TR1 = 1;          // Start Timer1
}