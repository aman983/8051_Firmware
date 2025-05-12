## How to used Sys_tick.h ?

```c
#include "Sys_tick.h" 
// main library for getting systick val
// The variable sys_tick_ms is used in the main code after including the lib
#define Count_speed 10


unsigned long int Count_Task = 0; // always define task timers as long int

void main(){
    int count = 0;

    //Refer 7 segment Example
    Seg_config_t Display = {
        .Segment_Port = PORT_0,
        .Seg_Enable_Port = PORT_1,
        .Seg_Enable_Pins = {PIN_7, PIN_6, PIN_5, PIN_4}
    };

    Segment_Init(&Display); //Refer 7 segment Example
    
    Sys_Tick_Init(); // initalize systick
    
    while (1)
    {   
        // increase count once per 100ms
        if((sys_tick_ms - Count_Task) >= Count_speed){
            if(count == 9999){
                count = 0;
            }
            count++;
            Count_Task = sys_tick_ms;
        }

        // write the count value to the segments
        Multi_Segment_write_Digits(&Display, count);
       
    }
       
}

```

## Result
<div align="center"> <img src="../Assets/sys_tick_7seg_ex.gif" alt="Result" />
</div>

