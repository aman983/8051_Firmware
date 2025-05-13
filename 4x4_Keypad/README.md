## How to use Keypad ?

```c
#include "Keypad.h" // include Keypad header file
    unsigned char button_lable = 0; // button identifier 


    // Keypad connetion configurations 
    Keypad_config_t pad = {
        .ROW_Port = PORT_0,
        .COL_Port = PORT_0,
        .R1 = PIN_0,
        .R2 = PIN_1,
        .R3 = PIN_2,
        .R4 = PIN_3,
        .C1 = PIN_4,
        .C2 = PIN_5,
        .C3 = PIN_6,
        .C4 = PIN_7,
    };


    // Configure LED to check output
    GPIO_Config_t leds = {
        .Port = PORT_1,
        .Pin = PIN_0,
        .Mode = GPIO_OUTPUT
    };

    // initalize Keypad
    Keypad_Init(&pad);

    while (1)
    {
        // Read Keypad buttons (Button lable range -> {0..15} default 0xFF(no press dected) )
        // A Map LUT(Look Up Table) can be declared to assign labels for button
        Keypad_Read(&pad, &button_lable); 

        // if the value is not default then write the value to the led port
        if(button_lable != 0xFF){
            // we write value of lable to the 8bit port but you can assign a LUT to get desired output
            GPIO_PORT_Write(&leds, button_lable);
        }
        
    }
```

## Result
<div align="center"> <img src="../Assets/KeyPad.gif" alt="Result" />
</div>

