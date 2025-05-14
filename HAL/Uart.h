#ifndef UART_H
#define UART_H


typedef enum Uart_Baudrate {
    BAUD_2400 = 0U,
    BAUD_4800,
    BAUD_9600,
    BAUD_19200,
    BAUD_38400
}Uart_Baudrate_e;

void Uart_Init(Uart_Baudrate_e baudrate);
void Uart_Send(char D);
char Uart_Recv();
void Uart_Read_Data(char *Buffer, unsigned int Read_Size);
void Uart_Send_Str(char *Buffer);

#endif