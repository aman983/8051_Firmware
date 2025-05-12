                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module Sys_tick
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _F1
                                     18 	.globl _P
                                     19 	.globl _PS
                                     20 	.globl _PT1
                                     21 	.globl _PX1
                                     22 	.globl _PT0
                                     23 	.globl _PX0
                                     24 	.globl _RD
                                     25 	.globl _WR
                                     26 	.globl _T1
                                     27 	.globl _T0
                                     28 	.globl _INT1
                                     29 	.globl _INT0
                                     30 	.globl _TXD
                                     31 	.globl _RXD
                                     32 	.globl _P3_7
                                     33 	.globl _P3_6
                                     34 	.globl _P3_5
                                     35 	.globl _P3_4
                                     36 	.globl _P3_3
                                     37 	.globl _P3_2
                                     38 	.globl _P3_1
                                     39 	.globl _P3_0
                                     40 	.globl _EA
                                     41 	.globl _ES
                                     42 	.globl _ET1
                                     43 	.globl _EX1
                                     44 	.globl _ET0
                                     45 	.globl _EX0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _SM0
                                     55 	.globl _SM1
                                     56 	.globl _SM2
                                     57 	.globl _REN
                                     58 	.globl _TB8
                                     59 	.globl _RB8
                                     60 	.globl _TI
                                     61 	.globl _RI
                                     62 	.globl _P1_7
                                     63 	.globl _P1_6
                                     64 	.globl _P1_5
                                     65 	.globl _P1_4
                                     66 	.globl _P1_3
                                     67 	.globl _P1_2
                                     68 	.globl _P1_1
                                     69 	.globl _P1_0
                                     70 	.globl _TF1
                                     71 	.globl _TR1
                                     72 	.globl _TF0
                                     73 	.globl _TR0
                                     74 	.globl _IE1
                                     75 	.globl _IT1
                                     76 	.globl _IE0
                                     77 	.globl _IT0
                                     78 	.globl _P0_7
                                     79 	.globl _P0_6
                                     80 	.globl _P0_5
                                     81 	.globl _P0_4
                                     82 	.globl _P0_3
                                     83 	.globl _P0_2
                                     84 	.globl _P0_1
                                     85 	.globl _P0_0
                                     86 	.globl _B
                                     87 	.globl _ACC
                                     88 	.globl _PSW
                                     89 	.globl _IP
                                     90 	.globl _P3
                                     91 	.globl _IE
                                     92 	.globl _P2
                                     93 	.globl _SBUF
                                     94 	.globl _SCON
                                     95 	.globl _P1
                                     96 	.globl _TH1
                                     97 	.globl _TH0
                                     98 	.globl _TL1
                                     99 	.globl _TL0
                                    100 	.globl _TMOD
                                    101 	.globl _TCON
                                    102 	.globl _PCON
                                    103 	.globl _DPH
                                    104 	.globl _DPL
                                    105 	.globl _SP
                                    106 	.globl _P0
                                    107 	.globl _sys_tick_ms
                                    108 	.globl _timer1_ISR
                                    109 	.globl _Sys_Tick_Init
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
      00001A                        225 _sys_tick_ms::
      00001A                        226 	.ds 4
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable items in internal ram 
                                    229 ;--------------------------------------------------------
                                    230 ;--------------------------------------------------------
                                    231 ; indirectly addressable internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area ISEG    (DATA)
                                    234 ;--------------------------------------------------------
                                    235 ; absolute internal ram data
                                    236 ;--------------------------------------------------------
                                    237 	.area IABS    (ABS,DATA)
                                    238 	.area IABS    (ABS,DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; bit data
                                    241 ;--------------------------------------------------------
                                    242 	.area BSEG    (BIT)
                                    243 ;--------------------------------------------------------
                                    244 ; paged external ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area PSEG    (PAG,XDATA)
                                    247 ;--------------------------------------------------------
                                    248 ; external ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area XSEG    (XDATA)
                                    251 ;--------------------------------------------------------
                                    252 ; absolute external ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area XABS    (ABS,XDATA)
                                    255 ;--------------------------------------------------------
                                    256 ; external initialized ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area XISEG   (XDATA)
                                    259 	.area HOME    (CODE)
                                    260 	.area GSINIT0 (CODE)
                                    261 	.area GSINIT1 (CODE)
                                    262 	.area GSINIT2 (CODE)
                                    263 	.area GSINIT3 (CODE)
                                    264 	.area GSINIT4 (CODE)
                                    265 	.area GSINIT5 (CODE)
                                    266 	.area GSINIT  (CODE)
                                    267 	.area GSFINAL (CODE)
                                    268 	.area CSEG    (CODE)
                                    269 ;--------------------------------------------------------
                                    270 ; global & static initialisations
                                    271 ;--------------------------------------------------------
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area GSINIT  (CODE)
                                    276 ;	../HAL/Sys_tick.c:4: volatile unsigned long sys_tick_ms = 0;
      00005F E4               [12]  277 	clr	a
      000060 F5 1A            [12]  278 	mov	_sys_tick_ms,a
      000062 F5 1B            [12]  279 	mov	(_sys_tick_ms + 1),a
      000064 F5 1C            [12]  280 	mov	(_sys_tick_ms + 2),a
      000066 F5 1D            [12]  281 	mov	(_sys_tick_ms + 3),a
                                    282 ;--------------------------------------------------------
                                    283 ; Home
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
                                    286 	.area HOME    (CODE)
                                    287 ;--------------------------------------------------------
                                    288 ; code
                                    289 ;--------------------------------------------------------
                                    290 	.area CSEG    (CODE)
                                    291 ;------------------------------------------------------------
                                    292 ;Allocation info for local variables in function 'timer1_ISR'
                                    293 ;------------------------------------------------------------
                                    294 ;	../HAL/Sys_tick.c:8: void timer1_ISR(void) __interrupt(3) {
                                    295 ;	-----------------------------------------
                                    296 ;	 function timer1_ISR
                                    297 ;	-----------------------------------------
      000757                        298 _timer1_ISR:
                           000007   299 	ar7 = 0x07
                           000006   300 	ar6 = 0x06
                           000005   301 	ar5 = 0x05
                           000004   302 	ar4 = 0x04
                           000003   303 	ar3 = 0x03
                           000002   304 	ar2 = 0x02
                           000001   305 	ar1 = 0x01
                           000000   306 	ar0 = 0x00
      000757 C0 E0            [24]  307 	push	acc
      000759 C0 07            [24]  308 	push	ar7
      00075B C0 06            [24]  309 	push	ar6
      00075D C0 05            [24]  310 	push	ar5
      00075F C0 04            [24]  311 	push	ar4
      000761 C0 D0            [24]  312 	push	psw
      000763 75 D0 00         [24]  313 	mov	psw,#0x00
                                    314 ;	../HAL/Sys_tick.c:9: TH1 = TH1_INIT;
      000766 75 8D FC         [24]  315 	mov	_TH1,#0xfc
                                    316 ;	../HAL/Sys_tick.c:10: TL1 = TL1_INIT;
      000769 75 8B 67         [24]  317 	mov	_TL1,#0x67
                                    318 ;	../HAL/Sys_tick.c:11: sys_tick_ms++;
      00076C AC 1A            [24]  319 	mov	r4,_sys_tick_ms
      00076E AD 1B            [24]  320 	mov	r5,(_sys_tick_ms + 1)
      000770 AE 1C            [24]  321 	mov	r6,(_sys_tick_ms + 2)
      000772 AF 1D            [24]  322 	mov	r7,(_sys_tick_ms + 3)
      000774 74 01            [12]  323 	mov	a,#0x01
      000776 2C               [12]  324 	add	a,r4
      000777 F5 1A            [12]  325 	mov	_sys_tick_ms,a
      000779 E4               [12]  326 	clr	a
      00077A 3D               [12]  327 	addc	a,r5
      00077B F5 1B            [12]  328 	mov	(_sys_tick_ms + 1),a
      00077D E4               [12]  329 	clr	a
      00077E 3E               [12]  330 	addc	a,r6
      00077F F5 1C            [12]  331 	mov	(_sys_tick_ms + 2),a
      000781 E4               [12]  332 	clr	a
      000782 3F               [12]  333 	addc	a,r7
      000783 F5 1D            [12]  334 	mov	(_sys_tick_ms + 3),a
                                    335 ;	../HAL/Sys_tick.c:12: }
      000785 D0 D0            [24]  336 	pop	psw
      000787 D0 04            [24]  337 	pop	ar4
      000789 D0 05            [24]  338 	pop	ar5
      00078B D0 06            [24]  339 	pop	ar6
      00078D D0 07            [24]  340 	pop	ar7
      00078F D0 E0            [24]  341 	pop	acc
      000791 32               [24]  342 	reti
                                    343 ;	eliminated unneeded push/pop dpl
                                    344 ;	eliminated unneeded push/pop dph
                                    345 ;	eliminated unneeded push/pop b
                                    346 ;------------------------------------------------------------
                                    347 ;Allocation info for local variables in function 'Sys_Tick_Init'
                                    348 ;------------------------------------------------------------
                                    349 ;	../HAL/Sys_tick.c:15: void Sys_Tick_Init() {
                                    350 ;	-----------------------------------------
                                    351 ;	 function Sys_Tick_Init
                                    352 ;	-----------------------------------------
      000792                        353 _Sys_Tick_Init:
                                    354 ;	../HAL/Sys_tick.c:16: TMOD &= 0x0F;     // Clear upper 4 bits (Timer1)
      000792 53 89 0F         [24]  355 	anl	_TMOD,#0x0f
                                    356 ;	../HAL/Sys_tick.c:17: TMOD |= 0x10;     // Set Timer1 Mode 1 (16-bit)
      000795 43 89 10         [24]  357 	orl	_TMOD,#0x10
                                    358 ;	../HAL/Sys_tick.c:19: TH1 = TH1_INIT;
      000798 75 8D FC         [24]  359 	mov	_TH1,#0xfc
                                    360 ;	../HAL/Sys_tick.c:20: TL1 = TL1_INIT;
      00079B 75 8B 67         [24]  361 	mov	_TL1,#0x67
                                    362 ;	../HAL/Sys_tick.c:22: ET1 = 1;          // Enable Timer1 interrupt
                                    363 ;	assignBit
      00079E D2 AB            [12]  364 	setb	_ET1
                                    365 ;	../HAL/Sys_tick.c:23: EA = 1;           // Enable global interrupts
                                    366 ;	assignBit
      0007A0 D2 AF            [12]  367 	setb	_EA
                                    368 ;	../HAL/Sys_tick.c:24: TR1 = 1;          // Start Timer1
                                    369 ;	assignBit
      0007A2 D2 8E            [12]  370 	setb	_TR1
                                    371 ;	../HAL/Sys_tick.c:25: }
      0007A4 22               [24]  372 	ret
                                    373 	.area CSEG    (CODE)
                                    374 	.area CONST   (CODE)
                                    375 	.area XINIT   (CODE)
                                    376 	.area CABS    (ABS,CODE)
