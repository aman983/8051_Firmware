;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module LCD16X2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_ms
	.globl _GPIO_PORT_Write
	.globl _GPIO_Write
	.globl _LCD_Write_Str_PARM_2
	.globl _Send_Data_PARM_2
	.globl _Send_Command_PARM_2
	.globl _Send_Command
	.globl _Send_Data
	.globl _LCD_Write_Str
	.globl _LCD_Init
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_LCD_Data_io:
	.ds 3
_Send_Command_PARM_2:
	.ds 1
_Send_Command_config_65536_11:
	.ds 3
_Send_Data_PARM_2:
	.ds 1
_Send_Data_config_65536_13:
	.ds 3
_LCD_Write_Str_PARM_2:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Send_Command'
;------------------------------------------------------------
;command                   Allocated with name '_Send_Command_PARM_2'
;config                    Allocated with name '_Send_Command_config_65536_11'
;------------------------------------------------------------
;	../HAL/LCD16X2.c:10: void Send_Command(LCD_Config_t *config, unsigned char command){
;	-----------------------------------------
;	 function Send_Command
;	-----------------------------------------
_Send_Command:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_Send_Command_config_65536_11,dpl
	mov	(_Send_Command_config_65536_11 + 1),dph
	mov	(_Send_Command_config_65536_11 + 2),b
;	../HAL/LCD16X2.c:11: LCD_Data_io.Port = config->Command_Port;
	mov	a,#0x01
	add	a,_Send_Command_config_65536_11
	mov	r2,a
	clr	a
	addc	a,(_Send_Command_config_65536_11 + 1)
	mov	r3,a
	mov	r4,(_Send_Command_config_65536_11 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	_LCD_Data_io,r7
;	../HAL/LCD16X2.c:12: LCD_Data_io.Pin = config->RS; 
	mov	a,#0x03
	add	a,_Send_Command_config_65536_11
	mov	r5,a
	clr	a
	addc	a,(_Send_Command_config_65536_11 + 1)
	mov	r6,a
	mov	r7,(_Send_Command_config_65536_11 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	(_LCD_Data_io + 0x0001),r5
;	../HAL/LCD16X2.c:13: GPIO_Write(&LCD_Data_io, GPIO_LOW);
	mov	_GPIO_Write_PARM_2,#0x00
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
	push	ar4
	push	ar3
	push	ar2
	lcall	_GPIO_Write
;	../HAL/LCD16X2.c:14: LCD_Data_io.Pin = config->RW; 
	mov	a,#0x02
	add	a,_Send_Command_config_65536_11
	mov	r5,a
	clr	a
	addc	a,(_Send_Command_config_65536_11 + 1)
	mov	r6,a
	mov	r7,(_Send_Command_config_65536_11 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	(_LCD_Data_io + 0x0001),r5
;	../HAL/LCD16X2.c:15: GPIO_Write(&LCD_Data_io, GPIO_LOW);
	mov	_GPIO_Write_PARM_2,#0x00
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
	lcall	_GPIO_Write
;	../HAL/LCD16X2.c:17: LCD_Data_io.Port = config->Data_Port;
	mov	dpl,_Send_Command_config_65536_11
	mov	dph,(_Send_Command_config_65536_11 + 1)
	mov	b,(_Send_Command_config_65536_11 + 2)
	lcall	__gptrget
	mov	r7,a
	mov	_LCD_Data_io,r7
;	../HAL/LCD16X2.c:18: GPIO_PORT_Write(&LCD_Data_io, command);
	mov	_GPIO_PORT_Write_PARM_2,_Send_Command_PARM_2
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
	lcall	_GPIO_PORT_Write
	pop	ar2
	pop	ar3
	pop	ar4
;	../HAL/LCD16X2.c:21: LCD_Data_io.Pin = config->EN; 
	mov	a,#0x04
	add	a,_Send_Command_config_65536_11
	mov	r5,a
	clr	a
	addc	a,(_Send_Command_config_65536_11 + 1)
	mov	r6,a
	mov	r7,(_Send_Command_config_65536_11 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	(_LCD_Data_io + 0x0001),r5
;	../HAL/LCD16X2.c:22: LCD_Data_io.Port = config->Command_Port;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	_LCD_Data_io,r2
;	../HAL/LCD16X2.c:24: GPIO_Write(&LCD_Data_io, GPIO_HIGH);
	mov	_GPIO_Write_PARM_2,#0x01
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
	lcall	_GPIO_Write
;	../HAL/LCD16X2.c:25: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
;	../HAL/LCD16X2.c:26: GPIO_Write(&LCD_Data_io, GPIO_LOW);
	mov	_GPIO_Write_PARM_2,#0x00
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
;	../HAL/LCD16X2.c:27: }
	ljmp	_GPIO_Write
;------------------------------------------------------------
;Allocation info for local variables in function 'Send_Data'
;------------------------------------------------------------
;command                   Allocated with name '_Send_Data_PARM_2'
;config                    Allocated with name '_Send_Data_config_65536_13'
;------------------------------------------------------------
;	../HAL/LCD16X2.c:29: void Send_Data(LCD_Config_t *config, unsigned char command){
;	-----------------------------------------
;	 function Send_Data
;	-----------------------------------------
_Send_Data:
	mov	_Send_Data_config_65536_13,dpl
	mov	(_Send_Data_config_65536_13 + 1),dph
	mov	(_Send_Data_config_65536_13 + 2),b
;	../HAL/LCD16X2.c:30: LCD_Data_io.Port = config->Command_Port;
	mov	a,#0x01
	add	a,_Send_Data_config_65536_13
	mov	r2,a
	clr	a
	addc	a,(_Send_Data_config_65536_13 + 1)
	mov	r3,a
	mov	r4,(_Send_Data_config_65536_13 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	_LCD_Data_io,r7
;	../HAL/LCD16X2.c:31: LCD_Data_io.Pin = config->RS; 
	mov	a,#0x03
	add	a,_Send_Data_config_65536_13
	mov	r5,a
	clr	a
	addc	a,(_Send_Data_config_65536_13 + 1)
	mov	r6,a
	mov	r7,(_Send_Data_config_65536_13 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	(_LCD_Data_io + 0x0001),r5
;	../HAL/LCD16X2.c:32: GPIO_Write(&LCD_Data_io, GPIO_HIGH);
	mov	_GPIO_Write_PARM_2,#0x01
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
	push	ar4
	push	ar3
	push	ar2
	lcall	_GPIO_Write
;	../HAL/LCD16X2.c:33: LCD_Data_io.Pin = config->RW; 
	mov	a,#0x02
	add	a,_Send_Data_config_65536_13
	mov	r5,a
	clr	a
	addc	a,(_Send_Data_config_65536_13 + 1)
	mov	r6,a
	mov	r7,(_Send_Data_config_65536_13 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	(_LCD_Data_io + 0x0001),r5
;	../HAL/LCD16X2.c:34: GPIO_Write(&LCD_Data_io, GPIO_LOW);
	mov	_GPIO_Write_PARM_2,#0x00
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
	lcall	_GPIO_Write
;	../HAL/LCD16X2.c:36: LCD_Data_io.Port = config->Data_Port;
	mov	dpl,_Send_Data_config_65536_13
	mov	dph,(_Send_Data_config_65536_13 + 1)
	mov	b,(_Send_Data_config_65536_13 + 2)
	lcall	__gptrget
	mov	r7,a
	mov	_LCD_Data_io,r7
;	../HAL/LCD16X2.c:37: GPIO_PORT_Write(&LCD_Data_io, command);
	mov	_GPIO_PORT_Write_PARM_2,_Send_Data_PARM_2
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
	lcall	_GPIO_PORT_Write
	pop	ar2
	pop	ar3
	pop	ar4
;	../HAL/LCD16X2.c:40: LCD_Data_io.Pin = config->EN; 
	mov	a,#0x04
	add	a,_Send_Data_config_65536_13
	mov	r5,a
	clr	a
	addc	a,(_Send_Data_config_65536_13 + 1)
	mov	r6,a
	mov	r7,(_Send_Data_config_65536_13 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	(_LCD_Data_io + 0x0001),r5
;	../HAL/LCD16X2.c:41: LCD_Data_io.Port = config->Command_Port;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	_LCD_Data_io,r2
;	../HAL/LCD16X2.c:43: GPIO_Write(&LCD_Data_io, GPIO_HIGH);
	mov	_GPIO_Write_PARM_2,#0x01
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
	lcall	_GPIO_Write
;	../HAL/LCD16X2.c:44: delay_ms(1);
	mov	dptr,#0x0001
	lcall	_delay_ms
;	../HAL/LCD16X2.c:45: GPIO_Write(&LCD_Data_io, GPIO_LOW);
	mov	_GPIO_Write_PARM_2,#0x00
	mov	dptr,#_LCD_Data_io
	mov	b,#0x40
;	../HAL/LCD16X2.c:46: }
	ljmp	_GPIO_Write
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Write_Str'
;------------------------------------------------------------
;str                       Allocated with name '_LCD_Write_Str_PARM_2'
;config                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../HAL/LCD16X2.c:48: void LCD_Write_Str(LCD_Config_t *config, unsigned char *str){
;	-----------------------------------------
;	 function LCD_Write_Str
;	-----------------------------------------
_LCD_Write_Str:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../HAL/LCD16X2.c:49: while (*str)
	mov	r2,_LCD_Write_Str_PARM_2
	mov	r3,(_LCD_Write_Str_PARM_2 + 1)
	mov	r4,(_LCD_Write_Str_PARM_2 + 2)
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	jz	00104$
;	../HAL/LCD16X2.c:51: Send_Data(config,*str);
	mov	_Send_Data_PARM_2,r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_Send_Data
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../HAL/LCD16X2.c:52: str++;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00104$:
;	../HAL/LCD16X2.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_Init'
;------------------------------------------------------------
;config                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../HAL/LCD16X2.c:57: void LCD_Init(LCD_Config_t *config){
;	-----------------------------------------
;	 function LCD_Init
;	-----------------------------------------
_LCD_Init:
;	../HAL/LCD16X2.c:58: LCD_Data_io.Port = config->Data_Port;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	mov	_LCD_Data_io,r4
;	../HAL/LCD16X2.c:59: LCD_Data_io.Mode = GPIO_OUTPUT;
	mov	(_LCD_Data_io + 0x0002),#0x00
;	../HAL/LCD16X2.c:61: Send_Command(config, 0x38);
	mov	_Send_Command_PARM_2,#0x38
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_Send_Command
	pop	ar5
	pop	ar6
	pop	ar7
;	../HAL/LCD16X2.c:62: Send_Command(config, 0x0C);
	mov	_Send_Command_PARM_2,#0x0c
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_Send_Command
	pop	ar5
	pop	ar6
	pop	ar7
;	../HAL/LCD16X2.c:63: Send_Command(config, 0x01);
	mov	_Send_Command_PARM_2,#0x01
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_Send_Command
	pop	ar5
	pop	ar6
	pop	ar7
;	../HAL/LCD16X2.c:64: Send_Command(config, 0x06);
	mov	_Send_Command_PARM_2,#0x06
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	../HAL/LCD16X2.c:67: }
	ljmp	_Send_Command
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
