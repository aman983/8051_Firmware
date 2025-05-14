#include <at89x52.h>
#include "Uart.h"
void Uart_Init(Uart_Baudrate_e baudrate) {
    SCON = 0x50;

    T2CON = 0x34;  

    switch (baudrate)
    {
    case BAUD_2400: RCAP2H = 0xFA; RCAP2L = 0x00; break;
    case BAUD_4800: RCAP2H = 0xFD; RCAP2L = 0x00; break;
    case BAUD_9600: RCAP2H = 0xFF; RCAP2L = 0xDC; break;
    case BAUD_19200: RCAP2H = 0xFF; RCAP2L = 0xEE; break;
    case BAUD_38400: RCAP2H = 0xFF; RCAP2L = 0xF7; break;
    
    default: RCAP2H = 0xFF; RCAP2L = 0xDC; break; // Default baud 9600
    }
    

    TH2 = RCAP2H;  
    TL2 = RCAP2L;  

    TR2 = 1;    
    TI = 1;
}

void Uart_Send(char D){
    while (!TI);
    TI = 0;
    SBUF = D;
}

char Uart_Recv(){
    while (!RI);
    RI = 0;
    return SBUF;
}

void Uart_Read_Data(char *Buffer, unsigned int Read_Size){

    while (Read_Size)
    {
        *Buffer = Uart_Recv();
        Buffer++;
        Read_Size--;
    }
    
}

void Uart_Send_Str(char *Buffer){
    while (*Buffer)
    {
        Uart_Send(*Buffer);
        Buffer++;
    }
    
}
