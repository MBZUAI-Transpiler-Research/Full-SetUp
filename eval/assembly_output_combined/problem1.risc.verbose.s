	.file	"problem1.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp84, size
	fsw	fa0,-48(s0)	# threshold, threshold
	sw	a5,-44(s0)	# tmp85, size
# problem1.c:7:     for (i = 0; i < size; i++) {
	sw	zero,-24(s0)	#, i
# problem1.c:7:     for (i = 0; i < size; i++) {
	j	.L2		#
.L8:
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp88, i
	addiw	a5,a5,1	#, tmp86, tmp87
	sw	a5,-20(s0)	# tmp86, j
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	j	.L3		#
.L7:
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp89, numbers
	add	a5,a4,a5	# _2, _3, tmp89
	flw	fa4,0(a5)	# _4, *_3
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp90, numbers
	add	a5,a4,a5	# _6, _7, tmp90
	flw	fa5,0(a5)	# _8, *_7
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fabs.s	fa5,fa5	# _10, _9
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	flw	fa4,-48(s0)	# tmp91, threshold
	fgt.s	a5,fa4,fa5	#, tmp92, tmp91, _10
	beq	a5,zero,.L10	#, tmp92,,
# problem1.c:10:                 return 1;
	li	a5,1		# _13,
	j	.L6		#
.L10:
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-20(s0)		# tmp95, j
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-20(s0)	# tmp93, j
.L3:
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-20(s0)		# tmp97, j
	mv	a4,a5	# tmp96, tmp97
	lw	a5,-44(s0)		# tmp99, size
	sext.w	a4,a4	# tmp100, tmp96
	sext.w	a5,a5	# tmp101, tmp98
	blt	a4,a5,.L7	#, tmp100, tmp101,
# problem1.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp104, i
	addiw	a5,a5,1	#, tmp102, tmp103
	sw	a5,-24(s0)	# tmp102, i
.L2:
# problem1.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp106, i
	mv	a4,a5	# tmp105, tmp106
	lw	a5,-44(s0)		# tmp108, size
	sext.w	a4,a4	# tmp109, tmp105
	sext.w	a5,a5	# tmp110, tmp107
	blt	a4,a5,.L8	#, tmp109, tmp110,
# problem1.c:14:     return 0;
	li	a5,0		# _13,
.L6:
# problem1.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC4:
	.string	"Testing case 1"
	.align	3
.LC6:
	.string	"problem1.c"
	.align	3
.LC7:
	.string	"func0(a, 6, 0.3) == 1"
	.align	3
.LC9:
	.string	"func0(a, 6, 0.05) == 0"
	.align	3
.LC10:
	.string	"Testing case 2"
	.align	3
.LC12:
	.string	"func0(b, 5, 0.95) == 1"
	.align	3
.LC14:
	.string	"func0(b, 5, 0.8) == 0"
	.align	3
.LC15:
	.string	"Testing case 3"
	.align	3
.LC17:
	.string	"func0(c, 5, 2.0) == 1"
	.align	3
.LC18:
	.string	"Testing case 4"
	.align	3
.LC20:
	.string	"func0(d, 5, 1.0) == 1"
	.align	3
.LC22:
	.string	"func0(d, 5, 0.5) == 0"
	.align	3
.LC23:
	.string	"All tests passed"
	.align	3
.LC0:
	.word	1065353216
	.word	1073741824
	.word	1081711002
	.word	1082130432
	.word	1084227584
	.word	1074580685
	.align	3
.LC1:
	.word	1065353216
	.word	1073741824
	.word	1086115021
	.word	1082130432
	.word	1084227584
	.align	3
.LC2:
	.word	1065353216
	.word	1073741824
	.word	1077936128
	.word	1082130432
	.word	1084227584
	.align	3
.LC3:
	.word	1066192077
	.word	1074580685
	.word	1078355558
	.word	1082340147
	.word	1084437299
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem1.c:22: int main(){
	la	a5,__stack_chk_guard		# tmp81,
	ld	a4, 0(a5)	# tmp137, __stack_chk_guard
	sd	a4, -24(s0)	# tmp137, D.3520
	li	a4, 0	# tmp137
# problem1.c:24:     float a[] = {1.0, 2.0, 3.9, 4.0, 5.0, 2.2};
	lla	a5,.LC0	# tmp82,
	ld	a4,0(a5)		# tmp83,
	sd	a4,-48(s0)	# tmp83, a
	ld	a4,8(a5)		# tmp84,
	sd	a4,-40(s0)	# tmp84, a
	ld	a5,16(a5)		# tmp85,
	sd	a5,-32(s0)	# tmp85, a
# problem1.c:25:     printf("Testing case 1\n");
	lla	a0,.LC4	#,
	call	puts@plt	#
# problem1.c:26:     assert(func0(a, 6, 0.3) == 1);
	lla	a5,.LC5	# tmp87,
	flw	fa5,0(a5)	# tmp86,
	addi	a5,s0,-48	#, tmp88,
	fmv.s	fa0,fa5	#, tmp86
	li	a1,6		#,
	mv	a0,a5	#, tmp88
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _1
	li	a5,1		# tmp91,
	beq	a4,a5,.L12	#, tmp90, tmp91,
# problem1.c:26:     assert(func0(a, 6, 0.3) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem1.c:27:     assert(func0(a, 6, 0.05) == 0);
	lla	a5,.LC8	# tmp93,
	flw	fa5,0(a5)	# tmp92,
	addi	a5,s0,-48	#, tmp94,
	fmv.s	fa0,fa5	#, tmp92
	li	a1,6		#,
	mv	a0,a5	#, tmp94
	call	func0		#
	mv	a5,a0	# tmp95,
	beq	a5,zero,.L13	#, _2,,
# problem1.c:27:     assert(func0(a, 6, 0.05) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L13:
# problem1.c:29:     float b[] = {1.0, 2.0, 5.9, 4.0, 5.0};
	lla	a5,.LC1	# tmp96,
	ld	a4,0(a5)		# tmp97,
	sd	a4,-120(s0)	# tmp97, b
	ld	a4,8(a5)		# tmp98,
	sd	a4,-112(s0)	# tmp98, b
	lw	a5,16(a5)		# tmp99,
	sw	a5,-104(s0)	# tmp99, b
# problem1.c:30:     printf("Testing case 2\n");
	lla	a0,.LC10	#,
	call	puts@plt	#
# problem1.c:31:     assert(func0(b, 5, 0.95) == 1);
	lla	a5,.LC11	# tmp101,
	flw	fa5,0(a5)	# tmp100,
	addi	a5,s0,-120	#, tmp102,
	fmv.s	fa0,fa5	#, tmp100
	li	a1,5		#,
	mv	a0,a5	#, tmp102
	call	func0		#
	mv	a5,a0	# tmp103,
	mv	a4,a5	# tmp104, _3
	li	a5,1		# tmp105,
	beq	a4,a5,.L14	#, tmp104, tmp105,
# problem1.c:31:     assert(func0(b, 5, 0.95) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC6	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L14:
# problem1.c:32:     assert(func0(b, 5, 0.8) == 0);
	lla	a5,.LC13	# tmp107,
	flw	fa5,0(a5)	# tmp106,
	addi	a5,s0,-120	#, tmp108,
	fmv.s	fa0,fa5	#, tmp106
	li	a1,5		#,
	mv	a0,a5	#, tmp108
	call	func0		#
	mv	a5,a0	# tmp109,
	beq	a5,zero,.L15	#, _4,,
# problem1.c:32:     assert(func0(b, 5, 0.8) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC6	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L15:
# problem1.c:34:     float c[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	lla	a5,.LC2	# tmp110,
	ld	a4,0(a5)		# tmp111,
	sd	a4,-96(s0)	# tmp111, c
	ld	a4,8(a5)		# tmp112,
	sd	a4,-88(s0)	# tmp112, c
	lw	a5,16(a5)		# tmp113,
	sw	a5,-80(s0)	# tmp113, c
# problem1.c:35:     printf("Testing case 3\n");
	lla	a0,.LC15	#,
	call	puts@plt	#
# problem1.c:36:     assert(func0(c, 5, 2.0) == 1);
	lla	a5,.LC16	# tmp115,
	flw	fa5,0(a5)	# tmp114,
	addi	a5,s0,-96	#, tmp116,
	fmv.s	fa0,fa5	#, tmp114
	li	a1,5		#,
	mv	a0,a5	#, tmp116
	call	func0		#
	mv	a5,a0	# tmp117,
	mv	a4,a5	# tmp118, _5
	li	a5,1		# tmp119,
	beq	a4,a5,.L16	#, tmp118, tmp119,
# problem1.c:36:     assert(func0(c, 5, 2.0) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC6	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L16:
# problem1.c:38:     float d[] = {1.1, 2.2, 3.1, 4.1, 5.1};
	lla	a5,.LC3	# tmp120,
	ld	a4,0(a5)		# tmp121,
	sd	a4,-72(s0)	# tmp121, d
	ld	a4,8(a5)		# tmp122,
	sd	a4,-64(s0)	# tmp122, d
	lw	a5,16(a5)		# tmp123,
	sw	a5,-56(s0)	# tmp123, d
# problem1.c:39:     printf("Testing case 4\n");
	lla	a0,.LC18	#,
	call	puts@plt	#
# problem1.c:40:     assert(func0(d, 5, 1.0) == 1);
	lla	a5,.LC19	# tmp125,
	flw	fa5,0(a5)	# tmp124,
	addi	a5,s0,-72	#, tmp126,
	fmv.s	fa0,fa5	#, tmp124
	li	a1,5		#,
	mv	a0,a5	#, tmp126
	call	func0		#
	mv	a5,a0	# tmp127,
	mv	a4,a5	# tmp128, _6
	li	a5,1		# tmp129,
	beq	a4,a5,.L17	#, tmp128, tmp129,
# problem1.c:40:     assert(func0(d, 5, 1.0) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC6	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L17:
# problem1.c:41:     assert(func0(d, 5, 0.5) == 0);
	lla	a5,.LC21	# tmp131,
	flw	fa5,0(a5)	# tmp130,
	addi	a5,s0,-72	#, tmp132,
	fmv.s	fa0,fa5	#, tmp130
	li	a1,5		#,
	mv	a0,a5	#, tmp132
	call	func0		#
	mv	a5,a0	# tmp133,
	beq	a5,zero,.L18	#, _7,,
# problem1.c:41:     assert(func0(d, 5, 0.5) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC6	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L18:
# problem1.c:43:     printf("All tests passed\n");
	lla	a0,.LC23	#,
	call	puts@plt	#
# problem1.c:44:     return 0;
	li	a5,0		# _32,
# problem1.c:45: }
	mv	a4,a5	# <retval>, _32
	la	a5,__stack_chk_guard		# tmp135,
	ld	a3, -24(s0)	# tmp138, D.3520
	ld	a5, 0(a5)	# tmp136, __stack_chk_guard
	xor	a5, a3, a5	# tmp136, tmp138
	li	a3, 0	# tmp138
	beq	a5,zero,.L20	#, tmp136,,
	call	__stack_chk_fail@plt	#
.L20:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	2
.LC5:
	.word	1050253722
	.align	2
.LC8:
	.word	1028443341
	.align	2
.LC11:
	.word	1064514355
	.align	2
.LC13:
	.word	1061997773
	.align	2
.LC16:
	.word	1073741824
	.align	2
.LC19:
	.word	1065353216
	.align	2
.LC21:
	.word	1056964608
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
