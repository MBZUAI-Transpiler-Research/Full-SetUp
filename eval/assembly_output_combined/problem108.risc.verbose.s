	.file	"problem108.c"
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
	mv	a5,a0	# tmp146, n
	sw	a5,-52(s0)	# tmp147, n
# problem108.c:5:     int* counts = (int*)malloc(2 * sizeof(int));
	li	a0,8		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp148,
	sd	a5,-24(s0)	# tmp148, counts
# problem108.c:6:     counts[0] = 0;
	ld	a5,-24(s0)		# tmp149, counts
	sw	zero,0(a5)	#, *counts_18
# problem108.c:7:     counts[1] = 0;
	ld	a5,-24(s0)		# tmp150, counts
	addi	a5,a5,4	#, _1, tmp150
# problem108.c:7:     counts[1] = 0;
	sw	zero,0(a5)	#, *_1
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp151,
	sw	a5,-40(s0)	# tmp151, i
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L7:
# problem108.c:10:         int reversed = 0, original = i;
	sw	zero,-36(s0)	#, reversed
# problem108.c:10:         int reversed = 0, original = i;
	lw	a5,-40(s0)		# tmp152, i
	sw	a5,-28(s0)	# tmp152, original
# problem108.c:12:         int number = i;
	lw	a5,-40(s0)		# tmp153, i
	sw	a5,-32(s0)	# tmp153, number
# problem108.c:13:         while (number != 0) {
	j	.L3		#
.L4:
# problem108.c:14:             reversed = reversed * 10 + number % 10;
	lw	a5,-36(s0)		# tmp155, reversed
	mv	a4,a5	# tmp154, tmp155
	mv	a5,a4	# tmp156, tmp154
	slliw	a5,a5,2	#, tmp157, tmp156
	addw	a5,a5,a4	# tmp154, tmp156, tmp156
	slliw	a5,a5,1	#, tmp158, tmp156
	sext.w	a4,a5	# _2, tmp156
# problem108.c:14:             reversed = reversed * 10 + number % 10;
	lw	a5,-32(s0)		# tmp161, number
	mv	a3,a5	# tmp160, tmp161
	li	a5,10		# tmp163,
	remw	a5,a3,a5	# tmp163, tmp162, tmp160
	sext.w	a5,a5	# _3, tmp162
# problem108.c:14:             reversed = reversed * 10 + number % 10;
	addw	a5,a4,a5	# _3, tmp164, _2
	sw	a5,-36(s0)	# tmp164, reversed
# problem108.c:15:             number /= 10;
	lw	a5,-32(s0)		# tmp167, number
	mv	a4,a5	# tmp166, tmp167
	li	a5,10		# tmp169,
	divw	a5,a4,a5	# tmp169, tmp168, tmp166
	sw	a5,-32(s0)	# tmp168, number
.L3:
# problem108.c:13:         while (number != 0) {
	lw	a5,-32(s0)		# tmp171, number
	sext.w	a5,a5	# tmp172, tmp170
	bne	a5,zero,.L4	#, tmp172,,
# problem108.c:18:         if (original == reversed) {
	lw	a5,-28(s0)		# tmp174, original
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-36(s0)		# tmp176, reversed
	sext.w	a4,a4	# tmp177, tmp173
	sext.w	a5,a5	# tmp178, tmp175
	bne	a4,a5,.L5	#, tmp177, tmp178,
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	lw	a5,-28(s0)		# original.0_4, original
	andi	a5,a5,1	#, tmp180, tmp179
	sext.w	a5,a5	# _5, tmp180
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	bne	a5,zero,.L6	#, _5,,
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	ld	a5,-24(s0)		# tmp181, counts
	lw	a5,0(a5)		# _6, *counts_18
# problem108.c:19:             if (original % 2 == 0) counts[0]++;
	addiw	a5,a5,1	#, tmp182, _6
	sext.w	a4,a5	# _7, tmp182
	ld	a5,-24(s0)		# tmp183, counts
	sw	a4,0(a5)	# _7, *counts_18
	j	.L5		#
.L6:
# problem108.c:20:             else counts[1]++;
	ld	a5,-24(s0)		# tmp184, counts
	addi	a5,a5,4	#, _8, tmp184
	lw	a4,0(a5)		# _9, *_8
# problem108.c:20:             else counts[1]++;
	addiw	a4,a4,1	#, tmp185, _9
	sext.w	a4,a4	# _10, tmp185
	sw	a4,0(a5)	# _10, *_8
.L5:
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	lw	a5,-40(s0)		# tmp188, i
	addiw	a5,a5,1	#, tmp186, tmp187
	sw	a5,-40(s0)	# tmp186, i
.L2:
# problem108.c:9:     for (int i = 1; i <= n; i++) {
	lw	a5,-40(s0)		# tmp190, i
	mv	a4,a5	# tmp189, tmp190
	lw	a5,-52(s0)		# tmp192, n
	sext.w	a4,a4	# tmp193, tmp189
	sext.w	a5,a5	# tmp194, tmp191
	ble	a4,a5,.L7	#, tmp193, tmp194,
# problem108.c:24:     return counts;
	ld	a5,-24(s0)		# _23, counts
# problem108.c:25: }
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
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp144, size
	sw	a5,-52(s0)	# tmp145, size
# problem108.c:34:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem108.c:34:     for (int i = 0; i < size; i++) {
	j	.L10		#
.L13:
# problem108.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, a
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# problem108.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp147, b
	add	a5,a4,a5	# _6, _7, tmp147
	lw	a5,0(a5)		# _8, *_7
# problem108.c:35:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp148, _4
	beq	a4,a5,.L11	#, tmp148, tmp149,
# problem108.c:35:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem108.c:35:         if (a[i] != b[i]) return 0;
	j	.L12		#
.L11:
# problem108.c:34:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L10:
# problem108.c:34:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L13	#, tmp157, tmp158,
# problem108.c:37:     return 1;
	li	a5,1		# _10,
.L12:
# problem108.c:38: }
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
.LC0:
	.string	"problem108.c"
	.align	3
.LC1:
	.string	"issame(result, expected1, 2)"
	.align	3
.LC2:
	.string	"issame(result, expected2, 2)"
	.align	3
.LC3:
	.string	"issame(result, expected3, 2)"
	.align	3
.LC4:
	.string	"issame(result, expected4, 2)"
	.align	3
.LC5:
	.string	"issame(result, expected5, 2)"
	.align	3
.LC6:
	.string	"issame(result, expected6, 2)"
	.align	3
.LC7:
	.string	"issame(result, expected7, 2)"
	.align	3
.LC8:
	.string	"issame(result, expected8, 2)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem108.c:40: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp179, __stack_chk_guard
	sd	a4, -24(s0)	# tmp179, D.3325
	li	a4, 0	# tmp179
# problem108.c:43:     result = func0(123);
	li	a0,123		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:44:     int expected1[] = {8, 13};
	li	a5,8		# tmp145,
	sw	a5,-88(s0)	# tmp145, expected1[0]
	li	a5,13		# tmp146,
	sw	a5,-84(s0)	# tmp146, expected1[1]
# problem108.c:45:     assert(issame(result, expected1, 2));
	addi	a5,s0,-88	#, tmp147,
	li	a2,2		#,
	mv	a1,a5	#, tmp147
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp148,
# problem108.c:45:     assert(issame(result, expected1, 2));
	bne	a5,zero,.L15	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L15:
# problem108.c:46:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:48:     result = func0(12);
	li	a0,12		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:49:     int expected2[] = {4, 6};
	li	a5,4		# tmp149,
	sw	a5,-80(s0)	# tmp149, expected2[0]
	li	a5,6		# tmp150,
	sw	a5,-76(s0)	# tmp150, expected2[1]
# problem108.c:50:     assert(issame(result, expected2, 2));
	addi	a5,s0,-80	#, tmp151,
	li	a2,2		#,
	mv	a1,a5	#, tmp151
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp152,
# problem108.c:50:     assert(issame(result, expected2, 2));
	bne	a5,zero,.L16	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L16:
# problem108.c:51:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:53:     result = func0(3);
	li	a0,3		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:54:     int expected3[] = {1, 2};
	li	a5,1		# tmp153,
	sw	a5,-72(s0)	# tmp153, expected3[0]
	li	a5,2		# tmp154,
	sw	a5,-68(s0)	# tmp154, expected3[1]
# problem108.c:55:     assert(issame(result, expected3, 2));
	addi	a5,s0,-72	#, tmp155,
	li	a2,2		#,
	mv	a1,a5	#, tmp155
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp156,
# problem108.c:55:     assert(issame(result, expected3, 2));
	bne	a5,zero,.L17	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L17:
# problem108.c:56:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:58:     result = func0(63);
	li	a0,63		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:59:     int expected4[] = {6, 8};
	li	a5,6		# tmp157,
	sw	a5,-64(s0)	# tmp157, expected4[0]
	li	a5,8		# tmp158,
	sw	a5,-60(s0)	# tmp158, expected4[1]
# problem108.c:60:     assert(issame(result, expected4, 2));
	addi	a5,s0,-64	#, tmp159,
	li	a2,2		#,
	mv	a1,a5	#, tmp159
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp160,
# problem108.c:60:     assert(issame(result, expected4, 2));
	bne	a5,zero,.L18	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L18:
# problem108.c:61:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:63:     result = func0(25);
	li	a0,25		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:64:     int expected5[] = {5, 6};
	li	a5,5		# tmp161,
	sw	a5,-56(s0)	# tmp161, expected5[0]
	li	a5,6		# tmp162,
	sw	a5,-52(s0)	# tmp162, expected5[1]
# problem108.c:65:     assert(issame(result, expected5, 2));
	addi	a5,s0,-56	#, tmp163,
	li	a2,2		#,
	mv	a1,a5	#, tmp163
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp164,
# problem108.c:65:     assert(issame(result, expected5, 2));
	bne	a5,zero,.L19	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L19:
# problem108.c:66:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:68:     result = func0(19);
	li	a0,19		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:69:     int expected6[] = {4, 6};
	li	a5,4		# tmp165,
	sw	a5,-48(s0)	# tmp165, expected6[0]
	li	a5,6		# tmp166,
	sw	a5,-44(s0)	# tmp166, expected6[1]
# problem108.c:70:     assert(issame(result, expected6, 2));
	addi	a5,s0,-48	#, tmp167,
	li	a2,2		#,
	mv	a1,a5	#, tmp167
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp168,
# problem108.c:70:     assert(issame(result, expected6, 2));
	bne	a5,zero,.L20	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC0	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L20:
# problem108.c:71:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:73:     result = func0(9);
	li	a0,9		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:74:     int expected7[] = {4, 5};
	li	a5,4		# tmp169,
	sw	a5,-40(s0)	# tmp169, expected7[0]
	li	a5,5		# tmp170,
	sw	a5,-36(s0)	# tmp170, expected7[1]
# problem108.c:75:     assert(issame(result, expected7, 2));
	addi	a5,s0,-40	#, tmp171,
	li	a2,2		#,
	mv	a1,a5	#, tmp171
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp172,
# problem108.c:75:     assert(issame(result, expected7, 2));
	bne	a5,zero,.L21	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC0	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L21:
# problem108.c:76:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:78:     result = func0(1);
	li	a0,1		#,
	call	func0		#
	sd	a0,-96(s0)	#, result
# problem108.c:79:     int expected8[] = {0, 1};
	sw	zero,-32(s0)	#, expected8[0]
	li	a5,1		# tmp173,
	sw	a5,-28(s0)	# tmp173, expected8[1]
# problem108.c:80:     assert(issame(result, expected8, 2));
	addi	a5,s0,-32	#, tmp174,
	li	a2,2		#,
	mv	a1,a5	#, tmp174
	ld	a0,-96(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp175,
# problem108.c:80:     assert(issame(result, expected8, 2));
	bne	a5,zero,.L22	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,80		#,
	lla	a1,.LC0	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L22:
# problem108.c:81:     free(result);
	ld	a0,-96(s0)		#, result
	call	free@plt	#
# problem108.c:83:     return 0;
	li	a5,0		# _66,
# problem108.c:84: }
	mv	a4,a5	# <retval>, _66
	la	a5,__stack_chk_guard		# tmp177,
	ld	a3, -24(s0)	# tmp180, D.3325
	ld	a5, 0(a5)	# tmp178, __stack_chk_guard
	xor	a5, a3, a5	# tmp178, tmp180
	li	a3, 0	# tmp180
	beq	a5,zero,.L24	#, tmp178,,
	call	__stack_chk_fail@plt	#
.L24:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
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
