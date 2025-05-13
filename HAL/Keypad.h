#ifndef KEYPAD_H
#define KEYPAD_H
#include "GPIO.h"

typedef struct Keypad_config{
    GPIO_Port_e ROW_Port;
    GPIO_Port_e COL_Port;
    GPIO_Pin_e R1;
    GPIO_Pin_e R2;
    GPIO_Pin_e R3;
    GPIO_Pin_e R4;
    GPIO_Pin_e C1;
    GPIO_Pin_e C2;
    GPIO_Pin_e C3;
    GPIO_Pin_e C4;
}Keypad_config_t;


void Keypad_Init(Keypad_config_t *config);
void Keypad_Read(Keypad_config_t *config, unsigned char *button_val);


#endif