                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module 7_Seg
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _LUT
                                     12 	.globl _Tim_delay_ms
                                     13 	.globl _GPIO_PORT_Write
                                     14 	.globl _GPIO_Write
                                     15 	.globl _Segment_Write_char_PARM_2
                                     16 	.globl _Multi_Segment_write_Digits_PARM_2
                                     17 	.globl _Segment_write_number_PARM_3
                                     18 	.globl _Segment_write_number_PARM_2
                                     19 	.globl _Segment_write_PARM_3
                                     20 	.globl _Segment_write_PARM_2
                                     21 	.globl _Segment_Init
                                     22 	.globl _Segment_write
                                     23 	.globl _Segment_write_number
                                     24 	.globl _Multi_Segment_write_Digits
                                     25 	.globl _Segment_Write_char
                                     26 ;--------------------------------------------------------
                                     27 ; special function registers
                                     28 ;--------------------------------------------------------
                                     29 	.area RSEG    (ABS,DATA)
      000000                         30 	.org 0x0000
                                     31 ;--------------------------------------------------------
                                     32 ; special function bits
                                     33 ;--------------------------------------------------------
                                     34 	.area RSEG    (ABS,DATA)
      000000                         35 	.org 0x0000
                                     36 ;--------------------------------------------------------
                                     37 ; overlayable register banks
                                     38 ;--------------------------------------------------------
                                     39 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         40 	.ds 8
                                     41 ;--------------------------------------------------------
                                     42 ; internal ram data
                                     43 ;--------------------------------------------------------
                                     44 	.area DSEG    (DATA)
      00001A                         45 _Seg_port:
      00001A                         46 	.ds 3
      00001D                         47 _Seg_en_Port:
      00001D                         48 	.ds 3
      000020                         49 _Segment_write_PARM_2:
      000020                         50 	.ds 1
      000021                         51 _Segment_write_PARM_3:
      000021                         52 	.ds 1
      000022                         53 _Segment_write_config_65536_17:
      000022                         54 	.ds 3
      000025                         55 _Segment_write_i_131072_19:
      000025                         56 	.ds 1
      000026                         57 _Segment_write_i_131072_23:
      000026                         58 	.ds 1
      000027                         59 _Segment_write_number_PARM_2:
      000027                         60 	.ds 1
      000028                         61 _Segment_write_number_PARM_3:
      000028                         62 	.ds 1
      000029                         63 _Segment_write_number_config_65536_25:
      000029                         64 	.ds 3
      00002C                         65 _Segment_write_number_i_131072_27:
      00002C                         66 	.ds 1
      00002D                         67 _Segment_write_number_i_131072_31:
      00002D                         68 	.ds 1
      00002E                         69 _Multi_Segment_write_Digits_PARM_2:
      00002E                         70 	.ds 2
      000030                         71 _Multi_Segment_write_Digits_config_65536_33:
      000030                         72 	.ds 3
      000033                         73 _Multi_Segment_write_Digits_is_negative_65536_34:
      000033                         74 	.ds 1
      000034                         75 _Segment_Write_char_PARM_2:
      000034                         76 	.ds 3
      000037                         77 _Segment_Write_char_config_65536_40:
      000037                         78 	.ds 3
                                     79 ;--------------------------------------------------------
                                     80 ; overlayable items in internal ram 
                                     81 ;--------------------------------------------------------
                                     82 	.area	OSEG    (OVR,DATA)
                                     83 	.area	OSEG    (OVR,DATA)
                                     84 ;--------------------------------------------------------
                                     85 ; indirectly addressable internal ram data
                                     86 ;--------------------------------------------------------
                                     87 	.area ISEG    (DATA)
                                     88 ;--------------------------------------------------------
                                     89 ; absolute internal ram data
                                     90 ;--------------------------------------------------------
                                     91 	.area IABS    (ABS,DATA)
                                     92 	.area IABS    (ABS,DATA)
                                     93 ;--------------------------------------------------------
                                     94 ; bit data
                                     95 ;--------------------------------------------------------
                                     96 	.area BSEG    (BIT)
                                     97 ;--------------------------------------------------------
                                     98 ; paged external ram data
                                     99 ;--------------------------------------------------------
                                    100 	.area PSEG    (PAG,XDATA)
                                    101 ;--------------------------------------------------------
                                    102 ; external ram data
                                    103 ;--------------------------------------------------------
                                    104 	.area XSEG    (XDATA)
                                    105 ;--------------------------------------------------------
                                    106 ; absolute external ram data
                                    107 ;--------------------------------------------------------
                                    108 	.area XABS    (ABS,XDATA)
                                    109 ;--------------------------------------------------------
                                    110 ; external initialized ram data
                                    111 ;--------------------------------------------------------
                                    112 	.area XISEG   (XDATA)
                                    113 	.area HOME    (CODE)
                                    114 	.area GSINIT0 (CODE)
                                    115 	.area GSINIT1 (CODE)
                                    116 	.area GSINIT2 (CODE)
                                    117 	.area GSINIT3 (CODE)
                                    118 	.area GSINIT4 (CODE)
                                    119 	.area GSINIT5 (CODE)
                                    120 	.area GSINIT  (CODE)
                                    121 	.area GSFINAL (CODE)
                                    122 	.area CSEG    (CODE)
                                    123 ;--------------------------------------------------------
                                    124 ; global & static initialisations
                                    125 ;--------------------------------------------------------
                                    126 	.area HOME    (CODE)
                                    127 	.area GSINIT  (CODE)
                                    128 	.area GSFINAL (CODE)
                                    129 	.area GSINIT  (CODE)
                                    130 ;--------------------------------------------------------
                                    131 ; Home
                                    132 ;--------------------------------------------------------
                                    133 	.area HOME    (CODE)
                                    134 	.area HOME    (CODE)
                                    135 ;--------------------------------------------------------
                                    136 ; code
                                    137 ;--------------------------------------------------------
                                    138 	.area CSEG    (CODE)
                                    139 ;------------------------------------------------------------
                                    140 ;Allocation info for local variables in function 'LUT'
                                    141 ;------------------------------------------------------------
                                    142 ;c                         Allocated to registers r7 
                                    143 ;------------------------------------------------------------
                                    144 ;	../HAL/7_Seg.c:9: unsigned char LUT(char c) {
                                    145 ;	-----------------------------------------
                                    146 ;	 function LUT
                                    147 ;	-----------------------------------------
      0000BE                        148 _LUT:
                           000007   149 	ar7 = 0x07
                           000006   150 	ar6 = 0x06
                           000005   151 	ar5 = 0x05
                           000004   152 	ar4 = 0x04
                           000003   153 	ar3 = 0x03
                           000002   154 	ar2 = 0x02
                           000001   155 	ar1 = 0x01
                           000000   156 	ar0 = 0x00
      0000BE AF 82            [24]  157 	mov	r7,dpl
                                    158 ;	../HAL/7_Seg.c:10: switch (c) {
      0000C0 BF 20 00         [24]  159 	cjne	r7,#0x20,00169$
      0000C3                        160 00169$:
      0000C3 50 03            [24]  161 	jnc	00170$
      0000C5 02 02 23         [24]  162 	ljmp	00157$
      0000C8                        163 00170$:
      0000C8 EF               [12]  164 	mov	a,r7
      0000C9 24 85            [12]  165 	add	a,#0xff - 0x7a
      0000CB 50 03            [24]  166 	jnc	00171$
      0000CD 02 02 23         [24]  167 	ljmp	00157$
      0000D0                        168 00171$:
      0000D0 EF               [12]  169 	mov	a,r7
      0000D1 24 E0            [12]  170 	add	a,#0xe0
      0000D3 FF               [12]  171 	mov	r7,a
      0000D4 24 0A            [12]  172 	add	a,#(00172$-3-.)
      0000D6 83               [24]  173 	movc	a,@a+pc
      0000D7 F5 82            [12]  174 	mov	dpl,a
      0000D9 EF               [12]  175 	mov	a,r7
      0000DA 24 5F            [12]  176 	add	a,#(00173$-3-.)
      0000DC 83               [24]  177 	movc	a,@a+pc
      0000DD F5 83            [12]  178 	mov	dph,a
      0000DF E4               [12]  179 	clr	a
      0000E0 73               [24]  180 	jmp	@a+dptr
      0000E1                        181 00172$:
      0000E1 1F                     182 	.db	00156$
      0000E2 23                     183 	.db	00157$
      0000E3 23                     184 	.db	00157$
      0000E4 23                     185 	.db	00157$
      0000E5 23                     186 	.db	00157$
      0000E6 23                     187 	.db	00157$
      0000E7 23                     188 	.db	00157$
      0000E8 23                     189 	.db	00157$
      0000E9 23                     190 	.db	00157$
      0000EA 23                     191 	.db	00157$
      0000EB 23                     192 	.db	00157$
      0000EC 23                     193 	.db	00157$
      0000ED 23                     194 	.db	00157$
      0000EE 13                     195 	.db	00153$
      0000EF 23                     196 	.db	00157$
      0000F0 23                     197 	.db	00157$
      0000F1 97                     198 	.db	00101$
      0000F2 9B                     199 	.db	00102$
      0000F3 9F                     200 	.db	00103$
      0000F4 A3                     201 	.db	00104$
      0000F5 A7                     202 	.db	00105$
      0000F6 AB                     203 	.db	00106$
      0000F7 AF                     204 	.db	00107$
      0000F8 B3                     205 	.db	00108$
      0000F9 B7                     206 	.db	00109$
      0000FA BB                     207 	.db	00110$
      0000FB 23                     208 	.db	00157$
      0000FC 23                     209 	.db	00157$
      0000FD 23                     210 	.db	00157$
      0000FE 1B                     211 	.db	00155$
      0000FF 23                     212 	.db	00157$
      000100 23                     213 	.db	00157$
      000101 23                     214 	.db	00157$
      000102 BF                     215 	.db	00112$
      000103 C3                     216 	.db	00114$
      000104 C7                     217 	.db	00116$
      000105 CB                     218 	.db	00118$
      000106 CF                     219 	.db	00120$
      000107 D3                     220 	.db	00122$
      000108 D7                     221 	.db	00124$
      000109 DB                     222 	.db	00126$
      00010A DF                     223 	.db	00128$
      00010B E3                     224 	.db	00130$
      00010C 23                     225 	.db	00157$
      00010D E7                     226 	.db	00132$
      00010E 23                     227 	.db	00157$
      00010F EB                     228 	.db	00134$
      000110 EF                     229 	.db	00136$
      000111 F3                     230 	.db	00138$
      000112 F7                     231 	.db	00140$
      000113 FB                     232 	.db	00142$
      000114 FF                     233 	.db	00144$
      000115 03                     234 	.db	00146$
      000116 07                     235 	.db	00148$
      000117 23                     236 	.db	00157$
      000118 23                     237 	.db	00157$
      000119 23                     238 	.db	00157$
      00011A 0B                     239 	.db	00150$
      00011B 0F                     240 	.db	00152$
      00011C 23                     241 	.db	00157$
      00011D 23                     242 	.db	00157$
      00011E 23                     243 	.db	00157$
      00011F 23                     244 	.db	00157$
      000120 17                     245 	.db	00154$
      000121 23                     246 	.db	00157$
      000122 BF                     247 	.db	00112$
      000123 C3                     248 	.db	00114$
      000124 C7                     249 	.db	00116$
      000125 CB                     250 	.db	00118$
      000126 CF                     251 	.db	00120$
      000127 D3                     252 	.db	00122$
      000128 D7                     253 	.db	00124$
      000129 DB                     254 	.db	00126$
      00012A DF                     255 	.db	00128$
      00012B E3                     256 	.db	00130$
      00012C 23                     257 	.db	00157$
      00012D E7                     258 	.db	00132$
      00012E 23                     259 	.db	00157$
      00012F EB                     260 	.db	00134$
      000130 EF                     261 	.db	00136$
      000131 F3                     262 	.db	00138$
      000132 F7                     263 	.db	00140$
      000133 FB                     264 	.db	00142$
      000134 FF                     265 	.db	00144$
      000135 03                     266 	.db	00146$
      000136 07                     267 	.db	00148$
      000137 23                     268 	.db	00157$
      000138 23                     269 	.db	00157$
      000139 23                     270 	.db	00157$
      00013A 0B                     271 	.db	00150$
      00013B 0F                     272 	.db	00152$
      00013C                        273 00173$:
      00013C 02                     274 	.db	00156$>>8
      00013D 02                     275 	.db	00157$>>8
      00013E 02                     276 	.db	00157$>>8
      00013F 02                     277 	.db	00157$>>8
      000140 02                     278 	.db	00157$>>8
      000141 02                     279 	.db	00157$>>8
      000142 02                     280 	.db	00157$>>8
      000143 02                     281 	.db	00157$>>8
      000144 02                     282 	.db	00157$>>8
      000145 02                     283 	.db	00157$>>8
      000146 02                     284 	.db	00157$>>8
      000147 02                     285 	.db	00157$>>8
      000148 02                     286 	.db	00157$>>8
      000149 02                     287 	.db	00153$>>8
      00014A 02                     288 	.db	00157$>>8
      00014B 02                     289 	.db	00157$>>8
      00014C 01                     290 	.db	00101$>>8
      00014D 01                     291 	.db	00102$>>8
      00014E 01                     292 	.db	00103$>>8
      00014F 01                     293 	.db	00104$>>8
      000150 01                     294 	.db	00105$>>8
      000151 01                     295 	.db	00106$>>8
      000152 01                     296 	.db	00107$>>8
      000153 01                     297 	.db	00108$>>8
      000154 01                     298 	.db	00109$>>8
      000155 01                     299 	.db	00110$>>8
      000156 02                     300 	.db	00157$>>8
      000157 02                     301 	.db	00157$>>8
      000158 02                     302 	.db	00157$>>8
      000159 02                     303 	.db	00155$>>8
      00015A 02                     304 	.db	00157$>>8
      00015B 02                     305 	.db	00157$>>8
      00015C 02                     306 	.db	00157$>>8
      00015D 01                     307 	.db	00112$>>8
      00015E 01                     308 	.db	00114$>>8
      00015F 01                     309 	.db	00116$>>8
      000160 01                     310 	.db	00118$>>8
      000161 01                     311 	.db	00120$>>8
      000162 01                     312 	.db	00122$>>8
      000163 01                     313 	.db	00124$>>8
      000164 01                     314 	.db	00126$>>8
      000165 01                     315 	.db	00128$>>8
      000166 01                     316 	.db	00130$>>8
      000167 02                     317 	.db	00157$>>8
      000168 01                     318 	.db	00132$>>8
      000169 02                     319 	.db	00157$>>8
      00016A 01                     320 	.db	00134$>>8
      00016B 01                     321 	.db	00136$>>8
      00016C 01                     322 	.db	00138$>>8
      00016D 01                     323 	.db	00140$>>8
      00016E 01                     324 	.db	00142$>>8
      00016F 01                     325 	.db	00144$>>8
      000170 02                     326 	.db	00146$>>8
      000171 02                     327 	.db	00148$>>8
      000172 02                     328 	.db	00157$>>8
      000173 02                     329 	.db	00157$>>8
      000174 02                     330 	.db	00157$>>8
      000175 02                     331 	.db	00150$>>8
      000176 02                     332 	.db	00152$>>8
      000177 02                     333 	.db	00157$>>8
      000178 02                     334 	.db	00157$>>8
      000179 02                     335 	.db	00157$>>8
      00017A 02                     336 	.db	00157$>>8
      00017B 02                     337 	.db	00154$>>8
      00017C 02                     338 	.db	00157$>>8
      00017D 01                     339 	.db	00112$>>8
      00017E 01                     340 	.db	00114$>>8
      00017F 01                     341 	.db	00116$>>8
      000180 01                     342 	.db	00118$>>8
      000181 01                     343 	.db	00120$>>8
      000182 01                     344 	.db	00122$>>8
      000183 01                     345 	.db	00124$>>8
      000184 01                     346 	.db	00126$>>8
      000185 01                     347 	.db	00128$>>8
      000186 01                     348 	.db	00130$>>8
      000187 02                     349 	.db	00157$>>8
      000188 01                     350 	.db	00132$>>8
      000189 02                     351 	.db	00157$>>8
      00018A 01                     352 	.db	00134$>>8
      00018B 01                     353 	.db	00136$>>8
      00018C 01                     354 	.db	00138$>>8
      00018D 01                     355 	.db	00140$>>8
      00018E 01                     356 	.db	00142$>>8
      00018F 01                     357 	.db	00144$>>8
      000190 02                     358 	.db	00146$>>8
      000191 02                     359 	.db	00148$>>8
      000192 02                     360 	.db	00157$>>8
      000193 02                     361 	.db	00157$>>8
      000194 02                     362 	.db	00157$>>8
      000195 02                     363 	.db	00150$>>8
      000196 02                     364 	.db	00152$>>8
                                    365 ;	../HAL/7_Seg.c:12: case '0': return 0x3F;
      000197                        366 00101$:
      000197 75 82 3F         [24]  367 	mov	dpl,#0x3f
      00019A 22               [24]  368 	ret
                                    369 ;	../HAL/7_Seg.c:13: case '1': return 0x06;
      00019B                        370 00102$:
      00019B 75 82 06         [24]  371 	mov	dpl,#0x06
      00019E 22               [24]  372 	ret
                                    373 ;	../HAL/7_Seg.c:14: case '2': return 0x5B;
      00019F                        374 00103$:
      00019F 75 82 5B         [24]  375 	mov	dpl,#0x5b
      0001A2 22               [24]  376 	ret
                                    377 ;	../HAL/7_Seg.c:15: case '3': return 0x4F;
      0001A3                        378 00104$:
      0001A3 75 82 4F         [24]  379 	mov	dpl,#0x4f
      0001A6 22               [24]  380 	ret
                                    381 ;	../HAL/7_Seg.c:16: case '4': return 0x66;
      0001A7                        382 00105$:
      0001A7 75 82 66         [24]  383 	mov	dpl,#0x66
      0001AA 22               [24]  384 	ret
                                    385 ;	../HAL/7_Seg.c:17: case '5': return 0x6D;
      0001AB                        386 00106$:
      0001AB 75 82 6D         [24]  387 	mov	dpl,#0x6d
      0001AE 22               [24]  388 	ret
                                    389 ;	../HAL/7_Seg.c:18: case '6': return 0x7D;
      0001AF                        390 00107$:
      0001AF 75 82 7D         [24]  391 	mov	dpl,#0x7d
      0001B2 22               [24]  392 	ret
                                    393 ;	../HAL/7_Seg.c:19: case '7': return 0x07;
      0001B3                        394 00108$:
      0001B3 75 82 07         [24]  395 	mov	dpl,#0x07
      0001B6 22               [24]  396 	ret
                                    397 ;	../HAL/7_Seg.c:20: case '8': return 0x7F;
      0001B7                        398 00109$:
      0001B7 75 82 7F         [24]  399 	mov	dpl,#0x7f
      0001BA 22               [24]  400 	ret
                                    401 ;	../HAL/7_Seg.c:21: case '9': return 0x6F;
      0001BB                        402 00110$:
      0001BB 75 82 6F         [24]  403 	mov	dpl,#0x6f
      0001BE 22               [24]  404 	ret
                                    405 ;	../HAL/7_Seg.c:24: case 'A': case 'a': return 0x77;
      0001BF                        406 00112$:
      0001BF 75 82 77         [24]  407 	mov	dpl,#0x77
      0001C2 22               [24]  408 	ret
                                    409 ;	../HAL/7_Seg.c:25: case 'B': case 'b': return 0x7C;
      0001C3                        410 00114$:
      0001C3 75 82 7C         [24]  411 	mov	dpl,#0x7c
      0001C6 22               [24]  412 	ret
                                    413 ;	../HAL/7_Seg.c:26: case 'C': case 'c': return 0x39;
      0001C7                        414 00116$:
      0001C7 75 82 39         [24]  415 	mov	dpl,#0x39
      0001CA 22               [24]  416 	ret
                                    417 ;	../HAL/7_Seg.c:27: case 'D': case 'd': return 0x5E;
      0001CB                        418 00118$:
      0001CB 75 82 5E         [24]  419 	mov	dpl,#0x5e
      0001CE 22               [24]  420 	ret
                                    421 ;	../HAL/7_Seg.c:28: case 'E': case 'e': return 0x79;
      0001CF                        422 00120$:
      0001CF 75 82 79         [24]  423 	mov	dpl,#0x79
                                    424 ;	../HAL/7_Seg.c:29: case 'F': case 'f': return 0x71;
      0001D2 22               [24]  425 	ret
      0001D3                        426 00122$:
      0001D3 75 82 71         [24]  427 	mov	dpl,#0x71
                                    428 ;	../HAL/7_Seg.c:30: case 'G': case 'g': return 0x3D;
      0001D6 22               [24]  429 	ret
      0001D7                        430 00124$:
      0001D7 75 82 3D         [24]  431 	mov	dpl,#0x3d
                                    432 ;	../HAL/7_Seg.c:31: case 'H': case 'h': return 0x76;
      0001DA 22               [24]  433 	ret
      0001DB                        434 00126$:
      0001DB 75 82 76         [24]  435 	mov	dpl,#0x76
                                    436 ;	../HAL/7_Seg.c:32: case 'I': case 'i': return 0x06;
      0001DE 22               [24]  437 	ret
      0001DF                        438 00128$:
      0001DF 75 82 06         [24]  439 	mov	dpl,#0x06
                                    440 ;	../HAL/7_Seg.c:33: case 'J': case 'j': return 0x1E;
      0001E2 22               [24]  441 	ret
      0001E3                        442 00130$:
      0001E3 75 82 1E         [24]  443 	mov	dpl,#0x1e
                                    444 ;	../HAL/7_Seg.c:34: case 'L': case 'l': return 0x38;
      0001E6 22               [24]  445 	ret
      0001E7                        446 00132$:
      0001E7 75 82 38         [24]  447 	mov	dpl,#0x38
                                    448 ;	../HAL/7_Seg.c:35: case 'N': case 'n': return 0x54;
      0001EA 22               [24]  449 	ret
      0001EB                        450 00134$:
      0001EB 75 82 54         [24]  451 	mov	dpl,#0x54
                                    452 ;	../HAL/7_Seg.c:36: case 'O': case 'o': return 0x3F;
      0001EE 22               [24]  453 	ret
      0001EF                        454 00136$:
      0001EF 75 82 3F         [24]  455 	mov	dpl,#0x3f
                                    456 ;	../HAL/7_Seg.c:37: case 'P': case 'p': return 0x73;
      0001F2 22               [24]  457 	ret
      0001F3                        458 00138$:
      0001F3 75 82 73         [24]  459 	mov	dpl,#0x73
                                    460 ;	../HAL/7_Seg.c:38: case 'Q': case 'q': return 0x67;
      0001F6 22               [24]  461 	ret
      0001F7                        462 00140$:
      0001F7 75 82 67         [24]  463 	mov	dpl,#0x67
                                    464 ;	../HAL/7_Seg.c:39: case 'R': case 'r': return 0x50;
      0001FA 22               [24]  465 	ret
      0001FB                        466 00142$:
      0001FB 75 82 50         [24]  467 	mov	dpl,#0x50
                                    468 ;	../HAL/7_Seg.c:40: case 'S': case 's': return 0x6D;
      0001FE 22               [24]  469 	ret
      0001FF                        470 00144$:
      0001FF 75 82 6D         [24]  471 	mov	dpl,#0x6d
                                    472 ;	../HAL/7_Seg.c:41: case 'T': case 't': return 0x78;
      000202 22               [24]  473 	ret
      000203                        474 00146$:
      000203 75 82 78         [24]  475 	mov	dpl,#0x78
                                    476 ;	../HAL/7_Seg.c:42: case 'U': case 'u': return 0x3E;
      000206 22               [24]  477 	ret
      000207                        478 00148$:
      000207 75 82 3E         [24]  479 	mov	dpl,#0x3e
                                    480 ;	../HAL/7_Seg.c:43: case 'Y': case 'y': return 0x6E;
      00020A 22               [24]  481 	ret
      00020B                        482 00150$:
      00020B 75 82 6E         [24]  483 	mov	dpl,#0x6e
                                    484 ;	../HAL/7_Seg.c:44: case 'Z': case 'z': return 0x5B;
      00020E 22               [24]  485 	ret
      00020F                        486 00152$:
      00020F 75 82 5B         [24]  487 	mov	dpl,#0x5b
                                    488 ;	../HAL/7_Seg.c:47: case '-': return 0x40;
      000212 22               [24]  489 	ret
      000213                        490 00153$:
      000213 75 82 40         [24]  491 	mov	dpl,#0x40
                                    492 ;	../HAL/7_Seg.c:48: case '_': return 0x08;
      000216 22               [24]  493 	ret
      000217                        494 00154$:
      000217 75 82 08         [24]  495 	mov	dpl,#0x08
                                    496 ;	../HAL/7_Seg.c:49: case '=': return 0x48;
      00021A 22               [24]  497 	ret
      00021B                        498 00155$:
      00021B 75 82 48         [24]  499 	mov	dpl,#0x48
                                    500 ;	../HAL/7_Seg.c:50: case ' ': return 0x00;
      00021E 22               [24]  501 	ret
      00021F                        502 00156$:
      00021F 75 82 00         [24]  503 	mov	dpl,#0x00
                                    504 ;	../HAL/7_Seg.c:52: default: return 0x00;  // Blank for unsupported characters
      000222 22               [24]  505 	ret
      000223                        506 00157$:
      000223 75 82 00         [24]  507 	mov	dpl,#0x00
                                    508 ;	../HAL/7_Seg.c:53: }
                                    509 ;	../HAL/7_Seg.c:54: }
      000226 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'Segment_Init'
                                    513 ;------------------------------------------------------------
                                    514 ;config                    Allocated to registers r5 r6 r7 
                                    515 ;------------------------------------------------------------
                                    516 ;	../HAL/7_Seg.c:72: void Segment_Init(Seg_config_t *config){
                                    517 ;	-----------------------------------------
                                    518 ;	 function Segment_Init
                                    519 ;	-----------------------------------------
      000227                        520 _Segment_Init:
                                    521 ;	../HAL/7_Seg.c:73: Seg_port.Port = config->Segment_Port;
      000227 AD 82            [24]  522 	mov	r5,dpl
      000229 AE 83            [24]  523 	mov	r6,dph
      00022B AF F0            [24]  524 	mov	r7,b
      00022D 12 0D 36         [24]  525 	lcall	__gptrget
      000230 FC               [12]  526 	mov	r4,a
      000231 8C 1A            [24]  527 	mov	_Seg_port,r4
                                    528 ;	../HAL/7_Seg.c:74: Seg_port.Mode = GPIO_OUTPUT;
      000233 75 1C 00         [24]  529 	mov	(_Seg_port + 0x0002),#0x00
                                    530 ;	../HAL/7_Seg.c:76: Seg_en_Port.Port = config->Seg_Enable_Port;
      000236 0D               [12]  531 	inc	r5
      000237 BD 00 01         [24]  532 	cjne	r5,#0x00,00103$
      00023A 0E               [12]  533 	inc	r6
      00023B                        534 00103$:
      00023B 8D 82            [24]  535 	mov	dpl,r5
      00023D 8E 83            [24]  536 	mov	dph,r6
      00023F 8F F0            [24]  537 	mov	b,r7
      000241 12 0D 36         [24]  538 	lcall	__gptrget
      000244 FD               [12]  539 	mov	r5,a
      000245 8D 1D            [24]  540 	mov	_Seg_en_Port,r5
                                    541 ;	../HAL/7_Seg.c:77: Seg_en_Port.Mode = GPIO_OUTPUT;
      000247 75 1F 00         [24]  542 	mov	(_Seg_en_Port + 0x0002),#0x00
                                    543 ;	../HAL/7_Seg.c:78: }
      00024A 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'Segment_write'
                                    547 ;------------------------------------------------------------
                                    548 ;display_number            Allocated with name '_Segment_write_PARM_2'
                                    549 ;val                       Allocated with name '_Segment_write_PARM_3'
                                    550 ;config                    Allocated with name '_Segment_write_config_65536_17'
                                    551 ;i                         Allocated with name '_Segment_write_i_131072_19'
                                    552 ;i                         Allocated with name '_Segment_write_i_131072_23'
                                    553 ;------------------------------------------------------------
                                    554 ;	../HAL/7_Seg.c:81: void Segment_write(Seg_config_t *config, unsigned char display_number, unsigned char val){
                                    555 ;	-----------------------------------------
                                    556 ;	 function Segment_write
                                    557 ;	-----------------------------------------
      00024B                        558 _Segment_write:
      00024B 85 82 22         [24]  559 	mov	_Segment_write_config_65536_17,dpl
      00024E 85 83 23         [24]  560 	mov	(_Segment_write_config_65536_17 + 1),dph
      000251 85 F0 24         [24]  561 	mov	(_Segment_write_config_65536_17 + 2),b
                                    562 ;	../HAL/7_Seg.c:83: for(unsigned char i =0; i<4; i++){
      000254 74 02            [12]  563 	mov	a,#0x02
      000256 25 22            [12]  564 	add	a,_Segment_write_config_65536_17
      000258 FA               [12]  565 	mov	r2,a
      000259 E4               [12]  566 	clr	a
      00025A 35 23            [12]  567 	addc	a,(_Segment_write_config_65536_17 + 1)
      00025C FB               [12]  568 	mov	r3,a
      00025D AC 24            [24]  569 	mov	r4,(_Segment_write_config_65536_17 + 2)
      00025F 75 25 00         [24]  570 	mov	_Segment_write_i_131072_19,#0x00
      000262                        571 00107$:
      000262 74 FC            [12]  572 	mov	a,#0x100 - 0x04
      000264 25 25            [12]  573 	add	a,_Segment_write_i_131072_19
      000266 40 31            [24]  574 	jc	00101$
                                    575 ;	../HAL/7_Seg.c:84: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      000268 E5 25            [12]  576 	mov	a,_Segment_write_i_131072_19
      00026A 2A               [12]  577 	add	a,r2
      00026B FD               [12]  578 	mov	r5,a
      00026C E4               [12]  579 	clr	a
      00026D 3B               [12]  580 	addc	a,r3
      00026E FE               [12]  581 	mov	r6,a
      00026F 8C 07            [24]  582 	mov	ar7,r4
      000271 8D 82            [24]  583 	mov	dpl,r5
      000273 8E 83            [24]  584 	mov	dph,r6
      000275 8F F0            [24]  585 	mov	b,r7
      000277 12 0D 36         [24]  586 	lcall	__gptrget
      00027A FD               [12]  587 	mov	r5,a
      00027B 8D 1E            [24]  588 	mov	(_Seg_en_Port + 0x0001),r5
                                    589 ;	../HAL/7_Seg.c:85: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      00027D 75 4C 00         [24]  590 	mov	_GPIO_Write_PARM_2,#0x00
      000280 90 00 1D         [24]  591 	mov	dptr,#_Seg_en_Port
      000283 75 F0 40         [24]  592 	mov	b,#0x40
      000286 C0 04            [24]  593 	push	ar4
      000288 C0 03            [24]  594 	push	ar3
      00028A C0 02            [24]  595 	push	ar2
      00028C 12 05 A1         [24]  596 	lcall	_GPIO_Write
      00028F D0 02            [24]  597 	pop	ar2
      000291 D0 03            [24]  598 	pop	ar3
      000293 D0 04            [24]  599 	pop	ar4
                                    600 ;	../HAL/7_Seg.c:83: for(unsigned char i =0; i<4; i++){
      000295 05 25            [12]  601 	inc	_Segment_write_i_131072_19
      000297 80 C9            [24]  602 	sjmp	00107$
      000299                        603 00101$:
                                    604 ;	../HAL/7_Seg.c:87: GPIO_PORT_Write(&Seg_port,  val);
      000299 85 21 4C         [24]  605 	mov	_GPIO_PORT_Write_PARM_2,_Segment_write_PARM_3
      00029C 90 00 1A         [24]  606 	mov	dptr,#_Seg_port
      00029F 75 F0 40         [24]  607 	mov	b,#0x40
      0002A2 12 09 BF         [24]  608 	lcall	_GPIO_PORT_Write
                                    609 ;	../HAL/7_Seg.c:88: if(display_number < 4){
      0002A5 74 FC            [12]  610 	mov	a,#0x100 - 0x04
      0002A7 25 20            [12]  611 	add	a,_Segment_write_PARM_2
      0002A9 40 2C            [24]  612 	jc	00103$
                                    613 ;	../HAL/7_Seg.c:89: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
      0002AB 74 02            [12]  614 	mov	a,#0x02
      0002AD 25 22            [12]  615 	add	a,_Segment_write_config_65536_17
      0002AF FD               [12]  616 	mov	r5,a
      0002B0 E4               [12]  617 	clr	a
      0002B1 35 23            [12]  618 	addc	a,(_Segment_write_config_65536_17 + 1)
      0002B3 FE               [12]  619 	mov	r6,a
      0002B4 AF 24            [24]  620 	mov	r7,(_Segment_write_config_65536_17 + 2)
      0002B6 E5 20            [12]  621 	mov	a,_Segment_write_PARM_2
      0002B8 2D               [12]  622 	add	a,r5
      0002B9 FD               [12]  623 	mov	r5,a
      0002BA E4               [12]  624 	clr	a
      0002BB 3E               [12]  625 	addc	a,r6
      0002BC FE               [12]  626 	mov	r6,a
      0002BD 8D 82            [24]  627 	mov	dpl,r5
      0002BF 8E 83            [24]  628 	mov	dph,r6
      0002C1 8F F0            [24]  629 	mov	b,r7
      0002C3 12 0D 36         [24]  630 	lcall	__gptrget
      0002C6 FD               [12]  631 	mov	r5,a
      0002C7 8D 1E            [24]  632 	mov	(_Seg_en_Port + 0x0001),r5
                                    633 ;	../HAL/7_Seg.c:90: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
      0002C9 75 4C 01         [24]  634 	mov	_GPIO_Write_PARM_2,#0x01
      0002CC 90 00 1D         [24]  635 	mov	dptr,#_Seg_en_Port
      0002CF 75 F0 40         [24]  636 	mov	b,#0x40
      0002D2 12 05 A1         [24]  637 	lcall	_GPIO_Write
      0002D5 80 01            [24]  638 	sjmp	00104$
      0002D7                        639 00103$:
                                    640 ;	../HAL/7_Seg.c:92: return;
      0002D7 22               [24]  641 	ret
      0002D8                        642 00104$:
                                    643 ;	../HAL/7_Seg.c:94: Tim_delay_ms(1);
      0002D8 90 00 01         [24]  644 	mov	dptr,#0x0001
      0002DB 12 05 78         [24]  645 	lcall	_Tim_delay_ms
                                    646 ;	../HAL/7_Seg.c:96: for(unsigned char i =0; i<4; i++){
      0002DE 74 02            [12]  647 	mov	a,#0x02
      0002E0 25 22            [12]  648 	add	a,_Segment_write_config_65536_17
      0002E2 FD               [12]  649 	mov	r5,a
      0002E3 E4               [12]  650 	clr	a
      0002E4 35 23            [12]  651 	addc	a,(_Segment_write_config_65536_17 + 1)
      0002E6 FE               [12]  652 	mov	r6,a
      0002E7 AF 24            [24]  653 	mov	r7,(_Segment_write_config_65536_17 + 2)
      0002E9 75 26 00         [24]  654 	mov	_Segment_write_i_131072_23,#0x00
      0002EC                        655 00110$:
      0002EC 74 FC            [12]  656 	mov	a,#0x100 - 0x04
      0002EE 25 26            [12]  657 	add	a,_Segment_write_i_131072_23
      0002F0 40 31            [24]  658 	jc	00112$
                                    659 ;	../HAL/7_Seg.c:97: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      0002F2 E5 26            [12]  660 	mov	a,_Segment_write_i_131072_23
      0002F4 2D               [12]  661 	add	a,r5
      0002F5 FA               [12]  662 	mov	r2,a
      0002F6 E4               [12]  663 	clr	a
      0002F7 3E               [12]  664 	addc	a,r6
      0002F8 FB               [12]  665 	mov	r3,a
      0002F9 8F 04            [24]  666 	mov	ar4,r7
      0002FB 8A 82            [24]  667 	mov	dpl,r2
      0002FD 8B 83            [24]  668 	mov	dph,r3
      0002FF 8C F0            [24]  669 	mov	b,r4
      000301 12 0D 36         [24]  670 	lcall	__gptrget
      000304 FA               [12]  671 	mov	r2,a
      000305 8A 1E            [24]  672 	mov	(_Seg_en_Port + 0x0001),r2
                                    673 ;	../HAL/7_Seg.c:98: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      000307 75 4C 00         [24]  674 	mov	_GPIO_Write_PARM_2,#0x00
      00030A 90 00 1D         [24]  675 	mov	dptr,#_Seg_en_Port
      00030D 75 F0 40         [24]  676 	mov	b,#0x40
      000310 C0 07            [24]  677 	push	ar7
      000312 C0 06            [24]  678 	push	ar6
      000314 C0 05            [24]  679 	push	ar5
      000316 12 05 A1         [24]  680 	lcall	_GPIO_Write
      000319 D0 05            [24]  681 	pop	ar5
      00031B D0 06            [24]  682 	pop	ar6
      00031D D0 07            [24]  683 	pop	ar7
                                    684 ;	../HAL/7_Seg.c:96: for(unsigned char i =0; i<4; i++){
      00031F 05 26            [12]  685 	inc	_Segment_write_i_131072_23
      000321 80 C9            [24]  686 	sjmp	00110$
      000323                        687 00112$:
                                    688 ;	../HAL/7_Seg.c:100: }
      000323 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'Segment_write_number'
                                    692 ;------------------------------------------------------------
                                    693 ;display_number            Allocated with name '_Segment_write_number_PARM_2'
                                    694 ;number                    Allocated with name '_Segment_write_number_PARM_3'
                                    695 ;config                    Allocated with name '_Segment_write_number_config_65536_25'
                                    696 ;i                         Allocated with name '_Segment_write_number_i_131072_27'
                                    697 ;i                         Allocated with name '_Segment_write_number_i_131072_31'
                                    698 ;------------------------------------------------------------
                                    699 ;	../HAL/7_Seg.c:103: void Segment_write_number(Seg_config_t *config, unsigned char display_number, unsigned char number){
                                    700 ;	-----------------------------------------
                                    701 ;	 function Segment_write_number
                                    702 ;	-----------------------------------------
      000324                        703 _Segment_write_number:
      000324 85 82 29         [24]  704 	mov	_Segment_write_number_config_65536_25,dpl
      000327 85 83 2A         [24]  705 	mov	(_Segment_write_number_config_65536_25 + 1),dph
      00032A 85 F0 2B         [24]  706 	mov	(_Segment_write_number_config_65536_25 + 2),b
                                    707 ;	../HAL/7_Seg.c:106: for(unsigned char i =0; i<4; i++){
      00032D 74 02            [12]  708 	mov	a,#0x02
      00032F 25 29            [12]  709 	add	a,_Segment_write_number_config_65536_25
      000331 FA               [12]  710 	mov	r2,a
      000332 E4               [12]  711 	clr	a
      000333 35 2A            [12]  712 	addc	a,(_Segment_write_number_config_65536_25 + 1)
      000335 FB               [12]  713 	mov	r3,a
      000336 AC 2B            [24]  714 	mov	r4,(_Segment_write_number_config_65536_25 + 2)
      000338 75 2C 00         [24]  715 	mov	_Segment_write_number_i_131072_27,#0x00
      00033B                        716 00107$:
      00033B 74 FC            [12]  717 	mov	a,#0x100 - 0x04
      00033D 25 2C            [12]  718 	add	a,_Segment_write_number_i_131072_27
      00033F 40 31            [24]  719 	jc	00101$
                                    720 ;	../HAL/7_Seg.c:107: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      000341 E5 2C            [12]  721 	mov	a,_Segment_write_number_i_131072_27
      000343 2A               [12]  722 	add	a,r2
      000344 FD               [12]  723 	mov	r5,a
      000345 E4               [12]  724 	clr	a
      000346 3B               [12]  725 	addc	a,r3
      000347 FE               [12]  726 	mov	r6,a
      000348 8C 07            [24]  727 	mov	ar7,r4
      00034A 8D 82            [24]  728 	mov	dpl,r5
      00034C 8E 83            [24]  729 	mov	dph,r6
      00034E 8F F0            [24]  730 	mov	b,r7
      000350 12 0D 36         [24]  731 	lcall	__gptrget
      000353 FD               [12]  732 	mov	r5,a
      000354 8D 1E            [24]  733 	mov	(_Seg_en_Port + 0x0001),r5
                                    734 ;	../HAL/7_Seg.c:108: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      000356 75 4C 00         [24]  735 	mov	_GPIO_Write_PARM_2,#0x00
      000359 90 00 1D         [24]  736 	mov	dptr,#_Seg_en_Port
      00035C 75 F0 40         [24]  737 	mov	b,#0x40
      00035F C0 04            [24]  738 	push	ar4
      000361 C0 03            [24]  739 	push	ar3
      000363 C0 02            [24]  740 	push	ar2
      000365 12 05 A1         [24]  741 	lcall	_GPIO_Write
      000368 D0 02            [24]  742 	pop	ar2
      00036A D0 03            [24]  743 	pop	ar3
      00036C D0 04            [24]  744 	pop	ar4
                                    745 ;	../HAL/7_Seg.c:106: for(unsigned char i =0; i<4; i++){
      00036E 05 2C            [12]  746 	inc	_Segment_write_number_i_131072_27
      000370 80 C9            [24]  747 	sjmp	00107$
      000372                        748 00101$:
                                    749 ;	../HAL/7_Seg.c:110: GPIO_PORT_Write(&Seg_port,  seg_digit_map[number % 10]);
      000372 AE 28            [24]  750 	mov	r6,_Segment_write_number_PARM_3
      000374 7F 00            [12]  751 	mov	r7,#0x00
      000376 75 4C 0A         [24]  752 	mov	__modsint_PARM_2,#0x0a
                                    753 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000379 8F 4D            [24]  754 	mov	(__modsint_PARM_2 + 1),r7
      00037B 8E 82            [24]  755 	mov	dpl,r6
      00037D 8F 83            [24]  756 	mov	dph,r7
      00037F 12 0D 52         [24]  757 	lcall	__modsint
      000382 AE 82            [24]  758 	mov	r6,dpl
      000384 AF 83            [24]  759 	mov	r7,dph
      000386 EE               [12]  760 	mov	a,r6
      000387 24 C4            [12]  761 	add	a,#_seg_digit_map
      000389 F5 82            [12]  762 	mov	dpl,a
      00038B EF               [12]  763 	mov	a,r7
      00038C 34 0D            [12]  764 	addc	a,#(_seg_digit_map >> 8)
      00038E F5 83            [12]  765 	mov	dph,a
      000390 E4               [12]  766 	clr	a
      000391 93               [24]  767 	movc	a,@a+dptr
      000392 F5 4C            [12]  768 	mov	_GPIO_PORT_Write_PARM_2,a
      000394 90 00 1A         [24]  769 	mov	dptr,#_Seg_port
      000397 75 F0 40         [24]  770 	mov	b,#0x40
      00039A 12 09 BF         [24]  771 	lcall	_GPIO_PORT_Write
                                    772 ;	../HAL/7_Seg.c:111: if(display_number < 4){
      00039D 74 FC            [12]  773 	mov	a,#0x100 - 0x04
      00039F 25 27            [12]  774 	add	a,_Segment_write_number_PARM_2
      0003A1 40 2C            [24]  775 	jc	00103$
                                    776 ;	../HAL/7_Seg.c:112: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
      0003A3 74 02            [12]  777 	mov	a,#0x02
      0003A5 25 29            [12]  778 	add	a,_Segment_write_number_config_65536_25
      0003A7 FD               [12]  779 	mov	r5,a
      0003A8 E4               [12]  780 	clr	a
      0003A9 35 2A            [12]  781 	addc	a,(_Segment_write_number_config_65536_25 + 1)
      0003AB FE               [12]  782 	mov	r6,a
      0003AC AF 2B            [24]  783 	mov	r7,(_Segment_write_number_config_65536_25 + 2)
      0003AE E5 27            [12]  784 	mov	a,_Segment_write_number_PARM_2
      0003B0 2D               [12]  785 	add	a,r5
      0003B1 FD               [12]  786 	mov	r5,a
      0003B2 E4               [12]  787 	clr	a
      0003B3 3E               [12]  788 	addc	a,r6
      0003B4 FE               [12]  789 	mov	r6,a
      0003B5 8D 82            [24]  790 	mov	dpl,r5
      0003B7 8E 83            [24]  791 	mov	dph,r6
      0003B9 8F F0            [24]  792 	mov	b,r7
      0003BB 12 0D 36         [24]  793 	lcall	__gptrget
      0003BE FD               [12]  794 	mov	r5,a
      0003BF 8D 1E            [24]  795 	mov	(_Seg_en_Port + 0x0001),r5
                                    796 ;	../HAL/7_Seg.c:113: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
      0003C1 75 4C 01         [24]  797 	mov	_GPIO_Write_PARM_2,#0x01
      0003C4 90 00 1D         [24]  798 	mov	dptr,#_Seg_en_Port
      0003C7 75 F0 40         [24]  799 	mov	b,#0x40
      0003CA 12 05 A1         [24]  800 	lcall	_GPIO_Write
      0003CD 80 01            [24]  801 	sjmp	00104$
      0003CF                        802 00103$:
                                    803 ;	../HAL/7_Seg.c:115: return;
      0003CF 22               [24]  804 	ret
      0003D0                        805 00104$:
                                    806 ;	../HAL/7_Seg.c:117: Tim_delay_ms(1);
      0003D0 90 00 01         [24]  807 	mov	dptr,#0x0001
      0003D3 12 05 78         [24]  808 	lcall	_Tim_delay_ms
                                    809 ;	../HAL/7_Seg.c:119: for(unsigned char i =0; i<4; i++){
      0003D6 74 02            [12]  810 	mov	a,#0x02
      0003D8 25 29            [12]  811 	add	a,_Segment_write_number_config_65536_25
      0003DA FD               [12]  812 	mov	r5,a
      0003DB E4               [12]  813 	clr	a
      0003DC 35 2A            [12]  814 	addc	a,(_Segment_write_number_config_65536_25 + 1)
      0003DE FE               [12]  815 	mov	r6,a
      0003DF AF 2B            [24]  816 	mov	r7,(_Segment_write_number_config_65536_25 + 2)
      0003E1 75 2D 00         [24]  817 	mov	_Segment_write_number_i_131072_31,#0x00
      0003E4                        818 00110$:
      0003E4 74 FC            [12]  819 	mov	a,#0x100 - 0x04
      0003E6 25 2D            [12]  820 	add	a,_Segment_write_number_i_131072_31
      0003E8 40 31            [24]  821 	jc	00112$
                                    822 ;	../HAL/7_Seg.c:120: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      0003EA E5 2D            [12]  823 	mov	a,_Segment_write_number_i_131072_31
      0003EC 2D               [12]  824 	add	a,r5
      0003ED FA               [12]  825 	mov	r2,a
      0003EE E4               [12]  826 	clr	a
      0003EF 3E               [12]  827 	addc	a,r6
      0003F0 FB               [12]  828 	mov	r3,a
      0003F1 8F 04            [24]  829 	mov	ar4,r7
      0003F3 8A 82            [24]  830 	mov	dpl,r2
      0003F5 8B 83            [24]  831 	mov	dph,r3
      0003F7 8C F0            [24]  832 	mov	b,r4
      0003F9 12 0D 36         [24]  833 	lcall	__gptrget
      0003FC FA               [12]  834 	mov	r2,a
      0003FD 8A 1E            [24]  835 	mov	(_Seg_en_Port + 0x0001),r2
                                    836 ;	../HAL/7_Seg.c:121: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      0003FF 75 4C 00         [24]  837 	mov	_GPIO_Write_PARM_2,#0x00
      000402 90 00 1D         [24]  838 	mov	dptr,#_Seg_en_Port
      000405 75 F0 40         [24]  839 	mov	b,#0x40
      000408 C0 07            [24]  840 	push	ar7
      00040A C0 06            [24]  841 	push	ar6
      00040C C0 05            [24]  842 	push	ar5
      00040E 12 05 A1         [24]  843 	lcall	_GPIO_Write
      000411 D0 05            [24]  844 	pop	ar5
      000413 D0 06            [24]  845 	pop	ar6
      000415 D0 07            [24]  846 	pop	ar7
                                    847 ;	../HAL/7_Seg.c:119: for(unsigned char i =0; i<4; i++){
      000417 05 2D            [12]  848 	inc	_Segment_write_number_i_131072_31
      000419 80 C9            [24]  849 	sjmp	00110$
      00041B                        850 00112$:
                                    851 ;	../HAL/7_Seg.c:124: }
      00041B 22               [24]  852 	ret
                                    853 ;------------------------------------------------------------
                                    854 ;Allocation info for local variables in function 'Multi_Segment_write_Digits'
                                    855 ;------------------------------------------------------------
                                    856 ;number                    Allocated with name '_Multi_Segment_write_Digits_PARM_2'
                                    857 ;config                    Allocated with name '_Multi_Segment_write_Digits_config_65536_33'
                                    858 ;is_negative               Allocated with name '_Multi_Segment_write_Digits_is_negative_65536_34'
                                    859 ;n                         Allocated to registers r3 r4 
                                    860 ;dig                       Allocated to registers r2 
                                    861 ;seg_no                    Allocated to registers 
                                    862 ;------------------------------------------------------------
                                    863 ;	../HAL/7_Seg.c:127: void Multi_Segment_write_Digits(Seg_config_t *config, int number){
                                    864 ;	-----------------------------------------
                                    865 ;	 function Multi_Segment_write_Digits
                                    866 ;	-----------------------------------------
      00041C                        867 _Multi_Segment_write_Digits:
      00041C 85 82 30         [24]  868 	mov	_Multi_Segment_write_Digits_config_65536_33,dpl
      00041F 85 83 31         [24]  869 	mov	(_Multi_Segment_write_Digits_config_65536_33 + 1),dph
      000422 85 F0 32         [24]  870 	mov	(_Multi_Segment_write_Digits_config_65536_33 + 2),b
                                    871 ;	../HAL/7_Seg.c:129: int n = number;
      000425 AB 2E            [24]  872 	mov	r3,_Multi_Segment_write_Digits_PARM_2
      000427 AC 2F            [24]  873 	mov	r4,(_Multi_Segment_write_Digits_PARM_2 + 1)
                                    874 ;	../HAL/7_Seg.c:130: unsigned char dig = 0;
      000429 7A 00            [12]  875 	mov	r2,#0x00
                                    876 ;	../HAL/7_Seg.c:132: if(number > 9999){
      00042B C3               [12]  877 	clr	c
      00042C 74 0F            [12]  878 	mov	a,#0x0f
      00042E 9B               [12]  879 	subb	a,r3
      00042F 74 A7            [12]  880 	mov	a,#(0x27 ^ 0x80)
      000431 8C F0            [24]  881 	mov	b,r4
      000433 63 F0 80         [24]  882 	xrl	b,#0x80
      000436 95 F0            [12]  883 	subb	a,b
      000438 50 06            [24]  884 	jnc	00104$
                                    885 ;	../HAL/7_Seg.c:133: n = 9999;
      00043A 7B 0F            [12]  886 	mov	r3,#0x0f
      00043C 7C 27            [12]  887 	mov	r4,#0x27
      00043E 80 0F            [24]  888 	sjmp	00105$
      000440                        889 00104$:
                                    890 ;	../HAL/7_Seg.c:134: }else if(number < -999){ 
      000440 C3               [12]  891 	clr	c
      000441 EB               [12]  892 	mov	a,r3
      000442 94 19            [12]  893 	subb	a,#0x19
      000444 EC               [12]  894 	mov	a,r4
      000445 64 80            [12]  895 	xrl	a,#0x80
      000447 94 7C            [12]  896 	subb	a,#0x7c
      000449 50 04            [24]  897 	jnc	00105$
                                    898 ;	../HAL/7_Seg.c:135: n = -999;
      00044B 7B 19            [12]  899 	mov	r3,#0x19
      00044D 7C FC            [12]  900 	mov	r4,#0xfc
      00044F                        901 00105$:
                                    902 ;	../HAL/7_Seg.c:137: is_negative = (number < 0) ? true : false;
      00044F E5 2F            [12]  903 	mov	a,(_Multi_Segment_write_Digits_PARM_2 + 1)
      000451 33               [12]  904 	rlc	a
      000452 E4               [12]  905 	clr	a
      000453 33               [12]  906 	rlc	a
                                    907 ;	../HAL/7_Seg.c:139: if(is_negative){
      000454 F5 33            [12]  908 	mov	_Multi_Segment_write_Digits_is_negative_65536_34,a
      000456 A9 33            [24]  909 	mov	r1,_Multi_Segment_write_Digits_is_negative_65536_34
      000458 60 07            [24]  910 	jz	00119$
                                    911 ;	../HAL/7_Seg.c:140: n *= -1;
      00045A C3               [12]  912 	clr	c
      00045B E4               [12]  913 	clr	a
      00045C 9B               [12]  914 	subb	a,r3
      00045D FB               [12]  915 	mov	r3,a
      00045E E4               [12]  916 	clr	a
      00045F 9C               [12]  917 	subb	a,r4
      000460 FC               [12]  918 	mov	r4,a
                                    919 ;	../HAL/7_Seg.c:143: while (n)
      000461                        920 00119$:
      000461 78 00            [12]  921 	mov	r0,#0x00
      000463                        922 00108$:
      000463 EB               [12]  923 	mov	a,r3
      000464 4C               [12]  924 	orl	a,r4
      000465 60 5D            [24]  925 	jz	00110$
                                    926 ;	../HAL/7_Seg.c:145: dig = n % 10;
      000467 75 4C 0A         [24]  927 	mov	__modsint_PARM_2,#0x0a
      00046A 75 4D 00         [24]  928 	mov	(__modsint_PARM_2 + 1),#0x00
      00046D 8B 82            [24]  929 	mov	dpl,r3
      00046F 8C 83            [24]  930 	mov	dph,r4
      000471 C0 04            [24]  931 	push	ar4
      000473 C0 03            [24]  932 	push	ar3
      000475 C0 01            [24]  933 	push	ar1
      000477 C0 00            [24]  934 	push	ar0
      000479 12 0D 52         [24]  935 	lcall	__modsint
      00047C AE 82            [24]  936 	mov	r6,dpl
      00047E D0 00            [24]  937 	pop	ar0
      000480 D0 01            [24]  938 	pop	ar1
      000482 8E 02            [24]  939 	mov	ar2,r6
                                    940 ;	../HAL/7_Seg.c:147: Segment_write_number(config, seg_no, dig);
      000484 88 27            [24]  941 	mov	_Segment_write_number_PARM_2,r0
      000486 8A 28            [24]  942 	mov	_Segment_write_number_PARM_3,r2
      000488 85 30 82         [24]  943 	mov	dpl,_Multi_Segment_write_Digits_config_65536_33
      00048B 85 31 83         [24]  944 	mov	dph,(_Multi_Segment_write_Digits_config_65536_33 + 1)
      00048E 85 32 F0         [24]  945 	mov	b,(_Multi_Segment_write_Digits_config_65536_33 + 2)
      000491 C0 02            [24]  946 	push	ar2
      000493 C0 01            [24]  947 	push	ar1
      000495 C0 00            [24]  948 	push	ar0
      000497 12 03 24         [24]  949 	lcall	_Segment_write_number
      00049A D0 00            [24]  950 	pop	ar0
      00049C D0 01            [24]  951 	pop	ar1
      00049E D0 02            [24]  952 	pop	ar2
      0004A0 D0 03            [24]  953 	pop	ar3
      0004A2 D0 04            [24]  954 	pop	ar4
                                    955 ;	../HAL/7_Seg.c:148: n = n/10;
      0004A4 75 4C 0A         [24]  956 	mov	__divsint_PARM_2,#0x0a
      0004A7 75 4D 00         [24]  957 	mov	(__divsint_PARM_2 + 1),#0x00
      0004AA 8B 82            [24]  958 	mov	dpl,r3
      0004AC 8C 83            [24]  959 	mov	dph,r4
      0004AE C0 02            [24]  960 	push	ar2
      0004B0 C0 01            [24]  961 	push	ar1
      0004B2 C0 00            [24]  962 	push	ar0
      0004B4 12 0D 88         [24]  963 	lcall	__divsint
      0004B7 AB 82            [24]  964 	mov	r3,dpl
      0004B9 AC 83            [24]  965 	mov	r4,dph
      0004BB D0 00            [24]  966 	pop	ar0
      0004BD D0 01            [24]  967 	pop	ar1
      0004BF D0 02            [24]  968 	pop	ar2
                                    969 ;	../HAL/7_Seg.c:149: seg_no++;
      0004C1 08               [12]  970 	inc	r0
      0004C2 80 9F            [24]  971 	sjmp	00108$
      0004C4                        972 00110$:
                                    973 ;	../HAL/7_Seg.c:152: if(is_negative){
      0004C4 E9               [12]  974 	mov	a,r1
      0004C5 60 12            [24]  975 	jz	00113$
                                    976 ;	../HAL/7_Seg.c:153: seg_no++;
      0004C7 E8               [12]  977 	mov	a,r0
      0004C8 04               [12]  978 	inc	a
      0004C9 F5 27            [12]  979 	mov	_Segment_write_number_PARM_2,a
                                    980 ;	../HAL/7_Seg.c:154: Segment_write_number(config, seg_no, dig);
      0004CB 8A 28            [24]  981 	mov	_Segment_write_number_PARM_3,r2
      0004CD 85 30 82         [24]  982 	mov	dpl,_Multi_Segment_write_Digits_config_65536_33
      0004D0 85 31 83         [24]  983 	mov	dph,(_Multi_Segment_write_Digits_config_65536_33 + 1)
      0004D3 85 32 F0         [24]  984 	mov	b,(_Multi_Segment_write_Digits_config_65536_33 + 2)
                                    985 ;	../HAL/7_Seg.c:157: }
      0004D6 02 03 24         [24]  986 	ljmp	_Segment_write_number
      0004D9                        987 00113$:
      0004D9 22               [24]  988 	ret
                                    989 ;------------------------------------------------------------
                                    990 ;Allocation info for local variables in function 'Segment_Write_char'
                                    991 ;------------------------------------------------------------
                                    992 ;text                      Allocated with name '_Segment_Write_char_PARM_2'
                                    993 ;config                    Allocated with name '_Segment_Write_char_config_65536_40'
                                    994 ;g                         Allocated to registers 
                                    995 ;len                       Allocated to registers r1 
                                    996 ;------------------------------------------------------------
                                    997 ;	../HAL/7_Seg.c:160: void Segment_Write_char(Seg_config_t *config, char *text){
                                    998 ;	-----------------------------------------
                                    999 ;	 function Segment_Write_char
                                   1000 ;	-----------------------------------------
      0004DA                       1001 _Segment_Write_char:
      0004DA 85 82 37         [24] 1002 	mov	_Segment_Write_char_config_65536_40,dpl
      0004DD 85 83 38         [24] 1003 	mov	(_Segment_Write_char_config_65536_40 + 1),dph
      0004E0 85 F0 39         [24] 1004 	mov	(_Segment_Write_char_config_65536_40 + 2),b
                                   1005 ;	../HAL/7_Seg.c:161: unsigned char *g = text;
      0004E3 AA 34            [24] 1006 	mov	r2,_Segment_Write_char_PARM_2
      0004E5 AB 35            [24] 1007 	mov	r3,(_Segment_Write_char_PARM_2 + 1)
      0004E7 AC 36            [24] 1008 	mov	r4,(_Segment_Write_char_PARM_2 + 2)
                                   1009 ;	../HAL/7_Seg.c:164: while (*g)
      0004E9 79 04            [12] 1010 	mov	r1,#0x04
      0004EB                       1011 00105$:
      0004EB 8A 82            [24] 1012 	mov	dpl,r2
      0004ED 8B 83            [24] 1013 	mov	dph,r3
      0004EF 8C F0            [24] 1014 	mov	b,r4
      0004F1 12 0D 36         [24] 1015 	lcall	__gptrget
      0004F4 F8               [12] 1016 	mov	r0,a
      0004F5 60 4D            [24] 1017 	jz	00108$
                                   1018 ;	../HAL/7_Seg.c:166: if(len <= 4 && len != 0){
      0004F7 E9               [12] 1019 	mov	a,r1
      0004F8 24 FB            [12] 1020 	add	a,#0xff - 0x04
      0004FA 40 48            [24] 1021 	jc	00102$
      0004FC E9               [12] 1022 	mov	a,r1
      0004FD 60 45            [24] 1023 	jz	00102$
                                   1024 ;	../HAL/7_Seg.c:167: Segment_write(config, len-1, LUT(*g));
      0004FF 89 07            [24] 1025 	mov	ar7,r1
      000501 1F               [12] 1026 	dec	r7
      000502 88 82            [24] 1027 	mov	dpl,r0
      000504 C0 07            [24] 1028 	push	ar7
      000506 C0 04            [24] 1029 	push	ar4
      000508 C0 03            [24] 1030 	push	ar3
      00050A C0 02            [24] 1031 	push	ar2
      00050C C0 01            [24] 1032 	push	ar1
      00050E 12 00 BE         [24] 1033 	lcall	_LUT
      000511 85 82 21         [24] 1034 	mov	_Segment_write_PARM_3,dpl
      000514 D0 01            [24] 1035 	pop	ar1
      000516 D0 02            [24] 1036 	pop	ar2
      000518 D0 03            [24] 1037 	pop	ar3
      00051A D0 04            [24] 1038 	pop	ar4
      00051C D0 07            [24] 1039 	pop	ar7
      00051E 8F 20            [24] 1040 	mov	_Segment_write_PARM_2,r7
      000520 85 37 82         [24] 1041 	mov	dpl,_Segment_Write_char_config_65536_40
      000523 85 38 83         [24] 1042 	mov	dph,(_Segment_Write_char_config_65536_40 + 1)
      000526 85 39 F0         [24] 1043 	mov	b,(_Segment_Write_char_config_65536_40 + 2)
      000529 C0 04            [24] 1044 	push	ar4
      00052B C0 03            [24] 1045 	push	ar3
      00052D C0 02            [24] 1046 	push	ar2
      00052F C0 01            [24] 1047 	push	ar1
      000531 12 02 4B         [24] 1048 	lcall	_Segment_write
      000534 D0 01            [24] 1049 	pop	ar1
      000536 D0 02            [24] 1050 	pop	ar2
      000538 D0 03            [24] 1051 	pop	ar3
      00053A D0 04            [24] 1052 	pop	ar4
                                   1053 ;	../HAL/7_Seg.c:168: g++;
      00053C 0A               [12] 1054 	inc	r2
      00053D BA 00 01         [24] 1055 	cjne	r2,#0x00,00129$
      000540 0B               [12] 1056 	inc	r3
      000541                       1057 00129$:
                                   1058 ;	../HAL/7_Seg.c:169: len--;
      000541 19               [12] 1059 	dec	r1
      000542 80 A7            [24] 1060 	sjmp	00105$
      000544                       1061 00102$:
                                   1062 ;	../HAL/7_Seg.c:171: return;
      000544                       1063 00108$:
                                   1064 ;	../HAL/7_Seg.c:177: }
      000544 22               [24] 1065 	ret
                                   1066 	.area CSEG    (CODE)
                                   1067 	.area CONST   (CODE)
      000DC4                       1068 _seg_digit_map:
      000DC4 3F                    1069 	.db #0x3f	; 63
      000DC5 06                    1070 	.db #0x06	; 6
      000DC6 5B                    1071 	.db #0x5b	; 91
      000DC7 4F                    1072 	.db #0x4f	; 79	'O'
      000DC8 66                    1073 	.db #0x66	; 102	'f'
      000DC9 6D                    1074 	.db #0x6d	; 109	'm'
      000DCA 7D                    1075 	.db #0x7d	; 125
      000DCB 07                    1076 	.db #0x07	; 7
      000DCC 7F                    1077 	.db #0x7f	; 127
      000DCD 6F                    1078 	.db #0x6f	; 111	'o'
      000DCE 80                    1079 	.db #0x80	; 128
                                   1080 	.area XINIT   (CODE)
                                   1081 	.area CABS    (ABS,CODE)
