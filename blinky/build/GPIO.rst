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
      00001E                        233 _GPIO_Write_PARM_2:
      00001E                        234 	.ds 1
                                    235 	.area	OSEG    (OVR,DATA)
      00001E                        236 _GPIO_Read_PARM_2:
      00001E                        237 	.ds 3
      000021                        238 _GPIO_Read_config_65536_12:
      000021                        239 	.ds 3
                                    240 	.area	OSEG    (OVR,DATA)
                                    241 	.area	OSEG    (OVR,DATA)
      00001E                        242 _GPIO_PORT_Write_PARM_2:
      00001E                        243 	.ds 1
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
                                    305 ;	../HAL/GPIO.c:5: HAL_ERR_e GPIO_Write(GPIO_Config_t *config, GPIO_State_e state){
                                    306 ;	-----------------------------------------
                                    307 ;	 function GPIO_Write
                                    308 ;	-----------------------------------------
      0002E3                        309 _GPIO_Write:
                           000007   310 	ar7 = 0x07
                           000006   311 	ar6 = 0x06
                           000005   312 	ar5 = 0x05
                           000004   313 	ar4 = 0x04
                           000003   314 	ar3 = 0x03
                           000002   315 	ar2 = 0x02
                           000001   316 	ar1 = 0x01
                           000000   317 	ar0 = 0x00
      0002E3 AD 82            [24]  318 	mov	r5,dpl
      0002E5 AE 83            [24]  319 	mov	r6,dph
      0002E7 AF F0            [24]  320 	mov	r7,b
                                    321 ;	../HAL/GPIO.c:6: if(config->Mode == GPIO_OUTPUT){
      0002E9 74 02            [12]  322 	mov	a,#0x02
      0002EB 2D               [12]  323 	add	a,r5
      0002EC FA               [12]  324 	mov	r2,a
      0002ED E4               [12]  325 	clr	a
      0002EE 3E               [12]  326 	addc	a,r6
      0002EF FB               [12]  327 	mov	r3,a
      0002F0 8F 04            [24]  328 	mov	ar4,r7
      0002F2 8A 82            [24]  329 	mov	dpl,r2
      0002F4 8B 83            [24]  330 	mov	dph,r3
      0002F6 8C F0            [24]  331 	mov	b,r4
      0002F8 12 08 36         [24]  332 	lcall	__gptrget
      0002FB 60 03            [24]  333 	jz	00136$
      0002FD 02 04 80         [24]  334 	ljmp	00117$
      000300                        335 00136$:
                                    336 ;	../HAL/GPIO.c:9: if(state == GPIO_HIGH){
      000300 74 01            [12]  337 	mov	a,#0x01
      000302 B5 1E 02         [24]  338 	cjne	a,_GPIO_Write_PARM_2,00137$
      000305 80 03            [24]  339 	sjmp	00138$
      000307                        340 00137$:
      000307 02 03 C5         [24]  341 	ljmp	00114$
      00030A                        342 00138$:
                                    343 ;	../HAL/GPIO.c:11: switch (config->Port)
      00030A 8D 82            [24]  344 	mov	dpl,r5
      00030C 8E 83            [24]  345 	mov	dph,r6
      00030E 8F F0            [24]  346 	mov	b,r7
      000310 12 08 36         [24]  347 	lcall	__gptrget
      000313 FC               [12]  348 	mov  r4,a
      000314 24 FC            [12]  349 	add	a,#0xff - 0x03
      000316 50 03            [24]  350 	jnc	00139$
      000318 02 03 C1         [24]  351 	ljmp	00105$
      00031B                        352 00139$:
      00031B EC               [12]  353 	mov	a,r4
      00031C 2C               [12]  354 	add	a,r4
                                    355 ;	../HAL/GPIO.c:13: case PORT_0:
      00031D 90 03 21         [24]  356 	mov	dptr,#00140$
      000320 73               [24]  357 	jmp	@a+dptr
      000321                        358 00140$:
      000321 80 06            [24]  359 	sjmp	00101$
      000323 80 2A            [24]  360 	sjmp	00102$
      000325 80 4E            [24]  361 	sjmp	00103$
      000327 80 72            [24]  362 	sjmp	00104$
      000329                        363 00101$:
                                    364 ;	../HAL/GPIO.c:14: P0 |= (1 << config->Pin);
      000329 74 01            [12]  365 	mov	a,#0x01
      00032B 2D               [12]  366 	add	a,r5
      00032C FA               [12]  367 	mov	r2,a
      00032D E4               [12]  368 	clr	a
      00032E 3E               [12]  369 	addc	a,r6
      00032F FB               [12]  370 	mov	r3,a
      000330 8F 04            [24]  371 	mov	ar4,r7
      000332 8A 82            [24]  372 	mov	dpl,r2
      000334 8B 83            [24]  373 	mov	dph,r3
      000336 8C F0            [24]  374 	mov	b,r4
      000338 12 08 36         [24]  375 	lcall	__gptrget
      00033B FA               [12]  376 	mov	r2,a
      00033C 8A F0            [24]  377 	mov	b,r2
      00033E 05 F0            [12]  378 	inc	b
      000340 74 01            [12]  379 	mov	a,#0x01
      000342 80 02            [24]  380 	sjmp	00143$
      000344                        381 00141$:
      000344 25 E0            [12]  382 	add	a,acc
      000346                        383 00143$:
      000346 D5 F0 FB         [24]  384 	djnz	b,00141$
      000349 FA               [12]  385 	mov	r2,a
      00034A 42 80            [12]  386 	orl	_P0,a
                                    387 ;	../HAL/GPIO.c:15: break;
      00034C 02 04 7C         [24]  388 	ljmp	00115$
                                    389 ;	../HAL/GPIO.c:17: case PORT_1:
      00034F                        390 00102$:
                                    391 ;	../HAL/GPIO.c:18: P1 |= (1 << config->Pin);
      00034F 74 01            [12]  392 	mov	a,#0x01
      000351 2D               [12]  393 	add	a,r5
      000352 FA               [12]  394 	mov	r2,a
      000353 E4               [12]  395 	clr	a
      000354 3E               [12]  396 	addc	a,r6
      000355 FB               [12]  397 	mov	r3,a
      000356 8F 04            [24]  398 	mov	ar4,r7
      000358 8A 82            [24]  399 	mov	dpl,r2
      00035A 8B 83            [24]  400 	mov	dph,r3
      00035C 8C F0            [24]  401 	mov	b,r4
      00035E 12 08 36         [24]  402 	lcall	__gptrget
      000361 FA               [12]  403 	mov	r2,a
      000362 8A F0            [24]  404 	mov	b,r2
      000364 05 F0            [12]  405 	inc	b
      000366 74 01            [12]  406 	mov	a,#0x01
      000368 80 02            [24]  407 	sjmp	00146$
      00036A                        408 00144$:
      00036A 25 E0            [12]  409 	add	a,acc
      00036C                        410 00146$:
      00036C D5 F0 FB         [24]  411 	djnz	b,00144$
      00036F FA               [12]  412 	mov	r2,a
      000370 42 90            [12]  413 	orl	_P1,a
                                    414 ;	../HAL/GPIO.c:19: break;
      000372 02 04 7C         [24]  415 	ljmp	00115$
                                    416 ;	../HAL/GPIO.c:21: case PORT_2:
      000375                        417 00103$:
                                    418 ;	../HAL/GPIO.c:22: P2 |= (1 << config->Pin);
      000375 74 01            [12]  419 	mov	a,#0x01
      000377 2D               [12]  420 	add	a,r5
      000378 FA               [12]  421 	mov	r2,a
      000379 E4               [12]  422 	clr	a
      00037A 3E               [12]  423 	addc	a,r6
      00037B FB               [12]  424 	mov	r3,a
      00037C 8F 04            [24]  425 	mov	ar4,r7
      00037E 8A 82            [24]  426 	mov	dpl,r2
      000380 8B 83            [24]  427 	mov	dph,r3
      000382 8C F0            [24]  428 	mov	b,r4
      000384 12 08 36         [24]  429 	lcall	__gptrget
      000387 FA               [12]  430 	mov	r2,a
      000388 8A F0            [24]  431 	mov	b,r2
      00038A 05 F0            [12]  432 	inc	b
      00038C 74 01            [12]  433 	mov	a,#0x01
      00038E 80 02            [24]  434 	sjmp	00149$
      000390                        435 00147$:
      000390 25 E0            [12]  436 	add	a,acc
      000392                        437 00149$:
      000392 D5 F0 FB         [24]  438 	djnz	b,00147$
      000395 FA               [12]  439 	mov	r2,a
      000396 42 A0            [12]  440 	orl	_P2,a
                                    441 ;	../HAL/GPIO.c:23: break;
      000398 02 04 7C         [24]  442 	ljmp	00115$
                                    443 ;	../HAL/GPIO.c:25: case PORT_3:
      00039B                        444 00104$:
                                    445 ;	../HAL/GPIO.c:26: P3 |= (1 << config->Pin);
      00039B 74 01            [12]  446 	mov	a,#0x01
      00039D 2D               [12]  447 	add	a,r5
      00039E FA               [12]  448 	mov	r2,a
      00039F E4               [12]  449 	clr	a
      0003A0 3E               [12]  450 	addc	a,r6
      0003A1 FB               [12]  451 	mov	r3,a
      0003A2 8F 04            [24]  452 	mov	ar4,r7
      0003A4 8A 82            [24]  453 	mov	dpl,r2
      0003A6 8B 83            [24]  454 	mov	dph,r3
      0003A8 8C F0            [24]  455 	mov	b,r4
      0003AA 12 08 36         [24]  456 	lcall	__gptrget
      0003AD FA               [12]  457 	mov	r2,a
      0003AE 8A F0            [24]  458 	mov	b,r2
      0003B0 05 F0            [12]  459 	inc	b
      0003B2 74 01            [12]  460 	mov	a,#0x01
      0003B4 80 02            [24]  461 	sjmp	00152$
      0003B6                        462 00150$:
      0003B6 25 E0            [12]  463 	add	a,acc
      0003B8                        464 00152$:
      0003B8 D5 F0 FB         [24]  465 	djnz	b,00150$
      0003BB FA               [12]  466 	mov	r2,a
      0003BC 42 B0            [12]  467 	orl	_P3,a
                                    468 ;	../HAL/GPIO.c:27: break;
      0003BE 02 04 7C         [24]  469 	ljmp	00115$
                                    470 ;	../HAL/GPIO.c:29: default:
      0003C1                        471 00105$:
                                    472 ;	../HAL/GPIO.c:30: return HAL_GPIO_CONFIG_MISMATCH;
      0003C1 75 82 01         [24]  473 	mov	dpl,#0x01
      0003C4 22               [24]  474 	ret
                                    475 ;	../HAL/GPIO.c:32: }
      0003C5                        476 00114$:
                                    477 ;	../HAL/GPIO.c:34: switch (config->Port)
      0003C5 8D 82            [24]  478 	mov	dpl,r5
      0003C7 8E 83            [24]  479 	mov	dph,r6
      0003C9 8F F0            [24]  480 	mov	b,r7
      0003CB 12 08 36         [24]  481 	lcall	__gptrget
      0003CE FC               [12]  482 	mov  r4,a
      0003CF 24 FC            [12]  483 	add	a,#0xff - 0x03
      0003D1 50 03            [24]  484 	jnc	00153$
      0003D3 02 04 78         [24]  485 	ljmp	00111$
      0003D6                        486 00153$:
      0003D6 EC               [12]  487 	mov	a,r4
      0003D7 2C               [12]  488 	add	a,r4
                                    489 ;	../HAL/GPIO.c:36: case PORT_0:
      0003D8 90 03 DC         [24]  490 	mov	dptr,#00154$
      0003DB 73               [24]  491 	jmp	@a+dptr
      0003DC                        492 00154$:
      0003DC 80 06            [24]  493 	sjmp	00107$
      0003DE 80 2A            [24]  494 	sjmp	00108$
      0003E0 80 4E            [24]  495 	sjmp	00109$
      0003E2 80 72            [24]  496 	sjmp	00110$
      0003E4                        497 00107$:
                                    498 ;	../HAL/GPIO.c:37: P0 &= ~(1 << config->Pin);
      0003E4 74 01            [12]  499 	mov	a,#0x01
      0003E6 2D               [12]  500 	add	a,r5
      0003E7 FA               [12]  501 	mov	r2,a
      0003E8 E4               [12]  502 	clr	a
      0003E9 3E               [12]  503 	addc	a,r6
      0003EA FB               [12]  504 	mov	r3,a
      0003EB 8F 04            [24]  505 	mov	ar4,r7
      0003ED 8A 82            [24]  506 	mov	dpl,r2
      0003EF 8B 83            [24]  507 	mov	dph,r3
      0003F1 8C F0            [24]  508 	mov	b,r4
      0003F3 12 08 36         [24]  509 	lcall	__gptrget
      0003F6 FA               [12]  510 	mov	r2,a
      0003F7 8A F0            [24]  511 	mov	b,r2
      0003F9 05 F0            [12]  512 	inc	b
      0003FB 74 01            [12]  513 	mov	a,#0x01
      0003FD 80 02            [24]  514 	sjmp	00157$
      0003FF                        515 00155$:
      0003FF 25 E0            [12]  516 	add	a,acc
      000401                        517 00157$:
      000401 D5 F0 FB         [24]  518 	djnz	b,00155$
      000404 F4               [12]  519 	cpl	a
      000405 FA               [12]  520 	mov	r2,a
      000406 52 80            [12]  521 	anl	_P0,a
                                    522 ;	../HAL/GPIO.c:38: break;
                                    523 ;	../HAL/GPIO.c:40: case PORT_1:
      000408 80 72            [24]  524 	sjmp	00115$
      00040A                        525 00108$:
                                    526 ;	../HAL/GPIO.c:41: P1 &= ~(1 << config->Pin);
      00040A 74 01            [12]  527 	mov	a,#0x01
      00040C 2D               [12]  528 	add	a,r5
      00040D FA               [12]  529 	mov	r2,a
      00040E E4               [12]  530 	clr	a
      00040F 3E               [12]  531 	addc	a,r6
      000410 FB               [12]  532 	mov	r3,a
      000411 8F 04            [24]  533 	mov	ar4,r7
      000413 8A 82            [24]  534 	mov	dpl,r2
      000415 8B 83            [24]  535 	mov	dph,r3
      000417 8C F0            [24]  536 	mov	b,r4
      000419 12 08 36         [24]  537 	lcall	__gptrget
      00041C FA               [12]  538 	mov	r2,a
      00041D 8A F0            [24]  539 	mov	b,r2
      00041F 05 F0            [12]  540 	inc	b
      000421 74 01            [12]  541 	mov	a,#0x01
      000423 80 02            [24]  542 	sjmp	00160$
      000425                        543 00158$:
      000425 25 E0            [12]  544 	add	a,acc
      000427                        545 00160$:
      000427 D5 F0 FB         [24]  546 	djnz	b,00158$
      00042A F4               [12]  547 	cpl	a
      00042B FA               [12]  548 	mov	r2,a
      00042C 52 90            [12]  549 	anl	_P1,a
                                    550 ;	../HAL/GPIO.c:42: break;
                                    551 ;	../HAL/GPIO.c:44: case PORT_2:
      00042E 80 4C            [24]  552 	sjmp	00115$
      000430                        553 00109$:
                                    554 ;	../HAL/GPIO.c:45: P2 &= ~(1 << config->Pin);
      000430 74 01            [12]  555 	mov	a,#0x01
      000432 2D               [12]  556 	add	a,r5
      000433 FA               [12]  557 	mov	r2,a
      000434 E4               [12]  558 	clr	a
      000435 3E               [12]  559 	addc	a,r6
      000436 FB               [12]  560 	mov	r3,a
      000437 8F 04            [24]  561 	mov	ar4,r7
      000439 8A 82            [24]  562 	mov	dpl,r2
      00043B 8B 83            [24]  563 	mov	dph,r3
      00043D 8C F0            [24]  564 	mov	b,r4
      00043F 12 08 36         [24]  565 	lcall	__gptrget
      000442 FA               [12]  566 	mov	r2,a
      000443 8A F0            [24]  567 	mov	b,r2
      000445 05 F0            [12]  568 	inc	b
      000447 74 01            [12]  569 	mov	a,#0x01
      000449 80 02            [24]  570 	sjmp	00163$
      00044B                        571 00161$:
      00044B 25 E0            [12]  572 	add	a,acc
      00044D                        573 00163$:
      00044D D5 F0 FB         [24]  574 	djnz	b,00161$
      000450 F4               [12]  575 	cpl	a
      000451 FA               [12]  576 	mov	r2,a
      000452 52 A0            [12]  577 	anl	_P2,a
                                    578 ;	../HAL/GPIO.c:46: break;
                                    579 ;	../HAL/GPIO.c:48: case PORT_3:
      000454 80 26            [24]  580 	sjmp	00115$
      000456                        581 00110$:
                                    582 ;	../HAL/GPIO.c:49: P3 &= ~(1 << config->Pin);
      000456 0D               [12]  583 	inc	r5
      000457 BD 00 01         [24]  584 	cjne	r5,#0x00,00164$
      00045A 0E               [12]  585 	inc	r6
      00045B                        586 00164$:
      00045B 8D 82            [24]  587 	mov	dpl,r5
      00045D 8E 83            [24]  588 	mov	dph,r6
      00045F 8F F0            [24]  589 	mov	b,r7
      000461 12 08 36         [24]  590 	lcall	__gptrget
      000464 FD               [12]  591 	mov	r5,a
      000465 8D F0            [24]  592 	mov	b,r5
      000467 05 F0            [12]  593 	inc	b
      000469 74 01            [12]  594 	mov	a,#0x01
      00046B 80 02            [24]  595 	sjmp	00167$
      00046D                        596 00165$:
      00046D 25 E0            [12]  597 	add	a,acc
      00046F                        598 00167$:
      00046F D5 F0 FB         [24]  599 	djnz	b,00165$
      000472 F4               [12]  600 	cpl	a
      000473 FD               [12]  601 	mov	r5,a
      000474 52 B0            [12]  602 	anl	_P3,a
                                    603 ;	../HAL/GPIO.c:50: break;
                                    604 ;	../HAL/GPIO.c:53: default:
      000476 80 04            [24]  605 	sjmp	00115$
      000478                        606 00111$:
                                    607 ;	../HAL/GPIO.c:54: return HAL_GPIO_CONFIG_MISMATCH;
      000478 75 82 01         [24]  608 	mov	dpl,#0x01
                                    609 ;	../HAL/GPIO.c:56: }
      00047B 22               [24]  610 	ret
      00047C                        611 00115$:
                                    612 ;	../HAL/GPIO.c:58: return HAL_OK;
      00047C 75 82 00         [24]  613 	mov	dpl,#0x00
      00047F 22               [24]  614 	ret
      000480                        615 00117$:
                                    616 ;	../HAL/GPIO.c:61: return HAL_GPIO_CONFIG_MISMATCH;
      000480 75 82 01         [24]  617 	mov	dpl,#0x01
                                    618 ;	../HAL/GPIO.c:62: }
      000483 22               [24]  619 	ret
                                    620 ;------------------------------------------------------------
                                    621 ;Allocation info for local variables in function 'GPIO_Read'
                                    622 ;------------------------------------------------------------
                                    623 ;state                     Allocated with name '_GPIO_Read_PARM_2'
                                    624 ;config                    Allocated with name '_GPIO_Read_config_65536_12'
                                    625 ;------------------------------------------------------------
                                    626 ;	../HAL/GPIO.c:65: HAL_ERR_e GPIO_Read(GPIO_Config_t *config, GPIO_State_e *state){
                                    627 ;	-----------------------------------------
                                    628 ;	 function GPIO_Read
                                    629 ;	-----------------------------------------
      000484                        630 _GPIO_Read:
      000484 85 82 21         [24]  631 	mov	_GPIO_Read_config_65536_12,dpl
      000487 85 83 22         [24]  632 	mov	(_GPIO_Read_config_65536_12 + 1),dph
      00048A 85 F0 23         [24]  633 	mov	(_GPIO_Read_config_65536_12 + 2),b
                                    634 ;	../HAL/GPIO.c:66: if(config->Mode == GPIO_INPUT || config->Mode == GPIO_INPUT_PULLUP){
      00048D 74 02            [12]  635 	mov	a,#0x02
      00048F 25 21            [12]  636 	add	a,_GPIO_Read_config_65536_12
      000491 FA               [12]  637 	mov	r2,a
      000492 E4               [12]  638 	clr	a
      000493 35 22            [12]  639 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      000495 FB               [12]  640 	mov	r3,a
      000496 AC 23            [24]  641 	mov	r4,(_GPIO_Read_config_65536_12 + 2)
      000498 8A 82            [24]  642 	mov	dpl,r2
      00049A 8B 83            [24]  643 	mov	dph,r3
      00049C 8C F0            [24]  644 	mov	b,r4
      00049E 12 08 36         [24]  645 	lcall	__gptrget
      0004A1 FC               [12]  646 	mov	r4,a
      0004A2 BC 01 02         [24]  647 	cjne	r4,#0x01,00144$
      0004A5 80 08            [24]  648 	sjmp	00107$
      0004A7                        649 00144$:
      0004A7 BC 02 02         [24]  650 	cjne	r4,#0x02,00145$
      0004AA 80 03            [24]  651 	sjmp	00146$
      0004AC                        652 00145$:
      0004AC 02 06 28         [24]  653 	ljmp	00108$
      0004AF                        654 00146$:
      0004AF                        655 00107$:
                                    656 ;	../HAL/GPIO.c:67: switch(config->Port){
      0004AF 85 21 82         [24]  657 	mov	dpl,_GPIO_Read_config_65536_12
      0004B2 85 22 83         [24]  658 	mov	dph,(_GPIO_Read_config_65536_12 + 1)
      0004B5 85 23 F0         [24]  659 	mov	b,(_GPIO_Read_config_65536_12 + 2)
      0004B8 12 08 36         [24]  660 	lcall	__gptrget
      0004BB FC               [12]  661 	mov  r4,a
      0004BC 24 FC            [12]  662 	add	a,#0xff - 0x03
      0004BE 50 03            [24]  663 	jnc	00147$
      0004C0 02 06 20         [24]  664 	ljmp	00105$
      0004C3                        665 00147$:
      0004C3 EC               [12]  666 	mov	a,r4
      0004C4 2C               [12]  667 	add	a,r4
      0004C5 2C               [12]  668 	add	a,r4
      0004C6 90 04 CA         [24]  669 	mov	dptr,#00148$
      0004C9 73               [24]  670 	jmp	@a+dptr
      0004CA                        671 00148$:
      0004CA 02 04 D6         [24]  672 	ljmp	00101$
      0004CD 02 05 29         [24]  673 	ljmp	00102$
      0004D0 02 05 7C         [24]  674 	ljmp	00103$
      0004D3 02 05 CE         [24]  675 	ljmp	00104$
                                    676 ;	../HAL/GPIO.c:68: case PORT_0: *state = (P0 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
      0004D6                        677 00101$:
      0004D6 AA 1E            [24]  678 	mov	r2,_GPIO_Read_PARM_2
      0004D8 AB 1F            [24]  679 	mov	r3,(_GPIO_Read_PARM_2 + 1)
      0004DA AC 20            [24]  680 	mov	r4,(_GPIO_Read_PARM_2 + 2)
      0004DC 74 01            [12]  681 	mov	a,#0x01
      0004DE 25 21            [12]  682 	add	a,_GPIO_Read_config_65536_12
      0004E0 F8               [12]  683 	mov	r0,a
      0004E1 E4               [12]  684 	clr	a
      0004E2 35 22            [12]  685 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      0004E4 F9               [12]  686 	mov	r1,a
      0004E5 AF 23            [24]  687 	mov	r7,(_GPIO_Read_config_65536_12 + 2)
      0004E7 88 82            [24]  688 	mov	dpl,r0
      0004E9 89 83            [24]  689 	mov	dph,r1
      0004EB 8F F0            [24]  690 	mov	b,r7
      0004ED 12 08 36         [24]  691 	lcall	__gptrget
      0004F0 F8               [12]  692 	mov	r0,a
      0004F1 88 F0            [24]  693 	mov	b,r0
      0004F3 05 F0            [12]  694 	inc	b
      0004F5 78 01            [12]  695 	mov	r0,#0x01
      0004F7 7F 00            [12]  696 	mov	r7,#0x00
      0004F9 80 06            [24]  697 	sjmp	00150$
      0004FB                        698 00149$:
      0004FB E8               [12]  699 	mov	a,r0
      0004FC 28               [12]  700 	add	a,r0
      0004FD F8               [12]  701 	mov	r0,a
      0004FE EF               [12]  702 	mov	a,r7
      0004FF 33               [12]  703 	rlc	a
      000500 FF               [12]  704 	mov	r7,a
      000501                        705 00150$:
      000501 D5 F0 F7         [24]  706 	djnz	b,00149$
      000504 AD 80            [24]  707 	mov	r5,_P0
      000506 7E 00            [12]  708 	mov	r6,#0x00
      000508 ED               [12]  709 	mov	a,r5
      000509 52 00            [12]  710 	anl	ar0,a
      00050B EE               [12]  711 	mov	a,r6
      00050C 52 07            [12]  712 	anl	ar7,a
      00050E E8               [12]  713 	mov	a,r0
      00050F 4F               [12]  714 	orl	a,r7
      000510 60 06            [24]  715 	jz	00112$
      000512 7E 01            [12]  716 	mov	r6,#0x01
      000514 7F 00            [12]  717 	mov	r7,#0x00
      000516 80 04            [24]  718 	sjmp	00113$
      000518                        719 00112$:
      000518 7E 00            [12]  720 	mov	r6,#0x00
      00051A 7F 00            [12]  721 	mov	r7,#0x00
      00051C                        722 00113$:
      00051C 8A 82            [24]  723 	mov	dpl,r2
      00051E 8B 83            [24]  724 	mov	dph,r3
      000520 8C F0            [24]  725 	mov	b,r4
      000522 EE               [12]  726 	mov	a,r6
      000523 12 07 A5         [24]  727 	lcall	__gptrput
      000526 02 06 24         [24]  728 	ljmp	00106$
                                    729 ;	../HAL/GPIO.c:69: case PORT_1: *state = (P1 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
      000529                        730 00102$:
      000529 AD 1E            [24]  731 	mov	r5,_GPIO_Read_PARM_2
      00052B AE 1F            [24]  732 	mov	r6,(_GPIO_Read_PARM_2 + 1)
      00052D AF 20            [24]  733 	mov	r7,(_GPIO_Read_PARM_2 + 2)
      00052F 74 01            [12]  734 	mov	a,#0x01
      000531 25 21            [12]  735 	add	a,_GPIO_Read_config_65536_12
      000533 FA               [12]  736 	mov	r2,a
      000534 E4               [12]  737 	clr	a
      000535 35 22            [12]  738 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      000537 FB               [12]  739 	mov	r3,a
      000538 AC 23            [24]  740 	mov	r4,(_GPIO_Read_config_65536_12 + 2)
      00053A 8A 82            [24]  741 	mov	dpl,r2
      00053C 8B 83            [24]  742 	mov	dph,r3
      00053E 8C F0            [24]  743 	mov	b,r4
      000540 12 08 36         [24]  744 	lcall	__gptrget
      000543 FA               [12]  745 	mov	r2,a
      000544 8A F0            [24]  746 	mov	b,r2
      000546 05 F0            [12]  747 	inc	b
      000548 7A 01            [12]  748 	mov	r2,#0x01
      00054A 7C 00            [12]  749 	mov	r4,#0x00
      00054C 80 06            [24]  750 	sjmp	00153$
      00054E                        751 00152$:
      00054E EA               [12]  752 	mov	a,r2
      00054F 2A               [12]  753 	add	a,r2
      000550 FA               [12]  754 	mov	r2,a
      000551 EC               [12]  755 	mov	a,r4
      000552 33               [12]  756 	rlc	a
      000553 FC               [12]  757 	mov	r4,a
      000554                        758 00153$:
      000554 D5 F0 F7         [24]  759 	djnz	b,00152$
      000557 A9 90            [24]  760 	mov	r1,_P1
      000559 7B 00            [12]  761 	mov	r3,#0x00
      00055B E9               [12]  762 	mov	a,r1
      00055C 52 02            [12]  763 	anl	ar2,a
      00055E EB               [12]  764 	mov	a,r3
      00055F 52 04            [12]  765 	anl	ar4,a
      000561 EA               [12]  766 	mov	a,r2
      000562 4C               [12]  767 	orl	a,r4
      000563 60 06            [24]  768 	jz	00114$
      000565 7B 01            [12]  769 	mov	r3,#0x01
      000567 7C 00            [12]  770 	mov	r4,#0x00
      000569 80 04            [24]  771 	sjmp	00115$
      00056B                        772 00114$:
      00056B 7B 00            [12]  773 	mov	r3,#0x00
      00056D 7C 00            [12]  774 	mov	r4,#0x00
      00056F                        775 00115$:
      00056F 8D 82            [24]  776 	mov	dpl,r5
      000571 8E 83            [24]  777 	mov	dph,r6
      000573 8F F0            [24]  778 	mov	b,r7
      000575 EB               [12]  779 	mov	a,r3
      000576 12 07 A5         [24]  780 	lcall	__gptrput
      000579 02 06 24         [24]  781 	ljmp	00106$
                                    782 ;	../HAL/GPIO.c:70: case PORT_2: *state = (P2 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
      00057C                        783 00103$:
      00057C AD 1E            [24]  784 	mov	r5,_GPIO_Read_PARM_2
      00057E AE 1F            [24]  785 	mov	r6,(_GPIO_Read_PARM_2 + 1)
      000580 AF 20            [24]  786 	mov	r7,(_GPIO_Read_PARM_2 + 2)
      000582 74 01            [12]  787 	mov	a,#0x01
      000584 25 21            [12]  788 	add	a,_GPIO_Read_config_65536_12
      000586 FA               [12]  789 	mov	r2,a
      000587 E4               [12]  790 	clr	a
      000588 35 22            [12]  791 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      00058A FB               [12]  792 	mov	r3,a
      00058B AC 23            [24]  793 	mov	r4,(_GPIO_Read_config_65536_12 + 2)
      00058D 8A 82            [24]  794 	mov	dpl,r2
      00058F 8B 83            [24]  795 	mov	dph,r3
      000591 8C F0            [24]  796 	mov	b,r4
      000593 12 08 36         [24]  797 	lcall	__gptrget
      000596 FA               [12]  798 	mov	r2,a
      000597 8A F0            [24]  799 	mov	b,r2
      000599 05 F0            [12]  800 	inc	b
      00059B 7A 01            [12]  801 	mov	r2,#0x01
      00059D 7C 00            [12]  802 	mov	r4,#0x00
      00059F 80 06            [24]  803 	sjmp	00156$
      0005A1                        804 00155$:
      0005A1 EA               [12]  805 	mov	a,r2
      0005A2 2A               [12]  806 	add	a,r2
      0005A3 FA               [12]  807 	mov	r2,a
      0005A4 EC               [12]  808 	mov	a,r4
      0005A5 33               [12]  809 	rlc	a
      0005A6 FC               [12]  810 	mov	r4,a
      0005A7                        811 00156$:
      0005A7 D5 F0 F7         [24]  812 	djnz	b,00155$
      0005AA A9 A0            [24]  813 	mov	r1,_P2
      0005AC 7B 00            [12]  814 	mov	r3,#0x00
      0005AE E9               [12]  815 	mov	a,r1
      0005AF 52 02            [12]  816 	anl	ar2,a
      0005B1 EB               [12]  817 	mov	a,r3
      0005B2 52 04            [12]  818 	anl	ar4,a
      0005B4 EA               [12]  819 	mov	a,r2
      0005B5 4C               [12]  820 	orl	a,r4
      0005B6 60 06            [24]  821 	jz	00116$
      0005B8 7B 01            [12]  822 	mov	r3,#0x01
      0005BA 7C 00            [12]  823 	mov	r4,#0x00
      0005BC 80 04            [24]  824 	sjmp	00117$
      0005BE                        825 00116$:
      0005BE 7B 00            [12]  826 	mov	r3,#0x00
      0005C0 7C 00            [12]  827 	mov	r4,#0x00
      0005C2                        828 00117$:
      0005C2 8D 82            [24]  829 	mov	dpl,r5
      0005C4 8E 83            [24]  830 	mov	dph,r6
      0005C6 8F F0            [24]  831 	mov	b,r7
      0005C8 EB               [12]  832 	mov	a,r3
      0005C9 12 07 A5         [24]  833 	lcall	__gptrput
                                    834 ;	../HAL/GPIO.c:71: case PORT_3: *state = (P3 & (1 << config->Pin)) ? GPIO_HIGH : GPIO_LOW; break;
      0005CC 80 56            [24]  835 	sjmp	00106$
      0005CE                        836 00104$:
      0005CE AD 1E            [24]  837 	mov	r5,_GPIO_Read_PARM_2
      0005D0 AE 1F            [24]  838 	mov	r6,(_GPIO_Read_PARM_2 + 1)
      0005D2 AF 20            [24]  839 	mov	r7,(_GPIO_Read_PARM_2 + 2)
      0005D4 74 01            [12]  840 	mov	a,#0x01
      0005D6 25 21            [12]  841 	add	a,_GPIO_Read_config_65536_12
      0005D8 FA               [12]  842 	mov	r2,a
      0005D9 E4               [12]  843 	clr	a
      0005DA 35 22            [12]  844 	addc	a,(_GPIO_Read_config_65536_12 + 1)
      0005DC FB               [12]  845 	mov	r3,a
      0005DD AC 23            [24]  846 	mov	r4,(_GPIO_Read_config_65536_12 + 2)
      0005DF 8A 82            [24]  847 	mov	dpl,r2
      0005E1 8B 83            [24]  848 	mov	dph,r3
      0005E3 8C F0            [24]  849 	mov	b,r4
      0005E5 12 08 36         [24]  850 	lcall	__gptrget
      0005E8 FA               [12]  851 	mov	r2,a
      0005E9 8A F0            [24]  852 	mov	b,r2
      0005EB 05 F0            [12]  853 	inc	b
      0005ED 7A 01            [12]  854 	mov	r2,#0x01
      0005EF 7C 00            [12]  855 	mov	r4,#0x00
      0005F1 80 06            [24]  856 	sjmp	00159$
      0005F3                        857 00158$:
      0005F3 EA               [12]  858 	mov	a,r2
      0005F4 2A               [12]  859 	add	a,r2
      0005F5 FA               [12]  860 	mov	r2,a
      0005F6 EC               [12]  861 	mov	a,r4
      0005F7 33               [12]  862 	rlc	a
      0005F8 FC               [12]  863 	mov	r4,a
      0005F9                        864 00159$:
      0005F9 D5 F0 F7         [24]  865 	djnz	b,00158$
      0005FC A9 B0            [24]  866 	mov	r1,_P3
      0005FE 7B 00            [12]  867 	mov	r3,#0x00
      000600 E9               [12]  868 	mov	a,r1
      000601 52 02            [12]  869 	anl	ar2,a
      000603 EB               [12]  870 	mov	a,r3
      000604 52 04            [12]  871 	anl	ar4,a
      000606 EA               [12]  872 	mov	a,r2
      000607 4C               [12]  873 	orl	a,r4
      000608 60 06            [24]  874 	jz	00118$
      00060A 7B 01            [12]  875 	mov	r3,#0x01
      00060C 7C 00            [12]  876 	mov	r4,#0x00
      00060E 80 04            [24]  877 	sjmp	00119$
      000610                        878 00118$:
      000610 7B 00            [12]  879 	mov	r3,#0x00
      000612 7C 00            [12]  880 	mov	r4,#0x00
      000614                        881 00119$:
      000614 8D 82            [24]  882 	mov	dpl,r5
      000616 8E 83            [24]  883 	mov	dph,r6
      000618 8F F0            [24]  884 	mov	b,r7
      00061A EB               [12]  885 	mov	a,r3
      00061B 12 07 A5         [24]  886 	lcall	__gptrput
                                    887 ;	../HAL/GPIO.c:72: default: return HAL_GPIO_CONFIG_MISMATCH;
      00061E 80 04            [24]  888 	sjmp	00106$
      000620                        889 00105$:
      000620 75 82 01         [24]  890 	mov	dpl,#0x01
                                    891 ;	../HAL/GPIO.c:73: }
      000623 22               [24]  892 	ret
      000624                        893 00106$:
                                    894 ;	../HAL/GPIO.c:74: return HAL_OK;
      000624 75 82 00         [24]  895 	mov	dpl,#0x00
      000627 22               [24]  896 	ret
      000628                        897 00108$:
                                    898 ;	../HAL/GPIO.c:76: return HAL_GPIO_CONFIG_MISMATCH;
      000628 75 82 01         [24]  899 	mov	dpl,#0x01
                                    900 ;	../HAL/GPIO.c:77: }
      00062B 22               [24]  901 	ret
                                    902 ;------------------------------------------------------------
                                    903 ;Allocation info for local variables in function 'GPIO_Toggle'
                                    904 ;------------------------------------------------------------
                                    905 ;config                    Allocated to registers r5 r6 r7 
                                    906 ;------------------------------------------------------------
                                    907 ;	../HAL/GPIO.c:80: HAL_ERR_e GPIO_Toggle(GPIO_Config_t *config) {
                                    908 ;	-----------------------------------------
                                    909 ;	 function GPIO_Toggle
                                    910 ;	-----------------------------------------
      00062C                        911 _GPIO_Toggle:
      00062C AD 82            [24]  912 	mov	r5,dpl
      00062E AE 83            [24]  913 	mov	r6,dph
      000630 AF F0            [24]  914 	mov	r7,b
                                    915 ;	../HAL/GPIO.c:81: if(config->Mode != GPIO_OUTPUT) {
      000632 74 02            [12]  916 	mov	a,#0x02
      000634 2D               [12]  917 	add	a,r5
      000635 FA               [12]  918 	mov	r2,a
      000636 E4               [12]  919 	clr	a
      000637 3E               [12]  920 	addc	a,r6
      000638 FB               [12]  921 	mov	r3,a
      000639 8F 04            [24]  922 	mov	ar4,r7
      00063B 8A 82            [24]  923 	mov	dpl,r2
      00063D 8B 83            [24]  924 	mov	dph,r3
      00063F 8C F0            [24]  925 	mov	b,r4
      000641 12 08 36         [24]  926 	lcall	__gptrget
      000644 60 04            [24]  927 	jz	00102$
                                    928 ;	../HAL/GPIO.c:82: return HAL_GPIO_CONFIG_MISMATCH;
      000646 75 82 01         [24]  929 	mov	dpl,#0x01
      000649 22               [24]  930 	ret
      00064A                        931 00102$:
                                    932 ;	../HAL/GPIO.c:85: switch (config->Port) {
      00064A 8D 82            [24]  933 	mov	dpl,r5
      00064C 8E 83            [24]  934 	mov	dph,r6
      00064E 8F F0            [24]  935 	mov	b,r7
      000650 12 08 36         [24]  936 	lcall	__gptrget
      000653 FC               [12]  937 	mov  r4,a
      000654 24 FC            [12]  938 	add	a,#0xff - 0x03
      000656 50 03            [24]  939 	jnc	00120$
      000658 02 06 F9         [24]  940 	ljmp	00107$
      00065B                        941 00120$:
      00065B EC               [12]  942 	mov	a,r4
      00065C 2C               [12]  943 	add	a,r4
                                    944 ;	../HAL/GPIO.c:86: case PORT_0:
      00065D 90 06 61         [24]  945 	mov	dptr,#00121$
      000660 73               [24]  946 	jmp	@a+dptr
      000661                        947 00121$:
      000661 80 06            [24]  948 	sjmp	00103$
      000663 80 29            [24]  949 	sjmp	00104$
      000665 80 4C            [24]  950 	sjmp	00105$
      000667 80 6F            [24]  951 	sjmp	00106$
      000669                        952 00103$:
                                    953 ;	../HAL/GPIO.c:87: P0 ^= (1 << config->Pin);
      000669 74 01            [12]  954 	mov	a,#0x01
      00066B 2D               [12]  955 	add	a,r5
      00066C FA               [12]  956 	mov	r2,a
      00066D E4               [12]  957 	clr	a
      00066E 3E               [12]  958 	addc	a,r6
      00066F FB               [12]  959 	mov	r3,a
      000670 8F 04            [24]  960 	mov	ar4,r7
      000672 8A 82            [24]  961 	mov	dpl,r2
      000674 8B 83            [24]  962 	mov	dph,r3
      000676 8C F0            [24]  963 	mov	b,r4
      000678 12 08 36         [24]  964 	lcall	__gptrget
      00067B FA               [12]  965 	mov	r2,a
      00067C 8A F0            [24]  966 	mov	b,r2
      00067E 05 F0            [12]  967 	inc	b
      000680 74 01            [12]  968 	mov	a,#0x01
      000682 80 02            [24]  969 	sjmp	00124$
      000684                        970 00122$:
      000684 25 E0            [12]  971 	add	a,acc
      000686                        972 00124$:
      000686 D5 F0 FB         [24]  973 	djnz	b,00122$
      000689 FA               [12]  974 	mov	r2,a
      00068A 62 80            [12]  975 	xrl	_P0,a
                                    976 ;	../HAL/GPIO.c:88: break;
                                    977 ;	../HAL/GPIO.c:90: case PORT_1:
      00068C 80 6F            [24]  978 	sjmp	00108$
      00068E                        979 00104$:
                                    980 ;	../HAL/GPIO.c:91: P1 ^= (1 << config->Pin);
      00068E 74 01            [12]  981 	mov	a,#0x01
      000690 2D               [12]  982 	add	a,r5
      000691 FA               [12]  983 	mov	r2,a
      000692 E4               [12]  984 	clr	a
      000693 3E               [12]  985 	addc	a,r6
      000694 FB               [12]  986 	mov	r3,a
      000695 8F 04            [24]  987 	mov	ar4,r7
      000697 8A 82            [24]  988 	mov	dpl,r2
      000699 8B 83            [24]  989 	mov	dph,r3
      00069B 8C F0            [24]  990 	mov	b,r4
      00069D 12 08 36         [24]  991 	lcall	__gptrget
      0006A0 FA               [12]  992 	mov	r2,a
      0006A1 8A F0            [24]  993 	mov	b,r2
      0006A3 05 F0            [12]  994 	inc	b
      0006A5 74 01            [12]  995 	mov	a,#0x01
      0006A7 80 02            [24]  996 	sjmp	00127$
      0006A9                        997 00125$:
      0006A9 25 E0            [12]  998 	add	a,acc
      0006AB                        999 00127$:
      0006AB D5 F0 FB         [24] 1000 	djnz	b,00125$
      0006AE FA               [12] 1001 	mov	r2,a
      0006AF 62 90            [12] 1002 	xrl	_P1,a
                                   1003 ;	../HAL/GPIO.c:92: break;
                                   1004 ;	../HAL/GPIO.c:94: case PORT_2:
      0006B1 80 4A            [24] 1005 	sjmp	00108$
      0006B3                       1006 00105$:
                                   1007 ;	../HAL/GPIO.c:95: P2 ^= (1 << config->Pin);
      0006B3 74 01            [12] 1008 	mov	a,#0x01
      0006B5 2D               [12] 1009 	add	a,r5
      0006B6 FA               [12] 1010 	mov	r2,a
      0006B7 E4               [12] 1011 	clr	a
      0006B8 3E               [12] 1012 	addc	a,r6
      0006B9 FB               [12] 1013 	mov	r3,a
      0006BA 8F 04            [24] 1014 	mov	ar4,r7
      0006BC 8A 82            [24] 1015 	mov	dpl,r2
      0006BE 8B 83            [24] 1016 	mov	dph,r3
      0006C0 8C F0            [24] 1017 	mov	b,r4
      0006C2 12 08 36         [24] 1018 	lcall	__gptrget
      0006C5 FA               [12] 1019 	mov	r2,a
      0006C6 8A F0            [24] 1020 	mov	b,r2
      0006C8 05 F0            [12] 1021 	inc	b
      0006CA 74 01            [12] 1022 	mov	a,#0x01
      0006CC 80 02            [24] 1023 	sjmp	00130$
      0006CE                       1024 00128$:
      0006CE 25 E0            [12] 1025 	add	a,acc
      0006D0                       1026 00130$:
      0006D0 D5 F0 FB         [24] 1027 	djnz	b,00128$
      0006D3 FA               [12] 1028 	mov	r2,a
      0006D4 62 A0            [12] 1029 	xrl	_P2,a
                                   1030 ;	../HAL/GPIO.c:96: break;
                                   1031 ;	../HAL/GPIO.c:98: case PORT_3:
      0006D6 80 25            [24] 1032 	sjmp	00108$
      0006D8                       1033 00106$:
                                   1034 ;	../HAL/GPIO.c:99: P3 ^= (1 << config->Pin);
      0006D8 0D               [12] 1035 	inc	r5
      0006D9 BD 00 01         [24] 1036 	cjne	r5,#0x00,00131$
      0006DC 0E               [12] 1037 	inc	r6
      0006DD                       1038 00131$:
      0006DD 8D 82            [24] 1039 	mov	dpl,r5
      0006DF 8E 83            [24] 1040 	mov	dph,r6
      0006E1 8F F0            [24] 1041 	mov	b,r7
      0006E3 12 08 36         [24] 1042 	lcall	__gptrget
      0006E6 FD               [12] 1043 	mov	r5,a
      0006E7 8D F0            [24] 1044 	mov	b,r5
      0006E9 05 F0            [12] 1045 	inc	b
      0006EB 74 01            [12] 1046 	mov	a,#0x01
      0006ED 80 02            [24] 1047 	sjmp	00134$
      0006EF                       1048 00132$:
      0006EF 25 E0            [12] 1049 	add	a,acc
      0006F1                       1050 00134$:
      0006F1 D5 F0 FB         [24] 1051 	djnz	b,00132$
      0006F4 FD               [12] 1052 	mov	r5,a
      0006F5 62 B0            [12] 1053 	xrl	_P3,a
                                   1054 ;	../HAL/GPIO.c:100: break;
                                   1055 ;	../HAL/GPIO.c:102: default:
      0006F7 80 04            [24] 1056 	sjmp	00108$
      0006F9                       1057 00107$:
                                   1058 ;	../HAL/GPIO.c:103: return HAL_GPIO_CONFIG_MISMATCH;
      0006F9 75 82 01         [24] 1059 	mov	dpl,#0x01
                                   1060 ;	../HAL/GPIO.c:104: }
      0006FC 22               [24] 1061 	ret
      0006FD                       1062 00108$:
                                   1063 ;	../HAL/GPIO.c:106: return HAL_OK;
      0006FD 75 82 00         [24] 1064 	mov	dpl,#0x00
                                   1065 ;	../HAL/GPIO.c:107: }
      000700 22               [24] 1066 	ret
                                   1067 ;------------------------------------------------------------
                                   1068 ;Allocation info for local variables in function 'GPIO_PORT_Write'
                                   1069 ;------------------------------------------------------------
                                   1070 ;val                       Allocated with name '_GPIO_PORT_Write_PARM_2'
                                   1071 ;config                    Allocated to registers r5 r6 r7 
                                   1072 ;------------------------------------------------------------
                                   1073 ;	../HAL/GPIO.c:109: HAL_ERR_e GPIO_PORT_Write(GPIO_Config_t *config, unsigned char val){
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function GPIO_PORT_Write
                                   1076 ;	-----------------------------------------
      000701                       1077 _GPIO_PORT_Write:
      000701 AD 82            [24] 1078 	mov	r5,dpl
      000703 AE 83            [24] 1079 	mov	r6,dph
      000705 AF F0            [24] 1080 	mov	r7,b
                                   1081 ;	../HAL/GPIO.c:110: if(config->Mode == GPIO_OUTPUT){
      000707 74 02            [12] 1082 	mov	a,#0x02
      000709 2D               [12] 1083 	add	a,r5
      00070A FA               [12] 1084 	mov	r2,a
      00070B E4               [12] 1085 	clr	a
      00070C 3E               [12] 1086 	addc	a,r6
      00070D FB               [12] 1087 	mov	r3,a
      00070E 8F 04            [24] 1088 	mov	ar4,r7
      000710 8A 82            [24] 1089 	mov	dpl,r2
      000712 8B 83            [24] 1090 	mov	dph,r3
      000714 8C F0            [24] 1091 	mov	b,r4
      000716 12 08 36         [24] 1092 	lcall	__gptrget
      000719 70 38            [24] 1093 	jnz	00108$
                                   1094 ;	../HAL/GPIO.c:111: switch (config->Port)
      00071B 8D 82            [24] 1095 	mov	dpl,r5
      00071D 8E 83            [24] 1096 	mov	dph,r6
      00071F 8F F0            [24] 1097 	mov	b,r7
      000721 12 08 36         [24] 1098 	lcall	__gptrget
      000724 FF               [12] 1099 	mov  r7,a
      000725 24 FC            [12] 1100 	add	a,#0xff - 0x03
      000727 40 22            [24] 1101 	jc	00105$
      000729 EF               [12] 1102 	mov	a,r7
      00072A 2F               [12] 1103 	add	a,r7
                                   1104 ;	../HAL/GPIO.c:113: case PORT_0:
      00072B 90 07 2F         [24] 1105 	mov	dptr,#00121$
      00072E 73               [24] 1106 	jmp	@a+dptr
      00072F                       1107 00121$:
      00072F 80 06            [24] 1108 	sjmp	00101$
      000731 80 09            [24] 1109 	sjmp	00102$
      000733 80 0C            [24] 1110 	sjmp	00103$
      000735 80 0F            [24] 1111 	sjmp	00104$
      000737                       1112 00101$:
                                   1113 ;	../HAL/GPIO.c:114: P0 = val;
      000737 85 1E 80         [24] 1114 	mov	_P0,_GPIO_PORT_Write_PARM_2
                                   1115 ;	../HAL/GPIO.c:115: break;
                                   1116 ;	../HAL/GPIO.c:117: case PORT_1:
      00073A 80 13            [24] 1117 	sjmp	00106$
      00073C                       1118 00102$:
                                   1119 ;	../HAL/GPIO.c:118: P1 = val;
      00073C 85 1E 90         [24] 1120 	mov	_P1,_GPIO_PORT_Write_PARM_2
                                   1121 ;	../HAL/GPIO.c:119: break;
                                   1122 ;	../HAL/GPIO.c:121: case PORT_2:
      00073F 80 0E            [24] 1123 	sjmp	00106$
      000741                       1124 00103$:
                                   1125 ;	../HAL/GPIO.c:122: P2 = val;
      000741 85 1E A0         [24] 1126 	mov	_P2,_GPIO_PORT_Write_PARM_2
                                   1127 ;	../HAL/GPIO.c:123: break;
                                   1128 ;	../HAL/GPIO.c:125: case PORT_3:
      000744 80 09            [24] 1129 	sjmp	00106$
      000746                       1130 00104$:
                                   1131 ;	../HAL/GPIO.c:126: P3 = val;
      000746 85 1E B0         [24] 1132 	mov	_P3,_GPIO_PORT_Write_PARM_2
                                   1133 ;	../HAL/GPIO.c:127: break;
                                   1134 ;	../HAL/GPIO.c:129: default:
      000749 80 04            [24] 1135 	sjmp	00106$
      00074B                       1136 00105$:
                                   1137 ;	../HAL/GPIO.c:130: return HAL_GPIO_CONFIG_MISMATCH;
      00074B 75 82 01         [24] 1138 	mov	dpl,#0x01
                                   1139 ;	../HAL/GPIO.c:132: }
      00074E 22               [24] 1140 	ret
      00074F                       1141 00106$:
                                   1142 ;	../HAL/GPIO.c:133: return HAL_OK;
      00074F 75 82 00         [24] 1143 	mov	dpl,#0x00
      000752 22               [24] 1144 	ret
      000753                       1145 00108$:
                                   1146 ;	../HAL/GPIO.c:135: return HAL_GPIO_CONFIG_MISMATCH;
      000753 75 82 01         [24] 1147 	mov	dpl,#0x01
                                   1148 ;	../HAL/GPIO.c:136: }
      000756 22               [24] 1149 	ret
                                   1150 	.area CSEG    (CODE)
                                   1151 	.area CONST   (CODE)
                                   1152 	.area XINIT   (CODE)
                                   1153 	.area CABS    (ABS,CODE)
