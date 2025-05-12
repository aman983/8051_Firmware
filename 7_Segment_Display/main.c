#include <8051.h>
#include "7_Seg.h"
#include "GPIO.h"

void main(){

    Seg_config_t Display = {
        .Segment_Port = PORT_0,
        .Seg_Enable_Port = PORT_1,
        .Seg_Enable_Pins = {PIN_7, PIN_6, PIN_5, PIN_4}
    };

    Segment_Init(&Display);
    while (1)
    {   
        
        Multi_Segment_write_Digits(&Display, 1234);
        //Segment_Write_char(&Display, "ABCD");
       
    }
    
}