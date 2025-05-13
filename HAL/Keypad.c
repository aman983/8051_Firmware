#include "GPIO.h"
#include "Keypad.h"

static GPIO_Config_t Row_gpio;
static GPIO_Config_t Col_gpio;

void Keypad_Init(Keypad_config_t *config){
    Row_gpio.Port = config->ROW_Port;
    Row_gpio.Pin = config->R1;
    Row_gpio.Mode = GPIO_INPUT_PULLUP;

    Col_gpio.Port = config->COL_Port;
    Col_gpio.Pin = config->C1;
    Col_gpio.Mode = GPIO_OUTPUT;

    GPIO_Write(&Col_gpio, GPIO_HIGH);
    Col_gpio.Pin = config->C2;
    GPIO_Write(&Col_gpio, GPIO_HIGH);
    Col_gpio.Pin = config->C3;
    GPIO_Write(&Col_gpio, GPIO_HIGH);
    Col_gpio.Pin = config->C4;
    GPIO_Write(&Col_gpio, GPIO_HIGH);

}

void Keypad_Read(Keypad_config_t *config, unsigned char *button_val){

    unsigned char row_pin [4] = {config->R1, config->R2, config->R3, config->R4};
    unsigned char col_pin [4] = {config->C1, config->C2, config->C3, config->C4};
    GPIO_State_e Row_State = GPIO_HIGH;

    for(unsigned char col=0; col<4; col++){
    
        Col_gpio.Pin = col_pin[col];
        GPIO_Write(&Col_gpio, GPIO_LOW);

        for(unsigned char row=0; row<4; row++){
            Row_gpio.Pin = row_pin[row];
            GPIO_Read(&Row_gpio, &Row_State);
            if(Row_State == GPIO_LOW){
                *button_val = (col * 4) + row;
                Col_gpio.Pin = col_pin[col];
                GPIO_Write(&Col_gpio, GPIO_HIGH);
                return;
            }
        }
        Col_gpio.Pin = col_pin[col];
        GPIO_Write(&Col_gpio, GPIO_HIGH);
    }

    *button_val = 0xFF; // If no key pressed

}