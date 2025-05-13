#include <8051.h>
#include "GPIO.h"

void main(){

    GPIO_State_e State = GPIO_LOW;
    GPIO_Config_t button = {
        .Port = PORT_0,
        .Pin = PIN_0,
        .Mode = GPIO_INPUT
        
    };

    GPIO_Config_t led = {
        .Port = PORT_0,
        .Pin = PIN_1,
        .Mode = GPIO_OUTPUT
        
    };
    while (1)
    {
        GPIO_Read(&button, &State);
        if(State == GPIO_HIGH){
            GPIO_Write(&led, GPIO_HIGH);
        }else{
            GPIO_Write(&led, GPIO_LOW);
        }
    }
    
}