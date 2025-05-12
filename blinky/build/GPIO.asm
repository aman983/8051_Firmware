;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module GPIO
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_PORT_Write_PARM_2
	.globl _GPIO_Read_PARM_2
	.globl _GPIO_Write_PARM_2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _GPIO_Write
	.globl _GPIO_Read
	.globl _GPIO_Toggle
	.globl _GPIO_PORT_Write
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_GPIO_Write_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
_GPIO_Read_PARM_2:
	.ds 3
_GPIO_Read_config_65536_12:
	.ds 3
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_GPIO_PORT_Write_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'GPIO_Write'
;------------------------------------------------------------
;state                     Allocated with name '_GPIO_Write_PARM_2'
;config                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../HAL/GPIO.c:5: HAL_ERR_e GPIO_Write(GPIO_Config_t *config, GPIO_State_e state){
;	-----------------------------------------
;	 function GPIO_Write
;	-----------------------------------------
_GPIO_Write:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../HAL/GPIO.c:6: if(config->Mode == GPIO_OUTPUT){
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00136$
	ljmp	00117$
00136$:
;	../HAL/GPIO.c:9: if(state == GPIO_HIGH){
	mov	a,#0x01
	cjne	a,_GPIO_Write_PARM_2,00137$
	sjmp	00138$
00137$:
	ljmp	00114$
00138$:
;	../HAL/GPIO.c:11: switch (config->Port)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x03
	jnc	00139$
	ljmp	00105$
00139$:
	mov	a,r4
	add	a,r4
;	../HAL/GPIO.c:13: case PORT_0:
	mov	dptr,#00140$
	jmp	@a+dptr
00140$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	../HAL/GPIO.c:14: P0 |= (1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00143$
00141$:
	add	a,acc
00143$:
	djnz	b,00141$
	mov	r2,a
	orl	_P0,a
;	../HAL/GPIO.c:15: break;
	ljmp	00115$
;	../HAL/GPIO.c:17: case PORT_1:
00102$:
;	../HAL/GPIO.c:18: P1 |= (1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00146$
00144$:
	add	a,acc
00146$:
	djnz	b,00144$
	mov	r2,a
	orl	_P1,a
;	../HAL/GPIO.c:19: break;
	ljmp	00115$
;	../HAL/GPIO.c:21: case PORT_2:
00103$:
;	../HAL/GPIO.c:22: P2 |= (1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00149$
00147$:
	add	a,acc
00149$:
	djnz	b,00147$
	mov	r2,a
	orl	_P2,a
;	../HAL/GPIO.c:23: break;
	ljmp	00115$
;	../HAL/GPIO.c:25: case PORT_3:
00104$:
;	../HAL/GPIO.c:26: P3 |= (1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00152$
00150$:
	add	a,acc
00152$:
	djnz	b,00150$
	mov	r2,a
	orl	_P3,a
;	../HAL/GPIO.c:27: break;
	ljmp	00115$
;	../HAL/GPIO.c:29: default:
00105$:
;	../HAL/GPIO.c:30: return HAL_GPIO_CONFIG_MISMATCH;
	mov	dpl,#0x01
	ret
;	../HAL/GPIO.c:32: }
00114$:
;	../HAL/GPIO.c:34: switch (config->Port)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x03
	jnc	00153$
	ljmp	00111$
00153$:
	mov	a,r4
	add	a,r4
;	../HAL/GPIO.c:36: case PORT_0:
	mov	dptr,#00154$
	jmp	@a+dptr
00154$:
	sjmp	00107$
	sjmp	00108$
	sjmp	00109$
	sjmp	00110$
00107$:
;	../HAL/GPIO.c:37: P0 &= ~(1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00157$
00155$:
	add	a,acc
00157$:
	djnz	b,00155$
	cpl	a
	mov	r2,a
	anl	_P0,a
;	../HAL/GPIO.c:38: break;
;	../HAL/GPIO.c:40: case PORT_1:
	sjmp	00115$
00108$:
;	../HAL/GPIO.c:41: P1 &= ~(1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00160$
00158$:
	add	a,acc
00160$:
	djnz	b,00158$
	cpl	a
	mov	r2,a
	anl	_P1,a
;	../HAL/GPIO.c:42: break;
;	../HAL/GPIO.c:44: case PORT_2:
	sjmp	00115$
00109$:
;	../HAL/GPIO.c:45: P2 &= ~(1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00163$
00161$:
	add	a,acc
00163$:
	djnz	b,00161$
	cpl	a
	mov	r2,a
	anl	_P2,a
;	../HAL/GPIO.c:46: break;
;	../HAL/GPIO.c:48: case PORT_3:
	sjmp	00115$
00110$:
;	../HAL/GPIO.c:49: P3 &= ~(1 << config->Pin);
	inc	r5
	cjne	r5,#0x00,00164$
	inc	r6
00164$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00167$
00165$:
	add	a,acc
00167$:
	djnz	b,00165$
	cpl	a
	mov	r5,a
	anl	_P3,a
;	../HAL/GPIO.c:50: break;
;	../HAL/GPIO.c:53: default:
	sjmp	00115$
00111$:
;	../HAL/GPIO.c:54: return HAL_GPIO_CONFIG_MISMATCH;
	mov	dpl,#0x01
;	../HAL/GPIO.c:56: }
	ret
00115$:
;	../HAL/GPIO.c:58: return HAL_OK;
	mov	dpl,#0x00
	ret
00117$:
;	../HAL/GPIO.c:61: return HAL_GPIO_CONFIG_MISMATCH;
	mov	dpl,#0x01
;	../HAL/GPIO.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_Read'
;------------------------------------------------------------
;state                     Allocated with name '_GPIO_Read_PARM_2'
;config                    Allocated with name '_GPIO_Read_config_65536_12'
;------------------------------------------------------------
;	../HAL/GPIO.c:65: HAL_ERR_e GPIO_Read(GPIO_Config_t *config, GPIO_State_e *state){
;	-----------------------------------------
;	 function GPIO_Read
;	-----------------------------------------
_GPIO_Read:
	mov	_GPIO_Read_config_65536_12,dpl
	mov	(_GPIO_Read_config_65536_12 + 1),dph
	mov	(_GPIO_Read_config_65536_12 + 2),b
;	../HAL/GPIO.c:66: if(config->Mode == GPIO_INPUT || config->Mode == GPIO_INPUT_PULLUP){
	mov	a,#0x02
	add	a,_GPIO_Read_config_65536_12
	mov	r2,a
	clr	a
	addc	a,(_GPIO_Read_config_65536_12 + 1)
	mov	r3,a
	mov	r4,(_GPIO_Read_config_65536_12 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,00144$
	sjmp	00107$
00144$:
	cjne	r4,#0x02,00145$
	sjmp	00146$
00145$:
	ljmp	00108$
00146$:
00107$:
;	../HAL/GPIO.c:67: switch(config->Port){
	mov	dpl,_GPIO_Read_config_65536_12
	mov	dph,(_GPIO_Read_config_65536_12 + 1)
	mov	b,(_GPIO_Read_config_65536_12 + 2)
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x03
	jnc	00147$
	ljmp	00105$
00147$:
	mov	a,r4
	add	a,r4
	add	a,r4
	mov	dptr,#00148$
	jmp	@a+dptr
00148$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
;	../HAL/GPIO.c:68: case PORT_0: *state = (P0 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
00101$:
	mov	r2,_GPIO_Read_PARM_2
	mov	r3,(_GPIO_Read_PARM_2 + 1)
	mov	r4,(_GPIO_Read_PARM_2 + 2)
	mov	a,#0x01
	add	a,_GPIO_Read_config_65536_12
	mov	r0,a
	clr	a
	addc	a,(_GPIO_Read_config_65536_12 + 1)
	mov	r1,a
	mov	r7,(_GPIO_Read_config_65536_12 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	b,r0
	inc	b
	mov	r0,#0x01
	mov	r7,#0x00
	sjmp	00150$
00149$:
	mov	a,r0
	add	a,r0
	mov	r0,a
	mov	a,r7
	rlc	a
	mov	r7,a
00150$:
	djnz	b,00149$
	mov	r5,_P0
	mov	r6,#0x00
	mov	a,r5
	anl	ar0,a
	mov	a,r6
	anl	ar7,a
	mov	a,r0
	orl	a,r7
	jz	00112$
	mov	r6,#0x01
	mov	r7,#0x00
	sjmp	00113$
00112$:
	mov	r6,#0x00
	mov	r7,#0x00
00113$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
	ljmp	00106$
;	../HAL/GPIO.c:69: case PORT_1: *state = (P1 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
00102$:
	mov	r5,_GPIO_Read_PARM_2
	mov	r6,(_GPIO_Read_PARM_2 + 1)
	mov	r7,(_GPIO_Read_PARM_2 + 2)
	mov	a,#0x01
	add	a,_GPIO_Read_config_65536_12
	mov	r2,a
	clr	a
	addc	a,(_GPIO_Read_config_65536_12 + 1)
	mov	r3,a
	mov	r4,(_GPIO_Read_config_65536_12 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	r2,#0x01
	mov	r4,#0x00
	sjmp	00153$
00152$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r4
	rlc	a
	mov	r4,a
00153$:
	djnz	b,00152$
	mov	r1,_P1
	mov	r3,#0x00
	mov	a,r1
	anl	ar2,a
	mov	a,r3
	anl	ar4,a
	mov	a,r2
	orl	a,r4
	jz	00114$
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00115$
00114$:
	mov	r3,#0x00
	mov	r4,#0x00
00115$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
	ljmp	00106$
;	../HAL/GPIO.c:70: case PORT_2: *state = (P2 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
00103$:
	mov	r5,_GPIO_Read_PARM_2
	mov	r6,(_GPIO_Read_PARM_2 + 1)
	mov	r7,(_GPIO_Read_PARM_2 + 2)
	mov	a,#0x01
	add	a,_GPIO_Read_config_65536_12
	mov	r2,a
	clr	a
	addc	a,(_GPIO_Read_config_65536_12 + 1)
	mov	r3,a
	mov	r4,(_GPIO_Read_config_65536_12 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	r2,#0x01
	mov	r4,#0x00
	sjmp	00156$
00155$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r4
	rlc	a
	mov	r4,a
00156$:
	djnz	b,00155$
	mov	r1,_P2
	mov	r3,#0x00
	mov	a,r1
	anl	ar2,a
	mov	a,r3
	anl	ar4,a
	mov	a,r2
	orl	a,r4
	jz	00116$
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00117$
00116$:
	mov	r3,#0x00
	mov	r4,#0x00
00117$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	../HAL/GPIO.c:71: case PORT_3: *state = (P3 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
	sjmp	00106$
00104$:
	mov	r5,_GPIO_Read_PARM_2
	mov	r6,(_GPIO_Read_PARM_2 + 1)
	mov	r7,(_GPIO_Read_PARM_2 + 2)
	mov	a,#0x01
	add	a,_GPIO_Read_config_65536_12
	mov	r2,a
	clr	a
	addc	a,(_GPIO_Read_config_65536_12 + 1)
	mov	r3,a
	mov	r4,(_GPIO_Read_config_65536_12 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	r2,#0x01
	mov	r4,#0x00
	sjmp	00159$
00158$:
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r4
	rlc	a
	mov	r4,a
00159$:
	djnz	b,00158$
	mov	r1,_P3
	mov	r3,#0x00
	mov	a,r1
	anl	ar2,a
	mov	a,r3
	anl	ar4,a
	mov	a,r2
	orl	a,r4
	jz	00118$
	mov	r3,#0x01
	mov	r4,#0x00
	sjmp	00119$
00118$:
	mov	r3,#0x00
	mov	r4,#0x00
00119$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	../HAL/GPIO.c:72: default: return HAL_GPIO_CONFIG_MISMATCH;
	sjmp	00106$
00105$:
	mov	dpl,#0x01
;	../HAL/GPIO.c:73: }
	ret
00106$:
;	../HAL/GPIO.c:74: return HAL_OK;
	mov	dpl,#0x00
	ret
00108$:
;	../HAL/GPIO.c:76: return HAL_GPIO_CONFIG_MISMATCH;
	mov	dpl,#0x01
;	../HAL/GPIO.c:77: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_Toggle'
;------------------------------------------------------------
;config                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../HAL/GPIO.c:80: HAL_ERR_e GPIO_Toggle(GPIO_Config_t *config) {
;	-----------------------------------------
;	 function GPIO_Toggle
;	-----------------------------------------
_GPIO_Toggle:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../HAL/GPIO.c:81: if(config->Mode != GPIO_OUTPUT) {
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jz	00102$
;	../HAL/GPIO.c:82: return HAL_GPIO_CONFIG_MISMATCH;
	mov	dpl,#0x01
	ret
00102$:
;	../HAL/GPIO.c:85: switch (config->Port) {
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x03
	jnc	00120$
	ljmp	00107$
00120$:
	mov	a,r4
	add	a,r4
;	../HAL/GPIO.c:86: case PORT_0:
	mov	dptr,#00121$
	jmp	@a+dptr
00121$:
	sjmp	00103$
	sjmp	00104$
	sjmp	00105$
	sjmp	00106$
00103$:
;	../HAL/GPIO.c:87: P0 ^= (1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00124$
00122$:
	add	a,acc
00124$:
	djnz	b,00122$
	mov	r2,a
	xrl	_P0,a
;	../HAL/GPIO.c:88: break;
;	../HAL/GPIO.c:90: case PORT_1:
	sjmp	00108$
00104$:
;	../HAL/GPIO.c:91: P1 ^= (1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00127$
00125$:
	add	a,acc
00127$:
	djnz	b,00125$
	mov	r2,a
	xrl	_P1,a
;	../HAL/GPIO.c:92: break;
;	../HAL/GPIO.c:94: case PORT_2:
	sjmp	00108$
00105$:
;	../HAL/GPIO.c:95: P2 ^= (1 << config->Pin);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00130$
00128$:
	add	a,acc
00130$:
	djnz	b,00128$
	mov	r2,a
	xrl	_P2,a
;	../HAL/GPIO.c:96: break;
;	../HAL/GPIO.c:98: case PORT_3:
	sjmp	00108$
00106$:
;	../HAL/GPIO.c:99: P3 ^= (1 << config->Pin);
	inc	r5
	cjne	r5,#0x00,00131$
	inc	r6
00131$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00134$
00132$:
	add	a,acc
00134$:
	djnz	b,00132$
	mov	r5,a
	xrl	_P3,a
;	../HAL/GPIO.c:100: break;
;	../HAL/GPIO.c:102: default:
	sjmp	00108$
00107$:
;	../HAL/GPIO.c:103: return HAL_GPIO_CONFIG_MISMATCH;
	mov	dpl,#0x01
;	../HAL/GPIO.c:104: }
	ret
00108$:
;	../HAL/GPIO.c:106: return HAL_OK;
	mov	dpl,#0x00
;	../HAL/GPIO.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GPIO_PORT_Write'
;------------------------------------------------------------
;val                       Allocated with name '_GPIO_PORT_Write_PARM_2'
;config                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../HAL/GPIO.c:109: HAL_ERR_e GPIO_PORT_Write(GPIO_Config_t *config, unsigned char val){
;	-----------------------------------------
;	 function GPIO_PORT_Write
;	-----------------------------------------
_GPIO_PORT_Write:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../HAL/GPIO.c:110: if(config->Mode == GPIO_OUTPUT){
	mov	a,#0x02
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	jnz	00108$
;	../HAL/GPIO.c:111: switch (config->Port)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r7,a
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
;	../HAL/GPIO.c:113: case PORT_0:
	mov	dptr,#00121$
	jmp	@a+dptr
00121$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	../HAL/GPIO.c:114: P0 = val;
	mov	_P0,_GPIO_PORT_Write_PARM_2
;	../HAL/GPIO.c:115: break;
;	../HAL/GPIO.c:117: case PORT_1:
	sjmp	00106$
00102$:
;	../HAL/GPIO.c:118: P1 = val;
	mov	_P1,_GPIO_PORT_Write_PARM_2
;	../HAL/GPIO.c:119: break;
;	../HAL/GPIO.c:121: case PORT_2:
	sjmp	00106$
00103$:
;	../HAL/GPIO.c:122: P2 = val;
	mov	_P2,_GPIO_PORT_Write_PARM_2
;	../HAL/GPIO.c:123: break;
;	../HAL/GPIO.c:125: case PORT_3:
	sjmp	00106$
00104$:
;	../HAL/GPIO.c:126: P3 = val;
	mov	_P3,_GPIO_PORT_Write_PARM_2
;	../HAL/GPIO.c:127: break;
;	../HAL/GPIO.c:129: default:
	sjmp	00106$
00105$:
;	../HAL/GPIO.c:130: return HAL_GPIO_CONFIG_MISMATCH;
	mov	dpl,#0x01
;	../HAL/GPIO.c:132: }
	ret
00106$:
;	../HAL/GPIO.c:133: return HAL_OK;
	mov	dpl,#0x00
	ret
00108$:
;	../HAL/GPIO.c:135: return HAL_GPIO_CONFIG_MISMATCH;
	mov	dpl,#0x01
;	../HAL/GPIO.c:136: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
