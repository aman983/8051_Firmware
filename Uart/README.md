## How to use Uart.h ?

```c
#include <at89x52.h>
#include "Uart.h"
#include "Delay.h"


void main(){

    __code char Write_Buffer[] = "You Said -> "; // Declare a char buffer
    char Read_Buffer[10];
    Uart_Init(BAUD_9600); // set the baud rate (Standard baud rates 

    while (1)
    {
        
        Uart_Read_Data(Read_Buffer, 10); // Read 10 chars from the input will not return until 10 chars have been recived
        
        if(Read_Buffer){
            Uart_Send_Str(Write_Buffer);
            Uart_Send_Str(Read_Buffer);
        }
           
        
    }
    
}

```

