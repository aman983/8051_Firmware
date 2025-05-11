#ifndef GPIO_H
#define GPIO_H


typedef enum GPIO_Port {
    PORT_0,
    PORT_1,
    PORT_2,
    PORT_3
}GPIO_Port_e;

typedef enum GPIO_Pin {
    PIN_0 =0U,
    PIN_1,
    PIN_2,
    PIN_3,
    PIN_4,
    PIN_5,
    PIN_6,
    PIN_7
}GPIO_Pin_e;

typedef enum GPIO_Mode {
    GPIO_OUTPUT,
    GPIO_INPUT,
    GPIO_INPUT_PULLUP
}GPIO_Mode_e;

typedef enum GPIO_State {
    GPIO_LOW,
    GPIO_HIGH
}GPIO_State_e;


typedef struct GPIO_Config
{
    GPIO_Port_e Port;
    GPIO_Pin_e Pin;
    GPIO_Mode_e Mode;
}GPIO_Config_t;


typedef enum HAL_ERR {
    HAL_OK,
    HAL_GPIO_CONFIG_MISMATCH,
    
    HAL_ERR
}HAL_ERR_e;

HAL_ERR_e GPIO_Write(GPIO_Config_t *config, GPIO_State_e state);
HAL_ERR_e GPIO_Read(GPIO_Config_t *config, GPIO_State_e *state);
HAL_ERR_e GPIO_Toggle(GPIO_Config_t *config);
HAL_ERR_e GPIO_PORT_Write(GPIO_Config_t *config, unsigned char val);

#endif