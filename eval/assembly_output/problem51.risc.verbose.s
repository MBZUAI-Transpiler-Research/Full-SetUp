	.file	"problem51.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# s, s
	mv	a5,a1	# tmp143, encode
	sw	a5,-60(s0)	# tmp144, encode
# problem51.c:6:     int shift = encode ? 5 : 21;
	lw	a5,-60(s0)		# tmp146, encode
	sext.w	a5,a5	# tmp147, tmp145
	beq	a5,zero,.L2	#, tmp147,,
# problem51.c:6:     int shift = encode ? 5 : 21;
	li	a5,5		# iftmp.0_10,
	j	.L3		#
.L2:
# problem51.c:6:     int shift = encode ? 5 : 21;
	li	a5,21		# iftmp.0_10,
.L3:
# problem51.c:6:     int shift = encode ? 5 : 21;
	sw	a5,-40(s0)	# iftmp.0_10, shift
# problem51.c:7:     size_t len = strlen(s);
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	sd	a0,-24(s0)	#, len
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	sd	zero,-32(s0)	#, i
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	j	.L4		#
.L5:
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	ld	a4,-56(s0)		# tmp148, s
	ld	a5,-32(s0)		# tmp149, i
	add	a5,a4,a5	# tmp149, _1, tmp148
	lbu	a5,0(a5)	# _2, *_1
	sext.w	a5,a5	# _3, _2
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addiw	a5,a5,-97	#, tmp150, _3
	sext.w	a5,a5	# _4, tmp150
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	lw	a4,-40(s0)		# tmp153, shift
	addw	a5,a4,a5	# _4, tmp151, tmp152
	sext.w	a5,a5	# _5, tmp151
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	mv	a4,a5	# tmp155, _5
	li	a5,26		# tmp157,
	remw	a5,a4,a5	# tmp157, tmp156, tmp155
	sext.w	a5,a5	# _6, tmp156
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addiw	a5,a5,97	#, tmp158, _6
	sw	a5,-36(s0)	# tmp158, w
# problem51.c:10:         s[i] = (char)w;
	ld	a4,-56(s0)		# tmp159, s
	ld	a5,-32(s0)		# tmp160, i
	add	a5,a4,a5	# tmp160, _7, tmp159
# problem51.c:10:         s[i] = (char)w;
	lw	a4,-36(s0)		# tmp162, w
	andi	a4,a4,0xff	# _8, tmp161
# problem51.c:10:         s[i] = (char)w;
	sb	a4,0(a5)	# _8, *_7
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	ld	a5,-32(s0)		# tmp164, i
	addi	a5,a5,1	#, tmp163, tmp164
	sd	a5,-32(s0)	# tmp163, i
.L4:
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	ld	a4,-32(s0)		# tmp165, i
	ld	a5,-24(s0)		# tmp166, len
	bltu	a4,a5,.L5	#, tmp165, tmp166,
# problem51.c:12: }
	nop	
	nop	
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem51.c"
	.align	3
.LC1:
	.string	"strcmp(encoded_str, str) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem51.c:23:     srand((unsigned int)time(NULL));
	li	a0,0		#,
	call	time@plt	#
	mv	a5,a0	# _1,
# problem51.c:23:     srand((unsigned int)time(NULL));
	sext.w	a5,a5	# _2, _1
	mv	a0,a5	#, _2
	call	srand@plt	#
# problem51.c:25:     for (int i = 0; i < 100; i++) {
	sw	zero,-44(s0)	#, i
# problem51.c:25:     for (int i = 0; i < 100; i++) {
	j	.L7		#
.L11:
# problem51.c:26:         int l = 10 + rand() % 11;
	call	rand@plt	#
	mv	a5,a0	# tmp152,
# problem51.c:26:         int l = 10 + rand() % 11;
	mv	a4,a5	# tmp154, _3
	li	a5,11		# tmp156,
	remw	a5,a4,a5	# tmp156, tmp155, tmp154
	sext.w	a5,a5	# _4, tmp155
# problem51.c:26:         int l = 10 + rand() % 11;
	addiw	a5,a5,10	#, tmp157, _4
	sw	a5,-36(s0)	# tmp157, l
# problem51.c:27:         char *str = (char *)malloc(l + 1);
	lw	a5,-36(s0)		# tmp160, l
	addiw	a5,a5,1	#, tmp158, tmp159
	sext.w	a5,a5	# _5, tmp158
# problem51.c:27:         char *str = (char *)malloc(l + 1);
	mv	a0,a5	#, _6
	call	malloc@plt	#
	mv	a5,a0	# tmp161,
	sd	a5,-32(s0)	# tmp161, str
# problem51.c:28:         for (int j = 0; j < l; j++) {
	sw	zero,-40(s0)	#, j
# problem51.c:28:         for (int j = 0; j < l; j++) {
	j	.L8		#
.L9:
# problem51.c:29:             char chr = 'a' + rand() % 26;
	call	rand@plt	#
	mv	a5,a0	# tmp162,
# problem51.c:29:             char chr = 'a' + rand() % 26;
	mv	a4,a5	# tmp164, _7
	li	a5,26		# tmp166,
	remw	a5,a4,a5	# tmp166, tmp165, tmp164
	sext.w	a5,a5	# _8, tmp165
# problem51.c:29:             char chr = 'a' + rand() % 26;
	andi	a5,a5,0xff	# _9, _8
# problem51.c:29:             char chr = 'a' + rand() % 26;
	addiw	a5,a5,97	#, tmp167, _9
	sb	a5,-45(s0)	# tmp167, chr
# problem51.c:30:             str[j] = chr;
	lw	a5,-40(s0)		# _10, j
	ld	a4,-32(s0)		# tmp168, str
	add	a5,a4,a5	# _10, _11, tmp168
# problem51.c:30:             str[j] = chr;
	lbu	a4,-45(s0)	# tmp169, chr
	sb	a4,0(a5)	# tmp169, *_11
# problem51.c:28:         for (int j = 0; j < l; j++) {
	lw	a5,-40(s0)		# tmp172, j
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-40(s0)	# tmp170, j
.L8:
# problem51.c:28:         for (int j = 0; j < l; j++) {
	lw	a5,-40(s0)		# tmp174, j
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-36(s0)		# tmp176, l
	sext.w	a4,a4	# tmp177, tmp173
	sext.w	a5,a5	# tmp178, tmp175
	blt	a4,a5,.L9	#, tmp177, tmp178,
# problem51.c:32:         str[l] = '\0';
	lw	a5,-36(s0)		# _12, l
	ld	a4,-32(s0)		# tmp179, str
	add	a5,a4,a5	# _12, _13, tmp179
# problem51.c:32:         str[l] = '\0';
	sb	zero,0(a5)	#, *_13
# problem51.c:34:         char *encoded_str = (char *)malloc(l + 1);
	lw	a5,-36(s0)		# tmp182, l
	addiw	a5,a5,1	#, tmp180, tmp181
	sext.w	a5,a5	# _14, tmp180
# problem51.c:34:         char *encoded_str = (char *)malloc(l + 1);
	mv	a0,a5	#, _15
	call	malloc@plt	#
	mv	a5,a0	# tmp183,
	sd	a5,-24(s0)	# tmp183, encoded_str
# problem51.c:35:         strcpy(encoded_str, str);
	ld	a1,-32(s0)		#, str
	ld	a0,-24(s0)		#, encoded_str
	call	strcpy@plt	#
# problem51.c:36:         func0(encoded_str, 1);
	li	a1,1		#,
	ld	a0,-24(s0)		#, encoded_str
	call	func0		#
# problem51.c:37:         func0(encoded_str, 0);
	li	a1,0		#,
	ld	a0,-24(s0)		#, encoded_str
	call	func0		#
# problem51.c:38:         assert(strcmp(encoded_str, str) == 0);
	ld	a1,-32(s0)		#, str
	ld	a0,-24(s0)		#, encoded_str
	call	strcmp@plt	#
	mv	a5,a0	# tmp184,
# problem51.c:38:         assert(strcmp(encoded_str, str) == 0);
	beq	a5,zero,.L10	#, _16,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L10:
# problem51.c:40:         free(str);
	ld	a0,-32(s0)		#, str
	call	free@plt	#
# problem51.c:41:         free(encoded_str);
	ld	a0,-24(s0)		#, encoded_str
	call	free@plt	#
# problem51.c:25:     for (int i = 0; i < 100; i++) {
	lw	a5,-44(s0)		# tmp187, i
	addiw	a5,a5,1	#, tmp185, tmp186
	sw	a5,-44(s0)	# tmp185, i
.L7:
# problem51.c:25:     for (int i = 0; i < 100; i++) {
	lw	a5,-44(s0)		# tmp189, i
	sext.w	a4,a5	# tmp190, tmp188
	li	a5,99		# tmp191,
	ble	a4,a5,.L11	#, tmp190, tmp191,
# problem51.c:44:     return 0;
	li	a5,0		# _25,
# problem51.c:45: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
