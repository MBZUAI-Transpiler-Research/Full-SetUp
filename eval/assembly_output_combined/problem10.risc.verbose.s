	.file	"problem10.c"
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
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp148, size
	sw	a5,-44(s0)	# tmp149, size
# problem10.c:5:     if (size <= 0) {
	lw	a5,-44(s0)		# tmp151, size
	sext.w	a5,a5	# tmp152, tmp150
	bgt	a5,zero,.L2	#, tmp152,,
# problem10.c:6:         return NULL;
	li	a5,0		# _16,
	j	.L3		#
.L2:
# problem10.c:9:     int *out = malloc(size * sizeof(int));
	lw	a5,-44(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp153,
	sd	a5,-24(s0)	# tmp153, out
# problem10.c:10:     if (!out) {
	ld	a5,-24(s0)		# tmp154, out
	bne	a5,zero,.L4	#, tmp154,,
# problem10.c:11:         return NULL;
	li	a5,0		# _16,
	j	.L3		#
.L4:
# problem10.c:14:     int max = numbers[0];
	ld	a5,-40(s0)		# tmp155, numbers
	lw	a5,0(a5)		# tmp156, *numbers_23(D)
	sw	a5,-32(s0)	# tmp156, max
# problem10.c:15:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# problem10.c:15:     for (int i = 0; i < size; i++) {
	j	.L5		#
.L7:
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp157, numbers
	add	a5,a4,a5	# _4, _5, tmp157
	lw	a4,0(a5)		# _6, *_5
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-32(s0)		# tmp159, max
	sext.w	a5,a5	# tmp160, tmp158
	bge	a5,a4,.L6	#, tmp160, tmp161,
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,-28(s0)		# _7, i
	slli	a5,a5,2	#, _8, _7
	ld	a4,-40(s0)		# tmp162, numbers
	add	a5,a4,a5	# _8, _9, tmp162
# problem10.c:16:         if (numbers[i] > max) max = numbers[i];
	lw	a5,0(a5)		# tmp163, *_9
	sw	a5,-32(s0)	# tmp163, max
.L6:
# problem10.c:17:         out[i] = max;
	lw	a5,-28(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-24(s0)		# tmp164, out
	add	a5,a4,a5	# _11, _12, tmp164
# problem10.c:17:         out[i] = max;
	lw	a4,-32(s0)		# tmp165, max
	sw	a4,0(a5)	# tmp165, *_12
# problem10.c:15:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp168, i
	addiw	a5,a5,1	#, tmp166, tmp167
	sw	a5,-28(s0)	# tmp166, i
.L5:
# problem10.c:15:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp170, i
	mv	a4,a5	# tmp169, tmp170
	lw	a5,-44(s0)		# tmp172, size
	sext.w	a4,a4	# tmp173, tmp169
	sext.w	a5,a5	# tmp174, tmp171
	blt	a4,a5,.L7	#, tmp173, tmp174,
# problem10.c:19:     return out;
	ld	a5,-24(s0)		# _16, out
.L3:
# problem10.c:20: }
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp144, size
	sw	a5,-52(s0)	# tmp145, size
# problem10.c:29:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem10.c:29:     for (int i = 0; i < size; i++) {
	j	.L9		#
.L12:
# problem10.c:30:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, a
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# problem10.c:30:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp147, b
	add	a5,a4,a5	# _6, _7, tmp147
	lw	a5,0(a5)		# _8, *_7
# problem10.c:30:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp148, _4
	beq	a4,a5,.L10	#, tmp148, tmp149,
# problem10.c:30:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem10.c:30:         if (a[i] != b[i]) return 0;
	j	.L11		#
.L10:
# problem10.c:29:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L9:
# problem10.c:29:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L12	#, tmp157, tmp158,
# problem10.c:32:     return 1;
	li	a5,1		# _10,
.L11:
# problem10.c:33: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC5:
	.string	"problem10.c"
	.align	3
.LC6:
	.string	"result == NULL"
	.align	3
.LC7:
	.string	"issame(result, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC8:
	.string	"issame(result, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC9:
	.string	"issame(result, (int[]){3, 3, 3, 100, 100}, 5)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	4
	.word	3
	.word	2
	.word	1
	.align	3
.LC2:
	.word	4
	.word	4
	.word	4
	.word	4
	.align	3
.LC3:
	.word	3
	.word	2
	.word	3
	.word	100
	.word	3
	.align	3
.LC4:
	.word	3
	.word	3
	.word	3
	.word	100
	.word	100
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem10.c:35: int main() {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp174, __stack_chk_guard
	sd	a4, -24(s0)	# tmp174, D.3320
	li	a4, 0	# tmp174
# problem10.c:39:     result = func0((int[]){}, 0);
	addi	a5,s0,-112	#, tmp140,
	li	a1,0		#,
	mv	a0,a5	#, tmp140
	call	func0		#
	sd	a0,-120(s0)	#, result
# problem10.c:40:     assert(result == NULL);
	ld	a5,-120(s0)		# tmp141, result
	beq	a5,zero,.L14	#, tmp141,,
# problem10.c:40:     assert(result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem10.c:41:     free(result);
	ld	a0,-120(s0)		#, result
	call	free@plt	#
# problem10.c:44:     int test1[] = {1, 2, 3, 4};
	lla	a5,.LC0	# tmp142,
	ld	a4,0(a5)		# tmp143,
	sd	a4,-104(s0)	# tmp143, test1
	ld	a5,8(a5)		# tmp144,
	sd	a5,-96(s0)	# tmp144, test1
# problem10.c:45:     result = func0(test1, 4);
	addi	a5,s0,-104	#, tmp145,
	li	a1,4		#,
	mv	a0,a5	#, tmp145
	call	func0		#
	sd	a0,-120(s0)	#, result
# problem10.c:46:     assert(issame(result, (int[]){1, 2, 3, 4}, 4));
	lla	a5,.LC0	# tmp146,
	ld	a4,0(a5)		# tmp147,
	sd	a4,-48(s0)	# tmp147, MEM[(int[4] *)_42]
	ld	a5,8(a5)		# tmp148,
	sd	a5,-40(s0)	# tmp148, MEM[(int[4] *)_42]
	addi	a5,s0,-48	#, tmp149,
	li	a2,4		#,
	mv	a1,a5	#, tmp149
	ld	a0,-120(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp150,
# problem10.c:46:     assert(issame(result, (int[]){1, 2, 3, 4}, 4));
	bne	a5,zero,.L15	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L15:
# problem10.c:47:     free(result);
	ld	a0,-120(s0)		#, result
	call	free@plt	#
# problem10.c:50:     int test2[] = {4, 3, 2, 1};
	lla	a5,.LC1	# tmp151,
	ld	a4,0(a5)		# tmp152,
	sd	a4,-88(s0)	# tmp152, test2
	ld	a5,8(a5)		# tmp153,
	sd	a5,-80(s0)	# tmp153, test2
# problem10.c:51:     result = func0(test2, 4);
	addi	a5,s0,-88	#, tmp154,
	li	a1,4		#,
	mv	a0,a5	#, tmp154
	call	func0		#
	sd	a0,-120(s0)	#, result
# problem10.c:52:     assert(issame(result, (int[]){4, 4, 4, 4}, 4));
	lla	a5,.LC2	# tmp155,
	ld	a4,0(a5)		# tmp156,
	sd	a4,-48(s0)	# tmp156, MEM[(int[4] *)_42]
	ld	a5,8(a5)		# tmp157,
	sd	a5,-40(s0)	# tmp157, MEM[(int[4] *)_42]
	addi	a5,s0,-48	#, tmp158,
	li	a2,4		#,
	mv	a1,a5	#, tmp158
	ld	a0,-120(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp159,
# problem10.c:52:     assert(issame(result, (int[]){4, 4, 4, 4}, 4));
	bne	a5,zero,.L16	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L16:
# problem10.c:53:     free(result);
	ld	a0,-120(s0)		#, result
	call	free@plt	#
# problem10.c:56:     int test3[] = {3, 2, 3, 100, 3};
	lla	a5,.LC3	# tmp160,
	ld	a4,0(a5)		# tmp161,
	sd	a4,-72(s0)	# tmp161, test3
	ld	a4,8(a5)		# tmp162,
	sd	a4,-64(s0)	# tmp162, test3
	lw	a5,16(a5)		# tmp163,
	sw	a5,-56(s0)	# tmp163, test3
# problem10.c:57:     result = func0(test3, 5);
	addi	a5,s0,-72	#, tmp164,
	li	a1,5		#,
	mv	a0,a5	#, tmp164
	call	func0		#
	sd	a0,-120(s0)	#, result
# problem10.c:58:     assert(issame(result, (int[]){3, 3, 3, 100, 100}, 5));
	lla	a5,.LC4	# tmp165,
	ld	a4,0(a5)		# tmp166,
	sd	a4,-48(s0)	# tmp166, MEM[(int[5] *)_42]
	ld	a4,8(a5)		# tmp167,
	sd	a4,-40(s0)	# tmp167, MEM[(int[5] *)_42]
	lw	a5,16(a5)		# tmp168,
	sw	a5,-32(s0)	# tmp168, MEM[(int[5] *)_42]
	addi	a5,s0,-48	#, tmp169,
	li	a2,5		#,
	mv	a1,a5	#, tmp169
	ld	a0,-120(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp170,
# problem10.c:58:     assert(issame(result, (int[]){3, 3, 3, 100, 100}, 5));
	bne	a5,zero,.L17	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L17:
# problem10.c:59:     free(result);
	ld	a0,-120(s0)		#, result
	call	free@plt	#
# problem10.c:61:     return 0;
	li	a5,0		# _33,
# problem10.c:62: }
	mv	a4,a5	# <retval>, _33
	la	a5,__stack_chk_guard		# tmp172,
	ld	a3, -24(s0)	# tmp175, D.3320
	ld	a5, 0(a5)	# tmp173, __stack_chk_guard
	xor	a5, a3, a5	# tmp173, tmp175
	li	a3, 0	# tmp175
	beq	a5,zero,.L19	#, tmp173,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
