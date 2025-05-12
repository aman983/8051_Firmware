#include <8051.h>
#include "7_Seg.h"
#include "GPIO.h"
#include "Delay.h"
#include "Sys_tick.h"


#define Count_speed 10

unsigned long int Count_Task = 0;

void main(){
    int count = 0;
    Seg_config_t Display = {
        .Segment_Port = PORT_0,
        .Seg_Enable_Port = PORT_1,
        .Seg_Enable_Pins = {PIN_7, PIN_6, PIN_5, PIN_4}
    };

    Segment_Init(&Display);
    Sys_Tick_Init();
    while (1)
    {   
        if((sys_tick_ms - Count_Task) >= Count_speed){
            if(count == 9999){
                count = 0;
            }
            count++;
            Count_Task = sys_tick_ms;
        }
        Multi_Segment_write_Digits(&Display, count);
       
    }
    
}