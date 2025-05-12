#ifndef _SYS_TICK_H
#define _SYS_TICK_H


extern volatile unsigned long sys_tick_ms;


#define TH1_INIT 0xFC
#define TL1_INIT 0x67

void Sys_Tick_Init();
void timer1_ISR(void) __interrupt(3);


#endif