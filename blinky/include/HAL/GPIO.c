#include <8051.h>
#include "GPIO.h"


HAL_ERR_e GPIO_Write(GPIO_Config_t *config, GPIO_State_e state){
    if(config->Mode == GPIO_OUTPUT){
        
        
        if(state == GPIO_HIGH){
            
            switch (config->Port)
                {
                    case PORT_0:
                        P0 |= (1 << config->Pin);
                        break;

                    case PORT_1:
                        P1 |= (1 << config->Pin);
                        break;
                        
                    case PORT_2:
                        P2 |= (1 << config->Pin);
                        break;
                    
                    case PORT_3:
                        P3 |= (1 << config->Pin);
                        break;

                    default:
                        return HAL_GPIO_CONFIG_MISMATCH;
                        break;
                }
        }else{
            switch (config->Port)
                {
                    case PORT_0:
                        P0 &= ~(1 << config->Pin);
                        break;

                    case PORT_1:
                        P1 &= ~(1 << config->Pin);
                        break;
                        
                    case PORT_2:
                        P2 &= ~(1 << config->Pin);
                        break;
                    
                    case PORT_3:
                        P3 &= ~(1 << config->Pin);
                        break;
                    

                    default:
                        return HAL_GPIO_CONFIG_MISMATCH;
                        break;
                }
        }
        return HAL_OK;

    }
    return HAL_GPIO_CONFIG_MISMATCH;
}


HAL_ERR_e GPIO_Read(GPIO_Config_t *config, GPIO_State_e *state){
    if(config->Mode == GPIO_INPUT || config->Mode == GPIO_INPUT_PULLUP){
        switch(config->Port){
            case PORT_0: *state = (P0 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
            case PORT_1: *state = (P1 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
            case PORT_2: *state = (P2 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
            case PORT_3: *state = (P3 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
            default: return HAL_GPIO_CONFIG_MISMATCH;
        }
        return HAL_OK;
    }
    return HAL_GPIO_CONFIG_MISMATCH;
}


HAL_ERR_e GPIO_Toggle(GPIO_Config_t *config) {
    if(config->Mode != GPIO_OUTPUT) {
        return HAL_GPIO_CONFIG_MISMATCH;
    }

    switch (config->Port) {
        case PORT_0:
            P0 ^= (1 << config->Pin);
            break;

        case PORT_1:
            P1 ^= (1 << config->Pin);
            break;

        case PORT_2:
            P2 ^= (1 << config->Pin);
            break;

        case PORT_3:
            P3 ^= (1 << config->Pin);
            break;

        default:
            return HAL_GPIO_CONFIG_MISMATCH;
    }

    return HAL_OK;
}

HAL_ERR_e GPIO_PORT_Write(GPIO_Config_t *config, unsigned char val){
    if(config->Port == GPIO_OUTPUT){
        switch (config->Port)
        {
        case PORT_0:
            P0 = val;
            break;
            
        case PORT_1:
            P1 = val;
            break;
        
        case PORT_2:
            P2 = val;
            break;

        case PORT_3:
            P3 = val;
            break;
        
        default:
            return HAL_GPIO_CONFIG_MISMATCH;
            break;
        }
        return HAL_OK;
    }
    return HAL_GPIO_CONFIG_MISMATCH;
}
