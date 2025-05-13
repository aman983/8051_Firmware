## How to use Button ?


```c
#include "GPIO.h" // include GPIO header file
void main(){    
    GPIO_State_e State = GPIO_LOW; //Declare state of button

    // basic button GPIO config
    GPIO_Config_t button = {
        .Port = PORT_0,
        .Pin = PIN_0,
        .Mode = GPIO_INPUT
        
    };

    // Led Config to see the result
    GPIO_Config_t led = {
        .Port = PORT_0,
        .Pin = PIN_1,
        .Mode = GPIO_OUTPUT
        
    };
    while (1)
    {
        // Reads the GPIO and write the output to State variable
        GPIO_Read(&button, &State);

        // Led high if button is high
        if(State == GPIO_HIGH){
            GPIO_Write(&led, GPIO_HIGH);
        }else{
            GPIO_Write(&led, GPIO_LOW);
        }
    }
}
```

## Result
<div align="center"> <img src="../Assets/button.gif" alt="Result" />
</div>

