                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _delay_ms
                                     13 	.globl _GPIO_PORT_Write
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 ;--------------------------------------------------------
                                    111 ; special function registers
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           000080   115 _P0	=	0x0080
                           000081   116 _SP	=	0x0081
                           000082   117 _DPL	=	0x0082
                           000083   118 _DPH	=	0x0083
                           000087   119 _PCON	=	0x0087
                           000088   120 _TCON	=	0x0088
                           000089   121 _TMOD	=	0x0089
                           00008A   122 _TL0	=	0x008a
                           00008B   123 _TL1	=	0x008b
                           00008C   124 _TH0	=	0x008c
                           00008D   125 _TH1	=	0x008d
                           000090   126 _P1	=	0x0090
                           000098   127 _SCON	=	0x0098
                           000099   128 _SBUF	=	0x0099
                           0000A0   129 _P2	=	0x00a0
                           0000A8   130 _IE	=	0x00a8
                           0000B0   131 _P3	=	0x00b0
                           0000B8   132 _IP	=	0x00b8
                           0000D0   133 _PSW	=	0x00d0
                           0000E0   134 _ACC	=	0x00e0
                           0000F0   135 _B	=	0x00f0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0_0	=	0x0080
                           000081   142 _P0_1	=	0x0081
                           000082   143 _P0_2	=	0x0082
                           000083   144 _P0_3	=	0x0083
                           000084   145 _P0_4	=	0x0084
                           000085   146 _P0_5	=	0x0085
                           000086   147 _P0_6	=	0x0086
                           000087   148 _P0_7	=	0x0087
                           000088   149 _IT0	=	0x0088
                           000089   150 _IE0	=	0x0089
                           00008A   151 _IT1	=	0x008a
                           00008B   152 _IE1	=	0x008b
                           00008C   153 _TR0	=	0x008c
                           00008D   154 _TF0	=	0x008d
                           00008E   155 _TR1	=	0x008e
                           00008F   156 _TF1	=	0x008f
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           000098   165 _RI	=	0x0098
                           000099   166 _TI	=	0x0099
                           00009A   167 _RB8	=	0x009a
                           00009B   168 _TB8	=	0x009b
                           00009C   169 _REN	=	0x009c
                           00009D   170 _SM2	=	0x009d
                           00009E   171 _SM1	=	0x009e
                           00009F   172 _SM0	=	0x009f
                           0000A0   173 _P2_0	=	0x00a0
                           0000A1   174 _P2_1	=	0x00a1
                           0000A2   175 _P2_2	=	0x00a2
                           0000A3   176 _P2_3	=	0x00a3
                           0000A4   177 _P2_4	=	0x00a4
                           0000A5   178 _P2_5	=	0x00a5
                           0000A6   179 _P2_6	=	0x00a6
                           0000A7   180 _P2_7	=	0x00a7
                           0000A8   181 _EX0	=	0x00a8
                           0000A9   182 _ET0	=	0x00a9
                           0000AA   183 _EX1	=	0x00aa
                           0000AB   184 _ET1	=	0x00ab
                           0000AC   185 _ES	=	0x00ac
                           0000AF   186 _EA	=	0x00af
                           0000B0   187 _P3_0	=	0x00b0
                           0000B1   188 _P3_1	=	0x00b1
                           0000B2   189 _P3_2	=	0x00b2
                           0000B3   190 _P3_3	=	0x00b3
                           0000B4   191 _P3_4	=	0x00b4
                           0000B5   192 _P3_5	=	0x00b5
                           0000B6   193 _P3_6	=	0x00b6
                           0000B7   194 _P3_7	=	0x00b7
                           0000B0   195 _RXD	=	0x00b0
                           0000B1   196 _TXD	=	0x00b1
                           0000B2   197 _INT0	=	0x00b2
                           0000B3   198 _INT1	=	0x00b3
                           0000B4   199 _T0	=	0x00b4
                           0000B5   200 _T1	=	0x00b5
                           0000B6   201 _WR	=	0x00b6
                           0000B7   202 _RD	=	0x00b7
                           0000B8   203 _PX0	=	0x00b8
                           0000B9   204 _PT0	=	0x00b9
                           0000BA   205 _PX1	=	0x00ba
                           0000BB   206 _PT1	=	0x00bb
                           0000BC   207 _PS	=	0x00bc
                           0000D0   208 _P	=	0x00d0
                           0000D1   209 _F1	=	0x00d1
                           0000D2   210 _OV	=	0x00d2
                           0000D3   211 _RS0	=	0x00d3
                           0000D4   212 _RS1	=	0x00d4
                           0000D5   213 _F0	=	0x00d5
                           0000D6   214 _AC	=	0x00d6
                           0000D7   215 _CY	=	0x00d7
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable register banks
                                    218 ;--------------------------------------------------------
                                    219 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        220 	.ds 8
                                    221 ;--------------------------------------------------------
                                    222 ; internal ram data
                                    223 ;--------------------------------------------------------
                                    224 	.area DSEG    (DATA)
      000008                        225 _main_LED1_65536_6:
      000008                        226 	.ds 3
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable items in internal ram 
                                    229 ;--------------------------------------------------------
                                    230 ;--------------------------------------------------------
                                    231 ; Stack segment in internal ram 
                                    232 ;--------------------------------------------------------
                                    233 	.area	SSEG
      000011                        234 __start__stack:
      000011                        235 	.ds	1
                                    236 
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; absolute internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area IABS    (ABS,DATA)
                                    245 	.area IABS    (ABS,DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; bit data
                                    248 ;--------------------------------------------------------
                                    249 	.area BSEG    (BIT)
                                    250 ;--------------------------------------------------------
                                    251 ; paged external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area PSEG    (PAG,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XSEG    (XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XABS    (ABS,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; external initialized ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XISEG   (XDATA)
                                    266 	.area HOME    (CODE)
                                    267 	.area GSINIT0 (CODE)
                                    268 	.area GSINIT1 (CODE)
                                    269 	.area GSINIT2 (CODE)
                                    270 	.area GSINIT3 (CODE)
                                    271 	.area GSINIT4 (CODE)
                                    272 	.area GSINIT5 (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area CSEG    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; interrupt vector 
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
      000000                        280 __interrupt_vect:
      000000 02 00 06         [24]  281 	ljmp	__sdcc_gsinit_startup
                                    282 ;--------------------------------------------------------
                                    283 ; global & static initialisations
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 	.area GSFINAL (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.globl __sdcc_gsinit_startup
                                    290 	.globl __sdcc_program_startup
                                    291 	.globl __start__stack
                                    292 	.globl __mcs51_genXINIT
                                    293 	.globl __mcs51_genXRAMCLEAR
                                    294 	.globl __mcs51_genRAMCLEAR
                                    295 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  296 	ljmp	__sdcc_program_startup
                                    297 ;--------------------------------------------------------
                                    298 ; Home
                                    299 ;--------------------------------------------------------
                                    300 	.area HOME    (CODE)
                                    301 	.area HOME    (CODE)
      000003                        302 __sdcc_program_startup:
      000003 02 00 62         [24]  303 	ljmp	_main
                                    304 ;	return from main will return to caller
                                    305 ;--------------------------------------------------------
                                    306 ; code
                                    307 ;--------------------------------------------------------
                                    308 	.area CSEG    (CODE)
                                    309 ;------------------------------------------------------------
                                    310 ;Allocation info for local variables in function 'main'
                                    311 ;------------------------------------------------------------
                                    312 ;LED1                      Allocated with name '_main_LED1_65536_6'
                                    313 ;i                         Allocated to registers r7 
                                    314 ;i                         Allocated to registers r7 
                                    315 ;------------------------------------------------------------
                                    316 ;	main.c:6: void main() {
                                    317 ;	-----------------------------------------
                                    318 ;	 function main
                                    319 ;	-----------------------------------------
      000062                        320 _main:
                           000007   321 	ar7 = 0x07
                           000006   322 	ar6 = 0x06
                           000005   323 	ar5 = 0x05
                           000004   324 	ar4 = 0x04
                           000003   325 	ar3 = 0x03
                           000002   326 	ar2 = 0x02
                           000001   327 	ar1 = 0x01
                           000000   328 	ar0 = 0x00
                                    329 ;	main.c:7: GPIO_Config_t LED1 = {
      000062 75 08 00         [24]  330 	mov	_main_LED1_65536_6,#0x00
      000065 75 09 00         [24]  331 	mov	(_main_LED1_65536_6 + 0x0001),#0x00
      000068 75 0A 00         [24]  332 	mov	(_main_LED1_65536_6 + 0x0002),#0x00
                                    333 ;	main.c:14: for (unsigned char i = 0; i < 8; i++) {
      00006B                        334 00115$:
      00006B 7F 00            [12]  335 	mov	r7,#0x00
      00006D                        336 00107$:
      00006D BF 08 00         [24]  337 	cjne	r7,#0x08,00135$
      000070                        338 00135$:
      000070 50 27            [24]  339 	jnc	00101$
                                    340 ;	main.c:16: GPIO_PORT_Write(&LED1, 1 << i); 
      000072 8F 06            [24]  341 	mov	ar6,r7
      000074 8E F0            [24]  342 	mov	b,r6
      000076 05 F0            [12]  343 	inc	b
      000078 74 01            [12]  344 	mov	a,#0x01
      00007A 80 02            [24]  345 	sjmp	00139$
      00007C                        346 00137$:
      00007C 25 E0            [12]  347 	add	a,acc
      00007E                        348 00139$:
      00007E D5 F0 FB         [24]  349 	djnz	b,00137$
      000081 F5 0B            [12]  350 	mov	_GPIO_PORT_Write_PARM_2,a
      000083 90 00 08         [24]  351 	mov	dptr,#_main_LED1_65536_6
      000086 75 F0 40         [24]  352 	mov	b,#0x40
      000089 C0 07            [24]  353 	push	ar7
      00008B 12 05 21         [24]  354 	lcall	_GPIO_PORT_Write
                                    355 ;	main.c:17: delay_ms(10);
      00008E 90 00 0A         [24]  356 	mov	dptr,#0x000a
      000091 12 00 D0         [24]  357 	lcall	_delay_ms
      000094 D0 07            [24]  358 	pop	ar7
                                    359 ;	main.c:14: for (unsigned char i = 0; i < 8; i++) {
      000096 0F               [12]  360 	inc	r7
      000097 80 D4            [24]  361 	sjmp	00107$
      000099                        362 00101$:
                                    363 ;	main.c:20: for (unsigned char i = 0; i < 8; i++) {
      000099 7F 00            [12]  364 	mov	r7,#0x00
      00009B                        365 00110$:
      00009B BF 08 00         [24]  366 	cjne	r7,#0x08,00140$
      00009E                        367 00140$:
      00009E 50 CB            [24]  368 	jnc	00115$
                                    369 ;	main.c:22: GPIO_PORT_Write(&LED1, 0b10000000 >> i); 
      0000A0 8F F0            [24]  370 	mov	b,r7
      0000A2 05 F0            [12]  371 	inc	b
      0000A4 7D 80            [12]  372 	mov	r5,#0x80
      0000A6 E4               [12]  373 	clr	a
      0000A7 FE               [12]  374 	mov	r6,a
      0000A8 33               [12]  375 	rlc	a
      0000A9 92 D2            [24]  376 	mov	ov,c
      0000AB 80 08            [24]  377 	sjmp	00143$
      0000AD                        378 00142$:
      0000AD A2 D2            [12]  379 	mov	c,ov
      0000AF EE               [12]  380 	mov	a,r6
      0000B0 13               [12]  381 	rrc	a
      0000B1 FE               [12]  382 	mov	r6,a
      0000B2 ED               [12]  383 	mov	a,r5
      0000B3 13               [12]  384 	rrc	a
      0000B4 FD               [12]  385 	mov	r5,a
      0000B5                        386 00143$:
      0000B5 D5 F0 F5         [24]  387 	djnz	b,00142$
      0000B8 8D 0B            [24]  388 	mov	_GPIO_PORT_Write_PARM_2,r5
      0000BA 90 00 08         [24]  389 	mov	dptr,#_main_LED1_65536_6
      0000BD 75 F0 40         [24]  390 	mov	b,#0x40
      0000C0 C0 07            [24]  391 	push	ar7
      0000C2 12 05 21         [24]  392 	lcall	_GPIO_PORT_Write
                                    393 ;	main.c:23: delay_ms(10);
      0000C5 90 00 0A         [24]  394 	mov	dptr,#0x000a
      0000C8 12 00 D0         [24]  395 	lcall	_delay_ms
      0000CB D0 07            [24]  396 	pop	ar7
                                    397 ;	main.c:20: for (unsigned char i = 0; i < 8; i++) {
      0000CD 0F               [12]  398 	inc	r7
                                    399 ;	main.c:27: }
      0000CE 80 CB            [24]  400 	sjmp	00110$
                                    401 	.area CSEG    (CODE)
                                    402 	.area CONST   (CODE)
                                    403 	.area XINIT   (CODE)
                                    404 	.area CABS    (ABS,CODE)
