	.file	"problem164.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp141, a
	mv	a4,a1	# tmp143, b
	sd	a2,-48(s0)	# out, out
	sd	a3,-56(s0)	# size, size
	sw	a5,-36(s0)	# tmp142, a
	mv	a5,a4	# tmp144, tmp143
	sw	a5,-40(s0)	# tmp144, b
# problem164.c:5:     *size = 0;
	ld	a5,-56(s0)		# tmp145, size
	sw	zero,0(a5)	#, *size_15(D)
# problem164.c:7:     if (b < a) {
	lw	a5,-40(s0)		# tmp147, b
	mv	a4,a5	# tmp146, tmp147
	lw	a5,-36(s0)		# tmp149, a
	sext.w	a4,a4	# tmp150, tmp146
	sext.w	a5,a5	# tmp151, tmp148
	bge	a4,a5,.L2	#, tmp150, tmp151,
# problem164.c:8:         m = a;
	lw	a5,-36(s0)		# tmp152, a
	sw	a5,-20(s0)	# tmp152, m
# problem164.c:9:         a = b;
	lw	a5,-40(s0)		# tmp153, b
	sw	a5,-36(s0)	# tmp153, a
# problem164.c:10:         b = m;
	lw	a5,-20(s0)		# tmp154, m
	sw	a5,-40(s0)	# tmp154, b
.L2:
# problem164.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-36(s0)		# tmp155, a
	sw	a5,-24(s0)	# tmp155, i
# problem164.c:13:     for (int i = a; i <= b; i++) {
	j	.L3		#
.L5:
# problem164.c:14:         if (i < 10 && i % 2 == 0) {
	lw	a5,-24(s0)		# tmp157, i
	sext.w	a4,a5	# tmp158, tmp156
	li	a5,9		# tmp159,
	bgt	a4,a5,.L4	#, tmp158, tmp159,
# problem164.c:14:         if (i < 10 && i % 2 == 0) {
	lw	a5,-24(s0)		# i.0_1, i
	andi	a5,a5,1	#, tmp161, tmp160
	sext.w	a5,a5	# _2, tmp161
# problem164.c:14:         if (i < 10 && i % 2 == 0) {
	bne	a5,zero,.L4	#, _2,,
# problem164.c:15:             out[(*size)++] = i;
	ld	a5,-56(s0)		# tmp162, size
	lw	a5,0(a5)		# _3, *size_15(D)
# problem164.c:15:             out[(*size)++] = i;
	addiw	a4,a5,1	#, tmp163, _3
	sext.w	a3,a4	# _5, tmp163
	ld	a4,-56(s0)		# tmp164, size
	sw	a3,0(a4)	# _5, *size_15(D)
# problem164.c:15:             out[(*size)++] = i;
	slli	a5,a5,2	#, _7, _6
	ld	a4,-48(s0)		# tmp165, out
	add	a5,a4,a5	# _7, _8, tmp165
# problem164.c:15:             out[(*size)++] = i;
	lw	a4,-24(s0)		# tmp166, i
	sw	a4,0(a5)	# tmp166, *_8
.L4:
# problem164.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-24(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-24(s0)	# tmp167, i
.L3:
# problem164.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-24(s0)		# tmp171, i
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-40(s0)		# tmp173, b
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	ble	a4,a5,.L5	#, tmp174, tmp175,
# problem164.c:18: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp144, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, b_size
	sw	a5,-44(s0)	# tmp145, a_size
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, b_size
# problem164.c:25:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp149, a_size
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, b_size
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L7	#, tmp152, tmp153,
# problem164.c:25:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
# problem164.c:25:     if (a_size != b_size) return 0;
	j	.L8		#
.L7:
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	j	.L9		#
.L11:
# problem164.c:27:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem164.c:27:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem164.c:27:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L10	#, tmp156, tmp157,
# problem164.c:27:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem164.c:27:         if (a[i] != b[i]) return 0;
	j	.L8		#
.L10:
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L9:
# problem164.c:26:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, a_size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L11	#, tmp165, tmp166,
# problem164.c:29:     return 1;
	li	a5,1		# _10,
.L8:
# problem164.c:30: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC1:
	.string	"problem164.c"
	.align	3
.LC2:
	.string	"issame(result, size, expected1, 4)"
	.align	3
.LC3:
	.string	"issame(result, size, expected2, 4)"
	.align	3
.LC4:
	.string	"issame(result, size, expected3, 4)"
	.align	3
.LC5:
	.string	"issame(result, size, expected4, 0)"
	.align	3
.LC6:
	.string	"All tests passed."
	.align	3
.LC0:
	.word	2
	.word	4
	.word	6
	.word	8
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem164.c:32: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp177, __stack_chk_guard
	sd	a4, -24(s0)	# tmp177, D.2792
	li	a4, 0	# tmp177
# problem164.c:35:     int expected1[] = {2, 4, 6, 8};
	lla	a5,.LC0	# tmp145,
	ld	a4,0(a5)		# tmp146,
	sd	a4,-112(s0)	# tmp146, expected1
	ld	a5,8(a5)		# tmp147,
	sd	a5,-104(s0)	# tmp147, expected1
# problem164.c:36:     func0(2, 10, result, &size);
	addi	a4,s0,-124	#, tmp148,
	addi	a5,s0,-64	#, tmp149,
	mv	a3,a4	#, tmp148
	mv	a2,a5	#, tmp149
	li	a1,10		#,
	li	a0,2		#,
	call	func0		#
# problem164.c:37:     assert(issame(result, size, expected1, 4));
	lw	a4,-124(s0)		# size.1_1, size
	addi	a2,s0,-112	#, tmp150,
	addi	a5,s0,-64	#, tmp151,
	li	a3,4		#,
	mv	a1,a4	#, size.1_1
	mv	a0,a5	#, tmp151
	call	issame		#
	mv	a5,a0	# tmp152,
# problem164.c:37:     assert(issame(result, size, expected1, 4));
	bne	a5,zero,.L13	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L13:
# problem164.c:39:     int expected2[] = {2, 4, 6, 8};
	lla	a5,.LC0	# tmp153,
	ld	a4,0(a5)		# tmp154,
	sd	a4,-96(s0)	# tmp154, expected2
	ld	a5,8(a5)		# tmp155,
	sd	a5,-88(s0)	# tmp155, expected2
# problem164.c:40:     func0(10, 2, result, &size);
	addi	a4,s0,-124	#, tmp156,
	addi	a5,s0,-64	#, tmp157,
	mv	a3,a4	#, tmp156
	mv	a2,a5	#, tmp157
	li	a1,2		#,
	li	a0,10		#,
	call	func0		#
# problem164.c:41:     assert(issame(result, size, expected2, 4));
	lw	a4,-124(s0)		# size.2_3, size
	addi	a2,s0,-96	#, tmp158,
	addi	a5,s0,-64	#, tmp159,
	li	a3,4		#,
	mv	a1,a4	#, size.2_3
	mv	a0,a5	#, tmp159
	call	issame		#
	mv	a5,a0	# tmp160,
# problem164.c:41:     assert(issame(result, size, expected2, 4));
	bne	a5,zero,.L14	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC1	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L14:
# problem164.c:43:     int expected3[] = {2, 4, 6, 8};
	lla	a5,.LC0	# tmp161,
	ld	a4,0(a5)		# tmp162,
	sd	a4,-80(s0)	# tmp162, expected3
	ld	a5,8(a5)		# tmp163,
	sd	a5,-72(s0)	# tmp163, expected3
# problem164.c:44:     func0(132, 2, result, &size);
	addi	a4,s0,-124	#, tmp164,
	addi	a5,s0,-64	#, tmp165,
	mv	a3,a4	#, tmp164
	mv	a2,a5	#, tmp165
	li	a1,2		#,
	li	a0,132		#,
	call	func0		#
# problem164.c:45:     assert(issame(result, size, expected3, 4));
	lw	a4,-124(s0)		# size.3_5, size
	addi	a2,s0,-80	#, tmp166,
	addi	a5,s0,-64	#, tmp167,
	li	a3,4		#,
	mv	a1,a4	#, size.3_5
	mv	a0,a5	#, tmp167
	call	issame		#
	mv	a5,a0	# tmp168,
# problem164.c:45:     assert(issame(result, size, expected3, 4));
	bne	a5,zero,.L15	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L15:
# problem164.c:48:     func0(17, 89, result, &size);
	addi	a4,s0,-124	#, tmp169,
	addi	a5,s0,-64	#, tmp170,
	mv	a3,a4	#, tmp169
	mv	a2,a5	#, tmp170
	li	a1,89		#,
	li	a0,17		#,
	call	func0		#
# problem164.c:49:     assert(issame(result, size, expected4, 0));
	lw	a4,-124(s0)		# size.4_7, size
	addi	a2,s0,-120	#, tmp171,
	addi	a5,s0,-64	#, tmp172,
	li	a3,0		#,
	mv	a1,a4	#, size.4_7
	mv	a0,a5	#, tmp172
	call	issame		#
	mv	a5,a0	# tmp173,
# problem164.c:49:     assert(issame(result, size, expected4, 0));
	bne	a5,zero,.L16	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L16:
# problem164.c:51:     printf("All tests passed.\n");
	lla	a0,.LC6	#,
	call	puts@plt	#
# problem164.c:53:     return 0;
	li	a5,0		# _26,
# problem164.c:54: }
	mv	a4,a5	# <retval>, _26
	la	a5,__stack_chk_guard		# tmp175,
	ld	a3, -24(s0)	# tmp178, D.2792
	ld	a5, 0(a5)	# tmp176, __stack_chk_guard
	xor	a5, a3, a5	# tmp176, tmp178
	li	a3, 0	# tmp178
	beq	a5,zero,.L18	#, tmp176,,
	call	__stack_chk_fail@plt	#
.L18:
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
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
