;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module 7_Seg
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Tim_delay_ms
	.globl _GPIO_PORT_Write
	.globl _GPIO_Write
	.globl _Multi_Segment_write_PARM_2
	.globl _Segment_write_number_PARM_3
	.globl _Segment_write_number_PARM_2
	.globl _Segment_Init
	.globl _Segment_write_number
	.globl _Multi_Segment_write
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
_Seg_port:
	.ds 3
_Seg_en_Port:
	.ds 3
_Segment_write_number_PARM_2:
	.ds 1
_Segment_write_number_PARM_3:
	.ds 1
_Segment_write_number_config_65536_12:
	.ds 3
_Segment_write_number_i_131072_14:
	.ds 1
_Segment_write_number_i_131072_18:
	.ds 1
_Multi_Segment_write_PARM_2:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'Segment_Init'
;------------------------------------------------------------
;config                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../HAL/7_Seg.c:23: void Segment_Init(Seg_config_t *config){
;	-----------------------------------------
;	 function Segment_Init
;	-----------------------------------------
_Segment_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	../HAL/7_Seg.c:24: Seg_port.Port = config->Segment_Port;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	mov	_Seg_port,r4
;	../HAL/7_Seg.c:25: Seg_port.Mode = GPIO_OUTPUT;
	mov	(_Seg_port + 0x0002),#0x00
;	../HAL/7_Seg.c:27: Seg_en_Port.Port = config->Seg_Enable_Port;
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	_Seg_en_Port,r5
;	../HAL/7_Seg.c:28: Seg_en_Port.Mode = GPIO_OUTPUT;
	mov	(_Seg_en_Port + 0x0002),#0x00
;	../HAL/7_Seg.c:29: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Segment_write_number'
;------------------------------------------------------------
;display_number            Allocated with name '_Segment_write_number_PARM_2'
;number                    Allocated with name '_Segment_write_number_PARM_3'
;config                    Allocated with name '_Segment_write_number_config_65536_12'
;i                         Allocated with name '_Segment_write_number_i_131072_14'
;i                         Allocated with name '_Segment_write_number_i_131072_18'
;------------------------------------------------------------
;	../HAL/7_Seg.c:32: void Segment_write_number(Seg_config_t *config, unsigned char display_number, unsigned char number){
;	-----------------------------------------
;	 function Segment_write_number
;	-----------------------------------------
_Segment_write_number:
	mov	_Segment_write_number_config_65536_12,dpl
	mov	(_Segment_write_number_config_65536_12 + 1),dph
	mov	(_Segment_write_number_config_65536_12 + 2),b
;	../HAL/7_Seg.c:35: for(unsigned char i =0; i<4; i++){
	mov	a,#0x02
	add	a,_Segment_write_number_config_65536_12
	mov	r2,a
	clr	a
	addc	a,(_Segment_write_number_config_65536_12 + 1)
	mov	r3,a
	mov	r4,(_Segment_write_number_config_65536_12 + 2)
	mov	_Segment_write_number_i_131072_14,#0x00
00107$:
	mov	a,#0x100 - 0x04
	add	a,_Segment_write_number_i_131072_14
	jc	00101$
;	../HAL/7_Seg.c:36: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
	mov	a,_Segment_write_number_i_131072_14
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	(_Seg_en_Port + 0x0001),r5
;	../HAL/7_Seg.c:37: GPIO_Write(&Seg_en_Port, GPIO_LOW);
	mov	_GPIO_Write_PARM_2,#0x00
	mov	dptr,#_Seg_en_Port
	mov	b,#0x40
	push	ar4
	push	ar3
	push	ar2
	lcall	_GPIO_Write
	pop	ar2
	pop	ar3
	pop	ar4
;	../HAL/7_Seg.c:35: for(unsigned char i =0; i<4; i++){
	inc	_Segment_write_number_i_131072_14
	sjmp	00107$
00101$:
;	../HAL/7_Seg.c:39: GPIO_PORT_Write(&Seg_port,  seg_digit_map[number % 10]);
	mov	r6,_Segment_write_number_PARM_3
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_seg_digit_map
	mov	dpl,a
	mov	a,r7
	addc	a,#(_seg_digit_map >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_GPIO_PORT_Write_PARM_2,a
	mov	dptr,#_Seg_port
	mov	b,#0x40
	lcall	_GPIO_PORT_Write
;	../HAL/7_Seg.c:40: if(display_number < 4){
	mov	a,#0x100 - 0x04
	add	a,_Segment_write_number_PARM_2
	jc	00103$
;	../HAL/7_Seg.c:41: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
	mov	a,#0x02
	add	a,_Segment_write_number_config_65536_12
	mov	r5,a
	clr	a
	addc	a,(_Segment_write_number_config_65536_12 + 1)
	mov	r6,a
	mov	r7,(_Segment_write_number_config_65536_12 + 2)
	mov	a,_Segment_write_number_PARM_2
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	(_Seg_en_Port + 0x0001),r5
;	../HAL/7_Seg.c:42: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
	mov	_GPIO_Write_PARM_2,#0x01
	mov	dptr,#_Seg_en_Port
	mov	b,#0x40
	lcall	_GPIO_Write
	sjmp	00104$
00103$:
;	../HAL/7_Seg.c:44: return;
	ret
00104$:
;	../HAL/7_Seg.c:46: Tim_delay_ms(1);
	mov	dptr,#0x0001
	lcall	_Tim_delay_ms
;	../HAL/7_Seg.c:48: for(unsigned char i =0; i<4; i++){
	mov	a,#0x02
	add	a,_Segment_write_number_config_65536_12
	mov	r5,a
	clr	a
	addc	a,(_Segment_write_number_config_65536_12 + 1)
	mov	r6,a
	mov	r7,(_Segment_write_number_config_65536_12 + 2)
	mov	_Segment_write_number_i_131072_18,#0x00
00110$:
	mov	a,#0x100 - 0x04
	add	a,_Segment_write_number_i_131072_18
	jc	00112$
;	../HAL/7_Seg.c:49: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
	mov	a,_Segment_write_number_i_131072_18
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
	mov	(_Seg_en_Port + 0x0001),r2
;	../HAL/7_Seg.c:50: GPIO_Write(&Seg_en_Port, GPIO_LOW);
	mov	_GPIO_Write_PARM_2,#0x00
	mov	dptr,#_Seg_en_Port
	mov	b,#0x40
	push	ar7
	push	ar6
	push	ar5
	lcall	_GPIO_Write
	pop	ar5
	pop	ar6
	pop	ar7
;	../HAL/7_Seg.c:48: for(unsigned char i =0; i<4; i++){
	inc	_Segment_write_number_i_131072_18
	sjmp	00110$
00112$:
;	../HAL/7_Seg.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Multi_Segment_write'
;------------------------------------------------------------
;number                    Allocated with name '_Multi_Segment_write_PARM_2'
;config                    Allocated to registers r5 r6 r7 
;is_negative               Allocated to registers 
;n                         Allocated to registers r3 r4 
;dig                       Allocated to registers 
;seg_no                    Allocated to registers r2 
;------------------------------------------------------------
;	../HAL/7_Seg.c:56: void Multi_Segment_write(Seg_config_t *config, int number){
;	-----------------------------------------
;	 function Multi_Segment_write
;	-----------------------------------------
_Multi_Segment_write:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	../HAL/7_Seg.c:58: int n = number;
	mov	r3,_Multi_Segment_write_PARM_2
	mov	r4,(_Multi_Segment_write_PARM_2 + 1)
;	../HAL/7_Seg.c:61: if(number > 9999){
	clr	c
	mov	a,#0x0f
	subb	a,r3
	mov	a,#(0x27 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	../HAL/7_Seg.c:62: n = 9999;
	mov	r3,#0x0f
	mov	r4,#0x27
	sjmp	00114$
00104$:
;	../HAL/7_Seg.c:63: }else if(number < 0){  // refine the negative number logic
	mov	a,r4
	jnb	acc.7,00114$
;	../HAL/7_Seg.c:65: n = 999;
	mov	r3,#0xe7
	mov	r4,#0x03
;	../HAL/7_Seg.c:68: while (n)
00114$:
	mov	r2,#0x00
00106$:
	mov	a,r3
	orl	a,r4
	jz	00109$
;	../HAL/7_Seg.c:72: dig = n % 10;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	r0,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	_Segment_write_number_PARM_3,r0
;	../HAL/7_Seg.c:74: Segment_write_number(config, seg_no, dig);
	mov	_Segment_write_number_PARM_2,r2
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_Segment_write_number
	pop	ar2
	pop	ar3
	pop	ar4
;	../HAL/7_Seg.c:75: n = n/10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
;	../HAL/7_Seg.c:76: seg_no++;
	inc	r2
	sjmp	00106$
00109$:
;	../HAL/7_Seg.c:79: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_seg_digit_map:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
