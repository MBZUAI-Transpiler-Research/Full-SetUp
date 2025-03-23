	.file	"problem147.c"
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
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# nums, nums
	mv	a5,a1	# tmp149, size
	sw	a5,-60(s0)	# tmp150, size
# problem147.c:5:     int num = 0;
	sw	zero,-36(s0)	#, num
# problem147.c:6:     for (int i = 0; i < size; i++) {
	sw	zero,-32(s0)	#, i
# problem147.c:6:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L6:
# problem147.c:7:         if (nums[i] > 10) {
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp151, nums
	add	a5,a4,a5	# _2, _3, tmp151
	lw	a5,0(a5)		# _4, *_3
# problem147.c:7:         if (nums[i] > 10) {
	mv	a4,a5	# tmp152, _4
	li	a5,10		# tmp153,
	ble	a4,a5,.L3	#, tmp152, tmp153,
# problem147.c:9:             last = nums[i] % 10;
	lw	a5,-32(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp154, nums
	add	a5,a4,a5	# _6, _7, tmp154
	lw	a5,0(a5)		# _8, *_7
# problem147.c:9:             last = nums[i] % 10;
	mv	a4,a5	# tmp155, _8
	li	a5,10		# tmp157,
	remw	a5,a4,a5	# tmp157, tmp156, tmp155
	sw	a5,-24(s0)	# tmp156, last
# problem147.c:10:             int n = nums[i];
	lw	a5,-32(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp158, nums
	add	a5,a4,a5	# _10, _11, tmp158
# problem147.c:10:             int n = nums[i];
	lw	a5,0(a5)		# tmp159, *_11
	sw	a5,-28(s0)	# tmp159, n
# problem147.c:11:             while (n >= 10) {
	j	.L4		#
.L5:
# problem147.c:12:                 n /= 10;
	lw	a5,-28(s0)		# tmp162, n
	mv	a4,a5	# tmp161, tmp162
	li	a5,10		# tmp164,
	divw	a5,a4,a5	# tmp164, tmp163, tmp161
	sw	a5,-28(s0)	# tmp163, n
.L4:
# problem147.c:11:             while (n >= 10) {
	lw	a5,-28(s0)		# tmp166, n
	sext.w	a4,a5	# tmp167, tmp165
	li	a5,9		# tmp168,
	bgt	a4,a5,.L5	#, tmp167, tmp168,
# problem147.c:14:             first = n;
	lw	a5,-28(s0)		# tmp169, n
	sw	a5,-20(s0)	# tmp169, first
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	lw	a5,-20(s0)		# tmp172, first
	mv	a4,a5	# tmp171, tmp172
	sraiw	a5,a4,31	#, tmp173, tmp171
	srliw	a5,a5,31	#, tmp174, tmp173
	addw	a4,a4,a5	# tmp174, tmp175, tmp171
	andi	a4,a4,1	#, tmp176, tmp175
	subw	a5,a4,a5	# tmp177, tmp176, tmp174
	sext.w	a5,a5	# _12, tmp177
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	mv	a4,a5	# tmp178, _12
	li	a5,1		# tmp179,
	bne	a4,a5,.L3	#, tmp178, tmp179,
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	lw	a5,-24(s0)		# tmp182, last
	mv	a4,a5	# tmp181, tmp182
	sraiw	a5,a4,31	#, tmp183, tmp181
	srliw	a5,a5,31	#, tmp184, tmp183
	addw	a4,a4,a5	# tmp184, tmp185, tmp181
	andi	a4,a4,1	#, tmp186, tmp185
	subw	a5,a4,a5	# tmp187, tmp186, tmp184
	sext.w	a5,a5	# _13, tmp187
# problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	mv	a4,a5	# tmp188, _13
	li	a5,1		# tmp189,
	bne	a4,a5,.L3	#, tmp188, tmp189,
# problem147.c:16:                 num += 1;
	lw	a5,-36(s0)		# tmp192, num
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-36(s0)	# tmp190, num
.L3:
# problem147.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp195, i
	addiw	a5,a5,1	#, tmp193, tmp194
	sw	a5,-32(s0)	# tmp193, i
.L2:
# problem147.c:6:     for (int i = 0; i < size; i++) {
	lw	a5,-32(s0)		# tmp197, i
	mv	a4,a5	# tmp196, tmp197
	lw	a5,-60(s0)		# tmp199, size
	sext.w	a4,a4	# tmp200, tmp196
	sext.w	a5,a5	# tmp201, tmp198
	blt	a4,a5,.L6	#, tmp200, tmp201,
# problem147.c:20:     return num;
	lw	a5,-36(s0)		# _21, num
# problem147.c:21: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"problem147.c"
	.align	3
.LC6:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 0"
	.align	3
.LC7:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 1"
	.align	3
.LC8:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 2"
	.align	3
.LC9:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 4"
	.align	3
.LC10:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 3"
	.align	3
.LC0:
	.word	5
	.word	-2
	.word	1
	.word	-5
	.align	3
.LC1:
	.word	15
	.word	-73
	.word	14
	.word	-15
	.align	3
.LC2:
	.word	33
	.word	-2
	.word	-3
	.word	45
	.word	21
	.word	109
	.align	3
.LC3:
	.word	43
	.word	-12
	.word	93
	.word	125
	.word	121
	.word	109
	.align	3
.LC4:
	.word	71
	.word	-2
	.word	-33
	.word	75
	.word	21
	.word	19
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
# problem147.c:27: int main() {
	la	a5,__stack_chk_guard		# tmp143,
	ld	a4, 0(a5)	# tmp188, __stack_chk_guard
	sd	a4, -24(s0)	# tmp188, D.3314
	li	a4, 0	# tmp188
# problem147.c:29:         int nums[] = {5, -2, 1, -5};
	lla	a5,.LC0	# tmp144,
	ld	a4,0(a5)		# tmp145,
	sd	a4,-48(s0)	# tmp145, MEM[(int[4] *)_38]
	ld	a5,8(a5)		# tmp146,
	sd	a5,-40(s0)	# tmp146, MEM[(int[4] *)_38]
# problem147.c:30:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	addi	a5,s0,-48	#, tmp147,
	li	a1,4		#,
	mv	a0,a5	#, tmp147
	call	func0		#
	mv	a5,a0	# tmp148,
# problem147.c:30:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	beq	a5,zero,.L9	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L9:
# problem147.c:34:         int nums[] = {15, -73, 14, -15};
	lla	a5,.LC1	# tmp149,
	ld	a4,0(a5)		# tmp150,
	sd	a4,-48(s0)	# tmp150, MEM[(int[4] *)_38]
	ld	a5,8(a5)		# tmp151,
	sd	a5,-40(s0)	# tmp151, MEM[(int[4] *)_38]
# problem147.c:35:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 1);
	addi	a5,s0,-48	#, tmp152,
	li	a1,4		#,
	mv	a0,a5	#, tmp152
	call	func0		#
	mv	a5,a0	# tmp153,
# problem147.c:35:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 1);
	mv	a4,a5	# tmp154, _2
	li	a5,1		# tmp155,
	beq	a4,a5,.L10	#, tmp154, tmp155,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC5	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L10:
# problem147.c:39:         int nums[] = {33, -2, -3, 45, 21, 109};
	lla	a5,.LC2	# tmp156,
	ld	a4,0(a5)		# tmp157,
	sd	a4,-48(s0)	# tmp157, MEM[(int[6] *)_38]
	ld	a4,8(a5)		# tmp158,
	sd	a4,-40(s0)	# tmp158, MEM[(int[6] *)_38]
	ld	a5,16(a5)		# tmp159,
	sd	a5,-32(s0)	# tmp159, MEM[(int[6] *)_38]
# problem147.c:40:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 2);
	addi	a5,s0,-48	#, tmp160,
	li	a1,6		#,
	mv	a0,a5	#, tmp160
	call	func0		#
	mv	a5,a0	# tmp161,
# problem147.c:40:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 2);
	mv	a4,a5	# tmp162, _3
	li	a5,2		# tmp163,
	beq	a4,a5,.L11	#, tmp162, tmp163,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC5	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem147.c:44:         int nums[] = {43, -12, 93, 125, 121, 109};
	lla	a5,.LC3	# tmp164,
	ld	a4,0(a5)		# tmp165,
	sd	a4,-48(s0)	# tmp165, MEM[(int[6] *)_38]
	ld	a4,8(a5)		# tmp166,
	sd	a4,-40(s0)	# tmp166, MEM[(int[6] *)_38]
	ld	a5,16(a5)		# tmp167,
	sd	a5,-32(s0)	# tmp167, MEM[(int[6] *)_38]
# problem147.c:45:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 4);
	addi	a5,s0,-48	#, tmp168,
	li	a1,6		#,
	mv	a0,a5	#, tmp168
	call	func0		#
	mv	a5,a0	# tmp169,
# problem147.c:45:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 4);
	mv	a4,a5	# tmp170, _4
	li	a5,4		# tmp171,
	beq	a4,a5,.L12	#, tmp170, tmp171,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC5	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem147.c:49:         int nums[] = {71, -2, -33, 75, 21, 19};
	lla	a5,.LC4	# tmp172,
	ld	a4,0(a5)		# tmp173,
	sd	a4,-48(s0)	# tmp173, MEM[(int[6] *)_38]
	ld	a4,8(a5)		# tmp174,
	sd	a4,-40(s0)	# tmp174, MEM[(int[6] *)_38]
	ld	a5,16(a5)		# tmp175,
	sd	a5,-32(s0)	# tmp175, MEM[(int[6] *)_38]
# problem147.c:50:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 3);
	addi	a5,s0,-48	#, tmp176,
	li	a1,6		#,
	mv	a0,a5	#, tmp176
	call	func0		#
	mv	a5,a0	# tmp177,
# problem147.c:50:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 3);
	mv	a4,a5	# tmp178, _5
	li	a5,3		# tmp179,
	beq	a4,a5,.L13	#, tmp178, tmp179,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC5	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L13:
# problem147.c:54:         int nums[] = {1};
	li	a5,1		# tmp180,
	sw	a5,-48(s0)	# tmp180, MEM[(int[1] *)_38][0]
# problem147.c:55:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	addi	a5,s0,-48	#, tmp181,
	li	a1,1		#,
	mv	a0,a5	#, tmp181
	call	func0		#
	mv	a5,a0	# tmp182,
# problem147.c:55:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	beq	a5,zero,.L14	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem147.c:60:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	addi	a5,s0,-48	#, tmp183,
	li	a1,0		#,
	mv	a0,a5	#, tmp183
	call	func0		#
	mv	a5,a0	# tmp184,
# problem147.c:60:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	beq	a5,zero,.L15	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC5	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L15:
# problem147.c:63:     return 0;
	li	a5,0		# _36,
# problem147.c:64: }
	mv	a4,a5	# <retval>, _36
	la	a5,__stack_chk_guard		# tmp186,
	ld	a3, -24(s0)	# tmp189, D.3314
	ld	a5, 0(a5)	# tmp187, __stack_chk_guard
	xor	a5, a3, a5	# tmp187, tmp189
	li	a3, 0	# tmp189
	beq	a5,zero,.L17	#, tmp187,,
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
