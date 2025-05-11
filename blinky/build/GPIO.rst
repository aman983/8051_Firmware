                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module GPIO
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _GPIO_PORT_Write_PARM_2
                                     12 	.globl _GPIO_Read_PARM_2
                                     13 	.globl _GPIO_Write_PARM_2
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
                                    110 	.globl _GPIO_Write
                                    111 	.globl _GPIO_Read
                                    112 	.globl _GPIO_Toggle
                                    113 	.globl _GPIO_PORT_Write
                                    114 ;--------------------------------------------------------
                                    115 ; special function registers
                                    116 ;--------------------------------------------------------
                                    117 	.area RSEG    (ABS,DATA)
      000000                        118 	.org 0x0000
                           000080   119 _P0	=	0x0080
                           000081   120 _SP	=	0x0081
                           000082   121 _DPL	=	0x0082
                           000083   122 _DPH	=	0x0083
                           000087   123 _PCON	=	0x0087
                           000088   124 _TCON	=	0x0088
                           000089   125 _TMOD	=	0x0089
                           00008A   126 _TL0	=	0x008a
                           00008B   127 _TL1	=	0x008b
                           00008C   128 _TH0	=	0x008c
                           00008D   129 _TH1	=	0x008d
                           000090   130 _P1	=	0x0090
                           000098   131 _SCON	=	0x0098
                           000099   132 _SBUF	=	0x0099
                           0000A0   133 _P2	=	0x00a0
                           0000A8   134 _IE	=	0x00a8
                           0000B0   135 _P3	=	0x00b0
                           0000B8   136 _IP	=	0x00b8
                           0000D0   137 _PSW	=	0x00d0
                           0000E0   138 _ACC	=	0x00e0
                           0000F0   139 _B	=	0x00f0
                                    140 ;--------------------------------------------------------
                                    141 ; special function bits
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0_0	=	0x0080
                           000081   146 _P0_1	=	0x0081
                           000082   147 _P0_2	=	0x0082
                           000083   148 _P0_3	=	0x0083
                           000084   149 _P0_4	=	0x0084
                           000085   150 _P0_5	=	0x0085
                           000086   151 _P0_6	=	0x0086
                           000087   152 _P0_7	=	0x0087
                           000088   153 _IT0	=	0x0088
                           000089   154 _IE0	=	0x0089
                           00008A   155 _IT1	=	0x008a
                           00008B   156 _IE1	=	0x008b
                           00008C   157 _TR0	=	0x008c
                           00008D   158 _TF0	=	0x008d
                           00008E   159 _TR1	=	0x008e
                           00008F   160 _TF1	=	0x008f
                           000090   161 _P1_0	=	0x0090
                           000091   162 _P1_1	=	0x0091
                           000092   163 _P1_2	=	0x0092
                           000093   164 _P1_3	=	0x0093
                           000094   165 _P1_4	=	0x0094
                           000095   166 _P1_5	=	0x0095
                           000096   167 _P1_6	=	0x0096
                           000097   168 _P1_7	=	0x0097
                           000098   169 _RI	=	0x0098
                           000099   170 _TI	=	0x0099
                           00009A   171 _RB8	=	0x009a
                           00009B   172 _TB8	=	0x009b
                           00009C   173 _REN	=	0x009c
                           00009D   174 _SM2	=	0x009d
                           00009E   175 _SM1	=	0x009e
                           00009F   176 _SM0	=	0x009f
                           0000A0   177 _P2_0	=	0x00a0
                           0000A1   178 _P2_1	=	0x00a1
                           0000A2   179 _P2_2	=	0x00a2
                           0000A3   180 _P2_3	=	0x00a3
                           0000A4   181 _P2_4	=	0x00a4
                           0000A5   182 _P2_5	=	0x00a5
                           0000A6   183 _P2_6	=	0x00a6
                           0000A7   184 _P2_7	=	0x00a7
                           0000A8   185 _EX0	=	0x00a8
                           0000A9   186 _ET0	=	0x00a9
                           0000AA   187 _EX1	=	0x00aa
                           0000AB   188 _ET1	=	0x00ab
                           0000AC   189 _ES	=	0x00ac
                           0000AF   190 _EA	=	0x00af
                           0000B0   191 _P3_0	=	0x00b0
                           0000B1   192 _P3_1	=	0x00b1
                           0000B2   193 _P3_2	=	0x00b2
                           0000B3   194 _P3_3	=	0x00b3
                           0000B4   195 _P3_4	=	0x00b4
                           0000B5   196 _P3_5	=	0x00b5
                           0000B6   197 _P3_6	=	0x00b6
                           0000B7   198 _P3_7	=	0x00b7
                           0000B0   199 _RXD	=	0x00b0
                           0000B1   200 _TXD	=	0x00b1
                           0000B2   201 _INT0	=	0x00b2
                           0000B3   202 _INT1	=	0x00b3
                           0000B4   203 _T0	=	0x00b4
                           0000B5   204 _T1	=	0x00b5
                           0000B6   205 _WR	=	0x00b6
                           0000B7   206 _RD	=	0x00b7
                           0000B8   207 _PX0	=	0x00b8
                           0000B9   208 _PT0	=	0x00b9
                           0000BA   209 _PX1	=	0x00ba
                           0000BB   210 _PT1	=	0x00bb
                           0000BC   211 _PS	=	0x00bc
                           0000D0   212 _P	=	0x00d0
                           0000D1   213 _F1	=	0x00d1
                           0000D2   214 _OV	=	0x00d2
                           0000D3   215 _RS0	=	0x00d3
                           0000D4   216 _RS1	=	0x00d4
                           0000D5   217 _F0	=	0x00d5
                           0000D6   218 _AC	=	0x00d6
                           0000D7   219 _CY	=	0x00d7
                                    220 ;--------------------------------------------------------
                                    221 ; overlayable register banks
                                    222 ;--------------------------------------------------------
                                    223 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        224 	.ds 8
                                    225 ;--------------------------------------------------------
                                    226 ; internal ram data
                                    227 ;--------------------------------------------------------
                                    228 	.area DSEG    (DATA)
                                    229 ;--------------------------------------------------------
                                    230 ; overlayable items in internal ram 
                                    231 ;--------------------------------------------------------
                                    232 	.area	OSEG    (OVR,DATA)
      00000B                        233 _GPIO_Write_PARM_2:
      00000B                        234 	.ds 1
                                    235 	.area	OSEG    (OVR,DATA)
      00000B                        236 _GPIO_Read_PARM_2:
      00000B                        237 	.ds 3
      00000E                        238 _GPIO_Read_config_65536_12:
      00000E                        239 	.ds 3
                                    240 	.area	OSEG    (OVR,DATA)
                                    241 	.area	OSEG    (OVR,DATA)
      00000B                        242 _GPIO_PORT_Write_PARM_2:
      00000B                        243 	.ds 1
                                    244 ;--------------------------------------------------------
                                    245 ; indirectly addressable internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area ISEG    (DATA)
                                    248 ;--------------------------------------------------------
                                    249 ; absolute internal ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area IABS    (ABS,DATA)
                                    252 	.area IABS    (ABS,DATA)
                                    253 ;--------------------------------------------------------
                                    254 ; bit data
                                    255 ;--------------------------------------------------------
                                    256 	.area BSEG    (BIT)
                                    257 ;--------------------------------------------------------
                                    258 ; paged external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area PSEG    (PAG,XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XSEG    (XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; absolute external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XABS    (ABS,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; external initialized ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XISEG   (XDATA)
                                    273 	.area HOME    (CODE)
                                    274 	.area GSINIT0 (CODE)
                                    275 	.area GSINIT1 (CODE)
                                    276 	.area GSINIT2 (CODE)
                                    277 	.area GSINIT3 (CODE)
                                    278 	.area GSINIT4 (CODE)
                                    279 	.area GSINIT5 (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area CSEG    (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; global & static initialisations
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area GSINIT  (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; Home
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
                                    294 	.area HOME    (CODE)
                                    295 ;--------------------------------------------------------
                                    296 ; code
                                    297 ;--------------------------------------------------------
                                    298 	.area CSEG    (CODE)
                                    299 ;------------------------------------------------------------
                                    300 ;Allocation info for local variables in function 'GPIO_Write'
                                    301 ;------------------------------------------------------------
                                    302 ;state                     Allocated with name '_GPIO_Write_PARM_2'
                                    303 ;config                    Allocated to registers r5 r6 r7 
                                    304 ;------------------------------------------------------------
                                    305 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:5: HAL_ERR_e GPIO_Write(GPIO_Config_t *config, GPIO_State_e state){
                                    306 ;	-----------------------------------------
                                    307 ;	 function GPIO_Write
                                    308 ;	-----------------------------------------
      000103                        309 _GPIO_Write:
                           000007   310 	ar7 = 0x07
                           000006   311 	ar6 = 0x06
                           000005   312 	ar5 = 0x05
                           000004   313 	ar4 = 0x04
                           000003   314 	ar3 = 0x03
                           000002   315 	ar2 = 0x02
                           000001   316 	ar1 = 0x01
                           000000   317 	ar0 = 0x00
      000103 AD 82            [24]  318 	mov	r5,dpl
      000105 AE 83            [24]  319 	mov	r6,dph
      000107 AF F0            [24]  320 	mov	r7,b
                                    321 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:6: if(config->Mode == GPIO_OUTPUT){
      000109 74 02            [12]  322 	mov	a,#0x02
      00010B 2D               [12]  323 	add	a,r5
      00010C FA               [12]  324 	mov	r2,a
      00010D E4               [12]  325 	clr	a
      00010E 3E               [12]  326 	addc	a,r6
      00010F FB               [12]  327 	mov	r3,a
      000110 8F 04            [24]  328 	mov	ar4,r7
      000112 8A 82            [24]  329 	mov	dpl,r2
      000114 8B 83            [24]  330 	mov	dph,r3
      000116 8C F0            [24]  331 	mov	b,r4
      000118 12 05 78         [24]  332 	lcall	__gptrget
      00011B 60 03            [24]  333 	jz	00136$
      00011D 02 02 A0         [24]  334 	ljmp	00117$
      000120                        335 00136$:
                                    336 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:9: if(state == GPIO_HIGH){
      000120 74 01            [12]  337 	mov	a,#0x01
      000122 B5 0B 02         [24]  338 	cjne	a,_GPIO_Write_PARM_2,00137$
      000125 80 03            [24]  339 	sjmp	00138$
      000127                        340 00137$:
      000127 02 01 E5         [24]  341 	ljmp	00114$
      00012A                        342 00138$:
                                    343 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:11: switch (config->Port)
      00012A 8D 82            [24]  344 	mov	dpl,r5
      00012C 8E 83            [24]  345 	mov	dph,r6
      00012E 8F F0            [24]  346 	mov	b,r7
      000130 12 05 78         [24]  347 	lcall	__gptrget
      000133 FC               [12]  348 	mov  r4,a
      000134 24 FC            [12]  349 	add	a,#0xff - 0x03
      000136 50 03            [24]  350 	jnc	00139$
      000138 02 01 E1         [24]  351 	ljmp	00105$
      00013B                        352 00139$:
      00013B EC               [12]  353 	mov	a,r4
      00013C 2C               [12]  354 	add	a,r4
                                    355 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:13: case PORT_0:
      00013D 90 01 41         [24]  356 	mov	dptr,#00140$
      000140 73               [24]  357 	jmp	@a+dptr
      000141                        358 00140$:
      000141 80 06            [24]  359 	sjmp	00101$
      000143 80 2A            [24]  360 	sjmp	00102$
      000145 80 4E            [24]  361 	sjmp	00103$
      000147 80 72            [24]  362 	sjmp	00104$
      000149                        363 00101$:
                                    364 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:14: P0 |= (1 << config->Pin);
      000149 74 01            [12]  365 	mov	a,#0x01
      00014B 2D               [12]  366 	add	a,r5
      00014C FA               [12]  367 	mov	r2,a
      00014D E4               [12]  368 	clr	a
      00014E 3E               [12]  369 	addc	a,r6
      00014F FB               [12]  370 	mov	r3,a
      000150 8F 04            [24]  371 	mov	ar4,r7
      000152 8A 82            [24]  372 	mov	dpl,r2
      000154 8B 83            [24]  373 	mov	dph,r3
      000156 8C F0            [24]  374 	mov	b,r4
      000158 12 05 78         [24]  375 	lcall	__gptrget
      00015B FA               [12]  376 	mov	r2,a
      00015C 8A F0            [24]  377 	mov	b,r2
      00015E 05 F0            [12]  378 	inc	b
      000160 74 01            [12]  379 	mov	a,#0x01
      000162 80 02            [24]  380 	sjmp	00143$
      000164                        381 00141$:
      000164 25 E0            [12]  382 	add	a,acc
      000166                        383 00143$:
      000166 D5 F0 FB         [24]  384 	djnz	b,00141$
      000169 FA               [12]  385 	mov	r2,a
      00016A 42 80            [12]  386 	orl	_P0,a
                                    387 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:15: break;
      00016C 02 02 9C         [24]  388 	ljmp	00115$
                                    389 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:17: case PORT_1:
      00016F                        390 00102$:
                                    391 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:18: P1 |= (1 << config->Pin);
      00016F 74 01            [12]  392 	mov	a,#0x01
      000171 2D               [12]  393 	add	a,r5
      000172 FA               [12]  394 	mov	r2,a
      000173 E4               [12]  395 	clr	a
      000174 3E               [12]  396 	addc	a,r6
      000175 FB               [12]  397 	mov	r3,a
      000176 8F 04            [24]  398 	mov	ar4,r7
      000178 8A 82            [24]  399 	mov	dpl,r2
      00017A 8B 83            [24]  400 	mov	dph,r3
      00017C 8C F0            [24]  401 	mov	b,r4
      00017E 12 05 78         [24]  402 	lcall	__gptrget
      000181 FA               [12]  403 	mov	r2,a
      000182 8A F0            [24]  404 	mov	b,r2
      000184 05 F0            [12]  405 	inc	b
      000186 74 01            [12]  406 	mov	a,#0x01
      000188 80 02            [24]  407 	sjmp	00146$
      00018A                        408 00144$:
      00018A 25 E0            [12]  409 	add	a,acc
      00018C                        410 00146$:
      00018C D5 F0 FB         [24]  411 	djnz	b,00144$
      00018F FA               [12]  412 	mov	r2,a
      000190 42 90            [12]  413 	orl	_P1,a
                                    414 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:19: break;
      000192 02 02 9C         [24]  415 	ljmp	00115$
                                    416 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:21: case PORT_2:
      000195                        417 00103$:
                                    418 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:22: P2 |= (1 << config->Pin);
      000195 74 01            [12]  419 	mov	a,#0x01
      000197 2D               [12]  420 	add	a,r5
      000198 FA               [12]  421 	mov	r2,a
      000199 E4               [12]  422 	clr	a
      00019A 3E               [12]  423 	addc	a,r6
      00019B FB               [12]  424 	mov	r3,a
      00019C 8F 04            [24]  425 	mov	ar4,r7
      00019E 8A 82            [24]  426 	mov	dpl,r2
      0001A0 8B 83            [24]  427 	mov	dph,r3
      0001A2 8C F0            [24]  428 	mov	b,r4
      0001A4 12 05 78         [24]  429 	lcall	__gptrget
      0001A7 FA               [12]  430 	mov	r2,a
      0001A8 8A F0            [24]  431 	mov	b,r2
      0001AA 05 F0            [12]  432 	inc	b
      0001AC 74 01            [12]  433 	mov	a,#0x01
      0001AE 80 02            [24]  434 	sjmp	00149$
      0001B0                        435 00147$:
      0001B0 25 E0            [12]  436 	add	a,acc
      0001B2                        437 00149$:
      0001B2 D5 F0 FB         [24]  438 	djnz	b,00147$
      0001B5 FA               [12]  439 	mov	r2,a
      0001B6 42 A0            [12]  440 	orl	_P2,a
                                    441 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:23: break;
      0001B8 02 02 9C         [24]  442 	ljmp	00115$
                                    443 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:25: case PORT_3:
      0001BB                        444 00104$:
                                    445 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:26: P3 |= (1 << config->Pin);
      0001BB 74 01            [12]  446 	mov	a,#0x01
      0001BD 2D               [12]  447 	add	a,r5
      0001BE FA               [12]  448 	mov	r2,a
      0001BF E4               [12]  449 	clr	a
      0001C0 3E               [12]  450 	addc	a,r6
      0001C1 FB               [12]  451 	mov	r3,a
      0001C2 8F 04            [24]  452 	mov	ar4,r7
      0001C4 8A 82            [24]  453 	mov	dpl,r2
      0001C6 8B 83            [24]  454 	mov	dph,r3
      0001C8 8C F0            [24]  455 	mov	b,r4
      0001CA 12 05 78         [24]  456 	lcall	__gptrget
      0001CD FA               [12]  457 	mov	r2,a
      0001CE 8A F0            [24]  458 	mov	b,r2
      0001D0 05 F0            [12]  459 	inc	b
      0001D2 74 01            [12]  460 	mov	a,#0x01
      0001D4 80 02            [24]  461 	sjmp	00152$
      0001D6                        462 00150$:
      0001D6 25 E0            [12]  463 	add	a,acc
      0001D8                        464 00152$:
      0001D8 D5 F0 FB         [24]  465 	djnz	b,00150$
      0001DB FA               [12]  466 	mov	r2,a
      0001DC 42 B0            [12]  467 	orl	_P3,a
                                    468 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:27: break;
      0001DE 02 02 9C         [24]  469 	ljmp	00115$
                                    470 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:29: default:
      0001E1                        471 00105$:
                                    472 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:30: return HAL_GPIO_CONFIG_MISMATCH;
      0001E1 75 82 01         [24]  473 	mov	dpl,#0x01
      0001E4 22               [24]  474 	ret
                                    475 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:32: }
      0001E5                        476 00114$:
                                    477 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:34: switch (config->Port)
      0001E5 8D 82            [24]  478 	mov	dpl,r5
      0001E7 8E 83            [24]  479 	mov	dph,r6
      0001E9 8F F0            [24]  480 	mov	b,r7
      0001EB 12 05 78         [24]  481 	lcall	__gptrget
      0001EE FC               [12]  482 	mov  r4,a
      0001EF 24 FC            [12]  483 	add	a,#0xff - 0x03
      0001F1 50 03            [24]  484 	jnc	00153$
      0001F3 02 02 98         [24]  485 	ljmp	00111$
      0001F6                        486 00153$:
      0001F6 EC               [12]  487 	mov	a,r4
      0001F7 2C               [12]  488 	add	a,r4
                                    489 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:36: case PORT_0:
      0001F8 90 01 FC         [24]  490 	mov	dptr,#00154$
      0001FB 73               [24]  491 	jmp	@a+dptr
      0001FC                        492 00154$:
      0001FC 80 06            [24]  493 	sjmp	00107$
      0001FE 80 2A            [24]  494 	sjmp	00108$
      000200 80 4E            [24]  495 	sjmp	00109$
      000202 80 72            [24]  496 	sjmp	00110$
      000204                        497 00107$:
                                    498 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:37: P0 &= ~(1 << config->Pin);
      000204 74 01            [12]  499 	mov	a,#0x01
      000206 2D               [12]  500 	add	a,r5
      000207 FA               [12]  501 	mov	r2,a
      000208 E4               [12]  502 	clr	a
      000209 3E               [12]  503 	addc	a,r6
      00020A FB               [12]  504 	mov	r3,a
      00020B 8F 04            [24]  505 	mov	ar4,r7
      00020D 8A 82            [24]  506 	mov	dpl,r2
      00020F 8B 83            [24]  507 	mov	dph,r3
      000211 8C F0            [24]  508 	mov	b,r4
      000213 12 05 78         [24]  509 	lcall	__gptrget
      000216 FA               [12]  510 	mov	r2,a
      000217 8A F0            [24]  511 	mov	b,r2
      000219 05 F0            [12]  512 	inc	b
      00021B 74 01            [12]  513 	mov	a,#0x01
      00021D 80 02            [24]  514 	sjmp	00157$
      00021F                        515 00155$:
      00021F 25 E0            [12]  516 	add	a,acc
      000221                        517 00157$:
      000221 D5 F0 FB         [24]  518 	djnz	b,00155$
      000224 F4               [12]  519 	cpl	a
      000225 FA               [12]  520 	mov	r2,a
      000226 52 80            [12]  521 	anl	_P0,a
                                    522 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:38: break;
                                    523 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:40: case PORT_1:
      000228 80 72            [24]  524 	sjmp	00115$
      00022A                        525 00108$:
                                    526 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:41: P1 &= ~(1 << config->Pin);
      00022A 74 01            [12]  527 	mov	a,#0x01
      00022C 2D               [12]  528 	add	a,r5
      00022D FA               [12]  529 	mov	r2,a
      00022E E4               [12]  530 	clr	a
      00022F 3E               [12]  531 	addc	a,r6
      000230 FB               [12]  532 	mov	r3,a
      000231 8F 04            [24]  533 	mov	ar4,r7
      000233 8A 82            [24]  534 	mov	dpl,r2
      000235 8B 83            [24]  535 	mov	dph,r3
      000237 8C F0            [24]  536 	mov	b,r4
      000239 12 05 78         [24]  537 	lcall	__gptrget
      00023C FA               [12]  538 	mov	r2,a
      00023D 8A F0            [24]  539 	mov	b,r2
      00023F 05 F0            [12]  540 	inc	b
      000241 74 01            [12]  541 	mov	a,#0x01
      000243 80 02            [24]  542 	sjmp	00160$
      000245                        543 00158$:
      000245 25 E0            [12]  544 	add	a,acc
      000247                        545 00160$:
      000247 D5 F0 FB         [24]  546 	djnz	b,00158$
      00024A F4               [12]  547 	cpl	a
      00024B FA               [12]  548 	mov	r2,a
      00024C 52 90            [12]  549 	anl	_P1,a
                                    550 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:42: break;
                                    551 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:44: case PORT_2:
      00024E 80 4C            [24]  552 	sjmp	00115$
      000250                        553 00109$:
                                    554 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:45: P2 &= ~(1 << config->Pin);
      000250 74 01            [12]  555 	mov	a,#0x01
      000252 2D               [12]  556 	add	a,r5
      000253 FA               [12]  557 	mov	r2,a
      000254 E4               [12]  558 	clr	a
      000255 3E               [12]  559 	addc	a,r6
      000256 FB               [12]  560 	mov	r3,a
      000257 8F 04            [24]  561 	mov	ar4,r7
      000259 8A 82            [24]  562 	mov	dpl,r2
      00025B 8B 83            [24]  563 	mov	dph,r3
      00025D 8C F0            [24]  564 	mov	b,r4
      00025F 12 05 78         [24]  565 	lcall	__gptrget
      000262 FA               [12]  566 	mov	r2,a
      000263 8A F0            [24]  567 	mov	b,r2
      000265 05 F0            [12]  568 	inc	b
      000267 74 01            [12]  569 	mov	a,#0x01
      000269 80 02            [24]  570 	sjmp	00163$
      00026B                        571 00161$:
      00026B 25 E0            [12]  572 	add	a,acc
      00026D                        573 00163$:
      00026D D5 F0 FB         [24]  574 	djnz	b,00161$
      000270 F4               [12]  575 	cpl	a
      000271 FA               [12]  576 	mov	r2,a
      000272 52 A0            [12]  577 	anl	_P2,a
                                    578 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:46: break;
                                    579 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:48: case PORT_3:
      000274 80 26            [24]  580 	sjmp	00115$
      000276                        581 00110$:
                                    582 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:49: P3 &= ~(1 << config->Pin);
      000276 0D               [12]  583 	inc	r5
      000277 BD 00 01         [24]  584 	cjne	r5,#0x00,00164$
      00027A 0E               [12]  585 	inc	r6
      00027B                        586 00164$:
      00027B 8D 82            [24]  587 	mov	dpl,r5
      00027D 8E 83            [24]  588 	mov	dph,r6
      00027F 8F F0            [24]  589 	mov	b,r7
      000281 12 05 78         [24]  590 	lcall	__gptrget
      000284 FD               [12]  591 	mov	r5,a
      000285 8D F0            [24]  592 	mov	b,r5
      000287 05 F0            [12]  593 	inc	b
      000289 74 01            [12]  594 	mov	a,#0x01
      00028B 80 02            [24]  595 	sjmp	00167$
      00028D                        596 00165$:
      00028D 25 E0            [12]  597 	add	a,acc
      00028F                        598 00167$:
      00028F D5 F0 FB         [24]  599 	djnz	b,00165$
      000292 F4               [12]  600 	cpl	a
      000293 FD               [12]  601 	mov	r5,a
      000294 52 B0            [12]  602 	anl	_P3,a
                                    603 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:50: break;
                                    604 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:53: default:
      000296 80 04            [24]  605 	sjmp	00115$
      000298                        606 00111$:
                                    607 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:54: return HAL_GPIO_CONFIG_MISMATCH;
      000298 75 82 01         [24]  608 	mov	dpl,#0x01
                                    609 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:56: }
      00029B 22               [24]  610 	ret
      00029C                        611 00115$:
                                    612 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:58: return HAL_OK;
      00029C 75 82 00         [24]  613 	mov	dpl,#0x00
      00029F 22               [24]  614 	ret
      0002A0                        615 00117$:
                                    616 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:61: return HAL_GPIO_CONFIG_MISMATCH;
      0002A0 75 82 01         [24]  617 	mov	dpl,#0x01
                                    618 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:62: }
      0002A3 22               [24]  619 	ret
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'GPIO_Read'
                                    622 ;------------------------------------------------------------
                                    623 ;state                     Allocated with name '_GPIO_Read_PARM_2'
                                    624 ;config                    Allocated with name '_GPIO_Read_config_65536_12'
                                    625 ;------------------------------------------------------------
                                    626 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:65: HAL_ERR_e GPIO_Read(GPIO_Config_t *config, GPIO_State_e *state){
                                    627 ;	-----------------------------------------
                                    628 ;	 function GPIO_Read
                                    629 ;	-----------------------------------------
      0002A4                        630 _GPIO_Read:
      0002A4 85 82 0E         [24]  631 	mov	_GPIO_Read_config_65536_12,dpl
      0002A7 85 83 0F         [24]  632 	mov	(_GPIO_Read_config_65536_12 + 1),dph
      0002AA 85 F0 10         [24]  633 	mov	(_GPIO_Read_config_65536_12 + 2),b
                                    634 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:66: if(config->Mode == GPIO_INPUT || config->Mode == GPIO_INPUT_PULLUP){
      0002AD 74 02            [12]  635 	mov	a,#0x02
      0002AF 25 0E            [12]  636 	add	a,_GPIO_Read_config_65536_12
      0002B1 FA               [12]  637 	mov	r2,a
      0002B2 E4               [12]  638 	clr	a
      0002B3 35 0F            [12]  639 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      0002B5 FB               [12]  640 	mov	r3,a
      0002B6 AC 10            [24]  641 	mov	r4,(_GPIO_Read_config_65536_12 + 2)
      0002B8 8A 82            [24]  642 	mov	dpl,r2
      0002BA 8B 83            [24]  643 	mov	dph,r3
      0002BC 8C F0            [24]  644 	mov	b,r4
      0002BE 12 05 78         [24]  645 	lcall	__gptrget
      0002C1 FC               [12]  646 	mov	r4,a
      0002C2 BC 01 02         [24]  647 	cjne	r4,#0x01,00144$
      0002C5 80 08            [24]  648 	sjmp	00107$
      0002C7                        649 00144$:
      0002C7 BC 02 02         [24]  650 	cjne	r4,#0x02,00145$
      0002CA 80 03            [24]  651 	sjmp	00146$
      0002CC                        652 00145$:
      0002CC 02 04 48         [24]  653 	ljmp	00108$
      0002CF                        654 00146$:
      0002CF                        655 00107$:
                                    656 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:67: switch(config->Port){
      0002CF 85 0E 82         [24]  657 	mov	dpl,_GPIO_Read_config_65536_12
      0002D2 85 0F 83         [24]  658 	mov	dph,(_GPIO_Read_config_65536_12 + 1)
      0002D5 85 10 F0         [24]  659 	mov	b,(_GPIO_Read_config_65536_12 + 2)
      0002D8 12 05 78         [24]  660 	lcall	__gptrget
      0002DB FC               [12]  661 	mov  r4,a
      0002DC 24 FC            [12]  662 	add	a,#0xff - 0x03
      0002DE 50 03            [24]  663 	jnc	00147$
      0002E0 02 04 40         [24]  664 	ljmp	00105$
      0002E3                        665 00147$:
      0002E3 EC               [12]  666 	mov	a,r4
      0002E4 2C               [12]  667 	add	a,r4
      0002E5 2C               [12]  668 	add	a,r4
      0002E6 90 02 EA         [24]  669 	mov	dptr,#00148$
      0002E9 73               [24]  670 	jmp	@a+dptr
      0002EA                        671 00148$:
      0002EA 02 02 F6         [24]  672 	ljmp	00101$
      0002ED 02 03 49         [24]  673 	ljmp	00102$
      0002F0 02 03 9C         [24]  674 	ljmp	00103$
      0002F3 02 03 EE         [24]  675 	ljmp	00104$
                                    676 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:68: case PORT_0: *state = (P0 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
      0002F6                        677 00101$:
      0002F6 AA 0B            [24]  678 	mov	r2,_GPIO_Read_PARM_2
      0002F8 AB 0C            [24]  679 	mov	r3,(_GPIO_Read_PARM_2 + 1)
      0002FA AC 0D            [24]  680 	mov	r4,(_GPIO_Read_PARM_2 + 2)
      0002FC 74 01            [12]  681 	mov	a,#0x01
      0002FE 25 0E            [12]  682 	add	a,_GPIO_Read_config_65536_12
      000300 F8               [12]  683 	mov	r0,a
      000301 E4               [12]  684 	clr	a
      000302 35 0F            [12]  685 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      000304 F9               [12]  686 	mov	r1,a
      000305 AF 10            [24]  687 	mov	r7,(_GPIO_Read_config_65536_12 + 2)
      000307 88 82            [24]  688 	mov	dpl,r0
      000309 89 83            [24]  689 	mov	dph,r1
      00030B 8F F0            [24]  690 	mov	b,r7
      00030D 12 05 78         [24]  691 	lcall	__gptrget
      000310 F8               [12]  692 	mov	r0,a
      000311 88 F0            [24]  693 	mov	b,r0
      000313 05 F0            [12]  694 	inc	b
      000315 78 01            [12]  695 	mov	r0,#0x01
      000317 7F 00            [12]  696 	mov	r7,#0x00
      000319 80 06            [24]  697 	sjmp	00150$
      00031B                        698 00149$:
      00031B E8               [12]  699 	mov	a,r0
      00031C 28               [12]  700 	add	a,r0
      00031D F8               [12]  701 	mov	r0,a
      00031E EF               [12]  702 	mov	a,r7
      00031F 33               [12]  703 	rlc	a
      000320 FF               [12]  704 	mov	r7,a
      000321                        705 00150$:
      000321 D5 F0 F7         [24]  706 	djnz	b,00149$
      000324 AD 80            [24]  707 	mov	r5,_P0
      000326 7E 00            [12]  708 	mov	r6,#0x00
      000328 ED               [12]  709 	mov	a,r5
      000329 52 00            [12]  710 	anl	ar0,a
      00032B EE               [12]  711 	mov	a,r6
      00032C 52 07            [12]  712 	anl	ar7,a
      00032E E8               [12]  713 	mov	a,r0
      00032F 4F               [12]  714 	orl	a,r7
      000330 60 06            [24]  715 	jz	00112$
      000332 7E 01            [12]  716 	mov	r6,#0x01
      000334 7F 00            [12]  717 	mov	r7,#0x00
      000336 80 04            [24]  718 	sjmp	00113$
      000338                        719 00112$:
      000338 7E 00            [12]  720 	mov	r6,#0x00
      00033A 7F 00            [12]  721 	mov	r7,#0x00
      00033C                        722 00113$:
      00033C 8A 82            [24]  723 	mov	dpl,r2
      00033E 8B 83            [24]  724 	mov	dph,r3
      000340 8C F0            [24]  725 	mov	b,r4
      000342 EE               [12]  726 	mov	a,r6
      000343 12 05 5D         [24]  727 	lcall	__gptrput
      000346 02 04 44         [24]  728 	ljmp	00106$
                                    729 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:69: case PORT_1: *state = (P1 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
      000349                        730 00102$:
      000349 AD 0B            [24]  731 	mov	r5,_GPIO_Read_PARM_2
      00034B AE 0C            [24]  732 	mov	r6,(_GPIO_Read_PARM_2 + 1)
      00034D AF 0D            [24]  733 	mov	r7,(_GPIO_Read_PARM_2 + 2)
      00034F 74 01            [12]  734 	mov	a,#0x01
      000351 25 0E            [12]  735 	add	a,_GPIO_Read_config_65536_12
      000353 FA               [12]  736 	mov	r2,a
      000354 E4               [12]  737 	clr	a
      000355 35 0F            [12]  738 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      000357 FB               [12]  739 	mov	r3,a
      000358 AC 10            [24]  740 	mov	r4,(_GPIO_Read_config_65536_12 + 2)
      00035A 8A 82            [24]  741 	mov	dpl,r2
      00035C 8B 83            [24]  742 	mov	dph,r3
      00035E 8C F0            [24]  743 	mov	b,r4
      000360 12 05 78         [24]  744 	lcall	__gptrget
      000363 FA               [12]  745 	mov	r2,a
      000364 8A F0            [24]  746 	mov	b,r2
      000366 05 F0            [12]  747 	inc	b
      000368 7A 01            [12]  748 	mov	r2,#0x01
      00036A 7C 00            [12]  749 	mov	r4,#0x00
      00036C 80 06            [24]  750 	sjmp	00153$
      00036E                        751 00152$:
      00036E EA               [12]  752 	mov	a,r2
      00036F 2A               [12]  753 	add	a,r2
      000370 FA               [12]  754 	mov	r2,a
      000371 EC               [12]  755 	mov	a,r4
      000372 33               [12]  756 	rlc	a
      000373 FC               [12]  757 	mov	r4,a
      000374                        758 00153$:
      000374 D5 F0 F7         [24]  759 	djnz	b,00152$
      000377 A9 90            [24]  760 	mov	r1,_P1
      000379 7B 00            [12]  761 	mov	r3,#0x00
      00037B E9               [12]  762 	mov	a,r1
      00037C 52 02            [12]  763 	anl	ar2,a
      00037E EB               [12]  764 	mov	a,r3
      00037F 52 04            [12]  765 	anl	ar4,a
      000381 EA               [12]  766 	mov	a,r2
      000382 4C               [12]  767 	orl	a,r4
      000383 60 06            [24]  768 	jz	00114$
      000385 7B 01            [12]  769 	mov	r3,#0x01
      000387 7C 00            [12]  770 	mov	r4,#0x00
      000389 80 04            [24]  771 	sjmp	00115$
      00038B                        772 00114$:
      00038B 7B 00            [12]  773 	mov	r3,#0x00
      00038D 7C 00            [12]  774 	mov	r4,#0x00
      00038F                        775 00115$:
      00038F 8D 82            [24]  776 	mov	dpl,r5
      000391 8E 83            [24]  777 	mov	dph,r6
      000393 8F F0            [24]  778 	mov	b,r7
      000395 EB               [12]  779 	mov	a,r3
      000396 12 05 5D         [24]  780 	lcall	__gptrput
      000399 02 04 44         [24]  781 	ljmp	00106$
                                    782 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:70: case PORT_2: *state = (P2 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
      00039C                        783 00103$:
      00039C AD 0B            [24]  784 	mov	r5,_GPIO_Read_PARM_2
      00039E AE 0C            [24]  785 	mov	r6,(_GPIO_Read_PARM_2 + 1)
      0003A0 AF 0D            [24]  786 	mov	r7,(_GPIO_Read_PARM_2 + 2)
      0003A2 74 01            [12]  787 	mov	a,#0x01
      0003A4 25 0E            [12]  788 	add	a,_GPIO_Read_config_65536_12
      0003A6 FA               [12]  789 	mov	r2,a
      0003A7 E4               [12]  790 	clr	a
      0003A8 35 0F            [12]  791 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      0003AA FB               [12]  792 	mov	r3,a
      0003AB AC 10            [24]  793 	mov	r4,(_GPIO_Read_config_65536_12 + 2)
      0003AD 8A 82            [24]  794 	mov	dpl,r2
      0003AF 8B 83            [24]  795 	mov	dph,r3
      0003B1 8C F0            [24]  796 	mov	b,r4
      0003B3 12 05 78         [24]  797 	lcall	__gptrget
      0003B6 FA               [12]  798 	mov	r2,a
      0003B7 8A F0            [24]  799 	mov	b,r2
      0003B9 05 F0            [12]  800 	inc	b
      0003BB 7A 01            [12]  801 	mov	r2,#0x01
      0003BD 7C 00            [12]  802 	mov	r4,#0x00
      0003BF 80 06            [24]  803 	sjmp	00156$
      0003C1                        804 00155$:
      0003C1 EA               [12]  805 	mov	a,r2
      0003C2 2A               [12]  806 	add	a,r2
      0003C3 FA               [12]  807 	mov	r2,a
      0003C4 EC               [12]  808 	mov	a,r4
      0003C5 33               [12]  809 	rlc	a
      0003C6 FC               [12]  810 	mov	r4,a
      0003C7                        811 00156$:
      0003C7 D5 F0 F7         [24]  812 	djnz	b,00155$
      0003CA A9 A0            [24]  813 	mov	r1,_P2
      0003CC 7B 00            [12]  814 	mov	r3,#0x00
      0003CE E9               [12]  815 	mov	a,r1
      0003CF 52 02            [12]  816 	anl	ar2,a
      0003D1 EB               [12]  817 	mov	a,r3
      0003D2 52 04            [12]  818 	anl	ar4,a
      0003D4 EA               [12]  819 	mov	a,r2
      0003D5 4C               [12]  820 	orl	a,r4
      0003D6 60 06            [24]  821 	jz	00116$
      0003D8 7B 01            [12]  822 	mov	r3,#0x01
      0003DA 7C 00            [12]  823 	mov	r4,#0x00
      0003DC 80 04            [24]  824 	sjmp	00117$
      0003DE                        825 00116$:
      0003DE 7B 00            [12]  826 	mov	r3,#0x00
      0003E0 7C 00            [12]  827 	mov	r4,#0x00
      0003E2                        828 00117$:
      0003E2 8D 82            [24]  829 	mov	dpl,r5
      0003E4 8E 83            [24]  830 	mov	dph,r6
      0003E6 8F F0            [24]  831 	mov	b,r7
      0003E8 EB               [12]  832 	mov	a,r3
      0003E9 12 05 5D         [24]  833 	lcall	__gptrput
                                    834 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:71: case PORT_3: *state = (P3 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
      0003EC 80 56            [24]  835 	sjmp	00106$
      0003EE                        836 00104$:
      0003EE AD 0B            [24]  837 	mov	r5,_GPIO_Read_PARM_2
      0003F0 AE 0C            [24]  838 	mov	r6,(_GPIO_Read_PARM_2 + 1)
      0003F2 AF 0D            [24]  839 	mov	r7,(_GPIO_Read_PARM_2 + 2)
      0003F4 74 01            [12]  840 	mov	a,#0x01
      0003F6 25 0E            [12]  841 	add	a,_GPIO_Read_config_65536_12
      0003F8 FA               [12]  842 	mov	r2,a
      0003F9 E4               [12]  843 	clr	a
      0003FA 35 0F            [12]  844 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      0003FC FB               [12]  845 	mov	r3,a
      0003FD AC 10            [24]  846 	mov	r4,(_GPIO_Read_config_65536_12 + 2)
      0003FF 8A 82            [24]  847 	mov	dpl,r2
      000401 8B 83            [24]  848 	mov	dph,r3
      000403 8C F0            [24]  849 	mov	b,r4
      000405 12 05 78         [24]  850 	lcall	__gptrget
      000408 FA               [12]  851 	mov	r2,a
      000409 8A F0            [24]  852 	mov	b,r2
      00040B 05 F0            [12]  853 	inc	b
      00040D 7A 01            [12]  854 	mov	r2,#0x01
      00040F 7C 00            [12]  855 	mov	r4,#0x00
      000411 80 06            [24]  856 	sjmp	00159$
      000413                        857 00158$:
      000413 EA               [12]  858 	mov	a,r2
      000414 2A               [12]  859 	add	a,r2
      000415 FA               [12]  860 	mov	r2,a
      000416 EC               [12]  861 	mov	a,r4
      000417 33               [12]  862 	rlc	a
      000418 FC               [12]  863 	mov	r4,a
      000419                        864 00159$:
      000419 D5 F0 F7         [24]  865 	djnz	b,00158$
      00041C A9 B0            [24]  866 	mov	r1,_P3
      00041E 7B 00            [12]  867 	mov	r3,#0x00
      000420 E9               [12]  868 	mov	a,r1
      000421 52 02            [12]  869 	anl	ar2,a
      000423 EB               [12]  870 	mov	a,r3
      000424 52 04            [12]  871 	anl	ar4,a
      000426 EA               [12]  872 	mov	a,r2
      000427 4C               [12]  873 	orl	a,r4
      000428 60 06            [24]  874 	jz	00118$
      00042A 7B 01            [12]  875 	mov	r3,#0x01
      00042C 7C 00            [12]  876 	mov	r4,#0x00
      00042E 80 04            [24]  877 	sjmp	00119$
      000430                        878 00118$:
      000430 7B 00            [12]  879 	mov	r3,#0x00
      000432 7C 00            [12]  880 	mov	r4,#0x00
      000434                        881 00119$:
      000434 8D 82            [24]  882 	mov	dpl,r5
      000436 8E 83            [24]  883 	mov	dph,r6
      000438 8F F0            [24]  884 	mov	b,r7
      00043A EB               [12]  885 	mov	a,r3
      00043B 12 05 5D         [24]  886 	lcall	__gptrput
                                    887 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:72: default: return HAL_GPIO_CONFIG_MISMATCH;
      00043E 80 04            [24]  888 	sjmp	00106$
      000440                        889 00105$:
      000440 75 82 01         [24]  890 	mov	dpl,#0x01
                                    891 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:73: }
      000443 22               [24]  892 	ret
      000444                        893 00106$:
                                    894 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:74: return HAL_OK;
      000444 75 82 00         [24]  895 	mov	dpl,#0x00
      000447 22               [24]  896 	ret
      000448                        897 00108$:
                                    898 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:76: return HAL_GPIO_CONFIG_MISMATCH;
      000448 75 82 01         [24]  899 	mov	dpl,#0x01
                                    900 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:77: }
      00044B 22               [24]  901 	ret
                                    902 ;------------------------------------------------------------
                                    903 ;Allocation info for local variables in function 'GPIO_Toggle'
                                    904 ;------------------------------------------------------------
                                    905 ;config                    Allocated to registers r5 r6 r7 
                                    906 ;------------------------------------------------------------
                                    907 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:80: HAL_ERR_e GPIO_Toggle(GPIO_Config_t *config) {
                                    908 ;	-----------------------------------------
                                    909 ;	 function GPIO_Toggle
                                    910 ;	-----------------------------------------
      00044C                        911 _GPIO_Toggle:
      00044C AD 82            [24]  912 	mov	r5,dpl
      00044E AE 83            [24]  913 	mov	r6,dph
      000450 AF F0            [24]  914 	mov	r7,b
                                    915 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:81: if(config->Mode != GPIO_OUTPUT) {
      000452 74 02            [12]  916 	mov	a,#0x02
      000454 2D               [12]  917 	add	a,r5
      000455 FA               [12]  918 	mov	r2,a
      000456 E4               [12]  919 	clr	a
      000457 3E               [12]  920 	addc	a,r6
      000458 FB               [12]  921 	mov	r3,a
      000459 8F 04            [24]  922 	mov	ar4,r7
      00045B 8A 82            [24]  923 	mov	dpl,r2
      00045D 8B 83            [24]  924 	mov	dph,r3
      00045F 8C F0            [24]  925 	mov	b,r4
      000461 12 05 78         [24]  926 	lcall	__gptrget
      000464 60 04            [24]  927 	jz	00102$
                                    928 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:82: return HAL_GPIO_CONFIG_MISMATCH;
      000466 75 82 01         [24]  929 	mov	dpl,#0x01
      000469 22               [24]  930 	ret
      00046A                        931 00102$:
                                    932 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:85: switch (config->Port) {
      00046A 8D 82            [24]  933 	mov	dpl,r5
      00046C 8E 83            [24]  934 	mov	dph,r6
      00046E 8F F0            [24]  935 	mov	b,r7
      000470 12 05 78         [24]  936 	lcall	__gptrget
      000473 FC               [12]  937 	mov  r4,a
      000474 24 FC            [12]  938 	add	a,#0xff - 0x03
      000476 50 03            [24]  939 	jnc	00120$
      000478 02 05 19         [24]  940 	ljmp	00107$
      00047B                        941 00120$:
      00047B EC               [12]  942 	mov	a,r4
      00047C 2C               [12]  943 	add	a,r4
                                    944 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:86: case PORT_0:
      00047D 90 04 81         [24]  945 	mov	dptr,#00121$
      000480 73               [24]  946 	jmp	@a+dptr
      000481                        947 00121$:
      000481 80 06            [24]  948 	sjmp	00103$
      000483 80 29            [24]  949 	sjmp	00104$
      000485 80 4C            [24]  950 	sjmp	00105$
      000487 80 6F            [24]  951 	sjmp	00106$
      000489                        952 00103$:
                                    953 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:87: P0 ^= (1 << config->Pin);
      000489 74 01            [12]  954 	mov	a,#0x01
      00048B 2D               [12]  955 	add	a,r5
      00048C FA               [12]  956 	mov	r2,a
      00048D E4               [12]  957 	clr	a
      00048E 3E               [12]  958 	addc	a,r6
      00048F FB               [12]  959 	mov	r3,a
      000490 8F 04            [24]  960 	mov	ar4,r7
      000492 8A 82            [24]  961 	mov	dpl,r2
      000494 8B 83            [24]  962 	mov	dph,r3
      000496 8C F0            [24]  963 	mov	b,r4
      000498 12 05 78         [24]  964 	lcall	__gptrget
      00049B FA               [12]  965 	mov	r2,a
      00049C 8A F0            [24]  966 	mov	b,r2
      00049E 05 F0            [12]  967 	inc	b
      0004A0 74 01            [12]  968 	mov	a,#0x01
      0004A2 80 02            [24]  969 	sjmp	00124$
      0004A4                        970 00122$:
      0004A4 25 E0            [12]  971 	add	a,acc
      0004A6                        972 00124$:
      0004A6 D5 F0 FB         [24]  973 	djnz	b,00122$
      0004A9 FA               [12]  974 	mov	r2,a
      0004AA 62 80            [12]  975 	xrl	_P0,a
                                    976 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:88: break;
                                    977 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:90: case PORT_1:
      0004AC 80 6F            [24]  978 	sjmp	00108$
      0004AE                        979 00104$:
                                    980 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:91: P1 ^= (1 << config->Pin);
      0004AE 74 01            [12]  981 	mov	a,#0x01
      0004B0 2D               [12]  982 	add	a,r5
      0004B1 FA               [12]  983 	mov	r2,a
      0004B2 E4               [12]  984 	clr	a
      0004B3 3E               [12]  985 	addc	a,r6
      0004B4 FB               [12]  986 	mov	r3,a
      0004B5 8F 04            [24]  987 	mov	ar4,r7
      0004B7 8A 82            [24]  988 	mov	dpl,r2
      0004B9 8B 83            [24]  989 	mov	dph,r3
      0004BB 8C F0            [24]  990 	mov	b,r4
      0004BD 12 05 78         [24]  991 	lcall	__gptrget
      0004C0 FA               [12]  992 	mov	r2,a
      0004C1 8A F0            [24]  993 	mov	b,r2
      0004C3 05 F0            [12]  994 	inc	b
      0004C5 74 01            [12]  995 	mov	a,#0x01
      0004C7 80 02            [24]  996 	sjmp	00127$
      0004C9                        997 00125$:
      0004C9 25 E0            [12]  998 	add	a,acc
      0004CB                        999 00127$:
      0004CB D5 F0 FB         [24] 1000 	djnz	b,00125$
      0004CE FA               [12] 1001 	mov	r2,a
      0004CF 62 90            [12] 1002 	xrl	_P1,a
                                   1003 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:92: break;
                                   1004 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:94: case PORT_2:
      0004D1 80 4A            [24] 1005 	sjmp	00108$
      0004D3                       1006 00105$:
                                   1007 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:95: P2 ^= (1 << config->Pin);
      0004D3 74 01            [12] 1008 	mov	a,#0x01
      0004D5 2D               [12] 1009 	add	a,r5
      0004D6 FA               [12] 1010 	mov	r2,a
      0004D7 E4               [12] 1011 	clr	a
      0004D8 3E               [12] 1012 	addc	a,r6
      0004D9 FB               [12] 1013 	mov	r3,a
      0004DA 8F 04            [24] 1014 	mov	ar4,r7
      0004DC 8A 82            [24] 1015 	mov	dpl,r2
      0004DE 8B 83            [24] 1016 	mov	dph,r3
      0004E0 8C F0            [24] 1017 	mov	b,r4
      0004E2 12 05 78         [24] 1018 	lcall	__gptrget
      0004E5 FA               [12] 1019 	mov	r2,a
      0004E6 8A F0            [24] 1020 	mov	b,r2
      0004E8 05 F0            [12] 1021 	inc	b
      0004EA 74 01            [12] 1022 	mov	a,#0x01
      0004EC 80 02            [24] 1023 	sjmp	00130$
      0004EE                       1024 00128$:
      0004EE 25 E0            [12] 1025 	add	a,acc
      0004F0                       1026 00130$:
      0004F0 D5 F0 FB         [24] 1027 	djnz	b,00128$
      0004F3 FA               [12] 1028 	mov	r2,a
      0004F4 62 A0            [12] 1029 	xrl	_P2,a
                                   1030 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:96: break;
                                   1031 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:98: case PORT_3:
      0004F6 80 25            [24] 1032 	sjmp	00108$
      0004F8                       1033 00106$:
                                   1034 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:99: P3 ^= (1 << config->Pin);
      0004F8 0D               [12] 1035 	inc	r5
      0004F9 BD 00 01         [24] 1036 	cjne	r5,#0x00,00131$
      0004FC 0E               [12] 1037 	inc	r6
      0004FD                       1038 00131$:
      0004FD 8D 82            [24] 1039 	mov	dpl,r5
      0004FF 8E 83            [24] 1040 	mov	dph,r6
      000501 8F F0            [24] 1041 	mov	b,r7
      000503 12 05 78         [24] 1042 	lcall	__gptrget
      000506 FD               [12] 1043 	mov	r5,a
      000507 8D F0            [24] 1044 	mov	b,r5
      000509 05 F0            [12] 1045 	inc	b
      00050B 74 01            [12] 1046 	mov	a,#0x01
      00050D 80 02            [24] 1047 	sjmp	00134$
      00050F                       1048 00132$:
      00050F 25 E0            [12] 1049 	add	a,acc
      000511                       1050 00134$:
      000511 D5 F0 FB         [24] 1051 	djnz	b,00132$
      000514 FD               [12] 1052 	mov	r5,a
      000515 62 B0            [12] 1053 	xrl	_P3,a
                                   1054 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:100: break;
                                   1055 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:102: default:
      000517 80 04            [24] 1056 	sjmp	00108$
      000519                       1057 00107$:
                                   1058 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:103: return HAL_GPIO_CONFIG_MISMATCH;
      000519 75 82 01         [24] 1059 	mov	dpl,#0x01
                                   1060 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:104: }
      00051C 22               [24] 1061 	ret
      00051D                       1062 00108$:
                                   1063 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:106: return HAL_OK;
      00051D 75 82 00         [24] 1064 	mov	dpl,#0x00
                                   1065 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:107: }
      000520 22               [24] 1066 	ret
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'GPIO_PORT_Write'
                                   1069 ;------------------------------------------------------------
                                   1070 ;val                       Allocated with name '_GPIO_PORT_Write_PARM_2'
                                   1071 ;config                    Allocated to registers r5 r6 r7 
                                   1072 ;------------------------------------------------------------
                                   1073 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:109: HAL_ERR_e GPIO_PORT_Write(GPIO_Config_t *config, unsigned char val){
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function GPIO_PORT_Write
                                   1076 ;	-----------------------------------------
      000521                       1077 _GPIO_PORT_Write:
                                   1078 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:110: if(config->Port == GPIO_OUTPUT){
      000521 AD 82            [24] 1079 	mov	r5,dpl
      000523 12 05 78         [24] 1080 	lcall	__gptrget
      000526 FF               [12] 1081 	mov	r7,a
      000527 70 30            [24] 1082 	jnz	00108$
                                   1083 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:111: switch (config->Port)
      000529 EF               [12] 1084 	mov	a,r7
      00052A FE               [12] 1085 	mov	r6,a
      00052B 24 FC            [12] 1086 	add	a,#0xff - 0x03
      00052D 40 22            [24] 1087 	jc	00105$
      00052F EE               [12] 1088 	mov	a,r6
      000530 2E               [12] 1089 	add	a,r6
                                   1090 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:113: case PORT_0:
      000531 90 05 35         [24] 1091 	mov	dptr,#00121$
      000534 73               [24] 1092 	jmp	@a+dptr
      000535                       1093 00121$:
      000535 80 06            [24] 1094 	sjmp	00101$
      000537 80 09            [24] 1095 	sjmp	00102$
      000539 80 0C            [24] 1096 	sjmp	00103$
      00053B 80 0F            [24] 1097 	sjmp	00104$
      00053D                       1098 00101$:
                                   1099 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:114: P0 = val;
      00053D 85 0B 80         [24] 1100 	mov	_P0,_GPIO_PORT_Write_PARM_2
                                   1101 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:115: break;
                                   1102 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:117: case PORT_1:
      000540 80 13            [24] 1103 	sjmp	00106$
      000542                       1104 00102$:
                                   1105 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:118: P1 = val;
      000542 85 0B 90         [24] 1106 	mov	_P1,_GPIO_PORT_Write_PARM_2
                                   1107 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:119: break;
                                   1108 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:121: case PORT_2:
      000545 80 0E            [24] 1109 	sjmp	00106$
      000547                       1110 00103$:
                                   1111 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:122: P2 = val;
      000547 85 0B A0         [24] 1112 	mov	_P2,_GPIO_PORT_Write_PARM_2
                                   1113 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:123: break;
                                   1114 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:125: case PORT_3:
      00054A 80 09            [24] 1115 	sjmp	00106$
      00054C                       1116 00104$:
                                   1117 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:126: P3 = val;
      00054C 85 0B B0         [24] 1118 	mov	_P3,_GPIO_PORT_Write_PARM_2
                                   1119 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:127: break;
                                   1120 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:129: default:
      00054F 80 04            [24] 1121 	sjmp	00106$
      000551                       1122 00105$:
                                   1123 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:130: return HAL_GPIO_CONFIG_MISMATCH;
      000551 75 82 01         [24] 1124 	mov	dpl,#0x01
                                   1125 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:132: }
      000554 22               [24] 1126 	ret
      000555                       1127 00106$:
                                   1128 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:133: return HAL_OK;
      000555 75 82 00         [24] 1129 	mov	dpl,#0x00
      000558 22               [24] 1130 	ret
      000559                       1131 00108$:
                                   1132 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:135: return HAL_GPIO_CONFIG_MISMATCH;
      000559 75 82 01         [24] 1133 	mov	dpl,#0x01
                                   1134 ;	/home/aman/Desktop/8051_env/blinky/include/HAL/GPIO.c:136: }
      00055C 22               [24] 1135 	ret
                                   1136 	.area CSEG    (CODE)
                                   1137 	.area CONST   (CODE)
                                   1138 	.area XINIT   (CODE)
                                   1139 	.area CABS    (ABS,CODE)
