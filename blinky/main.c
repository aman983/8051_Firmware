#include <8051.h>
#include "GPIO.h"
#include "Delay.h"


void main() {
    GPIO_Config_t LED1 = {
        .Port = PORT_0,
        .Pin = PIN_0,
        .Mode = GPIO_OUTPUT
    };
    while(1) {
        
    for (unsigned char i = 0; i < 8; i++) {
    
        GPIO_PORT_Write(&LED1, 1 << i); 
        delay_ms(10);
    }

    for (unsigned char i = 0; i < 8; i++) {
    
        GPIO_PORT_Write(&LED1, 0b10000000 >> i); 
        delay_ms(10);
    }
        
    }
}