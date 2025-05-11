#include "Delay.h"


void delay_ms(unsigned int ms) {
    while (ms--)
    {
        unsigned int i, j;
        for(i = 0; i < 1; i++){
            for(j = 0; j < 1275; j++);
        }
    }    
}