	.file	"problem51.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# s, s
	mv	a5,a1	# tmp81, encode
	sw	a5,-60(s0)	# tmp82, encode
# problem51.c:6:     int shift = encode ? 5 : 21;
	lw	a5,-60(s0)		# tmp84, encode
	sext.w	a5,a5	# tmp85, tmp83
	beq	a5,zero,.L2	#, tmp85,,
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
	ld	a4,-56(s0)		# tmp86, s
	ld	a5,-32(s0)		# tmp87, i
	add	a5,a4,a5	# tmp87, _1, tmp86
	lbu	a5,0(a5)	# _2, *_1
	sext.w	a5,a5	# _3, _2
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addiw	a5,a5,-97	#, tmp88, _3
	sext.w	a5,a5	# _4, tmp88
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	lw	a4,-40(s0)		# tmp91, shift
	addw	a5,a4,a5	# _4, tmp89, tmp90
	sext.w	a5,a5	# _5, tmp89
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	mv	a4,a5	# tmp93, _5
	li	a5,26		# tmp95,
	remw	a5,a4,a5	# tmp95, tmp94, tmp93
	sext.w	a5,a5	# _6, tmp94
# problem51.c:9:         int w = ((s[i] - 'a' + shift) % 26) + 'a';
	addiw	a5,a5,97	#, tmp96, _6
	sw	a5,-36(s0)	# tmp96, w
# problem51.c:10:         s[i] = (char)w;
	ld	a4,-56(s0)		# tmp97, s
	ld	a5,-32(s0)		# tmp98, i
	add	a5,a4,a5	# tmp98, _7, tmp97
# problem51.c:10:         s[i] = (char)w;
	lw	a4,-36(s0)		# tmp100, w
	andi	a4,a4,0xff	# _8, tmp99
# problem51.c:10:         s[i] = (char)w;
	sb	a4,0(a5)	# _8, *_7
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	ld	a5,-32(s0)		# tmp102, i
	addi	a5,a5,1	#, tmp101, tmp102
	sd	a5,-32(s0)	# tmp101, i
.L4:
# problem51.c:8:     for (size_t i = 0; i < len; i++) {
	ld	a4,-32(s0)		# tmp103, i
	ld	a5,-24(s0)		# tmp104, len
	bltu	a4,a5,.L5	#, tmp103, tmp104,
# problem51.c:12: }
	nop	
	nop	
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
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
	mv	a5,a0	# tmp90,
# problem51.c:26:         int l = 10 + rand() % 11;
	mv	a4,a5	# tmp92, _3
	li	a5,11		# tmp94,
	remw	a5,a4,a5	# tmp94, tmp93, tmp92
	sext.w	a5,a5	# _4, tmp93
# problem51.c:26:         int l = 10 + rand() % 11;
	addiw	a5,a5,10	#, tmp95, _4
	sw	a5,-36(s0)	# tmp95, l
# problem51.c:27:         char *str = (char *)malloc(l + 1);
	lw	a5,-36(s0)		# tmp98, l
	addiw	a5,a5,1	#, tmp96, tmp97
	sext.w	a5,a5	# _5, tmp96
# problem51.c:27:         char *str = (char *)malloc(l + 1);
	mv	a0,a5	#, _6
	call	malloc@plt	#
	mv	a5,a0	# tmp99,
	sd	a5,-32(s0)	# tmp99, str
# problem51.c:28:         for (int j = 0; j < l; j++) {
	sw	zero,-40(s0)	#, j
# problem51.c:28:         for (int j = 0; j < l; j++) {
	j	.L8		#
.L9:
# problem51.c:29:             char chr = 'a' + rand() % 26;
	call	rand@plt	#
	mv	a5,a0	# tmp100,
# problem51.c:29:             char chr = 'a' + rand() % 26;
	mv	a4,a5	# tmp102, _7
	li	a5,26		# tmp104,
	remw	a5,a4,a5	# tmp104, tmp103, tmp102
	sext.w	a5,a5	# _8, tmp103
# problem51.c:29:             char chr = 'a' + rand() % 26;
	andi	a5,a5,0xff	# _9, _8
# problem51.c:29:             char chr = 'a' + rand() % 26;
	addiw	a5,a5,97	#, tmp105, _9
	sb	a5,-45(s0)	# tmp105, chr
# problem51.c:30:             str[j] = chr;
	lw	a5,-40(s0)		# _10, j
	ld	a4,-32(s0)		# tmp106, str
	add	a5,a4,a5	# _10, _11, tmp106
# problem51.c:30:             str[j] = chr;
	lbu	a4,-45(s0)	# tmp107, chr
	sb	a4,0(a5)	# tmp107, *_11
# problem51.c:28:         for (int j = 0; j < l; j++) {
	lw	a5,-40(s0)		# tmp110, j
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-40(s0)	# tmp108, j
.L8:
# problem51.c:28:         for (int j = 0; j < l; j++) {
	lw	a5,-40(s0)		# tmp112, j
	mv	a4,a5	# tmp111, tmp112
	lw	a5,-36(s0)		# tmp114, l
	sext.w	a4,a4	# tmp115, tmp111
	sext.w	a5,a5	# tmp116, tmp113
	blt	a4,a5,.L9	#, tmp115, tmp116,
# problem51.c:32:         str[l] = '\0';
	lw	a5,-36(s0)		# _12, l
	ld	a4,-32(s0)		# tmp117, str
	add	a5,a4,a5	# _12, _13, tmp117
# problem51.c:32:         str[l] = '\0';
	sb	zero,0(a5)	#, *_13
# problem51.c:34:         char *encoded_str = (char *)malloc(l + 1);
	lw	a5,-36(s0)		# tmp120, l
	addiw	a5,a5,1	#, tmp118, tmp119
	sext.w	a5,a5	# _14, tmp118
# problem51.c:34:         char *encoded_str = (char *)malloc(l + 1);
	mv	a0,a5	#, _15
	call	malloc@plt	#
	mv	a5,a0	# tmp121,
	sd	a5,-24(s0)	# tmp121, encoded_str
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
	mv	a5,a0	# tmp122,
	beq	a5,zero,.L10	#, _16,,
# problem51.c:38:         assert(strcmp(encoded_str, str) == 0);
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
	lw	a5,-44(s0)		# tmp125, i
	addiw	a5,a5,1	#, tmp123, tmp124
	sw	a5,-44(s0)	# tmp123, i
.L7:
# problem51.c:25:     for (int i = 0; i < 100; i++) {
	lw	a5,-44(s0)		# tmp127, i
	sext.w	a4,a5	# tmp128, tmp126
	li	a5,99		# tmp129,
	ble	a4,a5,.L11	#, tmp128, tmp129,
# problem51.c:44:     return 0;
	li	a5,0		# _25,
# problem51.c:45: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
