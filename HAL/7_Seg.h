#ifndef _7_SEG_H
#define _7_SEG_H

#include "GPIO.h"

typedef struct seg_config {
    GPIO_Port_e Segment_Port;
    GPIO_Port_e Seg_Enable_Port;
    GPIO_Pin_e Seg_Enable_Pins[4];
}Seg_config_t;

void Segment_Init(Seg_config_t *config);
void Segment_write(Seg_config_t *config, unsigned char display_number, unsigned char val);
void Segment_write_number(Seg_config_t *config, unsigned char display_number, unsigned char number);
void Multi_Segment_write_Digits(Seg_config_t *config, int number);
void Segment_Write_char(Seg_config_t *config, char *text);
#endif