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
# code.c:6:     int len_a = strlen(a);
	ld	a0,-56(s0)		#, a
	call	strlen@plt	#
	mv	a5,a0	# _1,
# code.c:6:     int len_a = strlen(a);
	sw	a5,-36(s0)	# _1, len_a
# code.c:7:     int len_b = strlen(b);
	ld	a0,-64(s0)		#, b
	call	strlen@plt	#
	mv	a5,a0	# _2,
# code.c:7:     int len_b = strlen(b);
	sw	a5,-32(s0)	# _2, len_b
# code.c:8:     int min_len = len_a < len_b ? len_a : len_b;
	lw	a5,-36(s0)		# tmp153, len_a
	mv	a2,a5	# tmp152, tmp153
	lw	a5,-32(s0)		# tmp154, len_b
	sext.w	a3,a5	# tmp155, tmp151
	sext.w	a4,a2	# tmp156, tmp152
	ble	a3,a4,.L2	#, tmp155, tmp156,
	mv	a5,a2	# tmp151, tmp152
.L2:
	sw	a5,-28(s0)	# tmp151, min_len
# code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	lw	a5,-28(s0)		# tmp159, min_len
	addiw	a5,a5,1	#, tmp157, tmp158
	sext.w	a5,a5	# _3, tmp157
# code.c:9:     char *output = malloc((min_len + 1) * sizeof(char));
	mv	a0,a5	#, _4
	call	malloc@plt	#
	mv	a5,a0	# tmp160,
	sd	a5,-24(s0)	# tmp160, output
# code.c:10:     if (!output) return NULL;
	ld	a5,-24(s0)		# tmp161, output
	bne	a5,zero,.L3	#, tmp161,,
# code.c:10:     if (!output) return NULL;
	li	a5,0		# _16,
# code.c:10:     if (!output) return NULL;
	j	.L4		#
.L3:
# code.c:12:     for (int i = 0; i < min_len; i++) {
	sw	zero,-40(s0)	#, i
# code.c:12:     for (int i = 0; i < min_len; i++) {
	j	.L5		#
.L8:
# code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	lw	a5,-40(s0)		# _5, i
	ld	a4,-56(s0)		# tmp162, a
	add	a5,a4,a5	# _5, _6, tmp162
	lbu	a3,0(a5)	# _7, *_6
# code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	lw	a5,-40(s0)		# _8, i
	ld	a4,-64(s0)		# tmp163, b
	add	a5,a4,a5	# _8, _9, tmp163
	lbu	a5,0(a5)	# _10, *_9
# code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	mv	a4,a3	# tmp164, _7
	bne	a4,a5,.L6	#, tmp164, tmp165,
# code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	li	a5,48		# iftmp.0_17,
	j	.L7		#
.L6:
# code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	li	a5,49		# iftmp.0_17,
.L7:
# code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	lw	a4,-40(s0)		# _11, i
	ld	a3,-24(s0)		# tmp166, output
	add	a4,a3,a4	# _11, _12, tmp166
# code.c:13:         output[i] = (a[i] == b[i]) ? '0' : '1';
	sb	a5,0(a4)	# iftmp.0_17, *_12
# code.c:12:     for (int i = 0; i < min_len; i++) {
	lw	a5,-40(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-40(s0)	# tmp167, i
.L5:
# code.c:12:     for (int i = 0; i < min_len; i++) {
	lw	a5,-40(s0)		# tmp171, i
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-28(s0)		# tmp173, min_len
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	blt	a4,a5,.L8	#, tmp174, tmp175,
# code.c:15:     output[min_len] = '\0';
	lw	a5,-28(s0)		# _13, min_len
	ld	a4,-24(s0)		# tmp176, output
	add	a5,a4,a5	# _13, _14, tmp176
# code.c:15:     output[min_len] = '\0';
	sb	zero,0(a5)	#, *_14
# code.c:16:     return output;
	ld	a5,-24(s0)		# _16, output
.L4:
# code.c:17: }
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
