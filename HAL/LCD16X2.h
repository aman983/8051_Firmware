#ifndef LCD16X2_H
#define LCD16X2_H
#include "GPIO.h"

typedef struct LCD_Config {
    GPIO_Port_e Data_Port;
    GPIO_Port_e Command_Port;
    GPIO_Pin_e RW;
    GPIO_Pin_e RS;
    GPIO_Pin_e EN;
}LCD_Config_t;

void Send_Command(LCD_Config_t *config, unsigned char command);
void Send_Data(LCD_Config_t *config, unsigned char command);
void LCD_Write_Str(LCD_Config_t *config, unsigned char *str);
void LCD_Init(LCD_Config_t *config);

#endif