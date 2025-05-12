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
      000012                         45 _Seg_port:
      000012                         46 	.ds 3
      000015                         47 _Seg_en_Port:
      000015                         48 	.ds 3
      000018                         49 _Segment_write_PARM_2:
      000018                         50 	.ds 1
      000019                         51 _Segment_write_PARM_3:
      000019                         52 	.ds 1
      00001A                         53 _Segment_write_config_65536_17:
      00001A                         54 	.ds 3
      00001D                         55 _Segment_write_i_131072_19:
      00001D                         56 	.ds 1
      00001E                         57 _Segment_write_i_131072_23:
      00001E                         58 	.ds 1
      00001F                         59 _Segment_write_number_PARM_2:
      00001F                         60 	.ds 1
      000020                         61 _Segment_write_number_PARM_3:
      000020                         62 	.ds 1
      000021                         63 _Segment_write_number_config_65536_25:
      000021                         64 	.ds 3
      000024                         65 _Segment_write_number_i_131072_27:
      000024                         66 	.ds 1
      000025                         67 _Segment_write_number_i_131072_31:
      000025                         68 	.ds 1
      000026                         69 _Multi_Segment_write_Digits_PARM_2:
      000026                         70 	.ds 2
      000028                         71 _Multi_Segment_write_Digits_config_65536_33:
      000028                         72 	.ds 3
      00002B                         73 _Multi_Segment_write_Digits_is_negative_65536_34:
      00002B                         74 	.ds 1
      00002C                         75 _Segment_Write_char_PARM_2:
      00002C                         76 	.ds 3
      00002F                         77 _Segment_Write_char_config_65536_40:
      00002F                         78 	.ds 3
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
      00010E                        148 _LUT:
                           000007   149 	ar7 = 0x07
                           000006   150 	ar6 = 0x06
                           000005   151 	ar5 = 0x05
                           000004   152 	ar4 = 0x04
                           000003   153 	ar3 = 0x03
                           000002   154 	ar2 = 0x02
                           000001   155 	ar1 = 0x01
                           000000   156 	ar0 = 0x00
      00010E AF 82            [24]  157 	mov	r7,dpl
                                    158 ;	../HAL/7_Seg.c:10: switch (c) {
      000110 BF 20 00         [24]  159 	cjne	r7,#0x20,00169$
      000113                        160 00169$:
      000113 50 03            [24]  161 	jnc	00170$
      000115 02 02 73         [24]  162 	ljmp	00157$
      000118                        163 00170$:
      000118 EF               [12]  164 	mov	a,r7
      000119 24 85            [12]  165 	add	a,#0xff - 0x7a
      00011B 50 03            [24]  166 	jnc	00171$
      00011D 02 02 73         [24]  167 	ljmp	00157$
      000120                        168 00171$:
      000120 EF               [12]  169 	mov	a,r7
      000121 24 E0            [12]  170 	add	a,#0xe0
      000123 FF               [12]  171 	mov	r7,a
      000124 24 0A            [12]  172 	add	a,#(00172$-3-.)
      000126 83               [24]  173 	movc	a,@a+pc
      000127 F5 82            [12]  174 	mov	dpl,a
      000129 EF               [12]  175 	mov	a,r7
      00012A 24 5F            [12]  176 	add	a,#(00173$-3-.)
      00012C 83               [24]  177 	movc	a,@a+pc
      00012D F5 83            [12]  178 	mov	dph,a
      00012F E4               [12]  179 	clr	a
      000130 73               [24]  180 	jmp	@a+dptr
      000131                        181 00172$:
      000131 6F                     182 	.db	00156$
      000132 73                     183 	.db	00157$
      000133 73                     184 	.db	00157$
      000134 73                     185 	.db	00157$
      000135 73                     186 	.db	00157$
      000136 73                     187 	.db	00157$
      000137 73                     188 	.db	00157$
      000138 73                     189 	.db	00157$
      000139 73                     190 	.db	00157$
      00013A 73                     191 	.db	00157$
      00013B 73                     192 	.db	00157$
      00013C 73                     193 	.db	00157$
      00013D 73                     194 	.db	00157$
      00013E 63                     195 	.db	00153$
      00013F 73                     196 	.db	00157$
      000140 73                     197 	.db	00157$
      000141 E7                     198 	.db	00101$
      000142 EB                     199 	.db	00102$
      000143 EF                     200 	.db	00103$
      000144 F3                     201 	.db	00104$
      000145 F7                     202 	.db	00105$
      000146 FB                     203 	.db	00106$
      000147 FF                     204 	.db	00107$
      000148 03                     205 	.db	00108$
      000149 07                     206 	.db	00109$
      00014A 0B                     207 	.db	00110$
      00014B 73                     208 	.db	00157$
      00014C 73                     209 	.db	00157$
      00014D 73                     210 	.db	00157$
      00014E 6B                     211 	.db	00155$
      00014F 73                     212 	.db	00157$
      000150 73                     213 	.db	00157$
      000151 73                     214 	.db	00157$
      000152 0F                     215 	.db	00112$
      000153 13                     216 	.db	00114$
      000154 17                     217 	.db	00116$
      000155 1B                     218 	.db	00118$
      000156 1F                     219 	.db	00120$
      000157 23                     220 	.db	00122$
      000158 27                     221 	.db	00124$
      000159 2B                     222 	.db	00126$
      00015A 2F                     223 	.db	00128$
      00015B 33                     224 	.db	00130$
      00015C 73                     225 	.db	00157$
      00015D 37                     226 	.db	00132$
      00015E 73                     227 	.db	00157$
      00015F 3B                     228 	.db	00134$
      000160 3F                     229 	.db	00136$
      000161 43                     230 	.db	00138$
      000162 47                     231 	.db	00140$
      000163 4B                     232 	.db	00142$
      000164 4F                     233 	.db	00144$
      000165 53                     234 	.db	00146$
      000166 57                     235 	.db	00148$
      000167 73                     236 	.db	00157$
      000168 73                     237 	.db	00157$
      000169 73                     238 	.db	00157$
      00016A 5B                     239 	.db	00150$
      00016B 5F                     240 	.db	00152$
      00016C 73                     241 	.db	00157$
      00016D 73                     242 	.db	00157$
      00016E 73                     243 	.db	00157$
      00016F 73                     244 	.db	00157$
      000170 67                     245 	.db	00154$
      000171 73                     246 	.db	00157$
      000172 0F                     247 	.db	00112$
      000173 13                     248 	.db	00114$
      000174 17                     249 	.db	00116$
      000175 1B                     250 	.db	00118$
      000176 1F                     251 	.db	00120$
      000177 23                     252 	.db	00122$
      000178 27                     253 	.db	00124$
      000179 2B                     254 	.db	00126$
      00017A 2F                     255 	.db	00128$
      00017B 33                     256 	.db	00130$
      00017C 73                     257 	.db	00157$
      00017D 37                     258 	.db	00132$
      00017E 73                     259 	.db	00157$
      00017F 3B                     260 	.db	00134$
      000180 3F                     261 	.db	00136$
      000181 43                     262 	.db	00138$
      000182 47                     263 	.db	00140$
      000183 4B                     264 	.db	00142$
      000184 4F                     265 	.db	00144$
      000185 53                     266 	.db	00146$
      000186 57                     267 	.db	00148$
      000187 73                     268 	.db	00157$
      000188 73                     269 	.db	00157$
      000189 73                     270 	.db	00157$
      00018A 5B                     271 	.db	00150$
      00018B 5F                     272 	.db	00152$
      00018C                        273 00173$:
      00018C 02                     274 	.db	00156$>>8
      00018D 02                     275 	.db	00157$>>8
      00018E 02                     276 	.db	00157$>>8
      00018F 02                     277 	.db	00157$>>8
      000190 02                     278 	.db	00157$>>8
      000191 02                     279 	.db	00157$>>8
      000192 02                     280 	.db	00157$>>8
      000193 02                     281 	.db	00157$>>8
      000194 02                     282 	.db	00157$>>8
      000195 02                     283 	.db	00157$>>8
      000196 02                     284 	.db	00157$>>8
      000197 02                     285 	.db	00157$>>8
      000198 02                     286 	.db	00157$>>8
      000199 02                     287 	.db	00153$>>8
      00019A 02                     288 	.db	00157$>>8
      00019B 02                     289 	.db	00157$>>8
      00019C 01                     290 	.db	00101$>>8
      00019D 01                     291 	.db	00102$>>8
      00019E 01                     292 	.db	00103$>>8
      00019F 01                     293 	.db	00104$>>8
      0001A0 01                     294 	.db	00105$>>8
      0001A1 01                     295 	.db	00106$>>8
      0001A2 01                     296 	.db	00107$>>8
      0001A3 02                     297 	.db	00108$>>8
      0001A4 02                     298 	.db	00109$>>8
      0001A5 02                     299 	.db	00110$>>8
      0001A6 02                     300 	.db	00157$>>8
      0001A7 02                     301 	.db	00157$>>8
      0001A8 02                     302 	.db	00157$>>8
      0001A9 02                     303 	.db	00155$>>8
      0001AA 02                     304 	.db	00157$>>8
      0001AB 02                     305 	.db	00157$>>8
      0001AC 02                     306 	.db	00157$>>8
      0001AD 02                     307 	.db	00112$>>8
      0001AE 02                     308 	.db	00114$>>8
      0001AF 02                     309 	.db	00116$>>8
      0001B0 02                     310 	.db	00118$>>8
      0001B1 02                     311 	.db	00120$>>8
      0001B2 02                     312 	.db	00122$>>8
      0001B3 02                     313 	.db	00124$>>8
      0001B4 02                     314 	.db	00126$>>8
      0001B5 02                     315 	.db	00128$>>8
      0001B6 02                     316 	.db	00130$>>8
      0001B7 02                     317 	.db	00157$>>8
      0001B8 02                     318 	.db	00132$>>8
      0001B9 02                     319 	.db	00157$>>8
      0001BA 02                     320 	.db	00134$>>8
      0001BB 02                     321 	.db	00136$>>8
      0001BC 02                     322 	.db	00138$>>8
      0001BD 02                     323 	.db	00140$>>8
      0001BE 02                     324 	.db	00142$>>8
      0001BF 02                     325 	.db	00144$>>8
      0001C0 02                     326 	.db	00146$>>8
      0001C1 02                     327 	.db	00148$>>8
      0001C2 02                     328 	.db	00157$>>8
      0001C3 02                     329 	.db	00157$>>8
      0001C4 02                     330 	.db	00157$>>8
      0001C5 02                     331 	.db	00150$>>8
      0001C6 02                     332 	.db	00152$>>8
      0001C7 02                     333 	.db	00157$>>8
      0001C8 02                     334 	.db	00157$>>8
      0001C9 02                     335 	.db	00157$>>8
      0001CA 02                     336 	.db	00157$>>8
      0001CB 02                     337 	.db	00154$>>8
      0001CC 02                     338 	.db	00157$>>8
      0001CD 02                     339 	.db	00112$>>8
      0001CE 02                     340 	.db	00114$>>8
      0001CF 02                     341 	.db	00116$>>8
      0001D0 02                     342 	.db	00118$>>8
      0001D1 02                     343 	.db	00120$>>8
      0001D2 02                     344 	.db	00122$>>8
      0001D3 02                     345 	.db	00124$>>8
      0001D4 02                     346 	.db	00126$>>8
      0001D5 02                     347 	.db	00128$>>8
      0001D6 02                     348 	.db	00130$>>8
      0001D7 02                     349 	.db	00157$>>8
      0001D8 02                     350 	.db	00132$>>8
      0001D9 02                     351 	.db	00157$>>8
      0001DA 02                     352 	.db	00134$>>8
      0001DB 02                     353 	.db	00136$>>8
      0001DC 02                     354 	.db	00138$>>8
      0001DD 02                     355 	.db	00140$>>8
      0001DE 02                     356 	.db	00142$>>8
      0001DF 02                     357 	.db	00144$>>8
      0001E0 02                     358 	.db	00146$>>8
      0001E1 02                     359 	.db	00148$>>8
      0001E2 02                     360 	.db	00157$>>8
      0001E3 02                     361 	.db	00157$>>8
      0001E4 02                     362 	.db	00157$>>8
      0001E5 02                     363 	.db	00150$>>8
      0001E6 02                     364 	.db	00152$>>8
                                    365 ;	../HAL/7_Seg.c:12: case '0': return 0x3F;
      0001E7                        366 00101$:
      0001E7 75 82 3F         [24]  367 	mov	dpl,#0x3f
      0001EA 22               [24]  368 	ret
                                    369 ;	../HAL/7_Seg.c:13: case '1': return 0x06;
      0001EB                        370 00102$:
      0001EB 75 82 06         [24]  371 	mov	dpl,#0x06
      0001EE 22               [24]  372 	ret
                                    373 ;	../HAL/7_Seg.c:14: case '2': return 0x5B;
      0001EF                        374 00103$:
      0001EF 75 82 5B         [24]  375 	mov	dpl,#0x5b
      0001F2 22               [24]  376 	ret
                                    377 ;	../HAL/7_Seg.c:15: case '3': return 0x4F;
      0001F3                        378 00104$:
      0001F3 75 82 4F         [24]  379 	mov	dpl,#0x4f
      0001F6 22               [24]  380 	ret
                                    381 ;	../HAL/7_Seg.c:16: case '4': return 0x66;
      0001F7                        382 00105$:
      0001F7 75 82 66         [24]  383 	mov	dpl,#0x66
      0001FA 22               [24]  384 	ret
                                    385 ;	../HAL/7_Seg.c:17: case '5': return 0x6D;
      0001FB                        386 00106$:
      0001FB 75 82 6D         [24]  387 	mov	dpl,#0x6d
      0001FE 22               [24]  388 	ret
                                    389 ;	../HAL/7_Seg.c:18: case '6': return 0x7D;
      0001FF                        390 00107$:
      0001FF 75 82 7D         [24]  391 	mov	dpl,#0x7d
      000202 22               [24]  392 	ret
                                    393 ;	../HAL/7_Seg.c:19: case '7': return 0x07;
      000203                        394 00108$:
      000203 75 82 07         [24]  395 	mov	dpl,#0x07
      000206 22               [24]  396 	ret
                                    397 ;	../HAL/7_Seg.c:20: case '8': return 0x7F;
      000207                        398 00109$:
      000207 75 82 7F         [24]  399 	mov	dpl,#0x7f
      00020A 22               [24]  400 	ret
                                    401 ;	../HAL/7_Seg.c:21: case '9': return 0x6F;
      00020B                        402 00110$:
      00020B 75 82 6F         [24]  403 	mov	dpl,#0x6f
      00020E 22               [24]  404 	ret
                                    405 ;	../HAL/7_Seg.c:24: case 'A': case 'a': return 0x77;
      00020F                        406 00112$:
      00020F 75 82 77         [24]  407 	mov	dpl,#0x77
      000212 22               [24]  408 	ret
                                    409 ;	../HAL/7_Seg.c:25: case 'B': case 'b': return 0x7C;
      000213                        410 00114$:
      000213 75 82 7C         [24]  411 	mov	dpl,#0x7c
      000216 22               [24]  412 	ret
                                    413 ;	../HAL/7_Seg.c:26: case 'C': case 'c': return 0x39;
      000217                        414 00116$:
      000217 75 82 39         [24]  415 	mov	dpl,#0x39
      00021A 22               [24]  416 	ret
                                    417 ;	../HAL/7_Seg.c:27: case 'D': case 'd': return 0x5E;
      00021B                        418 00118$:
      00021B 75 82 5E         [24]  419 	mov	dpl,#0x5e
      00021E 22               [24]  420 	ret
                                    421 ;	../HAL/7_Seg.c:28: case 'E': case 'e': return 0x79;
      00021F                        422 00120$:
      00021F 75 82 79         [24]  423 	mov	dpl,#0x79
                                    424 ;	../HAL/7_Seg.c:29: case 'F': case 'f': return 0x71;
      000222 22               [24]  425 	ret
      000223                        426 00122$:
      000223 75 82 71         [24]  427 	mov	dpl,#0x71
                                    428 ;	../HAL/7_Seg.c:30: case 'G': case 'g': return 0x3D;
      000226 22               [24]  429 	ret
      000227                        430 00124$:
      000227 75 82 3D         [24]  431 	mov	dpl,#0x3d
                                    432 ;	../HAL/7_Seg.c:31: case 'H': case 'h': return 0x76;
      00022A 22               [24]  433 	ret
      00022B                        434 00126$:
      00022B 75 82 76         [24]  435 	mov	dpl,#0x76
                                    436 ;	../HAL/7_Seg.c:32: case 'I': case 'i': return 0x06;
      00022E 22               [24]  437 	ret
      00022F                        438 00128$:
      00022F 75 82 06         [24]  439 	mov	dpl,#0x06
                                    440 ;	../HAL/7_Seg.c:33: case 'J': case 'j': return 0x1E;
      000232 22               [24]  441 	ret
      000233                        442 00130$:
      000233 75 82 1E         [24]  443 	mov	dpl,#0x1e
                                    444 ;	../HAL/7_Seg.c:34: case 'L': case 'l': return 0x38;
      000236 22               [24]  445 	ret
      000237                        446 00132$:
      000237 75 82 38         [24]  447 	mov	dpl,#0x38
                                    448 ;	../HAL/7_Seg.c:35: case 'N': case 'n': return 0x54;
      00023A 22               [24]  449 	ret
      00023B                        450 00134$:
      00023B 75 82 54         [24]  451 	mov	dpl,#0x54
                                    452 ;	../HAL/7_Seg.c:36: case 'O': case 'o': return 0x3F;
      00023E 22               [24]  453 	ret
      00023F                        454 00136$:
      00023F 75 82 3F         [24]  455 	mov	dpl,#0x3f
                                    456 ;	../HAL/7_Seg.c:37: case 'P': case 'p': return 0x73;
      000242 22               [24]  457 	ret
      000243                        458 00138$:
      000243 75 82 73         [24]  459 	mov	dpl,#0x73
                                    460 ;	../HAL/7_Seg.c:38: case 'Q': case 'q': return 0x67;
      000246 22               [24]  461 	ret
      000247                        462 00140$:
      000247 75 82 67         [24]  463 	mov	dpl,#0x67
                                    464 ;	../HAL/7_Seg.c:39: case 'R': case 'r': return 0x50;
      00024A 22               [24]  465 	ret
      00024B                        466 00142$:
      00024B 75 82 50         [24]  467 	mov	dpl,#0x50
                                    468 ;	../HAL/7_Seg.c:40: case 'S': case 's': return 0x6D;
      00024E 22               [24]  469 	ret
      00024F                        470 00144$:
      00024F 75 82 6D         [24]  471 	mov	dpl,#0x6d
                                    472 ;	../HAL/7_Seg.c:41: case 'T': case 't': return 0x78;
      000252 22               [24]  473 	ret
      000253                        474 00146$:
      000253 75 82 78         [24]  475 	mov	dpl,#0x78
                                    476 ;	../HAL/7_Seg.c:42: case 'U': case 'u': return 0x3E;
      000256 22               [24]  477 	ret
      000257                        478 00148$:
      000257 75 82 3E         [24]  479 	mov	dpl,#0x3e
                                    480 ;	../HAL/7_Seg.c:43: case 'Y': case 'y': return 0x6E;
      00025A 22               [24]  481 	ret
      00025B                        482 00150$:
      00025B 75 82 6E         [24]  483 	mov	dpl,#0x6e
                                    484 ;	../HAL/7_Seg.c:44: case 'Z': case 'z': return 0x5B;
      00025E 22               [24]  485 	ret
      00025F                        486 00152$:
      00025F 75 82 5B         [24]  487 	mov	dpl,#0x5b
                                    488 ;	../HAL/7_Seg.c:47: case '-': return 0x40;
      000262 22               [24]  489 	ret
      000263                        490 00153$:
      000263 75 82 40         [24]  491 	mov	dpl,#0x40
                                    492 ;	../HAL/7_Seg.c:48: case '_': return 0x08;
      000266 22               [24]  493 	ret
      000267                        494 00154$:
      000267 75 82 08         [24]  495 	mov	dpl,#0x08
                                    496 ;	../HAL/7_Seg.c:49: case '=': return 0x48;
      00026A 22               [24]  497 	ret
      00026B                        498 00155$:
      00026B 75 82 48         [24]  499 	mov	dpl,#0x48
                                    500 ;	../HAL/7_Seg.c:50: case ' ': return 0x00;
      00026E 22               [24]  501 	ret
      00026F                        502 00156$:
      00026F 75 82 00         [24]  503 	mov	dpl,#0x00
                                    504 ;	../HAL/7_Seg.c:52: default: return 0x00;  // Blank for unsupported characters
      000272 22               [24]  505 	ret
      000273                        506 00157$:
      000273 75 82 00         [24]  507 	mov	dpl,#0x00
                                    508 ;	../HAL/7_Seg.c:53: }
                                    509 ;	../HAL/7_Seg.c:54: }
      000276 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'Segment_Init'
                                    513 ;------------------------------------------------------------
                                    514 ;config                    Allocated to registers r5 r6 r7 
                                    515 ;------------------------------------------------------------
                                    516 ;	../HAL/7_Seg.c:72: void Segment_Init(Seg_config_t *config){
                                    517 ;	-----------------------------------------
                                    518 ;	 function Segment_Init
                                    519 ;	-----------------------------------------
      000277                        520 _Segment_Init:
                                    521 ;	../HAL/7_Seg.c:73: Seg_port.Port = config->Segment_Port;
      000277 AD 82            [24]  522 	mov	r5,dpl
      000279 AE 83            [24]  523 	mov	r6,dph
      00027B AF F0            [24]  524 	mov	r7,b
      00027D 12 0B 44         [24]  525 	lcall	__gptrget
      000280 FC               [12]  526 	mov	r4,a
      000281 8C 12            [24]  527 	mov	_Seg_port,r4
                                    528 ;	../HAL/7_Seg.c:74: Seg_port.Mode = GPIO_OUTPUT;
      000283 75 14 00         [24]  529 	mov	(_Seg_port + 0x0002),#0x00
                                    530 ;	../HAL/7_Seg.c:76: Seg_en_Port.Port = config->Seg_Enable_Port;
      000286 0D               [12]  531 	inc	r5
      000287 BD 00 01         [24]  532 	cjne	r5,#0x00,00103$
      00028A 0E               [12]  533 	inc	r6
      00028B                        534 00103$:
      00028B 8D 82            [24]  535 	mov	dpl,r5
      00028D 8E 83            [24]  536 	mov	dph,r6
      00028F 8F F0            [24]  537 	mov	b,r7
      000291 12 0B 44         [24]  538 	lcall	__gptrget
      000294 FD               [12]  539 	mov	r5,a
      000295 8D 15            [24]  540 	mov	_Seg_en_Port,r5
                                    541 ;	../HAL/7_Seg.c:77: Seg_en_Port.Mode = GPIO_OUTPUT;
      000297 75 17 00         [24]  542 	mov	(_Seg_en_Port + 0x0002),#0x00
                                    543 ;	../HAL/7_Seg.c:78: }
      00029A 22               [24]  544 	ret
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
      00029B                        558 _Segment_write:
      00029B 85 82 1A         [24]  559 	mov	_Segment_write_config_65536_17,dpl
      00029E 85 83 1B         [24]  560 	mov	(_Segment_write_config_65536_17 + 1),dph
      0002A1 85 F0 1C         [24]  561 	mov	(_Segment_write_config_65536_17 + 2),b
                                    562 ;	../HAL/7_Seg.c:83: for(unsigned char i =0; i<4; i++){
      0002A4 74 02            [12]  563 	mov	a,#0x02
      0002A6 25 1A            [12]  564 	add	a,_Segment_write_config_65536_17
      0002A8 FA               [12]  565 	mov	r2,a
      0002A9 E4               [12]  566 	clr	a
      0002AA 35 1B            [12]  567 	addc	a,(_Segment_write_config_65536_17 + 1)
      0002AC FB               [12]  568 	mov	r3,a
      0002AD AC 1C            [24]  569 	mov	r4,(_Segment_write_config_65536_17 + 2)
      0002AF 75 1D 00         [24]  570 	mov	_Segment_write_i_131072_19,#0x00
      0002B2                        571 00107$:
      0002B2 74 FC            [12]  572 	mov	a,#0x100 - 0x04
      0002B4 25 1D            [12]  573 	add	a,_Segment_write_i_131072_19
      0002B6 40 31            [24]  574 	jc	00101$
                                    575 ;	../HAL/7_Seg.c:84: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      0002B8 E5 1D            [12]  576 	mov	a,_Segment_write_i_131072_19
      0002BA 2A               [12]  577 	add	a,r2
      0002BB FD               [12]  578 	mov	r5,a
      0002BC E4               [12]  579 	clr	a
      0002BD 3B               [12]  580 	addc	a,r3
      0002BE FE               [12]  581 	mov	r6,a
      0002BF 8C 07            [24]  582 	mov	ar7,r4
      0002C1 8D 82            [24]  583 	mov	dpl,r5
      0002C3 8E 83            [24]  584 	mov	dph,r6
      0002C5 8F F0            [24]  585 	mov	b,r7
      0002C7 12 0B 44         [24]  586 	lcall	__gptrget
      0002CA FD               [12]  587 	mov	r5,a
      0002CB 8D 16            [24]  588 	mov	(_Seg_en_Port + 0x0001),r5
                                    589 ;	../HAL/7_Seg.c:85: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      0002CD 75 36 00         [24]  590 	mov	_GPIO_Write_PARM_2,#0x00
      0002D0 90 00 15         [24]  591 	mov	dptr,#_Seg_en_Port
      0002D3 75 F0 40         [24]  592 	mov	b,#0x40
      0002D6 C0 04            [24]  593 	push	ar4
      0002D8 C0 03            [24]  594 	push	ar3
      0002DA C0 02            [24]  595 	push	ar2
      0002DC 12 05 F1         [24]  596 	lcall	_GPIO_Write
      0002DF D0 02            [24]  597 	pop	ar2
      0002E1 D0 03            [24]  598 	pop	ar3
      0002E3 D0 04            [24]  599 	pop	ar4
                                    600 ;	../HAL/7_Seg.c:83: for(unsigned char i =0; i<4; i++){
      0002E5 05 1D            [12]  601 	inc	_Segment_write_i_131072_19
      0002E7 80 C9            [24]  602 	sjmp	00107$
      0002E9                        603 00101$:
                                    604 ;	../HAL/7_Seg.c:87: GPIO_PORT_Write(&Seg_port,  val);
      0002E9 85 19 36         [24]  605 	mov	_GPIO_PORT_Write_PARM_2,_Segment_write_PARM_3
      0002EC 90 00 12         [24]  606 	mov	dptr,#_Seg_port
      0002EF 75 F0 40         [24]  607 	mov	b,#0x40
      0002F2 12 0A 0F         [24]  608 	lcall	_GPIO_PORT_Write
                                    609 ;	../HAL/7_Seg.c:88: if(display_number < 4){
      0002F5 74 FC            [12]  610 	mov	a,#0x100 - 0x04
      0002F7 25 18            [12]  611 	add	a,_Segment_write_PARM_2
      0002F9 40 2C            [24]  612 	jc	00103$
                                    613 ;	../HAL/7_Seg.c:89: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
      0002FB 74 02            [12]  614 	mov	a,#0x02
      0002FD 25 1A            [12]  615 	add	a,_Segment_write_config_65536_17
      0002FF FD               [12]  616 	mov	r5,a
      000300 E4               [12]  617 	clr	a
      000301 35 1B            [12]  618 	addc	a,(_Segment_write_config_65536_17 + 1)
      000303 FE               [12]  619 	mov	r6,a
      000304 AF 1C            [24]  620 	mov	r7,(_Segment_write_config_65536_17 + 2)
      000306 E5 18            [12]  621 	mov	a,_Segment_write_PARM_2
      000308 2D               [12]  622 	add	a,r5
      000309 FD               [12]  623 	mov	r5,a
      00030A E4               [12]  624 	clr	a
      00030B 3E               [12]  625 	addc	a,r6
      00030C FE               [12]  626 	mov	r6,a
      00030D 8D 82            [24]  627 	mov	dpl,r5
      00030F 8E 83            [24]  628 	mov	dph,r6
      000311 8F F0            [24]  629 	mov	b,r7
      000313 12 0B 44         [24]  630 	lcall	__gptrget
      000316 FD               [12]  631 	mov	r5,a
      000317 8D 16            [24]  632 	mov	(_Seg_en_Port + 0x0001),r5
                                    633 ;	../HAL/7_Seg.c:90: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
      000319 75 36 01         [24]  634 	mov	_GPIO_Write_PARM_2,#0x01
      00031C 90 00 15         [24]  635 	mov	dptr,#_Seg_en_Port
      00031F 75 F0 40         [24]  636 	mov	b,#0x40
      000322 12 05 F1         [24]  637 	lcall	_GPIO_Write
      000325 80 01            [24]  638 	sjmp	00104$
      000327                        639 00103$:
                                    640 ;	../HAL/7_Seg.c:92: return;
      000327 22               [24]  641 	ret
      000328                        642 00104$:
                                    643 ;	../HAL/7_Seg.c:94: Tim_delay_ms(1);
      000328 90 00 01         [24]  644 	mov	dptr,#0x0001
      00032B 12 05 C8         [24]  645 	lcall	_Tim_delay_ms
                                    646 ;	../HAL/7_Seg.c:96: for(unsigned char i =0; i<4; i++){
      00032E 74 02            [12]  647 	mov	a,#0x02
      000330 25 1A            [12]  648 	add	a,_Segment_write_config_65536_17
      000332 FD               [12]  649 	mov	r5,a
      000333 E4               [12]  650 	clr	a
      000334 35 1B            [12]  651 	addc	a,(_Segment_write_config_65536_17 + 1)
      000336 FE               [12]  652 	mov	r6,a
      000337 AF 1C            [24]  653 	mov	r7,(_Segment_write_config_65536_17 + 2)
      000339 75 1E 00         [24]  654 	mov	_Segment_write_i_131072_23,#0x00
      00033C                        655 00110$:
      00033C 74 FC            [12]  656 	mov	a,#0x100 - 0x04
      00033E 25 1E            [12]  657 	add	a,_Segment_write_i_131072_23
      000340 40 31            [24]  658 	jc	00112$
                                    659 ;	../HAL/7_Seg.c:97: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      000342 E5 1E            [12]  660 	mov	a,_Segment_write_i_131072_23
      000344 2D               [12]  661 	add	a,r5
      000345 FA               [12]  662 	mov	r2,a
      000346 E4               [12]  663 	clr	a
      000347 3E               [12]  664 	addc	a,r6
      000348 FB               [12]  665 	mov	r3,a
      000349 8F 04            [24]  666 	mov	ar4,r7
      00034B 8A 82            [24]  667 	mov	dpl,r2
      00034D 8B 83            [24]  668 	mov	dph,r3
      00034F 8C F0            [24]  669 	mov	b,r4
      000351 12 0B 44         [24]  670 	lcall	__gptrget
      000354 FA               [12]  671 	mov	r2,a
      000355 8A 16            [24]  672 	mov	(_Seg_en_Port + 0x0001),r2
                                    673 ;	../HAL/7_Seg.c:98: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      000357 75 36 00         [24]  674 	mov	_GPIO_Write_PARM_2,#0x00
      00035A 90 00 15         [24]  675 	mov	dptr,#_Seg_en_Port
      00035D 75 F0 40         [24]  676 	mov	b,#0x40
      000360 C0 07            [24]  677 	push	ar7
      000362 C0 06            [24]  678 	push	ar6
      000364 C0 05            [24]  679 	push	ar5
      000366 12 05 F1         [24]  680 	lcall	_GPIO_Write
      000369 D0 05            [24]  681 	pop	ar5
      00036B D0 06            [24]  682 	pop	ar6
      00036D D0 07            [24]  683 	pop	ar7
                                    684 ;	../HAL/7_Seg.c:96: for(unsigned char i =0; i<4; i++){
      00036F 05 1E            [12]  685 	inc	_Segment_write_i_131072_23
      000371 80 C9            [24]  686 	sjmp	00110$
      000373                        687 00112$:
                                    688 ;	../HAL/7_Seg.c:100: }
      000373 22               [24]  689 	ret
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
      000374                        703 _Segment_write_number:
      000374 85 82 21         [24]  704 	mov	_Segment_write_number_config_65536_25,dpl
      000377 85 83 22         [24]  705 	mov	(_Segment_write_number_config_65536_25 + 1),dph
      00037A 85 F0 23         [24]  706 	mov	(_Segment_write_number_config_65536_25 + 2),b
                                    707 ;	../HAL/7_Seg.c:106: for(unsigned char i =0; i<4; i++){
      00037D 74 02            [12]  708 	mov	a,#0x02
      00037F 25 21            [12]  709 	add	a,_Segment_write_number_config_65536_25
      000381 FA               [12]  710 	mov	r2,a
      000382 E4               [12]  711 	clr	a
      000383 35 22            [12]  712 	addc	a,(_Segment_write_number_config_65536_25 + 1)
      000385 FB               [12]  713 	mov	r3,a
      000386 AC 23            [24]  714 	mov	r4,(_Segment_write_number_config_65536_25 + 2)
      000388 75 24 00         [24]  715 	mov	_Segment_write_number_i_131072_27,#0x00
      00038B                        716 00107$:
      00038B 74 FC            [12]  717 	mov	a,#0x100 - 0x04
      00038D 25 24            [12]  718 	add	a,_Segment_write_number_i_131072_27
      00038F 40 31            [24]  719 	jc	00101$
                                    720 ;	../HAL/7_Seg.c:107: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      000391 E5 24            [12]  721 	mov	a,_Segment_write_number_i_131072_27
      000393 2A               [12]  722 	add	a,r2
      000394 FD               [12]  723 	mov	r5,a
      000395 E4               [12]  724 	clr	a
      000396 3B               [12]  725 	addc	a,r3
      000397 FE               [12]  726 	mov	r6,a
      000398 8C 07            [24]  727 	mov	ar7,r4
      00039A 8D 82            [24]  728 	mov	dpl,r5
      00039C 8E 83            [24]  729 	mov	dph,r6
      00039E 8F F0            [24]  730 	mov	b,r7
      0003A0 12 0B 44         [24]  731 	lcall	__gptrget
      0003A3 FD               [12]  732 	mov	r5,a
      0003A4 8D 16            [24]  733 	mov	(_Seg_en_Port + 0x0001),r5
                                    734 ;	../HAL/7_Seg.c:108: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      0003A6 75 36 00         [24]  735 	mov	_GPIO_Write_PARM_2,#0x00
      0003A9 90 00 15         [24]  736 	mov	dptr,#_Seg_en_Port
      0003AC 75 F0 40         [24]  737 	mov	b,#0x40
      0003AF C0 04            [24]  738 	push	ar4
      0003B1 C0 03            [24]  739 	push	ar3
      0003B3 C0 02            [24]  740 	push	ar2
      0003B5 12 05 F1         [24]  741 	lcall	_GPIO_Write
      0003B8 D0 02            [24]  742 	pop	ar2
      0003BA D0 03            [24]  743 	pop	ar3
      0003BC D0 04            [24]  744 	pop	ar4
                                    745 ;	../HAL/7_Seg.c:106: for(unsigned char i =0; i<4; i++){
      0003BE 05 24            [12]  746 	inc	_Segment_write_number_i_131072_27
      0003C0 80 C9            [24]  747 	sjmp	00107$
      0003C2                        748 00101$:
                                    749 ;	../HAL/7_Seg.c:110: GPIO_PORT_Write(&Seg_port,  seg_digit_map[number % 10]);
      0003C2 AE 20            [24]  750 	mov	r6,_Segment_write_number_PARM_3
      0003C4 7F 00            [12]  751 	mov	r7,#0x00
      0003C6 75 36 0A         [24]  752 	mov	__modsint_PARM_2,#0x0a
                                    753 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0003C9 8F 37            [24]  754 	mov	(__modsint_PARM_2 + 1),r7
      0003CB 8E 82            [24]  755 	mov	dpl,r6
      0003CD 8F 83            [24]  756 	mov	dph,r7
      0003CF 12 0B 60         [24]  757 	lcall	__modsint
      0003D2 AE 82            [24]  758 	mov	r6,dpl
      0003D4 AF 83            [24]  759 	mov	r7,dph
      0003D6 EE               [12]  760 	mov	a,r6
      0003D7 24 D2            [12]  761 	add	a,#_seg_digit_map
      0003D9 F5 82            [12]  762 	mov	dpl,a
      0003DB EF               [12]  763 	mov	a,r7
      0003DC 34 0B            [12]  764 	addc	a,#(_seg_digit_map >> 8)
      0003DE F5 83            [12]  765 	mov	dph,a
      0003E0 E4               [12]  766 	clr	a
      0003E1 93               [24]  767 	movc	a,@a+dptr
      0003E2 F5 36            [12]  768 	mov	_GPIO_PORT_Write_PARM_2,a
      0003E4 90 00 12         [24]  769 	mov	dptr,#_Seg_port
      0003E7 75 F0 40         [24]  770 	mov	b,#0x40
      0003EA 12 0A 0F         [24]  771 	lcall	_GPIO_PORT_Write
                                    772 ;	../HAL/7_Seg.c:111: if(display_number < 4){
      0003ED 74 FC            [12]  773 	mov	a,#0x100 - 0x04
      0003EF 25 1F            [12]  774 	add	a,_Segment_write_number_PARM_2
      0003F1 40 2C            [24]  775 	jc	00103$
                                    776 ;	../HAL/7_Seg.c:112: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
      0003F3 74 02            [12]  777 	mov	a,#0x02
      0003F5 25 21            [12]  778 	add	a,_Segment_write_number_config_65536_25
      0003F7 FD               [12]  779 	mov	r5,a
      0003F8 E4               [12]  780 	clr	a
      0003F9 35 22            [12]  781 	addc	a,(_Segment_write_number_config_65536_25 + 1)
      0003FB FE               [12]  782 	mov	r6,a
      0003FC AF 23            [24]  783 	mov	r7,(_Segment_write_number_config_65536_25 + 2)
      0003FE E5 1F            [12]  784 	mov	a,_Segment_write_number_PARM_2
      000400 2D               [12]  785 	add	a,r5
      000401 FD               [12]  786 	mov	r5,a
      000402 E4               [12]  787 	clr	a
      000403 3E               [12]  788 	addc	a,r6
      000404 FE               [12]  789 	mov	r6,a
      000405 8D 82            [24]  790 	mov	dpl,r5
      000407 8E 83            [24]  791 	mov	dph,r6
      000409 8F F0            [24]  792 	mov	b,r7
      00040B 12 0B 44         [24]  793 	lcall	__gptrget
      00040E FD               [12]  794 	mov	r5,a
      00040F 8D 16            [24]  795 	mov	(_Seg_en_Port + 0x0001),r5
                                    796 ;	../HAL/7_Seg.c:113: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
      000411 75 36 01         [24]  797 	mov	_GPIO_Write_PARM_2,#0x01
      000414 90 00 15         [24]  798 	mov	dptr,#_Seg_en_Port
      000417 75 F0 40         [24]  799 	mov	b,#0x40
      00041A 12 05 F1         [24]  800 	lcall	_GPIO_Write
      00041D 80 01            [24]  801 	sjmp	00104$
      00041F                        802 00103$:
                                    803 ;	../HAL/7_Seg.c:115: return;
      00041F 22               [24]  804 	ret
      000420                        805 00104$:
                                    806 ;	../HAL/7_Seg.c:117: Tim_delay_ms(1);
      000420 90 00 01         [24]  807 	mov	dptr,#0x0001
      000423 12 05 C8         [24]  808 	lcall	_Tim_delay_ms
                                    809 ;	../HAL/7_Seg.c:119: for(unsigned char i =0; i<4; i++){
      000426 74 02            [12]  810 	mov	a,#0x02
      000428 25 21            [12]  811 	add	a,_Segment_write_number_config_65536_25
      00042A FD               [12]  812 	mov	r5,a
      00042B E4               [12]  813 	clr	a
      00042C 35 22            [12]  814 	addc	a,(_Segment_write_number_config_65536_25 + 1)
      00042E FE               [12]  815 	mov	r6,a
      00042F AF 23            [24]  816 	mov	r7,(_Segment_write_number_config_65536_25 + 2)
      000431 75 25 00         [24]  817 	mov	_Segment_write_number_i_131072_31,#0x00
      000434                        818 00110$:
      000434 74 FC            [12]  819 	mov	a,#0x100 - 0x04
      000436 25 25            [12]  820 	add	a,_Segment_write_number_i_131072_31
      000438 40 31            [24]  821 	jc	00112$
                                    822 ;	../HAL/7_Seg.c:120: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      00043A E5 25            [12]  823 	mov	a,_Segment_write_number_i_131072_31
      00043C 2D               [12]  824 	add	a,r5
      00043D FA               [12]  825 	mov	r2,a
      00043E E4               [12]  826 	clr	a
      00043F 3E               [12]  827 	addc	a,r6
      000440 FB               [12]  828 	mov	r3,a
      000441 8F 04            [24]  829 	mov	ar4,r7
      000443 8A 82            [24]  830 	mov	dpl,r2
      000445 8B 83            [24]  831 	mov	dph,r3
      000447 8C F0            [24]  832 	mov	b,r4
      000449 12 0B 44         [24]  833 	lcall	__gptrget
      00044C FA               [12]  834 	mov	r2,a
      00044D 8A 16            [24]  835 	mov	(_Seg_en_Port + 0x0001),r2
                                    836 ;	../HAL/7_Seg.c:121: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      00044F 75 36 00         [24]  837 	mov	_GPIO_Write_PARM_2,#0x00
      000452 90 00 15         [24]  838 	mov	dptr,#_Seg_en_Port
      000455 75 F0 40         [24]  839 	mov	b,#0x40
      000458 C0 07            [24]  840 	push	ar7
      00045A C0 06            [24]  841 	push	ar6
      00045C C0 05            [24]  842 	push	ar5
      00045E 12 05 F1         [24]  843 	lcall	_GPIO_Write
      000461 D0 05            [24]  844 	pop	ar5
      000463 D0 06            [24]  845 	pop	ar6
      000465 D0 07            [24]  846 	pop	ar7
                                    847 ;	../HAL/7_Seg.c:119: for(unsigned char i =0; i<4; i++){
      000467 05 25            [12]  848 	inc	_Segment_write_number_i_131072_31
      000469 80 C9            [24]  849 	sjmp	00110$
      00046B                        850 00112$:
                                    851 ;	../HAL/7_Seg.c:124: }
      00046B 22               [24]  852 	ret
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
      00046C                        867 _Multi_Segment_write_Digits:
      00046C 85 82 28         [24]  868 	mov	_Multi_Segment_write_Digits_config_65536_33,dpl
      00046F 85 83 29         [24]  869 	mov	(_Multi_Segment_write_Digits_config_65536_33 + 1),dph
      000472 85 F0 2A         [24]  870 	mov	(_Multi_Segment_write_Digits_config_65536_33 + 2),b
                                    871 ;	../HAL/7_Seg.c:129: int n = number;
      000475 AB 26            [24]  872 	mov	r3,_Multi_Segment_write_Digits_PARM_2
      000477 AC 27            [24]  873 	mov	r4,(_Multi_Segment_write_Digits_PARM_2 + 1)
                                    874 ;	../HAL/7_Seg.c:130: unsigned char dig = 0;
      000479 7A 00            [12]  875 	mov	r2,#0x00
                                    876 ;	../HAL/7_Seg.c:132: if(number > 9999){
      00047B C3               [12]  877 	clr	c
      00047C 74 0F            [12]  878 	mov	a,#0x0f
      00047E 9B               [12]  879 	subb	a,r3
      00047F 74 A7            [12]  880 	mov	a,#(0x27 ^ 0x80)
      000481 8C F0            [24]  881 	mov	b,r4
      000483 63 F0 80         [24]  882 	xrl	b,#0x80
      000486 95 F0            [12]  883 	subb	a,b
      000488 50 06            [24]  884 	jnc	00104$
                                    885 ;	../HAL/7_Seg.c:133: n = 9999;
      00048A 7B 0F            [12]  886 	mov	r3,#0x0f
      00048C 7C 27            [12]  887 	mov	r4,#0x27
      00048E 80 0F            [24]  888 	sjmp	00105$
      000490                        889 00104$:
                                    890 ;	../HAL/7_Seg.c:134: }else if(number < -999){ 
      000490 C3               [12]  891 	clr	c
      000491 EB               [12]  892 	mov	a,r3
      000492 94 19            [12]  893 	subb	a,#0x19
      000494 EC               [12]  894 	mov	a,r4
      000495 64 80            [12]  895 	xrl	a,#0x80
      000497 94 7C            [12]  896 	subb	a,#0x7c
      000499 50 04            [24]  897 	jnc	00105$
                                    898 ;	../HAL/7_Seg.c:135: n = -999;
      00049B 7B 19            [12]  899 	mov	r3,#0x19
      00049D 7C FC            [12]  900 	mov	r4,#0xfc
      00049F                        901 00105$:
                                    902 ;	../HAL/7_Seg.c:137: is_negative = (number < 0) ? true : false;
      00049F E5 27            [12]  903 	mov	a,(_Multi_Segment_write_Digits_PARM_2 + 1)
      0004A1 33               [12]  904 	rlc	a
      0004A2 E4               [12]  905 	clr	a
      0004A3 33               [12]  906 	rlc	a
                                    907 ;	../HAL/7_Seg.c:139: if(is_negative){
      0004A4 F5 2B            [12]  908 	mov	_Multi_Segment_write_Digits_is_negative_65536_34,a
      0004A6 A9 2B            [24]  909 	mov	r1,_Multi_Segment_write_Digits_is_negative_65536_34
      0004A8 60 07            [24]  910 	jz	00119$
                                    911 ;	../HAL/7_Seg.c:140: n *= -1;
      0004AA C3               [12]  912 	clr	c
      0004AB E4               [12]  913 	clr	a
      0004AC 9B               [12]  914 	subb	a,r3
      0004AD FB               [12]  915 	mov	r3,a
      0004AE E4               [12]  916 	clr	a
      0004AF 9C               [12]  917 	subb	a,r4
      0004B0 FC               [12]  918 	mov	r4,a
                                    919 ;	../HAL/7_Seg.c:143: while (n)
      0004B1                        920 00119$:
      0004B1 78 00            [12]  921 	mov	r0,#0x00
      0004B3                        922 00108$:
      0004B3 EB               [12]  923 	mov	a,r3
      0004B4 4C               [12]  924 	orl	a,r4
      0004B5 60 5D            [24]  925 	jz	00110$
                                    926 ;	../HAL/7_Seg.c:145: dig = n % 10;
      0004B7 75 36 0A         [24]  927 	mov	__modsint_PARM_2,#0x0a
      0004BA 75 37 00         [24]  928 	mov	(__modsint_PARM_2 + 1),#0x00
      0004BD 8B 82            [24]  929 	mov	dpl,r3
      0004BF 8C 83            [24]  930 	mov	dph,r4
      0004C1 C0 04            [24]  931 	push	ar4
      0004C3 C0 03            [24]  932 	push	ar3
      0004C5 C0 01            [24]  933 	push	ar1
      0004C7 C0 00            [24]  934 	push	ar0
      0004C9 12 0B 60         [24]  935 	lcall	__modsint
      0004CC AE 82            [24]  936 	mov	r6,dpl
      0004CE D0 00            [24]  937 	pop	ar0
      0004D0 D0 01            [24]  938 	pop	ar1
      0004D2 8E 02            [24]  939 	mov	ar2,r6
                                    940 ;	../HAL/7_Seg.c:147: Segment_write_number(config, seg_no, dig);
      0004D4 88 1F            [24]  941 	mov	_Segment_write_number_PARM_2,r0
      0004D6 8A 20            [24]  942 	mov	_Segment_write_number_PARM_3,r2
      0004D8 85 28 82         [24]  943 	mov	dpl,_Multi_Segment_write_Digits_config_65536_33
      0004DB 85 29 83         [24]  944 	mov	dph,(_Multi_Segment_write_Digits_config_65536_33 + 1)
      0004DE 85 2A F0         [24]  945 	mov	b,(_Multi_Segment_write_Digits_config_65536_33 + 2)
      0004E1 C0 02            [24]  946 	push	ar2
      0004E3 C0 01            [24]  947 	push	ar1
      0004E5 C0 00            [24]  948 	push	ar0
      0004E7 12 03 74         [24]  949 	lcall	_Segment_write_number
      0004EA D0 00            [24]  950 	pop	ar0
      0004EC D0 01            [24]  951 	pop	ar1
      0004EE D0 02            [24]  952 	pop	ar2
      0004F0 D0 03            [24]  953 	pop	ar3
      0004F2 D0 04            [24]  954 	pop	ar4
                                    955 ;	../HAL/7_Seg.c:148: n = n/10;
      0004F4 75 36 0A         [24]  956 	mov	__divsint_PARM_2,#0x0a
      0004F7 75 37 00         [24]  957 	mov	(__divsint_PARM_2 + 1),#0x00
      0004FA 8B 82            [24]  958 	mov	dpl,r3
      0004FC 8C 83            [24]  959 	mov	dph,r4
      0004FE C0 02            [24]  960 	push	ar2
      000500 C0 01            [24]  961 	push	ar1
      000502 C0 00            [24]  962 	push	ar0
      000504 12 0B 96         [24]  963 	lcall	__divsint
      000507 AB 82            [24]  964 	mov	r3,dpl
      000509 AC 83            [24]  965 	mov	r4,dph
      00050B D0 00            [24]  966 	pop	ar0
      00050D D0 01            [24]  967 	pop	ar1
      00050F D0 02            [24]  968 	pop	ar2
                                    969 ;	../HAL/7_Seg.c:149: seg_no++;
      000511 08               [12]  970 	inc	r0
      000512 80 9F            [24]  971 	sjmp	00108$
      000514                        972 00110$:
                                    973 ;	../HAL/7_Seg.c:152: if(is_negative){
      000514 E9               [12]  974 	mov	a,r1
      000515 60 12            [24]  975 	jz	00113$
                                    976 ;	../HAL/7_Seg.c:153: seg_no++;
      000517 E8               [12]  977 	mov	a,r0
      000518 04               [12]  978 	inc	a
      000519 F5 1F            [12]  979 	mov	_Segment_write_number_PARM_2,a
                                    980 ;	../HAL/7_Seg.c:154: Segment_write_number(config, seg_no, dig);
      00051B 8A 20            [24]  981 	mov	_Segment_write_number_PARM_3,r2
      00051D 85 28 82         [24]  982 	mov	dpl,_Multi_Segment_write_Digits_config_65536_33
      000520 85 29 83         [24]  983 	mov	dph,(_Multi_Segment_write_Digits_config_65536_33 + 1)
      000523 85 2A F0         [24]  984 	mov	b,(_Multi_Segment_write_Digits_config_65536_33 + 2)
                                    985 ;	../HAL/7_Seg.c:157: }
      000526 02 03 74         [24]  986 	ljmp	_Segment_write_number
      000529                        987 00113$:
      000529 22               [24]  988 	ret
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
      00052A                       1001 _Segment_Write_char:
      00052A 85 82 2F         [24] 1002 	mov	_Segment_Write_char_config_65536_40,dpl
      00052D 85 83 30         [24] 1003 	mov	(_Segment_Write_char_config_65536_40 + 1),dph
      000530 85 F0 31         [24] 1004 	mov	(_Segment_Write_char_config_65536_40 + 2),b
                                   1005 ;	../HAL/7_Seg.c:161: unsigned char *g = text;
      000533 AA 2C            [24] 1006 	mov	r2,_Segment_Write_char_PARM_2
      000535 AB 2D            [24] 1007 	mov	r3,(_Segment_Write_char_PARM_2 + 1)
      000537 AC 2E            [24] 1008 	mov	r4,(_Segment_Write_char_PARM_2 + 2)
                                   1009 ;	../HAL/7_Seg.c:164: while (*g)
      000539 79 04            [12] 1010 	mov	r1,#0x04
      00053B                       1011 00105$:
      00053B 8A 82            [24] 1012 	mov	dpl,r2
      00053D 8B 83            [24] 1013 	mov	dph,r3
      00053F 8C F0            [24] 1014 	mov	b,r4
      000541 12 0B 44         [24] 1015 	lcall	__gptrget
      000544 F8               [12] 1016 	mov	r0,a
      000545 60 4D            [24] 1017 	jz	00108$
                                   1018 ;	../HAL/7_Seg.c:166: if(len <= 4 && len != 0){
      000547 E9               [12] 1019 	mov	a,r1
      000548 24 FB            [12] 1020 	add	a,#0xff - 0x04
      00054A 40 48            [24] 1021 	jc	00102$
      00054C E9               [12] 1022 	mov	a,r1
      00054D 60 45            [24] 1023 	jz	00102$
                                   1024 ;	../HAL/7_Seg.c:167: Segment_write(config, len-1, LUT(*g));
      00054F 89 07            [24] 1025 	mov	ar7,r1
      000551 1F               [12] 1026 	dec	r7
      000552 88 82            [24] 1027 	mov	dpl,r0
      000554 C0 07            [24] 1028 	push	ar7
      000556 C0 04            [24] 1029 	push	ar4
      000558 C0 03            [24] 1030 	push	ar3
      00055A C0 02            [24] 1031 	push	ar2
      00055C C0 01            [24] 1032 	push	ar1
      00055E 12 01 0E         [24] 1033 	lcall	_LUT
      000561 85 82 19         [24] 1034 	mov	_Segment_write_PARM_3,dpl
      000564 D0 01            [24] 1035 	pop	ar1
      000566 D0 02            [24] 1036 	pop	ar2
      000568 D0 03            [24] 1037 	pop	ar3
      00056A D0 04            [24] 1038 	pop	ar4
      00056C D0 07            [24] 1039 	pop	ar7
      00056E 8F 18            [24] 1040 	mov	_Segment_write_PARM_2,r7
      000570 85 2F 82         [24] 1041 	mov	dpl,_Segment_Write_char_config_65536_40
      000573 85 30 83         [24] 1042 	mov	dph,(_Segment_Write_char_config_65536_40 + 1)
      000576 85 31 F0         [24] 1043 	mov	b,(_Segment_Write_char_config_65536_40 + 2)
      000579 C0 04            [24] 1044 	push	ar4
      00057B C0 03            [24] 1045 	push	ar3
      00057D C0 02            [24] 1046 	push	ar2
      00057F C0 01            [24] 1047 	push	ar1
      000581 12 02 9B         [24] 1048 	lcall	_Segment_write
      000584 D0 01            [24] 1049 	pop	ar1
      000586 D0 02            [24] 1050 	pop	ar2
      000588 D0 03            [24] 1051 	pop	ar3
      00058A D0 04            [24] 1052 	pop	ar4
                                   1053 ;	../HAL/7_Seg.c:168: g++;
      00058C 0A               [12] 1054 	inc	r2
      00058D BA 00 01         [24] 1055 	cjne	r2,#0x00,00129$
      000590 0B               [12] 1056 	inc	r3
      000591                       1057 00129$:
                                   1058 ;	../HAL/7_Seg.c:169: len--;
      000591 19               [12] 1059 	dec	r1
      000592 80 A7            [24] 1060 	sjmp	00105$
      000594                       1061 00102$:
                                   1062 ;	../HAL/7_Seg.c:171: return;
      000594                       1063 00108$:
                                   1064 ;	../HAL/7_Seg.c:177: }
      000594 22               [24] 1065 	ret
                                   1066 	.area CSEG    (CODE)
                                   1067 	.area CONST   (CODE)
      000BD2                       1068 _seg_digit_map:
      000BD2 3F                    1069 	.db #0x3f	; 63
      000BD3 06                    1070 	.db #0x06	; 6
      000BD4 5B                    1071 	.db #0x5b	; 91
      000BD5 4F                    1072 	.db #0x4f	; 79	'O'
      000BD6 66                    1073 	.db #0x66	; 102	'f'
      000BD7 6D                    1074 	.db #0x6d	; 109	'm'
      000BD8 7D                    1075 	.db #0x7d	; 125
      000BD9 07                    1076 	.db #0x07	; 7
      000BDA 7F                    1077 	.db #0x7f	; 127
      000BDB 6F                    1078 	.db #0x6f	; 111	'o'
      000BDC 80                    1079 	.db #0x80	; 128
                                   1080 	.area XINIT   (CODE)
                                   1081 	.area CABS    (ABS,CODE)
