	.file	"problem1.c"
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
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp146, size
	fsw	fa0,-48(s0)	# threshold, threshold
	sw	a5,-44(s0)	# tmp147, size
# problem1.c:7:     for (i = 0; i < size; i++) {
	sw	zero,-24(s0)	#, i
# problem1.c:7:     for (i = 0; i < size; i++) {
	j	.L2		#
.L8:
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-24(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-20(s0)	# tmp148, j
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	j	.L3		#
.L7:
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	lw	a5,-24(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp151, numbers
	add	a5,a4,a5	# _2, _3, tmp151
	flw	fa4,0(a5)	# _4, *_3
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	lw	a5,-20(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp152, numbers
	add	a5,a4,a5	# _6, _7, tmp152
	flw	fa5,0(a5)	# _8, *_7
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fsub.s	fa5,fa4,fa5	# _9, _4, _8
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	fabs.s	fa5,fa5	# _10, _9
# problem1.c:9:             if (fabs(numbers[i] - numbers[j]) < threshold) {
	flw	fa4,-48(s0)	# tmp153, threshold
	fgt.s	a5,fa4,fa5	#, tmp154, tmp153, _10
	beq	a5,zero,.L10	#, tmp154,,
# problem1.c:10:                 return 1;
	li	a5,1		# _13,
	j	.L6		#
.L10:
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-20(s0)		# tmp157, j
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-20(s0)	# tmp155, j
.L3:
# problem1.c:8:         for (j = i + 1; j < size; j++) {
	lw	a5,-20(s0)		# tmp159, j
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-44(s0)		# tmp161, size
	sext.w	a4,a4	# tmp162, tmp158
	sext.w	a5,a5	# tmp163, tmp160
	blt	a4,a5,.L7	#, tmp162, tmp163,
# problem1.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp166, i
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-24(s0)	# tmp164, i
.L2:
# problem1.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-24(s0)		# tmp168, i
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-44(s0)		# tmp170, size
	sext.w	a4,a4	# tmp171, tmp167
	sext.w	a5,a5	# tmp172, tmp169
	blt	a4,a5,.L8	#, tmp171, tmp172,
# problem1.c:14:     return 0;
	li	a5,0		# _13,
.L6:
# problem1.c:15: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
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
.LFB7:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem1.c:22: int main(){
	la	a5,__stack_chk_guard		# tmp143,
	ld	a4, 0(a5)	# tmp199, __stack_chk_guard
	sd	a4, -24(s0)	# tmp199, D.4345
	li	a4, 0	# tmp199
# problem1.c:24:     float a[] = {1.0, 2.0, 3.9, 4.0, 5.0, 2.2};
	lla	a5,.LC0	# tmp144,
	ld	a4,0(a5)		# tmp145,
	sd	a4,-48(s0)	# tmp145, a
	ld	a4,8(a5)		# tmp146,
	sd	a4,-40(s0)	# tmp146, a
	ld	a5,16(a5)		# tmp147,
	sd	a5,-32(s0)	# tmp147, a
# problem1.c:25:     printf("Testing case 1\n");
	lla	a0,.LC4	#,
	call	puts@plt	#
# problem1.c:26:     assert(func0(a, 6, 0.3) == 1);
	lla	a5,.LC5	# tmp149,
	flw	fa5,0(a5)	# tmp148,
	addi	a5,s0,-48	#, tmp150,
	fmv.s	fa0,fa5	#, tmp148
	li	a1,6		#,
	mv	a0,a5	#, tmp150
	call	func0		#
	mv	a5,a0	# tmp151,
# problem1.c:26:     assert(func0(a, 6, 0.3) == 1);
	mv	a4,a5	# tmp152, _1
	li	a5,1		# tmp153,
	beq	a4,a5,.L12	#, tmp152, tmp153,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L12:
# problem1.c:27:     assert(func0(a, 6, 0.05) == 0);
	lla	a5,.LC8	# tmp155,
	flw	fa5,0(a5)	# tmp154,
	addi	a5,s0,-48	#, tmp156,
	fmv.s	fa0,fa5	#, tmp154
	li	a1,6		#,
	mv	a0,a5	#, tmp156
	call	func0		#
	mv	a5,a0	# tmp157,
# problem1.c:27:     assert(func0(a, 6, 0.05) == 0);
	beq	a5,zero,.L13	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L13:
# problem1.c:29:     float b[] = {1.0, 2.0, 5.9, 4.0, 5.0};
	lla	a5,.LC1	# tmp158,
	ld	a4,0(a5)		# tmp159,
	sd	a4,-120(s0)	# tmp159, b
	ld	a4,8(a5)		# tmp160,
	sd	a4,-112(s0)	# tmp160, b
	lw	a5,16(a5)		# tmp161,
	sw	a5,-104(s0)	# tmp161, b
# problem1.c:30:     printf("Testing case 2\n");
	lla	a0,.LC10	#,
	call	puts@plt	#
# problem1.c:31:     assert(func0(b, 5, 0.95) == 1);
	lla	a5,.LC11	# tmp163,
	flw	fa5,0(a5)	# tmp162,
	addi	a5,s0,-120	#, tmp164,
	fmv.s	fa0,fa5	#, tmp162
	li	a1,5		#,
	mv	a0,a5	#, tmp164
	call	func0		#
	mv	a5,a0	# tmp165,
# problem1.c:31:     assert(func0(b, 5, 0.95) == 1);
	mv	a4,a5	# tmp166, _3
	li	a5,1		# tmp167,
	beq	a4,a5,.L14	#, tmp166, tmp167,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC6	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L14:
# problem1.c:32:     assert(func0(b, 5, 0.8) == 0);
	lla	a5,.LC13	# tmp169,
	flw	fa5,0(a5)	# tmp168,
	addi	a5,s0,-120	#, tmp170,
	fmv.s	fa0,fa5	#, tmp168
	li	a1,5		#,
	mv	a0,a5	#, tmp170
	call	func0		#
	mv	a5,a0	# tmp171,
# problem1.c:32:     assert(func0(b, 5, 0.8) == 0);
	beq	a5,zero,.L15	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC6	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L15:
# problem1.c:34:     float c[] = {1.0, 2.0, 3.0, 4.0, 5.0};
	lla	a5,.LC2	# tmp172,
	ld	a4,0(a5)		# tmp173,
	sd	a4,-96(s0)	# tmp173, c
	ld	a4,8(a5)		# tmp174,
	sd	a4,-88(s0)	# tmp174, c
	lw	a5,16(a5)		# tmp175,
	sw	a5,-80(s0)	# tmp175, c
# problem1.c:35:     printf("Testing case 3\n");
	lla	a0,.LC15	#,
	call	puts@plt	#
# problem1.c:36:     assert(func0(c, 5, 2.0) == 1);
	lla	a5,.LC16	# tmp177,
	flw	fa5,0(a5)	# tmp176,
	addi	a5,s0,-96	#, tmp178,
	fmv.s	fa0,fa5	#, tmp176
	li	a1,5		#,
	mv	a0,a5	#, tmp178
	call	func0		#
	mv	a5,a0	# tmp179,
# problem1.c:36:     assert(func0(c, 5, 2.0) == 1);
	mv	a4,a5	# tmp180, _5
	li	a5,1		# tmp181,
	beq	a4,a5,.L16	#, tmp180, tmp181,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC6	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L16:
# problem1.c:38:     float d[] = {1.1, 2.2, 3.1, 4.1, 5.1};
	lla	a5,.LC3	# tmp182,
	ld	a4,0(a5)		# tmp183,
	sd	a4,-72(s0)	# tmp183, d
	ld	a4,8(a5)		# tmp184,
	sd	a4,-64(s0)	# tmp184, d
	lw	a5,16(a5)		# tmp185,
	sw	a5,-56(s0)	# tmp185, d
# problem1.c:39:     printf("Testing case 4\n");
	lla	a0,.LC18	#,
	call	puts@plt	#
# problem1.c:40:     assert(func0(d, 5, 1.0) == 1);
	lla	a5,.LC19	# tmp187,
	flw	fa5,0(a5)	# tmp186,
	addi	a5,s0,-72	#, tmp188,
	fmv.s	fa0,fa5	#, tmp186
	li	a1,5		#,
	mv	a0,a5	#, tmp188
	call	func0		#
	mv	a5,a0	# tmp189,
# problem1.c:40:     assert(func0(d, 5, 1.0) == 1);
	mv	a4,a5	# tmp190, _6
	li	a5,1		# tmp191,
	beq	a4,a5,.L17	#, tmp190, tmp191,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC6	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L17:
# problem1.c:41:     assert(func0(d, 5, 0.5) == 0);
	lla	a5,.LC21	# tmp193,
	flw	fa5,0(a5)	# tmp192,
	addi	a5,s0,-72	#, tmp194,
	fmv.s	fa0,fa5	#, tmp192
	li	a1,5		#,
	mv	a0,a5	#, tmp194
	call	func0		#
	mv	a5,a0	# tmp195,
# problem1.c:41:     assert(func0(d, 5, 0.5) == 0);
	beq	a5,zero,.L18	#, _7,,
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
	la	a5,__stack_chk_guard		# tmp197,
	ld	a3, -24(s0)	# tmp200, D.4345
	ld	a5, 0(a5)	# tmp198, __stack_chk_guard
	xor	a5, a3, a5	# tmp198, tmp200
	li	a3, 0	# tmp200
	beq	a5,zero,.L20	#, tmp198,,
	call	__stack_chk_fail@plt	#
.L20:
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
.LFE7:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
