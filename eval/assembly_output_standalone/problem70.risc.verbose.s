	.file	"code.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp166, size
	sw	a5,-44(s0)	# tmp167, size
# eval/problem70//code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	lw	a5,-44(s0)		# tmp170, size
	addiw	a5,a5,1	#, tmp168, tmp169
	sext.w	a5,a5	# _1, tmp168
# eval/problem70//code.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	li	a1,4		#,
	mv	a0,a5	#, _2
	call	calloc@plt	#
	mv	a5,a0	# tmp171,
	sd	a5,-24(s0)	# tmp171, freq
# eval/problem70//code.c:6:     int max = -1;
	li	a5,-1		# tmp172,
	sw	a5,-32(s0)	# tmp172, max
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L4:
# eval/problem70//code.c:9:         freq[lst[i]]++;
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp173, lst
	add	a5,a4,a5	# _4, _5, tmp173
	lw	a5,0(a5)		# _6, *_5
# eval/problem70//code.c:9:         freq[lst[i]]++;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp174, freq
	add	a5,a4,a5	# _8, _9, tmp174
	lw	a4,0(a5)		# _10, *_9
# eval/problem70//code.c:9:         freq[lst[i]]++;
	addiw	a4,a4,1	#, tmp175, _10
	sext.w	a4,a4	# _11, tmp175
	sw	a4,0(a5)	# _11, *_9
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp176, lst
	add	a5,a4,a5	# _13, _14, tmp176
	lw	a5,0(a5)		# _15, *_14
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	slli	a5,a5,2	#, _17, _16
	ld	a4,-24(s0)		# tmp177, freq
	add	a5,a4,a5	# _17, _18, tmp177
	lw	a3,0(a5)		# _19, *_18
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-28(s0)		# _20, i
	slli	a5,a5,2	#, _21, _20
	ld	a4,-40(s0)		# tmp178, lst
	add	a5,a4,a5	# _21, _22, tmp178
	lw	a5,0(a5)		# _23, *_22
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	mv	a4,a3	# tmp179, _19
	blt	a4,a5,.L3	#, tmp179, tmp180,
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-28(s0)		# _24, i
	slli	a5,a5,2	#, _25, _24
	ld	a4,-40(s0)		# tmp181, lst
	add	a5,a4,a5	# _25, _26, tmp181
	lw	a4,0(a5)		# _27, *_26
# eval/problem70//code.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-32(s0)		# tmp183, max
	sext.w	a5,a5	# tmp184, tmp182
	bge	a5,a4,.L3	#, tmp184, tmp185,
# eval/problem70//code.c:11:             max = lst[i];
	lw	a5,-28(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a4,-40(s0)		# tmp186, lst
	add	a5,a4,a5	# _29, _30, tmp186
# eval/problem70//code.c:11:             max = lst[i];
	lw	a5,0(a5)		# tmp187, *_30
	sw	a5,-32(s0)	# tmp187, max
.L3:
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp190, i
	addiw	a5,a5,1	#, tmp188, tmp189
	sw	a5,-28(s0)	# tmp188, i
.L2:
# eval/problem70//code.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp192, i
	mv	a4,a5	# tmp191, tmp192
	lw	a5,-44(s0)		# tmp194, size
	sext.w	a4,a4	# tmp195, tmp191
	sext.w	a5,a5	# tmp196, tmp193
	blt	a4,a5,.L4	#, tmp195, tmp196,
# eval/problem70//code.c:15:     free(freq);
	ld	a0,-24(s0)		#, freq
	call	free@plt	#
# eval/problem70//code.c:16:     return max;
	lw	a5,-32(s0)		# _42, max
# eval/problem70//code.c:17: }
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
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
