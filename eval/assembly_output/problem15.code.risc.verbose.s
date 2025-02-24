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
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# str, str
	sd	a1,-80(s0)	# count, count
# code.c:6:     int len = strlen(str);
	ld	a0,-72(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# code.c:6:     int len = strlen(str);
	sw	a5,-60(s0)	# _1, len
# code.c:7:     char **out = malloc(len * sizeof(char *));
	lw	a5,-60(s0)		# _2, len
	slli	a5,a5,3	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp158,
	sd	a5,-48(s0)	# tmp158, out
# code.c:9:     char *current = malloc(len + 1);
	lw	a5,-60(s0)		# tmp161, len
	addiw	a5,a5,1	#, tmp159, tmp160
	sext.w	a5,a5	# _4, tmp159
# code.c:9:     char *current = malloc(len + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp162,
	sd	a5,-56(s0)	# tmp162, current
# code.c:10:     current[0] = '\0';
	ld	a5,-56(s0)		# tmp163, current
	sb	zero,0(a5)	#, *current_32
# code.c:12:     for (int i = 0; i < len; ++i) {
	sw	zero,-64(s0)	#, i
# code.c:12:     for (int i = 0; i < len; ++i) {
	j	.L2		#
.L3:
# code.c:13:         size_t current_len = strlen(current);
	ld	a0,-56(s0)		#, current
	call	strlen@plt	#
	sd	a0,-40(s0)	#, current_len
# code.c:14:         current = realloc(current, current_len + 2);
	ld	a5,-40(s0)		# tmp164, current_len
	addi	a5,a5,2	#, _6, tmp164
	mv	a1,a5	#, _6
	ld	a0,-56(s0)		#, current
	call	realloc@plt	#
	sd	a0,-56(s0)	#, current
# code.c:15:         current[current_len] = str[i];
	lw	a5,-64(s0)		# _7, i
	ld	a4,-72(s0)		# tmp165, str
	add	a4,a4,a5	# _7, _8, tmp165
# code.c:15:         current[current_len] = str[i];
	ld	a3,-56(s0)		# tmp166, current
	ld	a5,-40(s0)		# tmp167, current_len
	add	a5,a3,a5	# tmp167, _9, tmp166
# code.c:15:         current[current_len] = str[i];
	lbu	a4,0(a4)	# _10, *_8
# code.c:15:         current[current_len] = str[i];
	sb	a4,0(a5)	# _10, *_9
# code.c:16:         current[current_len + 1] = '\0';
	ld	a5,-40(s0)		# tmp168, current_len
	addi	a5,a5,1	#, _11, tmp168
	ld	a4,-56(s0)		# tmp169, current
	add	a5,a4,a5	# _11, _12, tmp169
# code.c:16:         current[current_len + 1] = '\0';
	sb	zero,0(a5)	#, *_12
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	ld	a0,-56(s0)		#, current
	call	strlen@plt	#
	mv	a5,a0	# _13,
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	addi	a3,a5,1	#, _14, _13
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	lw	a5,-64(s0)		# _15, i
	slli	a5,a5,3	#, _16, _15
	ld	a4,-48(s0)		# tmp170, out
	add	s1,a4,a5	# _16, _17, tmp170
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	mv	a0,a3	#, _14
	call	malloc@plt	#
	mv	a5,a0	# tmp171,
# code.c:18:         out[i] = malloc(strlen(current) + 1);
	sd	a5,0(s1)	# _18, *_17
# code.c:19:         strcpy(out[i], current);
	lw	a5,-64(s0)		# _19, i
	slli	a5,a5,3	#, _20, _19
	ld	a4,-48(s0)		# tmp172, out
	add	a5,a4,a5	# _20, _21, tmp172
# code.c:19:         strcpy(out[i], current);
	ld	a5,0(a5)		# _22, *_21
	ld	a1,-56(s0)		#, current
	mv	a0,a5	#, _22
	call	strcpy@plt	#
# code.c:12:     for (int i = 0; i < len; ++i) {
	lw	a5,-64(s0)		# tmp175, i
	addiw	a5,a5,1	#, tmp173, tmp174
	sw	a5,-64(s0)	# tmp173, i
.L2:
# code.c:12:     for (int i = 0; i < len; ++i) {
	lw	a5,-64(s0)		# tmp177, i
	mv	a4,a5	# tmp176, tmp177
	lw	a5,-60(s0)		# tmp179, len
	sext.w	a4,a4	# tmp180, tmp176
	sext.w	a5,a5	# tmp181, tmp178
	blt	a4,a5,.L3	#, tmp180, tmp181,
# code.c:21:     free(current);
	ld	a0,-56(s0)		#, current
	call	free@plt	#
# code.c:23:     *count = len;
	ld	a5,-80(s0)		# tmp182, count
	lw	a4,-60(s0)		# tmp183, len
	sw	a4,0(a5)	# tmp183, *count_36(D)
# code.c:24:     return out;
	ld	a5,-48(s0)		# _38, out
# code.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)		#,
	.cfi_restore 9
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
