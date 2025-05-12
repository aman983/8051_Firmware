;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module 7_Seg
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _LUT
	.globl _Tim_delay_ms
	.globl _GPIO_PORT_Write
	.globl _GPIO_Write
	.globl _Segment_Write_char_PARM_2
	.globl _Multi_Segment_write_Digits_PARM_2
	.globl _Segment_write_number_PARM_3
	.globl _Segment_write_number_PARM_2
	.globl _Segment_write_PARM_3
	.globl _Segment_write_PARM_2
	.globl _Segment_Init
	.globl _Segment_write
	.globl _Segment_write_number
	.globl _Multi_Segment_write_Digits
	.globl _Segment_Write_char
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
_Segment_write_PARM_2:
	.ds 1
_Segment_write_PARM_3:
	.ds 1
_Segment_write_config_65536_17:
	.ds 3
_Segment_write_i_131072_19:
	.ds 1
_Segment_write_i_131072_23:
	.ds 1
_Segment_write_number_PARM_2:
	.ds 1
_Segment_write_number_PARM_3:
	.ds 1
_Segment_write_number_config_65536_25:
	.ds 3
_Segment_write_number_i_131072_27:
	.ds 1
_Segment_write_number_i_131072_31:
	.ds 1
_Multi_Segment_write_Digits_PARM_2:
	.ds 2
_Multi_Segment_write_Digits_config_65536_33:
	.ds 3
_Multi_Segment_write_Digits_is_negative_65536_34:
	.ds 1
_Segment_Write_char_PARM_2:
	.ds 3
_Segment_Write_char_config_65536_40:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'LUT'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	../HAL/7_Seg.c:9: unsigned char LUT(char c) {
;	-----------------------------------------
;	 function LUT
;	-----------------------------------------
_LUT:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	../HAL/7_Seg.c:10: switch (c) {
	cjne	r7,#0x20,00169$
00169$:
	jnc	00170$
	ljmp	00157$
00170$:
	mov	a,r7
	add	a,#0xff - 0x7a
	jnc	00171$
	ljmp	00157$
00171$:
	mov	a,r7
	add	a,#0xe0
	mov	r7,a
	add	a,#(00172$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00173$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00172$:
	.db	00156$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00153$
	.db	00157$
	.db	00157$
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00155$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00112$
	.db	00114$
	.db	00116$
	.db	00118$
	.db	00120$
	.db	00122$
	.db	00124$
	.db	00126$
	.db	00128$
	.db	00130$
	.db	00157$
	.db	00132$
	.db	00157$
	.db	00134$
	.db	00136$
	.db	00138$
	.db	00140$
	.db	00142$
	.db	00144$
	.db	00146$
	.db	00148$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00150$
	.db	00152$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00154$
	.db	00157$
	.db	00112$
	.db	00114$
	.db	00116$
	.db	00118$
	.db	00120$
	.db	00122$
	.db	00124$
	.db	00126$
	.db	00128$
	.db	00130$
	.db	00157$
	.db	00132$
	.db	00157$
	.db	00134$
	.db	00136$
	.db	00138$
	.db	00140$
	.db	00142$
	.db	00144$
	.db	00146$
	.db	00148$
	.db	00157$
	.db	00157$
	.db	00157$
	.db	00150$
	.db	00152$
00173$:
	.db	00156$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00153$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00155$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00112$>>8
	.db	00114$>>8
	.db	00116$>>8
	.db	00118$>>8
	.db	00120$>>8
	.db	00122$>>8
	.db	00124$>>8
	.db	00126$>>8
	.db	00128$>>8
	.db	00130$>>8
	.db	00157$>>8
	.db	00132$>>8
	.db	00157$>>8
	.db	00134$>>8
	.db	00136$>>8
	.db	00138$>>8
	.db	00140$>>8
	.db	00142$>>8
	.db	00144$>>8
	.db	00146$>>8
	.db	00148$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00150$>>8
	.db	00152$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00154$>>8
	.db	00157$>>8
	.db	00112$>>8
	.db	00114$>>8
	.db	00116$>>8
	.db	00118$>>8
	.db	00120$>>8
	.db	00122$>>8
	.db	00124$>>8
	.db	00126$>>8
	.db	00128$>>8
	.db	00130$>>8
	.db	00157$>>8
	.db	00132$>>8
	.db	00157$>>8
	.db	00134$>>8
	.db	00136$>>8
	.db	00138$>>8
	.db	00140$>>8
	.db	00142$>>8
	.db	00144$>>8
	.db	00146$>>8
	.db	00148$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00157$>>8
	.db	00150$>>8
	.db	00152$>>8
;	../HAL/7_Seg.c:12: case '0': return 0x3F;
00101$:
	mov	dpl,#0x3f
	ret
;	../HAL/7_Seg.c:13: case '1': return 0x06;
00102$:
	mov	dpl,#0x06
	ret
;	../HAL/7_Seg.c:14: case '2': return 0x5B;
00103$:
	mov	dpl,#0x5b
	ret
;	../HAL/7_Seg.c:15: case '3': return 0x4F;
00104$:
	mov	dpl,#0x4f
	ret
;	../HAL/7_Seg.c:16: case '4': return 0x66;
00105$:
	mov	dpl,#0x66
	ret
;	../HAL/7_Seg.c:17: case '5': return 0x6D;
00106$:
	mov	dpl,#0x6d
	ret
;	../HAL/7_Seg.c:18: case '6': return 0x7D;
00107$:
	mov	dpl,#0x7d
	ret
;	../HAL/7_Seg.c:19: case '7': return 0x07;
00108$:
	mov	dpl,#0x07
	ret
;	../HAL/7_Seg.c:20: case '8': return 0x7F;
00109$:
	mov	dpl,#0x7f
	ret
;	../HAL/7_Seg.c:21: case '9': return 0x6F;
00110$:
	mov	dpl,#0x6f
	ret
;	../HAL/7_Seg.c:24: case 'A': case 'a': return 0x77;
00112$:
	mov	dpl,#0x77
	ret
;	../HAL/7_Seg.c:25: case 'B': case 'b': return 0x7C;
00114$:
	mov	dpl,#0x7c
	ret
;	../HAL/7_Seg.c:26: case 'C': case 'c': return 0x39;
00116$:
	mov	dpl,#0x39
	ret
;	../HAL/7_Seg.c:27: case 'D': case 'd': return 0x5E;
00118$:
	mov	dpl,#0x5e
	ret
;	../HAL/7_Seg.c:28: case 'E': case 'e': return 0x79;
00120$:
	mov	dpl,#0x79
;	../HAL/7_Seg.c:29: case 'F': case 'f': return 0x71;
	ret
00122$:
	mov	dpl,#0x71
;	../HAL/7_Seg.c:30: case 'G': case 'g': return 0x3D;
	ret
00124$:
	mov	dpl,#0x3d
;	../HAL/7_Seg.c:31: case 'H': case 'h': return 0x76;
	ret
00126$:
	mov	dpl,#0x76
;	../HAL/7_Seg.c:32: case 'I': case 'i': return 0x06;
	ret
00128$:
	mov	dpl,#0x06
;	../HAL/7_Seg.c:33: case 'J': case 'j': return 0x1E;
	ret
00130$:
	mov	dpl,#0x1e
;	../HAL/7_Seg.c:34: case 'L': case 'l': return 0x38;
	ret
00132$:
	mov	dpl,#0x38
;	../HAL/7_Seg.c:35: case 'N': case 'n': return 0x54;
	ret
00134$:
	mov	dpl,#0x54
;	../HAL/7_Seg.c:36: case 'O': case 'o': return 0x3F;
	ret
00136$:
	mov	dpl,#0x3f
;	../HAL/7_Seg.c:37: case 'P': case 'p': return 0x73;
	ret
00138$:
	mov	dpl,#0x73
;	../HAL/7_Seg.c:38: case 'Q': case 'q': return 0x67;
	ret
00140$:
	mov	dpl,#0x67
;	../HAL/7_Seg.c:39: case 'R': case 'r': return 0x50;
	ret
00142$:
	mov	dpl,#0x50
;	../HAL/7_Seg.c:40: case 'S': case 's': return 0x6D;
	ret
00144$:
	mov	dpl,#0x6d
;	../HAL/7_Seg.c:41: case 'T': case 't': return 0x78;
	ret
00146$:
	mov	dpl,#0x78
;	../HAL/7_Seg.c:42: case 'U': case 'u': return 0x3E;
	ret
00148$:
	mov	dpl,#0x3e
;	../HAL/7_Seg.c:43: case 'Y': case 'y': return 0x6E;
	ret
00150$:
	mov	dpl,#0x6e
;	../HAL/7_Seg.c:44: case 'Z': case 'z': return 0x5B;
	ret
00152$:
	mov	dpl,#0x5b
;	../HAL/7_Seg.c:47: case '-': return 0x40;
	ret
00153$:
	mov	dpl,#0x40
;	../HAL/7_Seg.c:48: case '_': return 0x08;
	ret
00154$:
	mov	dpl,#0x08
;	../HAL/7_Seg.c:49: case '=': return 0x48;
	ret
00155$:
	mov	dpl,#0x48
;	../HAL/7_Seg.c:50: case ' ': return 0x00;
	ret
00156$:
	mov	dpl,#0x00
;	../HAL/7_Seg.c:52: default: return 0x00;  // Blank for unsupported characters
	ret
00157$:
	mov	dpl,#0x00
;	../HAL/7_Seg.c:53: }
;	../HAL/7_Seg.c:54: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Segment_Init'
;------------------------------------------------------------
;config                    Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	../HAL/7_Seg.c:72: void Segment_Init(Seg_config_t *config){
;	-----------------------------------------
;	 function Segment_Init
;	-----------------------------------------
_Segment_Init:
;	../HAL/7_Seg.c:73: Seg_port.Port = config->Segment_Port;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	mov	_Seg_port,r4
;	../HAL/7_Seg.c:74: Seg_port.Mode = GPIO_OUTPUT;
	mov	(_Seg_port + 0x0002),#0x00
;	../HAL/7_Seg.c:76: Seg_en_Port.Port = config->Seg_Enable_Port;
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
;	../HAL/7_Seg.c:77: Seg_en_Port.Mode = GPIO_OUTPUT;
	mov	(_Seg_en_Port + 0x0002),#0x00
;	../HAL/7_Seg.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Segment_write'
;------------------------------------------------------------
;display_number            Allocated with name '_Segment_write_PARM_2'
;val                       Allocated with name '_Segment_write_PARM_3'
;config                    Allocated with name '_Segment_write_config_65536_17'
;i                         Allocated with name '_Segment_write_i_131072_19'
;i                         Allocated with name '_Segment_write_i_131072_23'
;------------------------------------------------------------
;	../HAL/7_Seg.c:81: void Segment_write(Seg_config_t *config, unsigned char display_number, unsigned char val){
;	-----------------------------------------
;	 function Segment_write
;	-----------------------------------------
_Segment_write:
	mov	_Segment_write_config_65536_17,dpl
	mov	(_Segment_write_config_65536_17 + 1),dph
	mov	(_Segment_write_config_65536_17 + 2),b
;	../HAL/7_Seg.c:83: for(unsigned char i =0; i<4; i++){
	mov	a,#0x02
	add	a,_Segment_write_config_65536_17
	mov	r2,a
	clr	a
	addc	a,(_Segment_write_config_65536_17 + 1)
	mov	r3,a
	mov	r4,(_Segment_write_config_65536_17 + 2)
	mov	_Segment_write_i_131072_19,#0x00
00107$:
	mov	a,#0x100 - 0x04
	add	a,_Segment_write_i_131072_19
	jc	00101$
;	../HAL/7_Seg.c:84: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
	mov	a,_Segment_write_i_131072_19
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
;	../HAL/7_Seg.c:85: GPIO_Write(&Seg_en_Port, GPIO_LOW);
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
;	../HAL/7_Seg.c:83: for(unsigned char i =0; i<4; i++){
	inc	_Segment_write_i_131072_19
	sjmp	00107$
00101$:
;	../HAL/7_Seg.c:87: GPIO_PORT_Write(&Seg_port,  val);
	mov	_GPIO_PORT_Write_PARM_2,_Segment_write_PARM_3
	mov	dptr,#_Seg_port
	mov	b,#0x40
	lcall	_GPIO_PORT_Write
;	../HAL/7_Seg.c:88: if(display_number < 4){
	mov	a,#0x100 - 0x04
	add	a,_Segment_write_PARM_2
	jc	00103$
;	../HAL/7_Seg.c:89: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
	mov	a,#0x02
	add	a,_Segment_write_config_65536_17
	mov	r5,a
	clr	a
	addc	a,(_Segment_write_config_65536_17 + 1)
	mov	r6,a
	mov	r7,(_Segment_write_config_65536_17 + 2)
	mov	a,_Segment_write_PARM_2
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
;	../HAL/7_Seg.c:90: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
	mov	_GPIO_Write_PARM_2,#0x01
	mov	dptr,#_Seg_en_Port
	mov	b,#0x40
	lcall	_GPIO_Write
	sjmp	00104$
00103$:
;	../HAL/7_Seg.c:92: return;
	ret
00104$:
;	../HAL/7_Seg.c:94: Tim_delay_ms(1);
	mov	dptr,#0x0001
	lcall	_Tim_delay_ms
;	../HAL/7_Seg.c:96: for(unsigned char i =0; i<4; i++){
	mov	a,#0x02
	add	a,_Segment_write_config_65536_17
	mov	r5,a
	clr	a
	addc	a,(_Segment_write_config_65536_17 + 1)
	mov	r6,a
	mov	r7,(_Segment_write_config_65536_17 + 2)
	mov	_Segment_write_i_131072_23,#0x00
00110$:
	mov	a,#0x100 - 0x04
	add	a,_Segment_write_i_131072_23
	jc	00112$
;	../HAL/7_Seg.c:97: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
	mov	a,_Segment_write_i_131072_23
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
;	../HAL/7_Seg.c:98: GPIO_Write(&Seg_en_Port, GPIO_LOW);
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
;	../HAL/7_Seg.c:96: for(unsigned char i =0; i<4; i++){
	inc	_Segment_write_i_131072_23
	sjmp	00110$
00112$:
;	../HAL/7_Seg.c:100: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Segment_write_number'
;------------------------------------------------------------
;display_number            Allocated with name '_Segment_write_number_PARM_2'
;number                    Allocated with name '_Segment_write_number_PARM_3'
;config                    Allocated with name '_Segment_write_number_config_65536_25'
;i                         Allocated with name '_Segment_write_number_i_131072_27'
;i                         Allocated with name '_Segment_write_number_i_131072_31'
;------------------------------------------------------------
;	../HAL/7_Seg.c:103: void Segment_write_number(Seg_config_t *config, unsigned char display_number, unsigned char number){
;	-----------------------------------------
;	 function Segment_write_number
;	-----------------------------------------
_Segment_write_number:
	mov	_Segment_write_number_config_65536_25,dpl
	mov	(_Segment_write_number_config_65536_25 + 1),dph
	mov	(_Segment_write_number_config_65536_25 + 2),b
;	../HAL/7_Seg.c:106: for(unsigned char i =0; i<4; i++){
	mov	a,#0x02
	add	a,_Segment_write_number_config_65536_25
	mov	r2,a
	clr	a
	addc	a,(_Segment_write_number_config_65536_25 + 1)
	mov	r3,a
	mov	r4,(_Segment_write_number_config_65536_25 + 2)
	mov	_Segment_write_number_i_131072_27,#0x00
00107$:
	mov	a,#0x100 - 0x04
	add	a,_Segment_write_number_i_131072_27
	jc	00101$
;	../HAL/7_Seg.c:107: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
	mov	a,_Segment_write_number_i_131072_27
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
;	../HAL/7_Seg.c:108: GPIO_Write(&Seg_en_Port, GPIO_LOW);
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
;	../HAL/7_Seg.c:106: for(unsigned char i =0; i<4; i++){
	inc	_Segment_write_number_i_131072_27
	sjmp	00107$
00101$:
;	../HAL/7_Seg.c:110: GPIO_PORT_Write(&Seg_port,  seg_digit_map[number % 10]);
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
;	../HAL/7_Seg.c:111: if(display_number < 4){
	mov	a,#0x100 - 0x04
	add	a,_Segment_write_number_PARM_2
	jc	00103$
;	../HAL/7_Seg.c:112: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
	mov	a,#0x02
	add	a,_Segment_write_number_config_65536_25
	mov	r5,a
	clr	a
	addc	a,(_Segment_write_number_config_65536_25 + 1)
	mov	r6,a
	mov	r7,(_Segment_write_number_config_65536_25 + 2)
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
;	../HAL/7_Seg.c:113: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
	mov	_GPIO_Write_PARM_2,#0x01
	mov	dptr,#_Seg_en_Port
	mov	b,#0x40
	lcall	_GPIO_Write
	sjmp	00104$
00103$:
;	../HAL/7_Seg.c:115: return;
	ret
00104$:
;	../HAL/7_Seg.c:117: Tim_delay_ms(1);
	mov	dptr,#0x0001
	lcall	_Tim_delay_ms
;	../HAL/7_Seg.c:119: for(unsigned char i =0; i<4; i++){
	mov	a,#0x02
	add	a,_Segment_write_number_config_65536_25
	mov	r5,a
	clr	a
	addc	a,(_Segment_write_number_config_65536_25 + 1)
	mov	r6,a
	mov	r7,(_Segment_write_number_config_65536_25 + 2)
	mov	_Segment_write_number_i_131072_31,#0x00
00110$:
	mov	a,#0x100 - 0x04
	add	a,_Segment_write_number_i_131072_31
	jc	00112$
;	../HAL/7_Seg.c:120: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
	mov	a,_Segment_write_number_i_131072_31
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
;	../HAL/7_Seg.c:121: GPIO_Write(&Seg_en_Port, GPIO_LOW);
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
;	../HAL/7_Seg.c:119: for(unsigned char i =0; i<4; i++){
	inc	_Segment_write_number_i_131072_31
	sjmp	00110$
00112$:
;	../HAL/7_Seg.c:124: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Multi_Segment_write_Digits'
;------------------------------------------------------------
;number                    Allocated with name '_Multi_Segment_write_Digits_PARM_2'
;config                    Allocated with name '_Multi_Segment_write_Digits_config_65536_33'
;is_negative               Allocated with name '_Multi_Segment_write_Digits_is_negative_65536_34'
;n                         Allocated to registers r3 r4 
;dig                       Allocated to registers r2 
;seg_no                    Allocated to registers 
;------------------------------------------------------------
;	../HAL/7_Seg.c:127: void Multi_Segment_write_Digits(Seg_config_t *config, int number){
;	-----------------------------------------
;	 function Multi_Segment_write_Digits
;	-----------------------------------------
_Multi_Segment_write_Digits:
	mov	_Multi_Segment_write_Digits_config_65536_33,dpl
	mov	(_Multi_Segment_write_Digits_config_65536_33 + 1),dph
	mov	(_Multi_Segment_write_Digits_config_65536_33 + 2),b
;	../HAL/7_Seg.c:129: int n = number;
	mov	r3,_Multi_Segment_write_Digits_PARM_2
	mov	r4,(_Multi_Segment_write_Digits_PARM_2 + 1)
;	../HAL/7_Seg.c:130: unsigned char dig = 0;
	mov	r2,#0x00
;	../HAL/7_Seg.c:132: if(number > 9999){
	clr	c
	mov	a,#0x0f
	subb	a,r3
	mov	a,#(0x27 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
;	../HAL/7_Seg.c:133: n = 9999;
	mov	r3,#0x0f
	mov	r4,#0x27
	sjmp	00105$
00104$:
;	../HAL/7_Seg.c:134: }else if(number < -999){ 
	clr	c
	mov	a,r3
	subb	a,#0x19
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x7c
	jnc	00105$
;	../HAL/7_Seg.c:135: n = -999;
	mov	r3,#0x19
	mov	r4,#0xfc
00105$:
;	../HAL/7_Seg.c:137: is_negative = (number < 0) ? true : false;
	mov	a,(_Multi_Segment_write_Digits_PARM_2 + 1)
	rlc	a
	clr	a
	rlc	a
;	../HAL/7_Seg.c:139: if(is_negative){
	mov	_Multi_Segment_write_Digits_is_negative_65536_34,a
	mov	r1,_Multi_Segment_write_Digits_is_negative_65536_34
	jz	00119$
;	../HAL/7_Seg.c:140: n *= -1;
	clr	c
	clr	a
	subb	a,r3
	mov	r3,a
	clr	a
	subb	a,r4
	mov	r4,a
;	../HAL/7_Seg.c:143: while (n)
00119$:
	mov	r0,#0x00
00108$:
	mov	a,r3
	orl	a,r4
	jz	00110$
;	../HAL/7_Seg.c:145: dig = n % 10;
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar4
	push	ar3
	push	ar1
	push	ar0
	lcall	__modsint
	mov	r6,dpl
	pop	ar0
	pop	ar1
	mov	ar2,r6
;	../HAL/7_Seg.c:147: Segment_write_number(config, seg_no, dig);
	mov	_Segment_write_number_PARM_2,r0
	mov	_Segment_write_number_PARM_3,r2
	mov	dpl,_Multi_Segment_write_Digits_config_65536_33
	mov	dph,(_Multi_Segment_write_Digits_config_65536_33 + 1)
	mov	b,(_Multi_Segment_write_Digits_config_65536_33 + 2)
	push	ar2
	push	ar1
	push	ar0
	lcall	_Segment_write_number
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	../HAL/7_Seg.c:148: n = n/10;
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r3
	mov	dph,r4
	push	ar2
	push	ar1
	push	ar0
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar0
	pop	ar1
	pop	ar2
;	../HAL/7_Seg.c:149: seg_no++;
	inc	r0
	sjmp	00108$
00110$:
;	../HAL/7_Seg.c:152: if(is_negative){
	mov	a,r1
	jz	00113$
;	../HAL/7_Seg.c:153: seg_no++;
	mov	a,r0
	inc	a
	mov	_Segment_write_number_PARM_2,a
;	../HAL/7_Seg.c:154: Segment_write_number(config, seg_no, dig);
	mov	_Segment_write_number_PARM_3,r2
	mov	dpl,_Multi_Segment_write_Digits_config_65536_33
	mov	dph,(_Multi_Segment_write_Digits_config_65536_33 + 1)
	mov	b,(_Multi_Segment_write_Digits_config_65536_33 + 2)
;	../HAL/7_Seg.c:157: }
	ljmp	_Segment_write_number
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Segment_Write_char'
;------------------------------------------------------------
;text                      Allocated with name '_Segment_Write_char_PARM_2'
;config                    Allocated with name '_Segment_Write_char_config_65536_40'
;g                         Allocated to registers 
;len                       Allocated to registers r1 
;------------------------------------------------------------
;	../HAL/7_Seg.c:160: void Segment_Write_char(Seg_config_t *config, char *text){
;	-----------------------------------------
;	 function Segment_Write_char
;	-----------------------------------------
_Segment_Write_char:
	mov	_Segment_Write_char_config_65536_40,dpl
	mov	(_Segment_Write_char_config_65536_40 + 1),dph
	mov	(_Segment_Write_char_config_65536_40 + 2),b
;	../HAL/7_Seg.c:161: unsigned char *g = text;
	mov	r2,_Segment_Write_char_PARM_2
	mov	r3,(_Segment_Write_char_PARM_2 + 1)
	mov	r4,(_Segment_Write_char_PARM_2 + 2)
;	../HAL/7_Seg.c:164: while (*g)
	mov	r1,#0x04
00105$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	jz	00108$
;	../HAL/7_Seg.c:166: if(len <= 4 && len != 0){
	mov	a,r1
	add	a,#0xff - 0x04
	jc	00102$
	mov	a,r1
	jz	00102$
;	../HAL/7_Seg.c:167: Segment_write(config, len-1, LUT(*g));
	mov	ar7,r1
	dec	r7
	mov	dpl,r0
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_LUT
	mov	_Segment_write_PARM_3,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	_Segment_write_PARM_2,r7
	mov	dpl,_Segment_Write_char_config_65536_40
	mov	dph,(_Segment_Write_char_config_65536_40 + 1)
	mov	b,(_Segment_Write_char_config_65536_40 + 2)
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_Segment_write
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
;	../HAL/7_Seg.c:168: g++;
	inc	r2
	cjne	r2,#0x00,00129$
	inc	r3
00129$:
;	../HAL/7_Seg.c:169: len--;
	dec	r1
	sjmp	00105$
00102$:
;	../HAL/7_Seg.c:171: return;
00108$:
;	../HAL/7_Seg.c:177: }
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
	.db #0x80	; 128
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
