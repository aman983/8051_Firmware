#include <8051.h>
#include <GPIO.h>
#include <Delay.h>
#include "Keypad.h"
void main(){
    
    unsigned char button_lable = 0;
    
    Keypad_config_t pad = {
        .ROW_Port = PORT_0,
        .COL_Port = PORT_0,
        .R1 = PIN_0,
        .R2 = PIN_1,
        .R3 = PIN_2,
        .R4 = PIN_3,
        .C1 = PIN_4,
        .C2 = PIN_5,
        .C3 = PIN_6,
        .C4 = PIN_7,
    };

    GPIO_Config_t leds = {
        .Port = PORT_1,
        .Pin = PIN_0,
        .Mode = GPIO_OUTPUT
    };

    Keypad_Init(&pad);
    while (1)
    {
        Keypad_Read(&pad, &button_lable);
        if(button_lable != 0xFF){
            GPIO_PORT_Write(&leds, button_lable);
        }
        
    }
    
}