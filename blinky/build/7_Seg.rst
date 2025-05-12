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
                                     11 	.globl _Tim_delay_ms
                                     12 	.globl _GPIO_PORT_Write
                                     13 	.globl _GPIO_Write
                                     14 	.globl _Multi_Segment_write_PARM_2
                                     15 	.globl _Segment_write_number_PARM_3
                                     16 	.globl _Segment_write_number_PARM_2
                                     17 	.globl _Segment_Init
                                     18 	.globl _Segment_write_number
                                     19 	.globl _Multi_Segment_write
                                     20 ;--------------------------------------------------------
                                     21 ; special function registers
                                     22 ;--------------------------------------------------------
                                     23 	.area RSEG    (ABS,DATA)
      000000                         24 	.org 0x0000
                                     25 ;--------------------------------------------------------
                                     26 ; special function bits
                                     27 ;--------------------------------------------------------
                                     28 	.area RSEG    (ABS,DATA)
      000000                         29 	.org 0x0000
                                     30 ;--------------------------------------------------------
                                     31 ; overlayable register banks
                                     32 ;--------------------------------------------------------
                                     33 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         34 	.ds 8
                                     35 ;--------------------------------------------------------
                                     36 ; internal ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DSEG    (DATA)
      00000B                         39 _Seg_port:
      00000B                         40 	.ds 3
      00000E                         41 _Seg_en_Port:
      00000E                         42 	.ds 3
      000011                         43 _Segment_write_number_PARM_2:
      000011                         44 	.ds 1
      000012                         45 _Segment_write_number_PARM_3:
      000012                         46 	.ds 1
      000013                         47 _Segment_write_number_config_65536_12:
      000013                         48 	.ds 3
      000016                         49 _Segment_write_number_i_131072_14:
      000016                         50 	.ds 1
      000017                         51 _Segment_write_number_i_131072_18:
      000017                         52 	.ds 1
      000018                         53 _Multi_Segment_write_PARM_2:
      000018                         54 	.ds 2
                                     55 ;--------------------------------------------------------
                                     56 ; overlayable items in internal ram 
                                     57 ;--------------------------------------------------------
                                     58 	.area	OSEG    (OVR,DATA)
                                     59 ;--------------------------------------------------------
                                     60 ; indirectly addressable internal ram data
                                     61 ;--------------------------------------------------------
                                     62 	.area ISEG    (DATA)
                                     63 ;--------------------------------------------------------
                                     64 ; absolute internal ram data
                                     65 ;--------------------------------------------------------
                                     66 	.area IABS    (ABS,DATA)
                                     67 	.area IABS    (ABS,DATA)
                                     68 ;--------------------------------------------------------
                                     69 ; bit data
                                     70 ;--------------------------------------------------------
                                     71 	.area BSEG    (BIT)
                                     72 ;--------------------------------------------------------
                                     73 ; paged external ram data
                                     74 ;--------------------------------------------------------
                                     75 	.area PSEG    (PAG,XDATA)
                                     76 ;--------------------------------------------------------
                                     77 ; external ram data
                                     78 ;--------------------------------------------------------
                                     79 	.area XSEG    (XDATA)
                                     80 ;--------------------------------------------------------
                                     81 ; absolute external ram data
                                     82 ;--------------------------------------------------------
                                     83 	.area XABS    (ABS,XDATA)
                                     84 ;--------------------------------------------------------
                                     85 ; external initialized ram data
                                     86 ;--------------------------------------------------------
                                     87 	.area XISEG   (XDATA)
                                     88 	.area HOME    (CODE)
                                     89 	.area GSINIT0 (CODE)
                                     90 	.area GSINIT1 (CODE)
                                     91 	.area GSINIT2 (CODE)
                                     92 	.area GSINIT3 (CODE)
                                     93 	.area GSINIT4 (CODE)
                                     94 	.area GSINIT5 (CODE)
                                     95 	.area GSINIT  (CODE)
                                     96 	.area GSFINAL (CODE)
                                     97 	.area CSEG    (CODE)
                                     98 ;--------------------------------------------------------
                                     99 ; global & static initialisations
                                    100 ;--------------------------------------------------------
                                    101 	.area HOME    (CODE)
                                    102 	.area GSINIT  (CODE)
                                    103 	.area GSFINAL (CODE)
                                    104 	.area GSINIT  (CODE)
                                    105 ;--------------------------------------------------------
                                    106 ; Home
                                    107 ;--------------------------------------------------------
                                    108 	.area HOME    (CODE)
                                    109 	.area HOME    (CODE)
                                    110 ;--------------------------------------------------------
                                    111 ; code
                                    112 ;--------------------------------------------------------
                                    113 	.area CSEG    (CODE)
                                    114 ;------------------------------------------------------------
                                    115 ;Allocation info for local variables in function 'Segment_Init'
                                    116 ;------------------------------------------------------------
                                    117 ;config                    Allocated to registers r5 r6 r7 
                                    118 ;------------------------------------------------------------
                                    119 ;	../HAL/7_Seg.c:23: void Segment_Init(Seg_config_t *config){
                                    120 ;	-----------------------------------------
                                    121 ;	 function Segment_Init
                                    122 ;	-----------------------------------------
      0000D9                        123 _Segment_Init:
                           000007   124 	ar7 = 0x07
                           000006   125 	ar6 = 0x06
                           000005   126 	ar5 = 0x05
                           000004   127 	ar4 = 0x04
                           000003   128 	ar3 = 0x03
                           000002   129 	ar2 = 0x02
                           000001   130 	ar1 = 0x01
                           000000   131 	ar0 = 0x00
                                    132 ;	../HAL/7_Seg.c:24: Seg_port.Port = config->Segment_Port;
      0000D9 AD 82            [24]  133 	mov	r5,dpl
      0000DB AE 83            [24]  134 	mov	r6,dph
      0000DD AF F0            [24]  135 	mov	r7,b
      0000DF 12 08 36         [24]  136 	lcall	__gptrget
      0000E2 FC               [12]  137 	mov	r4,a
      0000E3 8C 0B            [24]  138 	mov	_Seg_port,r4
                                    139 ;	../HAL/7_Seg.c:25: Seg_port.Mode = GPIO_OUTPUT;
      0000E5 75 0D 00         [24]  140 	mov	(_Seg_port + 0x0002),#0x00
                                    141 ;	../HAL/7_Seg.c:27: Seg_en_Port.Port = config->Seg_Enable_Port;
      0000E8 0D               [12]  142 	inc	r5
      0000E9 BD 00 01         [24]  143 	cjne	r5,#0x00,00103$
      0000EC 0E               [12]  144 	inc	r6
      0000ED                        145 00103$:
      0000ED 8D 82            [24]  146 	mov	dpl,r5
      0000EF 8E 83            [24]  147 	mov	dph,r6
      0000F1 8F F0            [24]  148 	mov	b,r7
      0000F3 12 08 36         [24]  149 	lcall	__gptrget
      0000F6 FD               [12]  150 	mov	r5,a
      0000F7 8D 0E            [24]  151 	mov	_Seg_en_Port,r5
                                    152 ;	../HAL/7_Seg.c:28: Seg_en_Port.Mode = GPIO_OUTPUT;
      0000F9 75 10 00         [24]  153 	mov	(_Seg_en_Port + 0x0002),#0x00
                                    154 ;	../HAL/7_Seg.c:29: }
      0000FC 22               [24]  155 	ret
                                    156 ;------------------------------------------------------------
                                    157 ;Allocation info for local variables in function 'Segment_write_number'
                                    158 ;------------------------------------------------------------
                                    159 ;display_number            Allocated with name '_Segment_write_number_PARM_2'
                                    160 ;number                    Allocated with name '_Segment_write_number_PARM_3'
                                    161 ;config                    Allocated with name '_Segment_write_number_config_65536_12'
                                    162 ;i                         Allocated with name '_Segment_write_number_i_131072_14'
                                    163 ;i                         Allocated with name '_Segment_write_number_i_131072_18'
                                    164 ;------------------------------------------------------------
                                    165 ;	../HAL/7_Seg.c:32: void Segment_write_number(Seg_config_t *config, unsigned char display_number, unsigned char number){
                                    166 ;	-----------------------------------------
                                    167 ;	 function Segment_write_number
                                    168 ;	-----------------------------------------
      0000FD                        169 _Segment_write_number:
      0000FD 85 82 13         [24]  170 	mov	_Segment_write_number_config_65536_12,dpl
      000100 85 83 14         [24]  171 	mov	(_Segment_write_number_config_65536_12 + 1),dph
      000103 85 F0 15         [24]  172 	mov	(_Segment_write_number_config_65536_12 + 2),b
                                    173 ;	../HAL/7_Seg.c:35: for(unsigned char i =0; i<4; i++){
      000106 74 02            [12]  174 	mov	a,#0x02
      000108 25 13            [12]  175 	add	a,_Segment_write_number_config_65536_12
      00010A FA               [12]  176 	mov	r2,a
      00010B E4               [12]  177 	clr	a
      00010C 35 14            [12]  178 	addc	a,(_Segment_write_number_config_65536_12 + 1)
      00010E FB               [12]  179 	mov	r3,a
      00010F AC 15            [24]  180 	mov	r4,(_Segment_write_number_config_65536_12 + 2)
      000111 75 16 00         [24]  181 	mov	_Segment_write_number_i_131072_14,#0x00
      000114                        182 00107$:
      000114 74 FC            [12]  183 	mov	a,#0x100 - 0x04
      000116 25 16            [12]  184 	add	a,_Segment_write_number_i_131072_14
      000118 40 31            [24]  185 	jc	00101$
                                    186 ;	../HAL/7_Seg.c:36: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      00011A E5 16            [12]  187 	mov	a,_Segment_write_number_i_131072_14
      00011C 2A               [12]  188 	add	a,r2
      00011D FD               [12]  189 	mov	r5,a
      00011E E4               [12]  190 	clr	a
      00011F 3B               [12]  191 	addc	a,r3
      000120 FE               [12]  192 	mov	r6,a
      000121 8C 07            [24]  193 	mov	ar7,r4
      000123 8D 82            [24]  194 	mov	dpl,r5
      000125 8E 83            [24]  195 	mov	dph,r6
      000127 8F F0            [24]  196 	mov	b,r7
      000129 12 08 36         [24]  197 	lcall	__gptrget
      00012C FD               [12]  198 	mov	r5,a
      00012D 8D 0F            [24]  199 	mov	(_Seg_en_Port + 0x0001),r5
                                    200 ;	../HAL/7_Seg.c:37: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      00012F 75 1E 00         [24]  201 	mov	_GPIO_Write_PARM_2,#0x00
      000132 90 00 0E         [24]  202 	mov	dptr,#_Seg_en_Port
      000135 75 F0 40         [24]  203 	mov	b,#0x40
      000138 C0 04            [24]  204 	push	ar4
      00013A C0 03            [24]  205 	push	ar3
      00013C C0 02            [24]  206 	push	ar2
      00013E 12 02 E3         [24]  207 	lcall	_GPIO_Write
      000141 D0 02            [24]  208 	pop	ar2
      000143 D0 03            [24]  209 	pop	ar3
      000145 D0 04            [24]  210 	pop	ar4
                                    211 ;	../HAL/7_Seg.c:35: for(unsigned char i =0; i<4; i++){
      000147 05 16            [12]  212 	inc	_Segment_write_number_i_131072_14
      000149 80 C9            [24]  213 	sjmp	00107$
      00014B                        214 00101$:
                                    215 ;	../HAL/7_Seg.c:39: GPIO_PORT_Write(&Seg_port,  seg_digit_map[number % 10]);
      00014B AE 12            [24]  216 	mov	r6,_Segment_write_number_PARM_3
      00014D 7F 00            [12]  217 	mov	r7,#0x00
      00014F 75 1E 0A         [24]  218 	mov	__modsint_PARM_2,#0x0a
                                    219 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000152 8F 1F            [24]  220 	mov	(__modsint_PARM_2 + 1),r7
      000154 8E 82            [24]  221 	mov	dpl,r6
      000156 8F 83            [24]  222 	mov	dph,r7
      000158 12 08 52         [24]  223 	lcall	__modsint
      00015B AE 82            [24]  224 	mov	r6,dpl
      00015D AF 83            [24]  225 	mov	r7,dph
      00015F EE               [12]  226 	mov	a,r6
      000160 24 C4            [12]  227 	add	a,#_seg_digit_map
      000162 F5 82            [12]  228 	mov	dpl,a
      000164 EF               [12]  229 	mov	a,r7
      000165 34 08            [12]  230 	addc	a,#(_seg_digit_map >> 8)
      000167 F5 83            [12]  231 	mov	dph,a
      000169 E4               [12]  232 	clr	a
      00016A 93               [24]  233 	movc	a,@a+dptr
      00016B F5 1E            [12]  234 	mov	_GPIO_PORT_Write_PARM_2,a
      00016D 90 00 0B         [24]  235 	mov	dptr,#_Seg_port
      000170 75 F0 40         [24]  236 	mov	b,#0x40
      000173 12 07 01         [24]  237 	lcall	_GPIO_PORT_Write
                                    238 ;	../HAL/7_Seg.c:40: if(display_number < 4){
      000176 74 FC            [12]  239 	mov	a,#0x100 - 0x04
      000178 25 11            [12]  240 	add	a,_Segment_write_number_PARM_2
      00017A 40 2C            [24]  241 	jc	00103$
                                    242 ;	../HAL/7_Seg.c:41: Seg_en_Port.Pin = config->Seg_Enable_Pins[display_number];
      00017C 74 02            [12]  243 	mov	a,#0x02
      00017E 25 13            [12]  244 	add	a,_Segment_write_number_config_65536_12
      000180 FD               [12]  245 	mov	r5,a
      000181 E4               [12]  246 	clr	a
      000182 35 14            [12]  247 	addc	a,(_Segment_write_number_config_65536_12 + 1)
      000184 FE               [12]  248 	mov	r6,a
      000185 AF 15            [24]  249 	mov	r7,(_Segment_write_number_config_65536_12 + 2)
      000187 E5 11            [12]  250 	mov	a,_Segment_write_number_PARM_2
      000189 2D               [12]  251 	add	a,r5
      00018A FD               [12]  252 	mov	r5,a
      00018B E4               [12]  253 	clr	a
      00018C 3E               [12]  254 	addc	a,r6
      00018D FE               [12]  255 	mov	r6,a
      00018E 8D 82            [24]  256 	mov	dpl,r5
      000190 8E 83            [24]  257 	mov	dph,r6
      000192 8F F0            [24]  258 	mov	b,r7
      000194 12 08 36         [24]  259 	lcall	__gptrget
      000197 FD               [12]  260 	mov	r5,a
      000198 8D 0F            [24]  261 	mov	(_Seg_en_Port + 0x0001),r5
                                    262 ;	../HAL/7_Seg.c:42: GPIO_Write(&Seg_en_Port, GPIO_HIGH);
      00019A 75 1E 01         [24]  263 	mov	_GPIO_Write_PARM_2,#0x01
      00019D 90 00 0E         [24]  264 	mov	dptr,#_Seg_en_Port
      0001A0 75 F0 40         [24]  265 	mov	b,#0x40
      0001A3 12 02 E3         [24]  266 	lcall	_GPIO_Write
      0001A6 80 01            [24]  267 	sjmp	00104$
      0001A8                        268 00103$:
                                    269 ;	../HAL/7_Seg.c:44: return;
      0001A8 22               [24]  270 	ret
      0001A9                        271 00104$:
                                    272 ;	../HAL/7_Seg.c:46: Tim_delay_ms(1);
      0001A9 90 00 01         [24]  273 	mov	dptr,#0x0001
      0001AC 12 02 BA         [24]  274 	lcall	_Tim_delay_ms
                                    275 ;	../HAL/7_Seg.c:48: for(unsigned char i =0; i<4; i++){
      0001AF 74 02            [12]  276 	mov	a,#0x02
      0001B1 25 13            [12]  277 	add	a,_Segment_write_number_config_65536_12
      0001B3 FD               [12]  278 	mov	r5,a
      0001B4 E4               [12]  279 	clr	a
      0001B5 35 14            [12]  280 	addc	a,(_Segment_write_number_config_65536_12 + 1)
      0001B7 FE               [12]  281 	mov	r6,a
      0001B8 AF 15            [24]  282 	mov	r7,(_Segment_write_number_config_65536_12 + 2)
      0001BA 75 17 00         [24]  283 	mov	_Segment_write_number_i_131072_18,#0x00
      0001BD                        284 00110$:
      0001BD 74 FC            [12]  285 	mov	a,#0x100 - 0x04
      0001BF 25 17            [12]  286 	add	a,_Segment_write_number_i_131072_18
      0001C1 40 31            [24]  287 	jc	00112$
                                    288 ;	../HAL/7_Seg.c:49: Seg_en_Port.Pin = config->Seg_Enable_Pins[i];
      0001C3 E5 17            [12]  289 	mov	a,_Segment_write_number_i_131072_18
      0001C5 2D               [12]  290 	add	a,r5
      0001C6 FA               [12]  291 	mov	r2,a
      0001C7 E4               [12]  292 	clr	a
      0001C8 3E               [12]  293 	addc	a,r6
      0001C9 FB               [12]  294 	mov	r3,a
      0001CA 8F 04            [24]  295 	mov	ar4,r7
      0001CC 8A 82            [24]  296 	mov	dpl,r2
      0001CE 8B 83            [24]  297 	mov	dph,r3
      0001D0 8C F0            [24]  298 	mov	b,r4
      0001D2 12 08 36         [24]  299 	lcall	__gptrget
      0001D5 FA               [12]  300 	mov	r2,a
      0001D6 8A 0F            [24]  301 	mov	(_Seg_en_Port + 0x0001),r2
                                    302 ;	../HAL/7_Seg.c:50: GPIO_Write(&Seg_en_Port, GPIO_LOW);
      0001D8 75 1E 00         [24]  303 	mov	_GPIO_Write_PARM_2,#0x00
      0001DB 90 00 0E         [24]  304 	mov	dptr,#_Seg_en_Port
      0001DE 75 F0 40         [24]  305 	mov	b,#0x40
      0001E1 C0 07            [24]  306 	push	ar7
      0001E3 C0 06            [24]  307 	push	ar6
      0001E5 C0 05            [24]  308 	push	ar5
      0001E7 12 02 E3         [24]  309 	lcall	_GPIO_Write
      0001EA D0 05            [24]  310 	pop	ar5
      0001EC D0 06            [24]  311 	pop	ar6
      0001EE D0 07            [24]  312 	pop	ar7
                                    313 ;	../HAL/7_Seg.c:48: for(unsigned char i =0; i<4; i++){
      0001F0 05 17            [12]  314 	inc	_Segment_write_number_i_131072_18
      0001F2 80 C9            [24]  315 	sjmp	00110$
      0001F4                        316 00112$:
                                    317 ;	../HAL/7_Seg.c:53: }
      0001F4 22               [24]  318 	ret
                                    319 ;------------------------------------------------------------
                                    320 ;Allocation info for local variables in function 'Multi_Segment_write'
                                    321 ;------------------------------------------------------------
                                    322 ;number                    Allocated with name '_Multi_Segment_write_PARM_2'
                                    323 ;config                    Allocated to registers r5 r6 r7 
                                    324 ;is_negative               Allocated to registers 
                                    325 ;n                         Allocated to registers r3 r4 
                                    326 ;dig                       Allocated to registers 
                                    327 ;seg_no                    Allocated to registers r2 
                                    328 ;------------------------------------------------------------
                                    329 ;	../HAL/7_Seg.c:56: void Multi_Segment_write(Seg_config_t *config, int number){
                                    330 ;	-----------------------------------------
                                    331 ;	 function Multi_Segment_write
                                    332 ;	-----------------------------------------
      0001F5                        333 _Multi_Segment_write:
      0001F5 AD 82            [24]  334 	mov	r5,dpl
      0001F7 AE 83            [24]  335 	mov	r6,dph
      0001F9 AF F0            [24]  336 	mov	r7,b
                                    337 ;	../HAL/7_Seg.c:58: int n = number;
      0001FB AB 18            [24]  338 	mov	r3,_Multi_Segment_write_PARM_2
      0001FD AC 19            [24]  339 	mov	r4,(_Multi_Segment_write_PARM_2 + 1)
                                    340 ;	../HAL/7_Seg.c:61: if(number > 9999){
      0001FF C3               [12]  341 	clr	c
      000200 74 0F            [12]  342 	mov	a,#0x0f
      000202 9B               [12]  343 	subb	a,r3
      000203 74 A7            [12]  344 	mov	a,#(0x27 ^ 0x80)
      000205 8C F0            [24]  345 	mov	b,r4
      000207 63 F0 80         [24]  346 	xrl	b,#0x80
      00020A 95 F0            [12]  347 	subb	a,b
      00020C 50 06            [24]  348 	jnc	00104$
                                    349 ;	../HAL/7_Seg.c:62: n = 9999;
      00020E 7B 0F            [12]  350 	mov	r3,#0x0f
      000210 7C 27            [12]  351 	mov	r4,#0x27
      000212 80 08            [24]  352 	sjmp	00114$
      000214                        353 00104$:
                                    354 ;	../HAL/7_Seg.c:63: }else if(number < 0){  // refine the negative number logic
      000214 EC               [12]  355 	mov	a,r4
      000215 30 E7 04         [24]  356 	jnb	acc.7,00114$
                                    357 ;	../HAL/7_Seg.c:65: n = 999;
      000218 7B E7            [12]  358 	mov	r3,#0xe7
      00021A 7C 03            [12]  359 	mov	r4,#0x03
                                    360 ;	../HAL/7_Seg.c:68: while (n)
      00021C                        361 00114$:
      00021C 7A 00            [12]  362 	mov	r2,#0x00
      00021E                        363 00106$:
      00021E EB               [12]  364 	mov	a,r3
      00021F 4C               [12]  365 	orl	a,r4
      000220 60 64            [24]  366 	jz	00109$
                                    367 ;	../HAL/7_Seg.c:72: dig = n % 10;
      000222 75 1E 0A         [24]  368 	mov	__modsint_PARM_2,#0x0a
      000225 75 1F 00         [24]  369 	mov	(__modsint_PARM_2 + 1),#0x00
      000228 8B 82            [24]  370 	mov	dpl,r3
      00022A 8C 83            [24]  371 	mov	dph,r4
      00022C C0 07            [24]  372 	push	ar7
      00022E C0 06            [24]  373 	push	ar6
      000230 C0 05            [24]  374 	push	ar5
      000232 C0 04            [24]  375 	push	ar4
      000234 C0 03            [24]  376 	push	ar3
      000236 C0 02            [24]  377 	push	ar2
      000238 12 08 52         [24]  378 	lcall	__modsint
      00023B A8 82            [24]  379 	mov	r0,dpl
      00023D D0 02            [24]  380 	pop	ar2
      00023F D0 03            [24]  381 	pop	ar3
      000241 D0 04            [24]  382 	pop	ar4
      000243 D0 05            [24]  383 	pop	ar5
      000245 D0 06            [24]  384 	pop	ar6
      000247 D0 07            [24]  385 	pop	ar7
      000249 88 12            [24]  386 	mov	_Segment_write_number_PARM_3,r0
                                    387 ;	../HAL/7_Seg.c:74: Segment_write_number(config, seg_no, dig);
      00024B 8A 11            [24]  388 	mov	_Segment_write_number_PARM_2,r2
      00024D 8D 82            [24]  389 	mov	dpl,r5
      00024F 8E 83            [24]  390 	mov	dph,r6
      000251 8F F0            [24]  391 	mov	b,r7
      000253 C0 07            [24]  392 	push	ar7
      000255 C0 06            [24]  393 	push	ar6
      000257 C0 05            [24]  394 	push	ar5
      000259 C0 04            [24]  395 	push	ar4
      00025B C0 03            [24]  396 	push	ar3
      00025D C0 02            [24]  397 	push	ar2
      00025F 12 00 FD         [24]  398 	lcall	_Segment_write_number
      000262 D0 02            [24]  399 	pop	ar2
      000264 D0 03            [24]  400 	pop	ar3
      000266 D0 04            [24]  401 	pop	ar4
                                    402 ;	../HAL/7_Seg.c:75: n = n/10;
      000268 75 1E 0A         [24]  403 	mov	__divsint_PARM_2,#0x0a
      00026B 75 1F 00         [24]  404 	mov	(__divsint_PARM_2 + 1),#0x00
      00026E 8B 82            [24]  405 	mov	dpl,r3
      000270 8C 83            [24]  406 	mov	dph,r4
      000272 C0 02            [24]  407 	push	ar2
      000274 12 08 88         [24]  408 	lcall	__divsint
      000277 AB 82            [24]  409 	mov	r3,dpl
      000279 AC 83            [24]  410 	mov	r4,dph
      00027B D0 02            [24]  411 	pop	ar2
      00027D D0 05            [24]  412 	pop	ar5
      00027F D0 06            [24]  413 	pop	ar6
      000281 D0 07            [24]  414 	pop	ar7
                                    415 ;	../HAL/7_Seg.c:76: seg_no++;
      000283 0A               [12]  416 	inc	r2
      000284 80 98            [24]  417 	sjmp	00106$
      000286                        418 00109$:
                                    419 ;	../HAL/7_Seg.c:79: }
      000286 22               [24]  420 	ret
                                    421 	.area CSEG    (CODE)
                                    422 	.area CONST   (CODE)
      0008C4                        423 _seg_digit_map:
      0008C4 3F                     424 	.db #0x3f	; 63
      0008C5 06                     425 	.db #0x06	; 6
      0008C6 5B                     426 	.db #0x5b	; 91
      0008C7 4F                     427 	.db #0x4f	; 79	'O'
      0008C8 66                     428 	.db #0x66	; 102	'f'
      0008C9 6D                     429 	.db #0x6d	; 109	'm'
      0008CA 7D                     430 	.db #0x7d	; 125
      0008CB 07                     431 	.db #0x07	; 7
      0008CC 7F                     432 	.db #0x7f	; 127
      0008CD 6F                     433 	.db #0x6f	; 111	'o'
                                    434 	.area XINIT   (CODE)
                                    435 	.area CABS    (ABS,CODE)
