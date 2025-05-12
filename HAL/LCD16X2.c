#include "GPIO.h"
#include "Delay.h"
#include "LCD16X2.h"


static GPIO_Config_t LCD_Data_io;



void Send_Command(LCD_Config_t *config, unsigned char command){
    LCD_Data_io.Port = config->Command_Port;
    LCD_Data_io.Pin = config->RS; 
    GPIO_Write(&LCD_Data_io, GPIO_LOW);
    LCD_Data_io.Pin = config->RW; 
    GPIO_Write(&LCD_Data_io, GPIO_LOW);

    LCD_Data_io.Port = config->Data_Port;
    GPIO_PORT_Write(&LCD_Data_io, command);


    LCD_Data_io.Pin = config->EN; 
    LCD_Data_io.Port = config->Command_Port;

    GPIO_Write(&LCD_Data_io, GPIO_HIGH);
    delay_ms(1);
    GPIO_Write(&LCD_Data_io, GPIO_LOW);
}

void Send_Data(LCD_Config_t *config, unsigned char command){
    LCD_Data_io.Port = config->Command_Port;
    LCD_Data_io.Pin = config->RS; 
    GPIO_Write(&LCD_Data_io, GPIO_HIGH);
    LCD_Data_io.Pin = config->RW; 
    GPIO_Write(&LCD_Data_io, GPIO_LOW);

    LCD_Data_io.Port = config->Data_Port;
    GPIO_PORT_Write(&LCD_Data_io, command);


    LCD_Data_io.Pin = config->EN; 
    LCD_Data_io.Port = config->Command_Port;

    GPIO_Write(&LCD_Data_io, GPIO_HIGH);
    delay_ms(1);
    GPIO_Write(&LCD_Data_io, GPIO_LOW);
}

void LCD_Write_Str(LCD_Config_t *config, unsigned char *str){
    while (*str)
    {
        Send_Data(config,*str);
        str++;
    }
    
}

void LCD_Init(LCD_Config_t *config){
    LCD_Data_io.Port = config->Data_Port;
    LCD_Data_io.Mode = GPIO_OUTPUT;

    Send_Command(config, 0x38);
    Send_Command(config, 0x0C);
    Send_Command(config, 0x01);
    Send_Command(config, 0x06);


}