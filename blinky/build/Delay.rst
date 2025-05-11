                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module Delay
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_ms
                                     12 ;--------------------------------------------------------
                                     13 ; special function registers
                                     14 ;--------------------------------------------------------
                                     15 	.area RSEG    (ABS,DATA)
      000000                         16 	.org 0x0000
                                     17 ;--------------------------------------------------------
                                     18 ; special function bits
                                     19 ;--------------------------------------------------------
                                     20 	.area RSEG    (ABS,DATA)
      000000                         21 	.org 0x0000
                                     22 ;--------------------------------------------------------
                                     23 ; overlayable register banks
                                     24 ;--------------------------------------------------------
                                     25 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         26 	.ds 8
                                     27 ;--------------------------------------------------------
                                     28 ; internal ram data
                                     29 ;--------------------------------------------------------
                                     30 	.area DSEG    (DATA)
                                     31 ;--------------------------------------------------------
                                     32 ; overlayable items in internal ram 
                                     33 ;--------------------------------------------------------
                                     34 	.area	OSEG    (OVR,DATA)
                                     35 ;--------------------------------------------------------
                                     36 ; indirectly addressable internal ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area ISEG    (DATA)
                                     39 ;--------------------------------------------------------
                                     40 ; absolute internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area IABS    (ABS,DATA)
                                     43 	.area IABS    (ABS,DATA)
                                     44 ;--------------------------------------------------------
                                     45 ; bit data
                                     46 ;--------------------------------------------------------
                                     47 	.area BSEG    (BIT)
                                     48 ;--------------------------------------------------------
                                     49 ; paged external ram data
                                     50 ;--------------------------------------------------------
                                     51 	.area PSEG    (PAG,XDATA)
                                     52 ;--------------------------------------------------------
                                     53 ; external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area XSEG    (XDATA)
                                     56 ;--------------------------------------------------------
                                     57 ; absolute external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area XABS    (ABS,XDATA)
                                     60 ;--------------------------------------------------------
                                     61 ; external initialized ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XISEG   (XDATA)
                                     64 	.area HOME    (CODE)
                                     65 	.area GSINIT0 (CODE)
                                     66 	.area GSINIT1 (CODE)
                                     67 	.area GSINIT2 (CODE)
                                     68 	.area GSINIT3 (CODE)
                                     69 	.area GSINIT4 (CODE)
                                     70 	.area GSINIT5 (CODE)
                                     71 	.area GSINIT  (CODE)
                                     72 	.area GSFINAL (CODE)
                                     73 	.area CSEG    (CODE)
                                     74 ;--------------------------------------------------------
                                     75 ; global & static initialisations
                                     76 ;--------------------------------------------------------
                                     77 	.area HOME    (CODE)
                                     78 	.area GSINIT  (CODE)
                                     79 	.area GSFINAL (CODE)
                                     80 	.area GSINIT  (CODE)
                                     81 ;--------------------------------------------------------
                                     82 ; Home
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME    (CODE)
                                     85 	.area HOME    (CODE)
                                     86 ;--------------------------------------------------------
                                     87 ; code
                                     88 ;--------------------------------------------------------
                                     89 	.area CSEG    (CODE)
                                     90 ;------------------------------------------------------------
                                     91 ;Allocation info for local variables in function 'delay_ms'
                                     92 ;------------------------------------------------------------
                                     93 ;ms                        Allocated to registers 
                                     94 ;i                         Allocated to registers r4 r5 
                                     95 ;j                         Allocated to registers r2 r3 
                                     96 ;------------------------------------------------------------
                                     97 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/Delay.c:4: void delay_ms(unsigned int ms) {
                                     98 ;	-----------------------------------------
                                     99 ;	 function delay_ms
                                    100 ;	-----------------------------------------
      0000D0                        101 _delay_ms:
                           000007   102 	ar7 = 0x07
                           000006   103 	ar6 = 0x06
                           000005   104 	ar5 = 0x05
                           000004   105 	ar4 = 0x04
                           000003   106 	ar3 = 0x03
                           000002   107 	ar2 = 0x02
                           000001   108 	ar1 = 0x01
                           000000   109 	ar0 = 0x00
      0000D0 AE 82            [24]  110 	mov	r6,dpl
      0000D2 AF 83            [24]  111 	mov	r7,dph
                                    112 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/Delay.c:5: while (ms--)
      0000D4                        113 00103$:
      0000D4 8E 04            [24]  114 	mov	ar4,r6
      0000D6 8F 05            [24]  115 	mov	ar5,r7
      0000D8 1E               [12]  116 	dec	r6
      0000D9 BE FF 01         [24]  117 	cjne	r6,#0xff,00140$
      0000DC 1F               [12]  118 	dec	r7
      0000DD                        119 00140$:
      0000DD EC               [12]  120 	mov	a,r4
      0000DE 4D               [12]  121 	orl	a,r5
      0000DF 60 21            [24]  122 	jz	00111$
                                    123 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/Delay.c:8: for(i = 0; i < 1; i++){
      0000E1 7C 00            [12]  124 	mov	r4,#0x00
      0000E3 7D 00            [12]  125 	mov	r5,#0x00
                                    126 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/Delay.c:9: for(j = 0; j < 1275; j++);
      0000E5                        127 00114$:
      0000E5 7A FB            [12]  128 	mov	r2,#0xfb
      0000E7 7B 04            [12]  129 	mov	r3,#0x04
      0000E9                        130 00108$:
      0000E9 1A               [12]  131 	dec	r2
      0000EA BA FF 01         [24]  132 	cjne	r2,#0xff,00142$
      0000ED 1B               [12]  133 	dec	r3
      0000EE                        134 00142$:
      0000EE EA               [12]  135 	mov	a,r2
      0000EF 4B               [12]  136 	orl	a,r3
      0000F0 70 F7            [24]  137 	jnz	00108$
                                    138 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/Delay.c:8: for(i = 0; i < 1; i++){
      0000F2 0C               [12]  139 	inc	r4
      0000F3 BC 00 01         [24]  140 	cjne	r4,#0x00,00144$
      0000F6 0D               [12]  141 	inc	r5
      0000F7                        142 00144$:
      0000F7 C3               [12]  143 	clr	c
      0000F8 EC               [12]  144 	mov	a,r4
      0000F9 94 01            [12]  145 	subb	a,#0x01
      0000FB ED               [12]  146 	mov	a,r5
      0000FC 94 00            [12]  147 	subb	a,#0x00
      0000FE 40 E5            [24]  148 	jc	00114$
      000100 80 D2            [24]  149 	sjmp	00103$
      000102                        150 00111$:
                                    151 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/Delay.c:12: }
      000102 22               [24]  152 	ret
                                    153 	.area CSEG    (CODE)
                                    154 	.area CONST   (CODE)
                                    155 	.area XINIT   (CODE)
                                    156 	.area CABS    (ABS,CODE)
