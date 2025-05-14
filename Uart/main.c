#include <at89x52.h>
#include "Uart.h"
#include "Delay.h"


void main(){

    __code char Write_Buffer[] = "You Said -> ";
    char Read_Buffer[10];
    Uart_Init(BAUD_9600);

    while (1)
    {
        
        Uart_Read_Data(Read_Buffer, 10);
        if(Read_Buffer){
            Uart_Send_Str(Write_Buffer);
            Uart_Send_Str(Read_Buffer);
        }
           
        
    }
    
}