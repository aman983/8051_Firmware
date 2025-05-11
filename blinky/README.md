## How to used HAL GPIO ?
- If you want to use any componets such as (GPIO, ADC, UART etc) then a specific struct must be declared befor initalising the component.
- Suppose you want to use GPIO in your firmware then you must include the <code>GPIO.h</code> and use the following to enable GPIO.
```c
// Before using the GPIO always make a valid PORT configuration this helps to keep the code in order
GPIO_Config_t LED1 = {
        .Port = PORT_0, 
        .Pin = PIN_0,   // PORT_0 -> Pin_0 is selected
        .Mode = GPIO_OUTPUT // GPIO mode as output for driving LED
    };

HAL_ERR_e ret; // used for ERROR Handeling


ret = GPIO_Write(GPIO_Config_t *config, GPIO_State_e GPIO_HIGH); // Write PIN 0 of PORT0 High

ret = GPIO_Write(GPIO_Config_t *config, GPIO_State_e GPIO_LOW); // Write PIN 0 of PORT0 Low

if (ret == HAL_OK){
    // Success in operation
}else{
    // unsuccessfull use check Debug fn to get error cause
}

```

## Result
<div align="center"> 
  ![Result](../Assets/GPIO_Blinky.gif)
</div>
