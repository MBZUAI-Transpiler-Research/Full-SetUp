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
	sd	a0,-56(s0)	# a, a
	sd	a1,-64(s0)	# b, b
# code.c:7:     int len_a = strlen(a);
	ld	a0,-56(s0)		#, a
	call	strlen@plt	#
	mv	a5,a0	# _1,
# code.c:7:     int len_a = strlen(a);
	sw	a5,-32(s0)	# _1, len_a
# code.c:8:     int len_b = strlen(b);
	ld	a0,-64(s0)		#, b
	call	strlen@plt	#
	mv	a5,a0	# _2,
# code.c:8:     int len_b = strlen(b);
	sw	a5,-28(s0)	# _2, len_b
# code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	lw	a5,-28(s0)		# tmp155, len_b
	slliw	a5,a5,1	#, tmp153, tmp154
	sext.w	a5,a5	# _3, tmp153
# code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	addiw	a5,a5,1	#, tmp156, _3
	sext.w	a5,a5	# _4, tmp156
# code.c:9:     char *temp = (char *)malloc(2 * len_b + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp157,
	sd	a5,-24(s0)	# tmp157, temp
# code.c:11:     for (int i = 0; i < len_b; i++) {
	sw	zero,-36(s0)	#, i
# code.c:11:     for (int i = 0; i < len_b; i++) {
	j	.L2		#
.L5:
# code.c:12:         strncpy(temp, b + i, len_b - i);
	lw	a5,-36(s0)		# _6, i
	ld	a4,-64(s0)		# tmp158, b
	add	a5,a4,a5	# _6, _7, tmp158
# code.c:12:         strncpy(temp, b + i, len_b - i);
	lw	a4,-28(s0)		# tmp161, len_b
	mv	a3,a4	# tmp160, tmp161
	lw	a4,-36(s0)		# tmp163, i
	subw	a4,a3,a4	# tmp159, tmp160, tmp162
	sext.w	a4,a4	# _8, tmp159
# code.c:12:         strncpy(temp, b + i, len_b - i);
	mv	a2,a4	#, _9
	mv	a1,a5	#, _7
	ld	a0,-24(s0)		#, temp
	call	strncpy@plt	#
# code.c:13:         strncpy(temp + len_b - i, b, i);
	lw	a4,-28(s0)		# _10, len_b
	lw	a5,-36(s0)		# _11, i
	sub	a5,a4,a5	# _12, _10, _11
# code.c:13:         strncpy(temp + len_b - i, b, i);
	ld	a4,-24(s0)		# tmp164, temp
	add	a5,a4,a5	# _12, _13, tmp164
	lw	a4,-36(s0)		# _14, i
	mv	a2,a4	#, _14
	ld	a1,-64(s0)		#, b
	mv	a0,a5	#, _13
	call	strncpy@plt	#
# code.c:14:         temp[len_b] = '\0';
	lw	a5,-28(s0)		# _15, len_b
	ld	a4,-24(s0)		# tmp165, temp
	add	a5,a4,a5	# _15, _16, tmp165
# code.c:14:         temp[len_b] = '\0';
	sb	zero,0(a5)	#, *_16
# code.c:15:         if (strstr(a, temp)) {
	ld	a1,-24(s0)		#, temp
	ld	a0,-56(s0)		#, a
	call	strstr@plt	#
	mv	a5,a0	# _17,
# code.c:15:         if (strstr(a, temp)) {
	beq	a5,zero,.L3	#, _17,,
# code.c:16:             free(temp);
	ld	a0,-24(s0)		#, temp
	call	free@plt	#
# code.c:17:             return true;
	li	a5,1		# _19,
	j	.L4		#
.L3:
# code.c:11:     for (int i = 0; i < len_b; i++) {
	lw	a5,-36(s0)		# tmp168, i
	addiw	a5,a5,1	#, tmp166, tmp167
	sw	a5,-36(s0)	# tmp166, i
.L2:
# code.c:11:     for (int i = 0; i < len_b; i++) {
	lw	a5,-36(s0)		# tmp170, i
	mv	a4,a5	# tmp169, tmp170
	lw	a5,-28(s0)		# tmp172, len_b
	sext.w	a4,a4	# tmp173, tmp169
	sext.w	a5,a5	# tmp174, tmp171
	blt	a4,a5,.L5	#, tmp173, tmp174,
# code.c:21:     free(temp);
	ld	a0,-24(s0)		#, temp
	call	free@plt	#
# code.c:22:     return false;
	li	a5,0		# _19,
.L4:
# code.c:23: }
	mv	a0,a5	#, <retval>
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
