	.file	"problem107.c"
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
	mv	a5,a0	# tmp148, n
	sw	a5,-52(s0)	# tmp149, n
# problem107.c:5:     int* out = (int*)malloc(n * sizeof(int));
	lw	a5,-52(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp150,
	sd	a5,-24(s0)	# tmp150, out
# problem107.c:6:     int sum = 0, prod = 1;
	sw	zero,-36(s0)	#, sum
# problem107.c:6:     int sum = 0, prod = 1;
	li	a5,1		# tmp151,
	sw	a5,-32(s0)	# tmp151, prod
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp152,
	sw	a5,-28(s0)	# tmp152, i
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L5:
# problem107.c:8:         sum += i;
	lw	a5,-36(s0)		# tmp155, sum
	mv	a4,a5	# tmp154, tmp155
	lw	a5,-28(s0)		# tmp157, i
	addw	a5,a4,a5	# tmp156, tmp153, tmp154
	sw	a5,-36(s0)	# tmp153, sum
# problem107.c:9:         prod *= i;
	lw	a5,-32(s0)		# tmp160, prod
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-28(s0)		# tmp162, i
	mulw	a5,a4,a5	# tmp158, tmp159, tmp161
	sw	a5,-32(s0)	# tmp158, prod
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a5,-28(s0)		# i.0_3, i
	andi	a5,a5,1	#, tmp164, tmp163
	sext.w	a5,a5	# _4, tmp164
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	bne	a5,zero,.L3	#, _4,,
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a5,-28(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-24(s0)		# tmp165, out
	add	a5,a4,a5	# _7, _8, tmp165
# problem107.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a4,-32(s0)		# tmp166, prod
	sw	a4,0(a5)	# tmp166, *_8
	j	.L4		#
.L3:
# problem107.c:11:         else out[i - 1] = sum;
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	addi	a5,a5,-4	#, _11, _10
	ld	a4,-24(s0)		# tmp167, out
	add	a5,a4,a5	# _11, _12, tmp167
# problem107.c:11:         else out[i - 1] = sum;
	lw	a4,-36(s0)		# tmp168, sum
	sw	a4,0(a5)	# tmp168, *_12
.L4:
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	lw	a5,-28(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-28(s0)	# tmp169, i
.L2:
# problem107.c:7:     for (int i = 1; i <= n; i++) {
	lw	a5,-28(s0)		# tmp173, i
	mv	a4,a5	# tmp172, tmp173
	lw	a5,-52(s0)		# tmp175, n
	sext.w	a4,a4	# tmp176, tmp172
	sext.w	a5,a5	# tmp177, tmp174
	ble	a4,a5,.L5	#, tmp176, tmp177,
# problem107.c:13:     return out;
	ld	a5,-24(s0)		# _25, out
# problem107.c:14: }
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
	mv	a5,a1	# tmp144, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, b_size
	sw	a5,-44(s0)	# tmp145, a_size
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, b_size
# problem107.c:23:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp149, a_size
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, b_size
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L8	#, tmp152, tmp153,
# problem107.c:23:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
# problem107.c:23:     if (a_size != b_size) return 0;
	j	.L9		#
.L8:
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	j	.L10		#
.L12:
# problem107.c:25:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem107.c:25:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem107.c:25:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L11	#, tmp156, tmp157,
# problem107.c:25:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem107.c:25:         if (a[i] != b[i]) return 0;
	j	.L9		#
.L11:
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L10:
# problem107.c:24:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, a_size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L12	#, tmp165, tmp166,
# problem107.c:27:     return 1;
	li	a5,1		# _10,
.L9:
# problem107.c:28: }
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
.LC2:
	.string	"problem107.c"
	.align	3
.LC3:
	.string	"issame(result, 5, expected1, 5)"
	.align	3
.LC4:
	.string	"issame(result, 7, expected2, 7)"
	.align	3
.LC5:
	.string	"issame(result, 1, expected3, 1)"
	.align	3
.LC6:
	.string	"issame(result, 3, expected4, 3)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	6
	.word	24
	.word	15
	.align	3
.LC1:
	.word	1
	.word	2
	.word	6
	.word	24
	.word	15
	.word	720
	.word	28
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
# problem107.c:30: int main() {
	la	a5,__stack_chk_guard		# tmp140,
	ld	a4, 0(a5)	# tmp165, __stack_chk_guard
	sd	a4, -24(s0)	# tmp165, D.3308
	li	a4, 0	# tmp165
# problem107.c:32:     int expected1[] = {1, 2, 6, 24, 15};
	lla	a5,.LC0	# tmp141,
	ld	a4,0(a5)		# tmp142,
	sd	a4,-80(s0)	# tmp142, expected1
	ld	a4,8(a5)		# tmp143,
	sd	a4,-72(s0)	# tmp143, expected1
	lw	a5,16(a5)		# tmp144,
	sw	a5,-64(s0)	# tmp144, expected1
# problem107.c:33:     result = func0(5);
	li	a0,5		#,
	call	func0		#
	sd	a0,-112(s0)	#, result
# problem107.c:34:     assert(issame(result, 5, expected1, 5));
	addi	a5,s0,-80	#, tmp145,
	li	a3,5		#,
	mv	a2,a5	#, tmp145
	li	a1,5		#,
	ld	a0,-112(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp146,
# problem107.c:34:     assert(issame(result, 5, expected1, 5));
	bne	a5,zero,.L14	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L14:
# problem107.c:35:     free(result);
	ld	a0,-112(s0)		#, result
	call	free@plt	#
# problem107.c:37:     int expected2[] = {1, 2, 6, 24, 15, 720, 28};
	lla	a5,.LC1	# tmp147,
	ld	a2,0(a5)		# tmp148,
	ld	a3,8(a5)		# tmp149,
	ld	a4,16(a5)		# tmp150,
	sd	a2,-56(s0)	# tmp148, expected2
	sd	a3,-48(s0)	# tmp149, expected2
	sd	a4,-40(s0)	# tmp150, expected2
	lw	a5,24(a5)		# tmp151,
	sw	a5,-32(s0)	# tmp151, expected2
# problem107.c:38:     result = func0(7);
	li	a0,7		#,
	call	func0		#
	sd	a0,-112(s0)	#, result
# problem107.c:39:     assert(issame(result, 7, expected2, 7));
	addi	a5,s0,-56	#, tmp152,
	li	a3,7		#,
	mv	a2,a5	#, tmp152
	li	a1,7		#,
	ld	a0,-112(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp153,
# problem107.c:39:     assert(issame(result, 7, expected2, 7));
	bne	a5,zero,.L15	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC2	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L15:
# problem107.c:40:     free(result);
	ld	a0,-112(s0)		#, result
	call	free@plt	#
# problem107.c:42:     int expected3[] = {1};
	li	a5,1		# tmp154,
	sw	a5,-104(s0)	# tmp154, expected3[0]
# problem107.c:43:     result = func0(1);
	li	a0,1		#,
	call	func0		#
	sd	a0,-112(s0)	#, result
# problem107.c:44:     assert(issame(result, 1, expected3, 1));
	addi	a5,s0,-104	#, tmp155,
	li	a3,1		#,
	mv	a2,a5	#, tmp155
	li	a1,1		#,
	ld	a0,-112(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp156,
# problem107.c:44:     assert(issame(result, 1, expected3, 1));
	bne	a5,zero,.L16	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L16:
# problem107.c:45:     free(result);
	ld	a0,-112(s0)		#, result
	call	free@plt	#
# problem107.c:47:     int expected4[] = {1, 2, 6};
	li	a5,1		# tmp157,
	sw	a5,-96(s0)	# tmp157, expected4[0]
	li	a5,2		# tmp158,
	sw	a5,-92(s0)	# tmp158, expected4[1]
	li	a5,6		# tmp159,
	sw	a5,-88(s0)	# tmp159, expected4[2]
# problem107.c:48:     result = func0(3);
	li	a0,3		#,
	call	func0		#
	sd	a0,-112(s0)	#, result
# problem107.c:49:     assert(issame(result, 3, expected4, 3));
	addi	a5,s0,-96	#, tmp160,
	li	a3,3		#,
	mv	a2,a5	#, tmp160
	li	a1,3		#,
	ld	a0,-112(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp161,
# problem107.c:49:     assert(issame(result, 3, expected4, 3));
	bne	a5,zero,.L17	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L17:
# problem107.c:50:     free(result);
	ld	a0,-112(s0)		#, result
	call	free@plt	#
# problem107.c:52:     return 0;
	li	a5,0		# _32,
# problem107.c:53: }
	mv	a4,a5	# <retval>, _32
	la	a5,__stack_chk_guard		# tmp163,
	ld	a3, -24(s0)	# tmp166, D.3308
	ld	a5, 0(a5)	# tmp164, __stack_chk_guard
	xor	a5, a3, a5	# tmp164, tmp166
	li	a3, 0	# tmp166
	beq	a5,zero,.L19	#, tmp164,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112	#,,
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
