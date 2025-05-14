#include <8051.h>

#include "GPIO.h"
#include "Delay.h"
#include "Uart.h"

#include "7_Seg.h"
#include "Keypad.h"
#include "Sys_tick.h"


unsigned long int Task_1 = 0, Task_2 = 0, Task_3 = 0, Task_4 = 0;

void display_Task(Seg_config_t *config, int *number){
    static int valid_number;
    if(*number != 0xFF){
        valid_number = *number;
    }
    Multi_Segment_write_Digits(config, valid_number);
    
}

void keypad_Task(Keypad_config_t *config, int *number){
    Keypad_Read(config, number);
}

void led_Task(GPIO_Config_t *config){
    GPIO_Toggle(config);
}

void Uart_task(char *Buffer){
    Uart_Send_Str(Buffer);
}


void main(){


    int count = 0;
    __code char Uart_Buffer[] = "This is Uart Task \n";

    Seg_config_t Display = {
        .Segment_Port = PORT_1,
        .Seg_Enable_Port = PORT_3,
        .Seg_Enable_Pins = {PIN_3, PIN_4, PIN_5, PIN_6}
    };

    Keypad_config_t Pad = {
        .ROW_Port = PORT_0,
        .COL_Port = PORT_0,
        .R1 = PIN_4,
        .R2 = PIN_5,
        .R3 = PIN_6,
        .R4 = PIN_7,
        .C1 = PIN_0,
        .C2 = PIN_1,
        .C3 = PIN_2,
        .C4 = PIN_3
    };

    GPIO_Config_t led = {
        .Port = PORT_3,
        .Pin = PIN_2,
        .Mode = GPIO_OUTPUT
    };

    Segment_Init(&Display);
    Keypad_Init(&Pad);
    Uart_Init(BAUD_9600);

    Sys_Tick_Init();
    while (1)
    {   
        if( (sys_tick_ms - Task_1) > 10){
            display_Task(&Display, &count);
            Task_1 = sys_tick_ms;
        }
        
        if((sys_tick_ms - Task_2) > 100){
            keypad_Task(&Pad, &count);
            Task_2 = sys_tick_ms;

        }

        if((sys_tick_ms - Task_3) > 500){
            led_Task(&led);
            Task_3 = sys_tick_ms;

        }

        if((sys_tick_ms - Task_4) > 1000){
            Uart_task(Uart_Buffer);
            Task_4 = sys_tick_ms;

        }
       
    }
    
}