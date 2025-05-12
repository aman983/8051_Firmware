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
      00000E                         45 _Seg_port:
      00000E                         46 	.ds 3
      000011                         47 _Seg_en_Port:
      000011                         48 	.ds 3
      000014                         49 _Segment_write_PARM_2:
      000014                         50 	.ds 1
      000015                         51 _Segment_write_PARM_3:
      000015                         52 	.ds 1
      000016                         53 _Segment_write_config_65536_17:
      000016                         54 	.ds 3
      000019                         55 _Segment_write_i_131072_19:
      000019                         56 	.ds 1
      00001A                         57 _Segment_write_i_131072_23:
      00001A                         58 	.ds 1
      00001B                         59 _Segment_write_number_PARM_2:
      00001B                         60 	.ds 1
      00001C                         61 _Segment_write_number_PARM_3:
      00001C                         62 	.ds 1
      00001D                         63 _Segment_write_number_config_65536_25:
      00001D                         64 	.ds 3
      000020                         65 _Segment_write_number_i_131072_27:
      000020                         66 	.ds 1
      000021                         67 _Segment_write_number_i_131072_31:
      000021                         68 	.ds 1
      000022                         69 _Multi_Segment_write_Digits_PARM_2:
      000022                         70 	.ds 2
      000024                         71 _Multi_Segment_write_Digits_config_65536_33:
      000024                         72 	.ds 3
      000027                         73 _Multi_Segment_write_Digits_is_negative_65536_34:
      000027                         74 	.ds 1
      000028                         75 _Segment_Write_char_PARM_2:
      000028                         76 	.ds 3
      00002B                         77 _Segment_Write_char_config_65536_40:
      00002B                         78 	.ds 3
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
      000097                        148 _LUT:
                           000007   149 	ar7 = 0x07
                           000006   150 	ar6 = 0x06
                           000005   151 	ar5 = 0x05
                           000004   152 	ar4 = 0x04
                           000003   153 	ar3 = 0x03
                           000002   154 	ar2 = 0x02
                           000001   155 	ar1 = 0x01
                           000000   156 	ar0 = 0x00
      000097 AF 82            [24]  157 	mov	r7,dpl
                                    158 ;	../HAL/7_Seg.c:10: switch (c) {
      000099 BF 20 00         [24]  159 	cjne	r7,#0x20,00169$
      00009C                        160 00169$:
      00009C 50 03            [24]  161 	jnc	00170$
      00009E 02 01 FC         [24]  162 	ljmp	00157$
      0000A1                        163 00170$:
      0000A1 EF               [12]  164 	mov	a,r7
      0000A2 24 85            [12]  165 	add	a,#0xff - 0x7a
      0000A4 50 03            [24]  166 	jnc	00171$
      0000A6 02 01 FC         [24]  167 	ljmp	00157$
      0000A9                        168 00171$:
      0000A9 EF               [12]  169 	mov	a,r7
      0000AA 24 E0            [12]  170 	add	a,#0xe0
      0000AC FF               [12]  171 	mov	r7,a
      0000AD 24 0A            [12]  172 	add	a,#(00172$-3-.)
      0000AF 83               [24]  173 	movc	a,@a+pc
      0000B0 F5 82            [12]  174 	mov	dpl,a
      0000B2 EF               [12]  175 	mov	a,r7
      0000B3 24 5F            [12]  176 	add	a,#(00173$-3-.)
      0000B5 83               [24]  177 	movc	a,@a+pc
      0000B6 F5 83            [12]  178 	mov	dph,a
      0000B8 E4               [12]  179 	clr	a
      0000B9 73               [24]  180 	jmp	@a+dptr
      0000BA                        181 00172$:
      0000BA F8                     182 	.db	00156$
      0000BB FC                     183 	.db	00157$
      0000BC FC                     184 	.db	00157$
      0000BD FC                     185 	.db	00157$
      0000BE FC                     186 	.db	00157$
      0000BF FC                     187 	.db	00157$
      0000C0 FC                     188 	.db	00157$
      0000C1 FC                     189 	.db	00157$
      0000C2 FC                     190 	.db	00157$
      0000C3 FC                     191 	.db	00157$
      0000C4 FC                     192 	.db	00157$
      0000C5 FC                     193 	.db	00157$
      0000C6 FC                     194 	.db	00157$
      0000C7 EC                     195 	.db	00153$
      0000C8 FC                     196 	.db	00157$
      0000C9 FC                     197 	.db	00157$
      0000CA 70                     198 	.db	00101$
      0000CB 74                     199 	.db	00102$
      0000CC 78                     200 	.db	00103$
      0000CD 7C                     201 	.db	00104$
      0000CE 80                     202 	.db	00105$
      0000CF 84                     203 	.db	00106$
      0000D0 88                     204 	.db	00107$
      0000D1 8C                     205 	.db	00108$
      0000D2 90                     206 	.db	00109$
      0000D3 94                     207 	.db	00110$
      0000D4 FC                     208 	.db	00157$
      0000D5 FC                     209 	.db	00157$
      0000D6 FC                     210 	.db	00157$
      0000D7 F4                     211 	.db	00155$
      0000D8 FC                     212 	.db	00157$
      0000D9 FC                     213 	.db	00157$
      0000DA FC                     214 	.db	00157$
      0000DB 98                     215 	.db	00112$
      0000DC 9C                     216 	.db	00114$
      0000DD A0                     217 	.db	00116$
      0000DE A4                     218 	.db	00118$
      0000DF A8                     219 	.db	00120$
      0000E0 AC                     220 	.db	00122$
      0000E1 B0                     221 	.db	00124$
      0000E2 B4                     222 	.db	00126$
      0000E3 B8                     223 	.db	00128$
      0000E4 BC                     224 	.db	00130$
      0000E5 FC                     225 	.db	00157$
      0000E6 C0                     226 	.db	00132$
      0000E7 FC                     227 	.db	00157$
      0000E8 C4                     228 	.db	00134$
      0000E9 C8                     229 	.db	00136$
      0000EA CC                     230 	.db	00138$
      0000EB D0                     231 	.db	00140$
      0000EC D4                     232 	.db	00142$
      0000ED D8                     233 	.db	00144$
      0000EE DC                     234 	.db	00146$
      0000EF E0                     235 	.db	00148$
      0000F0 FC                     236 	.db	00157$
      0000F1 FC                     237 	.db	00157$
      0000F2 FC                     238 	.db	00157$
      0000F3 E4                     239 	.db	00150$
      0000F4 E8                     240 	.db	00152$
      0000F5 FC                     241 	.db	00157$
      0000F6 FC                     242 	.db	00157$
      0000F7 FC                     243 	.db	00157$
      0000F8 FC                     244 	.db	00157$
      0000F9 F0                     245 	.db	00154$
      0000FA FC                     246 	.db	00157$
      0000FB 98                     247 	.db	00112$
      0000FC 9C                     248 	.db	00114$
      0000FD A0                     249 	.db	00116$
      0000FE A4                     250 	.db	00118$
      0000FF A8                     251 	.db	00120$
      000100 AC                     252 	.db	00122$
      000101 B0                     253 	.db	00124$
      000102 B4                     254 	.db	00126$
      000103 B8                     255 	.db	00128$
      000104 BC                     256 	.db	00130$
      000105 FC                     257 	.db	00157$
      000106 C0                     258 	.db	00132$
      000107 FC                     259 	.db	00157$
      000108 C4                     260 	.db	00134$
      000109 C8                     261 	.db	00136$
      00010A CC                     262 	.db	00138$
      00010B D0                     263 	.db	00140$
      00010C D4                     264 	.db	00142$
      00010D D8                     265 	.db	00144$
      00010E DC                     266 	.db	00146$
      00010F E0                     267 	.db	00148$
      000110 FC                     268 	.db	00157$
      000111 FC                     269 	.db	00157$
      000112 FC                     270 	.db	00157$
      000113 E4                     271 	.db	00150$
      000114 E8                     272 	.db	00152$
      000115                        273 00173$:
      000115 01                     274 	.db	00156$>>8
      000116 01                     275 	.db	00157$>>8
      000117 01                     276 	.db	00157$>>8
      000118 01                     277 	.db	00157$>>8
      000119 01                     278 	.db	00157$>>8
      00011A 01                     279 	.db	00157$>>8
      00011B 01                     280 	.db	00157$>>8
      00011C 01                     281 	.db	00157$>>8
      00011D 01                     282 	.db	00157$>>8
      00011E 01                     283 	.db	00157$>>8
      00011F 01                     284 	.db	00157$>>8
      000120 01                     285 	.db	00157$>>8
      000121 01                     286 	.db	00157$>>8
      000122 01                     287 	.db	00153$>>8
      000123 01                     288 	.db	00157$>>8
      000124 01                     289 	.db	00157$>>8
      000125 01                     290 	.db	00101$>>8
      000126 01                     291 	.db	00102$>>8
      000127 01                     292 	.db	00103$>>8
      000128 01                     293 	.db	00104$>>8
      000129 01                     294 	.db	00105$>>8
      00012A 01                     295 	.db	00106$>>8
      00012B 01                     296 	.db	00107$>>8
      00012C 01                     297 	.db	00108$>>8
      00012D 01                     298 	.db	00109$>>8
      00012E 01                     299 	.db	00110$>>8
      00012F 01                     300 	.db	00157$>>8
      000130 01                     301 	.db	00157$>>8
      000131 01                     302 	.db	00157$>>8
      000132 01                     303 	.db	00155$>>8
      000133 01                     304 	.db	00157$>>8
      000134 01                     305 	.db	00157$>>8
      000135 01                     306 	.db	00157$>>8
      000136 01                     307 	.db	00112$>>8
      000137 01                     308 	.db	00114$>>8
      000138 01                     309 	.db	00116$>>8
      000139 01                     310 	.db	00118$>>8
      00013A 01                     311 	.db	00120$>>8
      00013B 01                     312 	.db	00122$>>8
      00013C 01                     313 	.db	00124$>>8
      00013D 01                     314 	.db	00126$>>8
      00013E 01                     315 	.db	00128$>>8
      00013F 01                     316 	.db	00130$>>8
      000140 01                     317 	.db	00157$>>8
      000141 01                     318 	.db	00132$>>8
      000142 01                     319 	.db	00157$>>8
      000143 01                     320 	.db	00134$>>8
      000144 01                     321 	.db	00136$>>8
      000145 01                     322 	.db	00138$>>8
      000146 01                     323 	.db	00140$>>8
      000147 01                     324 	.db	00142$>>8
      000148 01                     325 	.db	00144$>>8
      000149 01                     326 	.db	00146$>>8
      00014A 01                     327 	.db	00148$>>8
      00014B 01                     328 	.db	00157$>>8
      00014C 01                     329 	.db	00157$>>8
      00014D 01                     330 	.db	00157$>>8
      00014E 01                     331 	.db	00150$>>8
      00014F 01                     332 	.db	00152$>>8
      000150 01                     333 	.db	00157$>>8
      000151 01                     334 	.db	00157$>>8
      000152 01                     335 	.db	00157$>>8
      000153 01                     336 	.db	00157$>>8
      000154 01                     337 	.db	00154$>>8
      000155 01                     338 	.db	00157$>>8
      000156 01                     339 	.db	00112$>>8
      000157 01                     340 	.db	00114$>>8
      000158 01                     341 	.db	00116$>>8
      000159 01                     342 	.db	00118$>>8
      00015A 01                     343 	.db	00120$>>8
      00015B 01                     344 	.db	00122$>>8
      00015C 01                     345 	.db	00124$>>8
      00015D 01                     346 	.db	00126$>>8
      00015E 01                     347 	.db	00128$>>8
      00015F 01                     348 	.db	00130$>>8
      000160 01                     349 	.db	00157$>>8
      000161 01                     350 	.db	00132$>>8
      000162 01                     351 	.db	00157$>>8
      000163 01                     352 	.db	00134$>>8
      000164 01                     353 	.db	00136$>>8
      000165 01                     354 	.db	00138$>>8
      000166 01                     355 	.db	00140$>>8
      000167 01                     356 	.db	00142$>>8
      000168 01                     357 	.db	00144$>>8
      000169 01                     358 	.db	00146$>>8
      00016A 01                     359 	.db	00148$>>8
      00016B 01                     360 	.db	00157$>>8
      00016C 01                     361 	.db	00157$>>8
      00016D 01                     362 	.db	00157$>>8
      00016E 01                     363 	.db	00150$>>8
      00016F 01                     364 	.db	00152$>>8
                                    365 ;	../HAL/7_Seg.c:12: case '0': return 0x3F;
      000170                        366 00101$:
      000170 75 82 3F         [24]  367 	mov	dpl,#0x3f
      000173 22               [24]  368 	ret
                                    369 ;	../HAL/7_Seg.c:13: case '1': return 0x06;
      000174                        370 00102$:
      000174 75 82 06         [24]  371 	mov	dpl,#0x06
      000177 22               [24]  372 	ret
                                    373 ;	../HAL/7_Seg.c:14: case '2': return 0x5B;
      000178                        374 00103$:
      000178 75 82 5B         [24]  375 	mov	dpl,#0x5b
      00017B 22               [24]  376 	ret
                                    377 ;	../HAL/7_Seg.c:15: case '3': return 0x4F;
      00017C                        378 00104$:
      00017C 75 82 4F         [24]  379 	mov	dpl,#0x4f
      00017F 22               [24]  380 	ret
                                    381 ;	../HAL/7_Seg.c:16: case '4': return 0x66;
      000180                        382 00105$:
      000180 75 82 66         [24]  383 	mov	dpl,#0x66
      000183 22               [24]  384 	ret
                                    385 ;	../HAL/7_Seg.c:17: case '5': return 0x6D;
      000184                        386 00106$:
      000184 75 82 6D         [24]  387 	mov	dpl,#0x6d
      000187 22               [24]  388 	ret
                                    389 ;	../HAL/7_Seg.c:18: case '6': return 0x7D;
      000188                        390 00107$:
      000188 75 82 7D         [24]  391 	mov	dpl,#0x7d
      00018B 22               [24]  392 	ret
                                    393 ;	../HAL/7_Seg.c:19: case '7': return 0x07;
      00018C                        394 00108$:
      00018C 75 82 07         [24]  395 	mov	dpl,#0x07
      00018F 22               [24]  396 	ret
                                    397 ;	../HAL/7_Seg.c:20: case '8': return 0x7F;
      000190                        398 00109$:
      000190 75 82 7F         [24]  399 	mov	dpl,#0x7f
      000193 22               [24]  400 	ret
                                    401 ;	../HAL/7_Seg.c:21: case '9': return 0x6F;
      000194                        402 00110$:
      000194 75 82 6F         [24]  403 	mov	dpl,#0x6f
      000197 22               [24]  404 	ret
                                    405 ;	../HAL/7_Seg.c:24: case 'A': case 'a': return 0x77;
      000198                        406 00112$:
      000198 75 82 77         [24]  407 	mov	dpl,#0x77
      00019B 22               [24]  408 	ret
                                    409 ;	../HAL/7_Seg.c:25: case 'B': case 'b': return 0x7C;
      00019C                        410 00114$:
      00019C 75 82 7C         [24]  411 	mov	dpl,#0x7c
      00019F 22               [24]  412 	ret
                                    413 ;	../HAL/7_Seg.c:26: case 'C': case 'c': return 0x39;
      0001A0                        414 00116$:
      0001A0 75 82 39         [24]  415 	mov	dpl,#0x39
      0001A3 22               [24]  416 	ret
                                    417 ;	../HAL/7_Seg.c:27: case 'D': case 'd': return 0x5E;
      0001A4                        418 00118$:
      0001A4 75 82 5E         [24]  419 	mov	dpl,#0x5e
      0001A7 22               [24]  420 	ret
                                    421 ;	../HAL/7_Seg.c:28: case 'E': case 'e': return 0x79;
      0001A8                        422 00120$:
      0001A8 75 82 79         [24]  423 	mov	dpl,#0x79
                                    424 ;	../HAL/7_Seg.c:29: case 'F': case 'f': return 0x71;
      0001AB 22               [24]  425 	ret
      0001AC                        426 00122$:
      0001AC 75 82 71         [24]  427 	mov	dpl,#0x71
                                    428 ;	../HAL/7_Seg.c:30: case 'G': case 'g': return 0x3D;
      0001AF 22               [24]  429 	ret
      0001B0                        430 00124$:
      0001B0 75 82 3D         [24]  431 	mov	dpl,#0x3d
                                    432 ;	../HAL/7_Seg.c:31: case 'H': case 'h': return 0x76;
      0001B3 22               [24]  433 	ret
      0001B4                        434 00126$:
      0001B4 75 82 76         [24]  435 	mov	dpl,#0x76
                                    436 ;	../HAL/7_Seg.c:32: case 'I': case 'i': return 0x06;
      0001B7 22               [24]  437 	ret
      0001B8                        438 00128$:
      0001B8 75 82 06         [24]  439 	mov	dpl,#0x06
                                    440 ;	../HAL/7_Seg.c:33: case 'J': case 'j': return 0x1E;
      0001BB 22               [24]  441 	ret
      0001BC                        442 00130$:
      0001BC 75 82 1E         [24]  443 	mov	dpl,#0x1e
                                    444 ;	../HAL/7_Seg.c:34: case 'L': case 'l': return 0x38;
      0001BF 22               [24]  445 	ret
      0001C0                        446 00132$:
      0001C0 75 82 38         [24]  447 	mov	dpl,#0x38
                                    448 ;	../HAL/7_Seg.c:35: case 'N': case 'n': return 0x54;
      0001C3 22               [24]  449 	ret
      0001C4                        450 00134$:
      0001C4 75 82 54         [24]  451 	mov	dpl,#0x54
                                    452 ;	../HAL/7_Seg.c:36: case 'O': case 'o': return 0x3F;
      0001C7 22               [24]  453 	ret
      0001C8                        454 00136$:
      0001C8 75 82 3F         [24]  455 	mov	dpl,#0x3f
                                    456 ;	../HAL/7_Seg.c:37: case 'P': case 'p': return 0x73;
      0001CB 22               [24]  457 	ret
      0001CC                        458 00138$:
      0001CC 75 82 73         [24]  459 	mov	dpl,#0x73
                                    460 ;	../HAL/7_Seg.c:38: case 'Q': case 'q': return 0x67;
      0001CF 22               [24]  461 	ret
      0001D0                        462 00140$:
      0001D0 75 82 67         [24]  463 	mov	dpl,#0x67
                                    464 ;	../HAL/7_Seg.c:39: case 'R': case 'r': return 0x50;
      0001D3 22               [24]  465 	ret
      0001D4                        466 00142$:
      0001D4 75 82 50         [24]  467 	mov	dpl,#0x50
                                    468 ;	../HAL/7_Seg.c:40: case 'S': case 's': return 0x6D;
      0001D7 22               [24]  469 	ret
      0001D8                        470 00144$:
      0001D8 75 82 6D         [24]  471 	mov	dpl,#0x6d
                                    472 ;	../HAL/7_Seg.c:41: case 'T': case 't': return 0x78;
      0001DB 22               [24]  473 	ret
      0001DC                        474 00146$:
      0001DC 75 82 78         [24]  475 	mov	dpl,#0x78
                                    476 ;	../HAL/7_Seg.c:42: case 'U': case 'u': return 0x3E;
      0001DF 22               [24]  477 	ret
      0001E0                        478 00148$:
      0001E0 75 82 3E         [24]  479 	mov	dpl,#0x3e
                                    480 ;	../HAL/7_Seg.c:43: case 'Y': case 'y': return 0x6E;
      0001E3 22               [24]  481 	ret
      0001E4                        482 00150$:
      0001E4 75 82 6E         [24]  483 	mov	dpl,#0x6e
                                    484 ;	../HAL/7_Seg.c:44: case 'Z': case 'z': return 0x5B;
      0001E7 22               [24]  485 	ret
      0001E8                        486 00152$:
      0001E8 75 82 5B         [24]  487 	mov	dpl,#0x5b
                                    488 ;	../HAL/7_Seg.c:47: case '-': return 0x40;
      0001EB 22               [24]  489 	ret
      0001EC                        490 00153$:
      0001EC 75 82 40         [24]  491 	mov	dpl,#0x40
                                    492 ;	../HAL/7_Seg.c:48: case '_': return 0x08;
      0001EF 22               [24]  493 	ret
      0001F0                        494 00154$:
      0001F0 75 82 08         [24]  495 	mov	dpl,#0x08
                                    496 ;	../HAL/7_Seg.c:49: case '=': return 0x48;
      0001F3 22               [24]  497 	ret
      0001F4                        498 00155$:
      0001F4 75 82 48         [24]  499 	mov	dpl,#0x48
                                    500 ;	../HAL/7_Seg.c:50: case ' ': return 0x00;
      0001F7 22               [24]  501 	ret
      0001F8                        502 00156$:
      0001F8 75 82 00         [24]  503 	mov	dpl,#0x00
                                    504 ;	../HAL/7_Seg.c:52: default: return 0x00;  // Blank for unsupported characters
      0001FB 22               [24]  505 	ret
      0001FC                        506 00157$:
      0001FC 75 82 00         [24]  507 	mov	dpl,#0x00
                                    508 ;	../HAL/7_Seg.c:53: }
                                    509 ;	../HAL/7_Seg.c:54: }
      0001FF 22               [24]  510 	ret
                                    511 ;------------------------------------------------------------
                                    512 ;Allocation info for local variables in function 'Segment_Init'
                                    513 ;------------------------------------------------------------
                                    514 ;config                    Allocated to registers r5 r6 r7 
                                    515 ;------------------------------------------------------------
                                    516 ;	../HAL/7_Seg.c:72: void Segment_Init(Seg_config_t *config){
                                    517 ;	-----------------------------------------
                                    518 ;	 function Segment_Init
                                    519 ;	-----------------------------------------
      000200                        520 _Segment_Init:
                                    521 ;	../HAL/7_Seg.c:73: Seg_port.Port = config->Segment_Port;
      000200 AD 82            [24]  522 	mov	r5,dpl
      000202 AE 83            [24]  523 	mov	r6,dph
      000204 AF F0            [24]  524 	mov	r7,b
      000206 12 0A CD         [24]  525 	lcall	__gptrget
      000209 FC               [12]  526 	mov	r4,a
      00020A 8C 0E            [24]  527 	mov	_Seg_port,r4
                                    528 ;	../HAL/7_Seg.c:74: Seg_port.Mode = GPIO_OUTPUT;
      00020C 75 10 00         [24]  529 	mov	(_Seg_port + 0x0002),#0x00
                                    530 ;	../HAL/7_Seg.c:76: Seg_en_Port.Port = config->Seg_Enable_Port;
      00020F 0D               [12]  531 	inc	r5
      000210 BD 00 01         [24]  532 	cjne	r5,#0x00,00103$
      000213 0E               [12]  533 	inc	r6
      000214                        534 00103$:
      000214 8D 82            [24]  535 	mov	dpl,r5
      000216 8E 83            [24]  536 	mov	dph,r6
      000218 8F F0            [24]  537 	mov	b,r7
      00021A 12 0A CD         [24]  538 	lcall	__gptrget
      00021D FD               [12]  539 	mov	r5,a
      00021E 8D 11            [24]  540 	mov	_Seg_en_Port,r5
                                    541 ;	../HAL/7_Seg.c:77: Seg_en_Port.Mode = GPIO_OUTPUT;
      000220 75 13 00         [24]  542 	mov	(_Seg_en_Port + 0x0002),#0x00
                                    543 ;	../HAL/7_Seg.c:78: }
      000223 22               [24]  544 	ret
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
      000224                        558 _Segment_write:
      000224 85 82 16         [24]  559 	mov	_Segment_write_config_65536_17,dpl
      000227 85 83 17         [24]  560 	mov	(_Segment_write_config_65536_17 + 1),dph
      00022A 85 F0 18         [24]  561 	mov	(_Segment_write_config_65536_17 + 2),b
                                    562 ;	../HAL/7_Seg.c:83: for(unsigned char i =0; i<4; i++){
      00022D 74 02            [12]  563 	mov	a,#0x02
      00022F 25 16            [12]  564 	add	a,_Segment_write_config_65536_17
      000231 FA               [12]  565 	mov	r2,a
      000232 E4               [12]  566 	clr	a
      000233 35 17            [12]  567 	addc	a,(_Segment_write_config_65536_17 + 1)
      000235 FB               [12]  568 	mov	r3,a
      000236 AC 18            [24]  569 	mov	r4,(_Segment_write_config_65536_17 + 2)
      000238 75 19 00         [24]  570 	mov	_Segment_write_i_131072_19,#0x00
      00023B                        571 00107$:
      00023B 74 FC            [12]  572 	mov	a,#0x100 - 0x04
      00023D 25 19            [12]  573 	add	a,_Segment_write_i_131072_19
      00023F 40 31            [24]  574 	jc	00101$
                                    575 ;	../HAL/7_Seg.c:84: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      000241 E5 19            [12]  576 	mov	a,_Segment_write_i_131072_19
      000243 2A               [12]  577 	add	a,r2
      000244 FD               [12]  578 	mov	r5,a
      000245 E4               [12]  579 	clr	a
      000246 3B               [12]  580 	addc	a,r3
      000247 FE               [12]  581 	mov	r6,a
      000248 8C 07            [24]  582 	mov	ar7,r4
      00024A 8D 82            [24]  583 	mov	dpl,r5
      00024C 8E 83            [24]  584 	mov	dph,r6
      00024E 8F F0            [24]  585 	mov	b,r7
      000250 12 0A CD         [24]  586 	lcall	__gptrget
      000253 FD               [12]  587 	mov	r5,a
      000254 8D 12            [24]  588 	mov	(_Seg_en_Port + 0x0001),r5
                                    589 ;	../HAL/7_Seg.c:85: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      000256 75 32 00         [24]  590 	mov	_GPIO_Write_PARM_2,#0x00
      000259 90 00 11         [24]  591 	mov	dptr,#_Seg_en_Port
      00025C 75 F0 40         [24]  592 	mov	b,#0x40
      00025F C0 04            [24]  593 	push	ar4
      000261 C0 03            [24]  594 	push	ar3
      000263 C0 02            [24]  595 	push	ar2
      000265 12 05 7A         [24]  596 	lcall	_GPIO_Write
      000268 D0 02            [24]  597 	pop	ar2
      00026A D0 03            [24]  598 	pop	ar3
      00026C D0 04            [24]  599 	pop	ar4
                                    600 ;	../HAL/7_Seg.c:83: for(unsigned char i =0; i<4; i++){
      00026E 05 19            [12]  601 	inc	_Segment_write_i_131072_19
      000270 80 C9            [24]  602 	sjmp	00107$
      000272                        603 00101$:
                                    604 ;	../HAL/7_Seg.c:87: GPIO_PORT_Write(&Seg_port,  val);
      000272 85 15 32         [24]  605 	mov	_GPIO_PORT_Write_PARM_2,_Segment_write_PARM_3
      000275 90 00 0E         [24]  606 	mov	dptr,#_Seg_port
      000278 75 F0 40         [24]  607 	mov	b,#0x40
      00027B 12 09 98         [24]  608 	lcall	_GPIO_PORT_Write
                                    609 ;	../HAL/7_Seg.c:88: if(display_number < 4){
      00027E 74 FC            [12]  610 	mov	a,#0x100 - 0x04
      000280 25 14            [12]  611 	add	a,_Segment_write_PARM_2
      000282 40 2C            [24]  612 	jc	00103$
                                    613 ;	../HAL/7_Seg.c:89: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
      000284 74 02            [12]  614 	mov	a,#0x02
      000286 25 16            [12]  615 	add	a,_Segment_write_config_65536_17
      000288 FD               [12]  616 	mov	r5,a
      000289 E4               [12]  617 	clr	a
      00028A 35 17            [12]  618 	addc	a,(_Segment_write_config_65536_17 + 1)
      00028C FE               [12]  619 	mov	r6,a
      00028D AF 18            [24]  620 	mov	r7,(_Segment_write_config_65536_17 + 2)
      00028F E5 14            [12]  621 	mov	a,_Segment_write_PARM_2
      000291 2D               [12]  622 	add	a,r5
      000292 FD               [12]  623 	mov	r5,a
      000293 E4               [12]  624 	clr	a
      000294 3E               [12]  625 	addc	a,r6
      000295 FE               [12]  626 	mov	r6,a
      000296 8D 82            [24]  627 	mov	dpl,r5
      000298 8E 83            [24]  628 	mov	dph,r6
      00029A 8F F0            [24]  629 	mov	b,r7
      00029C 12 0A CD         [24]  630 	lcall	__gptrget
      00029F FD               [12]  631 	mov	r5,a
      0002A0 8D 12            [24]  632 	mov	(_Seg_en_Port + 0x0001),r5
                                    633 ;	../HAL/7_Seg.c:90: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
      0002A2 75 32 01         [24]  634 	mov	_GPIO_Write_PARM_2,#0x01
      0002A5 90 00 11         [24]  635 	mov	dptr,#_Seg_en_Port
      0002A8 75 F0 40         [24]  636 	mov	b,#0x40
      0002AB 12 05 7A         [24]  637 	lcall	_GPIO_Write
      0002AE 80 01            [24]  638 	sjmp	00104$
      0002B0                        639 00103$:
                                    640 ;	../HAL/7_Seg.c:92: return;
      0002B0 22               [24]  641 	ret
      0002B1                        642 00104$:
                                    643 ;	../HAL/7_Seg.c:94: Tim_delay_ms(1);
      0002B1 90 00 01         [24]  644 	mov	dptr,#0x0001
      0002B4 12 05 51         [24]  645 	lcall	_Tim_delay_ms
                                    646 ;	../HAL/7_Seg.c:96: for(unsigned char i =0; i<4; i++){
      0002B7 74 02            [12]  647 	mov	a,#0x02
      0002B9 25 16            [12]  648 	add	a,_Segment_write_config_65536_17
      0002BB FD               [12]  649 	mov	r5,a
      0002BC E4               [12]  650 	clr	a
      0002BD 35 17            [12]  651 	addc	a,(_Segment_write_config_65536_17 + 1)
      0002BF FE               [12]  652 	mov	r6,a
      0002C0 AF 18            [24]  653 	mov	r7,(_Segment_write_config_65536_17 + 2)
      0002C2 75 1A 00         [24]  654 	mov	_Segment_write_i_131072_23,#0x00
      0002C5                        655 00110$:
      0002C5 74 FC            [12]  656 	mov	a,#0x100 - 0x04
      0002C7 25 1A            [12]  657 	add	a,_Segment_write_i_131072_23
      0002C9 40 31            [24]  658 	jc	00112$
                                    659 ;	../HAL/7_Seg.c:97: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      0002CB E5 1A            [12]  660 	mov	a,_Segment_write_i_131072_23
      0002CD 2D               [12]  661 	add	a,r5
      0002CE FA               [12]  662 	mov	r2,a
      0002CF E4               [12]  663 	clr	a
      0002D0 3E               [12]  664 	addc	a,r6
      0002D1 FB               [12]  665 	mov	r3,a
      0002D2 8F 04            [24]  666 	mov	ar4,r7
      0002D4 8A 82            [24]  667 	mov	dpl,r2
      0002D6 8B 83            [24]  668 	mov	dph,r3
      0002D8 8C F0            [24]  669 	mov	b,r4
      0002DA 12 0A CD         [24]  670 	lcall	__gptrget
      0002DD FA               [12]  671 	mov	r2,a
      0002DE 8A 12            [24]  672 	mov	(_Seg_en_Port + 0x0001),r2
                                    673 ;	../HAL/7_Seg.c:98: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      0002E0 75 32 00         [24]  674 	mov	_GPIO_Write_PARM_2,#0x00
      0002E3 90 00 11         [24]  675 	mov	dptr,#_Seg_en_Port
      0002E6 75 F0 40         [24]  676 	mov	b,#0x40
      0002E9 C0 07            [24]  677 	push	ar7
      0002EB C0 06            [24]  678 	push	ar6
      0002ED C0 05            [24]  679 	push	ar5
      0002EF 12 05 7A         [24]  680 	lcall	_GPIO_Write
      0002F2 D0 05            [24]  681 	pop	ar5
      0002F4 D0 06            [24]  682 	pop	ar6
      0002F6 D0 07            [24]  683 	pop	ar7
                                    684 ;	../HAL/7_Seg.c:96: for(unsigned char i =0; i<4; i++){
      0002F8 05 1A            [12]  685 	inc	_Segment_write_i_131072_23
      0002FA 80 C9            [24]  686 	sjmp	00110$
      0002FC                        687 00112$:
                                    688 ;	../HAL/7_Seg.c:100: }
      0002FC 22               [24]  689 	ret
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
      0002FD                        703 _Segment_write_number:
      0002FD 85 82 1D         [24]  704 	mov	_Segment_write_number_config_65536_25,dpl
      000300 85 83 1E         [24]  705 	mov	(_Segment_write_number_config_65536_25 + 1),dph
      000303 85 F0 1F         [24]  706 	mov	(_Segment_write_number_config_65536_25 + 2),b
                                    707 ;	../HAL/7_Seg.c:106: for(unsigned char i =0; i<4; i++){
      000306 74 02            [12]  708 	mov	a,#0x02
      000308 25 1D            [12]  709 	add	a,_Segment_write_number_config_65536_25
      00030A FA               [12]  710 	mov	r2,a
      00030B E4               [12]  711 	clr	a
      00030C 35 1E            [12]  712 	addc	a,(_Segment_write_number_config_65536_25 + 1)
      00030E FB               [12]  713 	mov	r3,a
      00030F AC 1F            [24]  714 	mov	r4,(_Segment_write_number_config_65536_25 + 2)
      000311 75 20 00         [24]  715 	mov	_Segment_write_number_i_131072_27,#0x00
      000314                        716 00107$:
      000314 74 FC            [12]  717 	mov	a,#0x100 - 0x04
      000316 25 20            [12]  718 	add	a,_Segment_write_number_i_131072_27
      000318 40 31            [24]  719 	jc	00101$
                                    720 ;	../HAL/7_Seg.c:107: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      00031A E5 20            [12]  721 	mov	a,_Segment_write_number_i_131072_27
      00031C 2A               [12]  722 	add	a,r2
      00031D FD               [12]  723 	mov	r5,a
      00031E E4               [12]  724 	clr	a
      00031F 3B               [12]  725 	addc	a,r3
      000320 FE               [12]  726 	mov	r6,a
      000321 8C 07            [24]  727 	mov	ar7,r4
      000323 8D 82            [24]  728 	mov	dpl,r5
      000325 8E 83            [24]  729 	mov	dph,r6
      000327 8F F0            [24]  730 	mov	b,r7
      000329 12 0A CD         [24]  731 	lcall	__gptrget
      00032C FD               [12]  732 	mov	r5,a
      00032D 8D 12            [24]  733 	mov	(_Seg_en_Port + 0x0001),r5
                                    734 ;	../HAL/7_Seg.c:108: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      00032F 75 32 00         [24]  735 	mov	_GPIO_Write_PARM_2,#0x00
      000332 90 00 11         [24]  736 	mov	dptr,#_Seg_en_Port
      000335 75 F0 40         [24]  737 	mov	b,#0x40
      000338 C0 04            [24]  738 	push	ar4
      00033A C0 03            [24]  739 	push	ar3
      00033C C0 02            [24]  740 	push	ar2
      00033E 12 05 7A         [24]  741 	lcall	_GPIO_Write
      000341 D0 02            [24]  742 	pop	ar2
      000343 D0 03            [24]  743 	pop	ar3
      000345 D0 04            [24]  744 	pop	ar4
                                    745 ;	../HAL/7_Seg.c:106: for(unsigned char i =0; i<4; i++){
      000347 05 20            [12]  746 	inc	_Segment_write_number_i_131072_27
      000349 80 C9            [24]  747 	sjmp	00107$
      00034B                        748 00101$:
                                    749 ;	../HAL/7_Seg.c:110: GPIO_PORT_Write(&Seg_port,  seg_digit_map[number % 10]);
      00034B AE 1C            [24]  750 	mov	r6,_Segment_write_number_PARM_3
      00034D 7F 00            [12]  751 	mov	r7,#0x00
      00034F 75 32 0A         [24]  752 	mov	__modsint_PARM_2,#0x0a
                                    753 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000352 8F 33            [24]  754 	mov	(__modsint_PARM_2 + 1),r7
      000354 8E 82            [24]  755 	mov	dpl,r6
      000356 8F 83            [24]  756 	mov	dph,r7
      000358 12 0A E9         [24]  757 	lcall	__modsint
      00035B AE 82            [24]  758 	mov	r6,dpl
      00035D AF 83            [24]  759 	mov	r7,dph
      00035F EE               [12]  760 	mov	a,r6
      000360 24 5B            [12]  761 	add	a,#_seg_digit_map
      000362 F5 82            [12]  762 	mov	dpl,a
      000364 EF               [12]  763 	mov	a,r7
      000365 34 0B            [12]  764 	addc	a,#(_seg_digit_map >> 8)
      000367 F5 83            [12]  765 	mov	dph,a
      000369 E4               [12]  766 	clr	a
      00036A 93               [24]  767 	movc	a,@a+dptr
      00036B F5 32            [12]  768 	mov	_GPIO_PORT_Write_PARM_2,a
      00036D 90 00 0E         [24]  769 	mov	dptr,#_Seg_port
      000370 75 F0 40         [24]  770 	mov	b,#0x40
      000373 12 09 98         [24]  771 	lcall	_GPIO_PORT_Write
                                    772 ;	../HAL/7_Seg.c:111: if(display_number < 4){
      000376 74 FC            [12]  773 	mov	a,#0x100 - 0x04
      000378 25 1B            [12]  774 	add	a,_Segment_write_number_PARM_2
      00037A 40 2C            [24]  775 	jc	00103$
                                    776 ;	../HAL/7_Seg.c:112: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
      00037C 74 02            [12]  777 	mov	a,#0x02
      00037E 25 1D            [12]  778 	add	a,_Segment_write_number_config_65536_25
      000380 FD               [12]  779 	mov	r5,a
      000381 E4               [12]  780 	clr	a
      000382 35 1E            [12]  781 	addc	a,(_Segment_write_number_config_65536_25 + 1)
      000384 FE               [12]  782 	mov	r6,a
      000385 AF 1F            [24]  783 	mov	r7,(_Segment_write_number_config_65536_25 + 2)
      000387 E5 1B            [12]  784 	mov	a,_Segment_write_number_PARM_2
      000389 2D               [12]  785 	add	a,r5
      00038A FD               [12]  786 	mov	r5,a
      00038B E4               [12]  787 	clr	a
      00038C 3E               [12]  788 	addc	a,r6
      00038D FE               [12]  789 	mov	r6,a
      00038E 8D 82            [24]  790 	mov	dpl,r5
      000390 8E 83            [24]  791 	mov	dph,r6
      000392 8F F0            [24]  792 	mov	b,r7
      000394 12 0A CD         [24]  793 	lcall	__gptrget
      000397 FD               [12]  794 	mov	r5,a
      000398 8D 12            [24]  795 	mov	(_Seg_en_Port + 0x0001),r5
                                    796 ;	../HAL/7_Seg.c:113: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
      00039A 75 32 01         [24]  797 	mov	_GPIO_Write_PARM_2,#0x01
      00039D 90 00 11         [24]  798 	mov	dptr,#_Seg_en_Port
      0003A0 75 F0 40         [24]  799 	mov	b,#0x40
      0003A3 12 05 7A         [24]  800 	lcall	_GPIO_Write
      0003A6 80 01            [24]  801 	sjmp	00104$
      0003A8                        802 00103$:
                                    803 ;	../HAL/7_Seg.c:115: return;
      0003A8 22               [24]  804 	ret
      0003A9                        805 00104$:
                                    806 ;	../HAL/7_Seg.c:117: Tim_delay_ms(1);
      0003A9 90 00 01         [24]  807 	mov	dptr,#0x0001
      0003AC 12 05 51         [24]  808 	lcall	_Tim_delay_ms
                                    809 ;	../HAL/7_Seg.c:119: for(unsigned char i =0; i<4; i++){
      0003AF 74 02            [12]  810 	mov	a,#0x02
      0003B1 25 1D            [12]  811 	add	a,_Segment_write_number_config_65536_25
      0003B3 FD               [12]  812 	mov	r5,a
      0003B4 E4               [12]  813 	clr	a
      0003B5 35 1E            [12]  814 	addc	a,(_Segment_write_number_config_65536_25 + 1)
      0003B7 FE               [12]  815 	mov	r6,a
      0003B8 AF 1F            [24]  816 	mov	r7,(_Segment_write_number_config_65536_25 + 2)
      0003BA 75 21 00         [24]  817 	mov	_Segment_write_number_i_131072_31,#0x00
      0003BD                        818 00110$:
      0003BD 74 FC            [12]  819 	mov	a,#0x100 - 0x04
      0003BF 25 21            [12]  820 	add	a,_Segment_write_number_i_131072_31
      0003C1 40 31            [24]  821 	jc	00112$
                                    822 ;	../HAL/7_Seg.c:120: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      0003C3 E5 21            [12]  823 	mov	a,_Segment_write_number_i_131072_31
      0003C5 2D               [12]  824 	add	a,r5
      0003C6 FA               [12]  825 	mov	r2,a
      0003C7 E4               [12]  826 	clr	a
      0003C8 3E               [12]  827 	addc	a,r6
      0003C9 FB               [12]  828 	mov	r3,a
      0003CA 8F 04            [24]  829 	mov	ar4,r7
      0003CC 8A 82            [24]  830 	mov	dpl,r2
      0003CE 8B 83            [24]  831 	mov	dph,r3
      0003D0 8C F0            [24]  832 	mov	b,r4
      0003D2 12 0A CD         [24]  833 	lcall	__gptrget
      0003D5 FA               [12]  834 	mov	r2,a
      0003D6 8A 12            [24]  835 	mov	(_Seg_en_Port + 0x0001),r2
                                    836 ;	../HAL/7_Seg.c:121: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      0003D8 75 32 00         [24]  837 	mov	_GPIO_Write_PARM_2,#0x00
      0003DB 90 00 11         [24]  838 	mov	dptr,#_Seg_en_Port
      0003DE 75 F0 40         [24]  839 	mov	b,#0x40
      0003E1 C0 07            [24]  840 	push	ar7
      0003E3 C0 06            [24]  841 	push	ar6
      0003E5 C0 05            [24]  842 	push	ar5
      0003E7 12 05 7A         [24]  843 	lcall	_GPIO_Write
      0003EA D0 05            [24]  844 	pop	ar5
      0003EC D0 06            [24]  845 	pop	ar6
      0003EE D0 07            [24]  846 	pop	ar7
                                    847 ;	../HAL/7_Seg.c:119: for(unsigned char i =0; i<4; i++){
      0003F0 05 21            [12]  848 	inc	_Segment_write_number_i_131072_31
      0003F2 80 C9            [24]  849 	sjmp	00110$
      0003F4                        850 00112$:
                                    851 ;	../HAL/7_Seg.c:124: }
      0003F4 22               [24]  852 	ret
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
      0003F5                        867 _Multi_Segment_write_Digits:
      0003F5 85 82 24         [24]  868 	mov	_Multi_Segment_write_Digits_config_65536_33,dpl
      0003F8 85 83 25         [24]  869 	mov	(_Multi_Segment_write_Digits_config_65536_33 + 1),dph
      0003FB 85 F0 26         [24]  870 	mov	(_Multi_Segment_write_Digits_config_65536_33 + 2),b
                                    871 ;	../HAL/7_Seg.c:129: int n = number;
      0003FE AB 22            [24]  872 	mov	r3,_Multi_Segment_write_Digits_PARM_2
      000400 AC 23            [24]  873 	mov	r4,(_Multi_Segment_write_Digits_PARM_2 + 1)
                                    874 ;	../HAL/7_Seg.c:130: unsigned char dig = 0;
      000402 7A 00            [12]  875 	mov	r2,#0x00
                                    876 ;	../HAL/7_Seg.c:132: if(number > 9999){
      000404 C3               [12]  877 	clr	c
      000405 74 0F            [12]  878 	mov	a,#0x0f
      000407 9B               [12]  879 	subb	a,r3
      000408 74 A7            [12]  880 	mov	a,#(0x27 ^ 0x80)
      00040A 8C F0            [24]  881 	mov	b,r4
      00040C 63 F0 80         [24]  882 	xrl	b,#0x80
      00040F 95 F0            [12]  883 	subb	a,b
      000411 50 06            [24]  884 	jnc	00104$
                                    885 ;	../HAL/7_Seg.c:133: n = 9999;
      000413 7B 0F            [12]  886 	mov	r3,#0x0f
      000415 7C 27            [12]  887 	mov	r4,#0x27
      000417 80 0F            [24]  888 	sjmp	00105$
      000419                        889 00104$:
                                    890 ;	../HAL/7_Seg.c:134: }else if(number < -999){ 
      000419 C3               [12]  891 	clr	c
      00041A EB               [12]  892 	mov	a,r3
      00041B 94 19            [12]  893 	subb	a,#0x19
      00041D EC               [12]  894 	mov	a,r4
      00041E 64 80            [12]  895 	xrl	a,#0x80
      000420 94 7C            [12]  896 	subb	a,#0x7c
      000422 50 04            [24]  897 	jnc	00105$
                                    898 ;	../HAL/7_Seg.c:135: n = -999;
      000424 7B 19            [12]  899 	mov	r3,#0x19
      000426 7C FC            [12]  900 	mov	r4,#0xfc
      000428                        901 00105$:
                                    902 ;	../HAL/7_Seg.c:137: is_negative = (number < 0) ? true : false;
      000428 E5 23            [12]  903 	mov	a,(_Multi_Segment_write_Digits_PARM_2 + 1)
      00042A 33               [12]  904 	rlc	a
      00042B E4               [12]  905 	clr	a
      00042C 33               [12]  906 	rlc	a
                                    907 ;	../HAL/7_Seg.c:139: if(is_negative){
      00042D F5 27            [12]  908 	mov	_Multi_Segment_write_Digits_is_negative_65536_34,a
      00042F A9 27            [24]  909 	mov	r1,_Multi_Segment_write_Digits_is_negative_65536_34
      000431 60 07            [24]  910 	jz	00119$
                                    911 ;	../HAL/7_Seg.c:140: n *= -1;
      000433 C3               [12]  912 	clr	c
      000434 E4               [12]  913 	clr	a
      000435 9B               [12]  914 	subb	a,r3
      000436 FB               [12]  915 	mov	r3,a
      000437 E4               [12]  916 	clr	a
      000438 9C               [12]  917 	subb	a,r4
      000439 FC               [12]  918 	mov	r4,a
                                    919 ;	../HAL/7_Seg.c:143: while (n)
      00043A                        920 00119$:
      00043A 78 00            [12]  921 	mov	r0,#0x00
      00043C                        922 00108$:
      00043C EB               [12]  923 	mov	a,r3
      00043D 4C               [12]  924 	orl	a,r4
      00043E 60 5D            [24]  925 	jz	00110$
                                    926 ;	../HAL/7_Seg.c:145: dig = n % 10;
      000440 75 32 0A         [24]  927 	mov	__modsint_PARM_2,#0x0a
      000443 75 33 00         [24]  928 	mov	(__modsint_PARM_2 + 1),#0x00
      000446 8B 82            [24]  929 	mov	dpl,r3
      000448 8C 83            [24]  930 	mov	dph,r4
      00044A C0 04            [24]  931 	push	ar4
      00044C C0 03            [24]  932 	push	ar3
      00044E C0 01            [24]  933 	push	ar1
      000450 C0 00            [24]  934 	push	ar0
      000452 12 0A E9         [24]  935 	lcall	__modsint
      000455 AE 82            [24]  936 	mov	r6,dpl
      000457 D0 00            [24]  937 	pop	ar0
      000459 D0 01            [24]  938 	pop	ar1
      00045B 8E 02            [24]  939 	mov	ar2,r6
                                    940 ;	../HAL/7_Seg.c:147: Segment_write_number(config, seg_no, dig);
      00045D 88 1B            [24]  941 	mov	_Segment_write_number_PARM_2,r0
      00045F 8A 1C            [24]  942 	mov	_Segment_write_number_PARM_3,r2
      000461 85 24 82         [24]  943 	mov	dpl,_Multi_Segment_write_Digits_config_65536_33
      000464 85 25 83         [24]  944 	mov	dph,(_Multi_Segment_write_Digits_config_65536_33 + 1)
      000467 85 26 F0         [24]  945 	mov	b,(_Multi_Segment_write_Digits_config_65536_33 + 2)
      00046A C0 02            [24]  946 	push	ar2
      00046C C0 01            [24]  947 	push	ar1
      00046E C0 00            [24]  948 	push	ar0
      000470 12 02 FD         [24]  949 	lcall	_Segment_write_number
      000473 D0 00            [24]  950 	pop	ar0
      000475 D0 01            [24]  951 	pop	ar1
      000477 D0 02            [24]  952 	pop	ar2
      000479 D0 03            [24]  953 	pop	ar3
      00047B D0 04            [24]  954 	pop	ar4
                                    955 ;	../HAL/7_Seg.c:148: n = n/10;
      00047D 75 32 0A         [24]  956 	mov	__divsint_PARM_2,#0x0a
      000480 75 33 00         [24]  957 	mov	(__divsint_PARM_2 + 1),#0x00
      000483 8B 82            [24]  958 	mov	dpl,r3
      000485 8C 83            [24]  959 	mov	dph,r4
      000487 C0 02            [24]  960 	push	ar2
      000489 C0 01            [24]  961 	push	ar1
      00048B C0 00            [24]  962 	push	ar0
      00048D 12 0B 1F         [24]  963 	lcall	__divsint
      000490 AB 82            [24]  964 	mov	r3,dpl
      000492 AC 83            [24]  965 	mov	r4,dph
      000494 D0 00            [24]  966 	pop	ar0
      000496 D0 01            [24]  967 	pop	ar1
      000498 D0 02            [24]  968 	pop	ar2
                                    969 ;	../HAL/7_Seg.c:149: seg_no++;
      00049A 08               [12]  970 	inc	r0
      00049B 80 9F            [24]  971 	sjmp	00108$
      00049D                        972 00110$:
                                    973 ;	../HAL/7_Seg.c:152: if(is_negative){
      00049D E9               [12]  974 	mov	a,r1
      00049E 60 12            [24]  975 	jz	00113$
                                    976 ;	../HAL/7_Seg.c:153: seg_no++;
      0004A0 E8               [12]  977 	mov	a,r0
      0004A1 04               [12]  978 	inc	a
      0004A2 F5 1B            [12]  979 	mov	_Segment_write_number_PARM_2,a
                                    980 ;	../HAL/7_Seg.c:154: Segment_write_number(config, seg_no, dig);
      0004A4 8A 1C            [24]  981 	mov	_Segment_write_number_PARM_3,r2
      0004A6 85 24 82         [24]  982 	mov	dpl,_Multi_Segment_write_Digits_config_65536_33
      0004A9 85 25 83         [24]  983 	mov	dph,(_Multi_Segment_write_Digits_config_65536_33 + 1)
      0004AC 85 26 F0         [24]  984 	mov	b,(_Multi_Segment_write_Digits_config_65536_33 + 2)
                                    985 ;	../HAL/7_Seg.c:157: }
      0004AF 02 02 FD         [24]  986 	ljmp	_Segment_write_number
      0004B2                        987 00113$:
      0004B2 22               [24]  988 	ret
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
      0004B3                       1001 _Segment_Write_char:
      0004B3 85 82 2B         [24] 1002 	mov	_Segment_Write_char_config_65536_40,dpl
      0004B6 85 83 2C         [24] 1003 	mov	(_Segment_Write_char_config_65536_40 + 1),dph
      0004B9 85 F0 2D         [24] 1004 	mov	(_Segment_Write_char_config_65536_40 + 2),b
                                   1005 ;	../HAL/7_Seg.c:161: unsigned char *g = text;
      0004BC AA 28            [24] 1006 	mov	r2,_Segment_Write_char_PARM_2
      0004BE AB 29            [24] 1007 	mov	r3,(_Segment_Write_char_PARM_2 + 1)
      0004C0 AC 2A            [24] 1008 	mov	r4,(_Segment_Write_char_PARM_2 + 2)
                                   1009 ;	../HAL/7_Seg.c:164: while (*g)
      0004C2 79 04            [12] 1010 	mov	r1,#0x04
      0004C4                       1011 00105$:
      0004C4 8A 82            [24] 1012 	mov	dpl,r2
      0004C6 8B 83            [24] 1013 	mov	dph,r3
      0004C8 8C F0            [24] 1014 	mov	b,r4
      0004CA 12 0A CD         [24] 1015 	lcall	__gptrget
      0004CD F8               [12] 1016 	mov	r0,a
      0004CE 60 4D            [24] 1017 	jz	00108$
                                   1018 ;	../HAL/7_Seg.c:166: if(len <= 4 && len != 0){
      0004D0 E9               [12] 1019 	mov	a,r1
      0004D1 24 FB            [12] 1020 	add	a,#0xff - 0x04
      0004D3 40 48            [24] 1021 	jc	00102$
      0004D5 E9               [12] 1022 	mov	a,r1
      0004D6 60 45            [24] 1023 	jz	00102$
                                   1024 ;	../HAL/7_Seg.c:167: Segment_write(config, len-1, LUT(*g));
      0004D8 89 07            [24] 1025 	mov	ar7,r1
      0004DA 1F               [12] 1026 	dec	r7
      0004DB 88 82            [24] 1027 	mov	dpl,r0
      0004DD C0 07            [24] 1028 	push	ar7
      0004DF C0 04            [24] 1029 	push	ar4
      0004E1 C0 03            [24] 1030 	push	ar3
      0004E3 C0 02            [24] 1031 	push	ar2
      0004E5 C0 01            [24] 1032 	push	ar1
      0004E7 12 00 97         [24] 1033 	lcall	_LUT
      0004EA 85 82 15         [24] 1034 	mov	_Segment_write_PARM_3,dpl
      0004ED D0 01            [24] 1035 	pop	ar1
      0004EF D0 02            [24] 1036 	pop	ar2
      0004F1 D0 03            [24] 1037 	pop	ar3
      0004F3 D0 04            [24] 1038 	pop	ar4
      0004F5 D0 07            [24] 1039 	pop	ar7
      0004F7 8F 14            [24] 1040 	mov	_Segment_write_PARM_2,r7
      0004F9 85 2B 82         [24] 1041 	mov	dpl,_Segment_Write_char_config_65536_40
      0004FC 85 2C 83         [24] 1042 	mov	dph,(_Segment_Write_char_config_65536_40 + 1)
      0004FF 85 2D F0         [24] 1043 	mov	b,(_Segment_Write_char_config_65536_40 + 2)
      000502 C0 04            [24] 1044 	push	ar4
      000504 C0 03            [24] 1045 	push	ar3
      000506 C0 02            [24] 1046 	push	ar2
      000508 C0 01            [24] 1047 	push	ar1
      00050A 12 02 24         [24] 1048 	lcall	_Segment_write
      00050D D0 01            [24] 1049 	pop	ar1
      00050F D0 02            [24] 1050 	pop	ar2
      000511 D0 03            [24] 1051 	pop	ar3
      000513 D0 04            [24] 1052 	pop	ar4
                                   1053 ;	../HAL/7_Seg.c:168: g++;
      000515 0A               [12] 1054 	inc	r2
      000516 BA 00 01         [24] 1055 	cjne	r2,#0x00,00129$
      000519 0B               [12] 1056 	inc	r3
      00051A                       1057 00129$:
                                   1058 ;	../HAL/7_Seg.c:169: len--;
      00051A 19               [12] 1059 	dec	r1
      00051B 80 A7            [24] 1060 	sjmp	00105$
      00051D                       1061 00102$:
                                   1062 ;	../HAL/7_Seg.c:171: return;
      00051D                       1063 00108$:
                                   1064 ;	../HAL/7_Seg.c:177: }
      00051D 22               [24] 1065 	ret
                                   1066 	.area CSEG    (CODE)
                                   1067 	.area CONST   (CODE)
      000B5B                       1068 _seg_digit_map:
      000B5B 3F                    1069 	.db #0x3f	; 63
      000B5C 06                    1070 	.db #0x06	; 6
      000B5D 5B                    1071 	.db #0x5b	; 91
      000B5E 4F                    1072 	.db #0x4f	; 79	'O'
      000B5F 66                    1073 	.db #0x66	; 102	'f'
      000B60 6D                    1074 	.db #0x6d	; 109	'm'
      000B61 7D                    1075 	.db #0x7d	; 125
      000B62 07                    1076 	.db #0x07	; 7
      000B63 7F                    1077 	.db #0x7f	; 127
      000B64 6F                    1078 	.db #0x6f	; 111	'o'
      000B65 80                    1079 	.db #0x80	; 128
                                   1080 	.area XINIT   (CODE)
                                   1081 	.area CABS    (ABS,CODE)
