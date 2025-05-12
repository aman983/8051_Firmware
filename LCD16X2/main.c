#include <8051.h>
#include "GPIO.h"
#include "LCD16X2.h"


void main(){
    unsigned char s[13] = "8051 Hello !";
    LCD_Config_t lcd = {
        .Data_Port = PORT_0,
        .Command_Port = PORT_1,
        .RW = PIN_6,
        .RS = PIN_5,
        .EN = PIN_7
    };

    LCD_Init(&lcd);
    LCD_Write_Str(&lcd, s);
    while (1)
    {
        
        
    }
    
}