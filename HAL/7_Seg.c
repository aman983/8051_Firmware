#include <stdbool.h>
#include "GPIO.h"
#include "7_Seg.h"
#include "Delay.h"

static GPIO_Config_t Seg_port;
static GPIO_Config_t Seg_en_Port;

unsigned char LUT(char c) {
    switch (c) {
        // Digits
        case '0': return 0x3F;
        case '1': return 0x06;
        case '2': return 0x5B;
        case '3': return 0x4F;
        case '4': return 0x66;
        case '5': return 0x6D;
        case '6': return 0x7D;
        case '7': return 0x07;
        case '8': return 0x7F;
        case '9': return 0x6F;

        // Uppercase Letters
        case 'A': case 'a': return 0x77;
        case 'B': case 'b': return 0x7C;
        case 'C': case 'c': return 0x39;
        case 'D': case 'd': return 0x5E;
        case 'E': case 'e': return 0x79;
        case 'F': case 'f': return 0x71;
        case 'G': case 'g': return 0x3D;
        case 'H': case 'h': return 0x76;
        case 'I': case 'i': return 0x06;
        case 'J': case 'j': return 0x1E;
        case 'L': case 'l': return 0x38;
        case 'N': case 'n': return 0x54;
        case 'O': case 'o': return 0x3F;
        case 'P': case 'p': return 0x73;
        case 'Q': case 'q': return 0x67;
        case 'R': case 'r': return 0x50;
        case 'S': case 's': return 0x6D;
        case 'T': case 't': return 0x78;
        case 'U': case 'u': return 0x3E;
        case 'Y': case 'y': return 0x6E;
        case 'Z': case 'z': return 0x5B;

        // Symbols
        case '-': return 0x40;
        case '_': return 0x08;
        case '=': return 0x48;
        case ' ': return 0x00;

        default: return 0x00;  // Blank for unsupported characters
    }
}


static const unsigned char seg_digit_map[11] = {
    0x3F,   // 0
    0x06,   // 1
    0x5B,   // 2
    0x4F,   // 3
    0x66,   // 4
    0x6D,   // 5
    0x7D,   // 6
    0x07,   // 7
    0x7F,   // 8
    0x6F,   // 9
    0x80    // .
};


void Segment_Init(Seg_config_t *config){
    Seg_port.Port = config->Segment_Port;
    Seg_port.Mode = GPIO_OUTPUT;

    Seg_en_Port.Port = config->Seg_Enable_Port;
    Seg_en_Port.Mode = GPIO_OUTPUT;
}


void Segment_write(Seg_config_t *config, unsigned char display_number, unsigned char val){
    // Write all the En pins low
    for(unsigned char i =0; i<4; i++){
        Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
        GPIO_Write(&Seg_en_Port, GPIO_LOW);
    }
    GPIO_PORT_Write(&Seg_port,  val);
    if(display_number < 4){
        Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
        GPIO_Write(&Seg_en_Port, GPIO_HIGH);
    }else{
        return;
    }
    Tim_delay_ms(1);
    // Write all the En pins low
    for(unsigned char i =0; i<4; i++){
        Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
        GPIO_Write(&Seg_en_Port, GPIO_LOW);
    }
}


void Segment_write_number(Seg_config_t *config, unsigned char display_number, unsigned char number){
    
    // Write all the En pins low
    for(unsigned char i =0; i<4; i++){
        Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
        GPIO_Write(&Seg_en_Port, GPIO_LOW);
    }
    GPIO_PORT_Write(&Seg_port,  seg_digit_map[number % 10]);
    if(display_number < 4){
        Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
        GPIO_Write(&Seg_en_Port, GPIO_HIGH);
    }else{
        return;
    }
    Tim_delay_ms(1);
    // Write all the En pins low
    for(unsigned char i =0; i<4; i++){
        Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
        GPIO_Write(&Seg_en_Port, GPIO_LOW);
    }

}


void Multi_Segment_write_Digits(Seg_config_t *config, int number){
    bool is_negative;
    int n = number;
    unsigned char dig = 0;
    unsigned char seg_no = 0;
    if(number > 9999){
        n = 9999;
    }else if(number < -999){ 
        n = -999;
    }
    is_negative = (number < 0) ? true : false;

    if(is_negative){
        n *= -1;
    }

    while (n)
    {
        dig = n % 10;
        
        Segment_write_number(config, seg_no, dig);
        n = n/10;
        seg_no++;
    }

    if(is_negative){
        seg_no++;
        Segment_write_number(config, seg_no, dig);
    }
    
}


void Segment_Write_char(Seg_config_t *config, char *text){
    unsigned char *g = text;
    unsigned char len = 4;

    while (*g)
    {
        if(len <= 4 && len != 0){
            Segment_write(config, len-1, LUT(*g));
            g++;
            len--;
        }else{
            return;
        }
        
    }
    
    
}
