	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# message, message
	sd	a1,-64(s0)	# out, out
# code.c:6:     const char* vowels = "aeiouAEIOU";
	lla	a5,.LC0	# tmp169,
	sd	a5,-24(s0)	# tmp169, vowels
# code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	sw	zero,-32(s0)	#, i
# code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	j	.L2		#
.L10:
# code.c:10:         char w = message[i];
	lw	a5,-32(s0)		# _1, i
	ld	a4,-56(s0)		# tmp170, message
	add	a5,a4,a5	# _1, _2, tmp170
# code.c:10:         char w = message[i];
	lbu	a5,0(a5)	# tmp171, *_2
	sb	a5,-33(s0)	# tmp171, w
# code.c:11:         if (islower(w)) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _3,
# code.c:11:         if (islower(w)) {
	ld	a4,0(a5)		# _4, *_3
	lbu	a5,-33(s0)	# _5, w
	slli	a5,a5,1	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lhu	a5,0(a5)	# _8, *_7
	sext.w	a5,a5	# _9, _8
	andi	a5,a5,512	#, tmp172, _9
	sext.w	a5,a5	# _10, tmp172
# code.c:11:         if (islower(w)) {
	beq	a5,zero,.L3	#, _10,,
# code.c:12:             w = toupper(w);
	lbu	a5,-33(s0)	# tmp173, w
	sext.w	a5,a5	# _11, tmp173
	mv	a0,a5	#, _11
	call	toupper@plt	#
	mv	a5,a0	# tmp174,
# code.c:12:             w = toupper(w);
	sb	a5,-33(s0)	# _12, w
	j	.L4		#
.L3:
# code.c:13:         } else if (isupper(w)) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _13,
# code.c:13:         } else if (isupper(w)) {
	ld	a4,0(a5)		# _14, *_13
	lbu	a5,-33(s0)	# _15, w
	slli	a5,a5,1	#, _16, _15
	add	a5,a4,a5	# _16, _17, _14
	lhu	a5,0(a5)	# _18, *_17
	sext.w	a5,a5	# _19, _18
	andi	a5,a5,256	#, tmp175, _19
	sext.w	a5,a5	# _20, tmp175
# code.c:13:         } else if (isupper(w)) {
	beq	a5,zero,.L4	#, _20,,
# code.c:14:             w = tolower(w);
	lbu	a5,-33(s0)	# tmp176, w
	sext.w	a5,a5	# _21, tmp176
	mv	a0,a5	#, _21
	call	tolower@plt	#
	mv	a5,a0	# tmp177,
# code.c:14:             w = tolower(w);
	sb	a5,-33(s0)	# _22, w
.L4:
# code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	sw	zero,-28(s0)	#, j
# code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	j	.L5		#
.L9:
# code.c:18:             if (w == vowels[j]) {
	lw	a5,-28(s0)		# _23, j
	ld	a4,-24(s0)		# tmp178, vowels
	add	a5,a4,a5	# _23, _24, tmp178
	lbu	a4,0(a5)	# _25, *_24
# code.c:18:             if (w == vowels[j]) {
	lbu	a5,-33(s0)	# tmp180, w
	andi	a5,a5,0xff	# tmp181, tmp179
	bne	a5,a4,.L6	#, tmp181, tmp182,
# code.c:19:                 if (j < 10) {
	lw	a5,-28(s0)		# tmp184, j
	sext.w	a4,a5	# tmp185, tmp183
	li	a5,9		# tmp186,
	bgt	a4,a5,.L11	#, tmp185, tmp186,
# code.c:20:                     w = w + 2;
	lbu	a5,-33(s0)	# tmp188, w
	addiw	a5,a5,2	#, tmp189, tmp187
	sb	a5,-33(s0)	# tmp189, w
# code.c:22:                 break;
	j	.L11		#
.L6:
# code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	lw	a5,-28(s0)		# tmp192, j
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-28(s0)	# tmp190, j
.L5:
# code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	lw	a5,-28(s0)		# _26, j
	ld	a4,-24(s0)		# tmp193, vowels
	add	a5,a4,a5	# _26, _27, tmp193
	lbu	a5,0(a5)	# _28, *_27
# code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	bne	a5,zero,.L9	#, _28,,
	j	.L8		#
.L11:
# code.c:22:                 break;
	nop	
.L8:
# code.c:25:         out[i] = w;
	lw	a5,-32(s0)		# _29, i
	ld	a4,-64(s0)		# tmp194, out
	add	a5,a4,a5	# _29, _30, tmp194
# code.c:25:         out[i] = w;
	lbu	a4,-33(s0)	# tmp195, w
	sb	a4,0(a5)	# tmp195, *_30
# code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	lw	a5,-32(s0)		# tmp198, i
	addiw	a5,a5,1	#, tmp196, tmp197
	sw	a5,-32(s0)	# tmp196, i
.L2:
# code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	lw	a5,-32(s0)		# _31, i
	ld	a4,-56(s0)		# tmp199, message
	add	a5,a4,a5	# _31, _32, tmp199
	lbu	a5,0(a5)	# _33, *_32
# code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	bne	a5,zero,.L10	#, _33,,
# code.c:27:     out[i] = '\0';
	lw	a5,-32(s0)		# _34, i
	ld	a4,-64(s0)		# tmp200, out
	add	a5,a4,a5	# _34, _35, tmp200
# code.c:27:     out[i] = '\0';
	sb	zero,0(a5)	#, *_35
# code.c:28: }
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
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
