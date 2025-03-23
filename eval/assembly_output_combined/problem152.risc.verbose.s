	.file	"problem152.c"
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	fsd	fs0,40(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# lst, lst
	mv	a5,a1	# tmp115, lst_size
	sw	a5,-76(s0)	# tmp116, lst_size
# problem152.c:5:     long long sum = 0;
	sd	zero,-56(s0)	#, sum
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	sw	zero,-60(s0)	#, i
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	j	.L2		#
.L6:
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lw	a5,-60(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-72(s0)		# tmp117, lst
	add	a5,a4,a5	# _2, _3, tmp117
	flw	fa5,0(a5)	# _4, *_3
	fcvt.d.s	fs0,fa5	# _5, _4
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lw	a5,-60(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-72(s0)		# tmp118, lst
	add	a5,a4,a5	# _7, _8, tmp118
	flw	fa5,0(a5)	# _9, *_8
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcvt.d.s	fa5,fa5	# _10, _9
	fmv.d	fa0,fa5	#, _10
	call	round@plt	#
	fmv.d	fa5,fa0	# _11,
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fsub.d	fa5,fs0,fa5	# _12, _5, _11
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fabs.d	fa4,fa5	# _13, _12
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lla	a5,.LC0	# tmp120,
	fld	fa5,0(a5)	# tmp119,
	flt.d	a5,fa4,fa5	#, tmp121, _13, tmp119
	beq	a5,zero,.L3	#, tmp121,,
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	lw	a5,-60(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	ld	a4,-72(s0)		# tmp122, lst
	add	a5,a4,a5	# _15, _16, tmp122
	flw	fa5,0(a5)	# _17, *_16
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fmv.w.x	fa4,zero	# tmp123,
	fgt.s	a5,fa5,fa4	#, tmp124, _17, tmp123
	beq	a5,zero,.L3	#, tmp124,,
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	lw	a5,-60(s0)		# _18, i
	slli	a5,a5,2	#, _19, _18
	ld	a4,-72(s0)		# tmp125, lst
	add	a5,a4,a5	# _19, _20, tmp125
	flw	fa5,0(a5)	# _21, *_20
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt.d.s	fa5,fa5	# _22, _21
	fmv.d	fa0,fa5	#, _22
	call	round@plt	#
	fmv.d	fa5,fa0	# _23,
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt.w.d a5,fa5,rtz	# tmp126, _23
	sext.w	a5,a5	# _24, tmp126
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	mv	a4,a5	# tmp128, _24
	sraiw	a5,a4,31	#, tmp129, tmp128
	srliw	a5,a5,31	#, tmp130, tmp129
	addw	a4,a4,a5	# tmp130, tmp131, tmp128
	andi	a4,a4,1	#, tmp132, tmp131
	subw	a5,a4,a5	# tmp133, tmp132, tmp130
	sext.w	a5,a5	# _25, tmp133
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	mv	a4,a5	# tmp134, _25
	li	a5,1		# tmp135,
	bne	a4,a5,.L3	#, tmp134, tmp135,
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	lw	a5,-60(s0)		# _26, i
	slli	a5,a5,2	#, _27, _26
	ld	a4,-72(s0)		# tmp136, lst
	add	a5,a4,a5	# _27, _28, tmp136
	flw	fa5,0(a5)	# _29, *_28
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.d.s	fa5,fa5	# _30, _29
	fmv.d	fa0,fa5	#, _30
	call	round@plt	#
	fmv.d	fa5,fa0	# _31,
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.w.d a5,fa5,rtz	# tmp137, _31
	sext.w	s1,a5	# _32, tmp137
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	lw	a5,-60(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a4,-72(s0)		# tmp138, lst
	add	a5,a4,a5	# _34, _35, tmp138
	flw	fa5,0(a5)	# _36, *_35
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.d.s	fa5,fa5	# _37, _36
	fmv.d	fa0,fa5	#, _37
	call	round@plt	#
	fmv.d	fa5,fa0	# _38,
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.w.d a5,fa5,rtz	# tmp139, _38
	sext.w	a5,a5	# _39, tmp139
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	mulw	a5,s1,a5	# tmp140, _32, _39
	sext.w	a5,a5	# _40, tmp140
	mv	a4,a5	# _41, _40
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ld	a5,-56(s0)		# tmp142, sum
	add	a5,a5,a4	# _41, tmp141, tmp142
	sd	a5,-56(s0)	# tmp141, sum
.L3:
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-60(s0)		# tmp145, i
	addiw	a5,a5,1	#, tmp143, tmp144
	sw	a5,-60(s0)	# tmp143, i
.L2:
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-60(s0)		# tmp147, i
	mv	a4,a5	# tmp146, tmp147
	lw	a5,-76(s0)		# tmp149, lst_size
	sext.w	a4,a4	# tmp150, tmp146
	sext.w	a5,a5	# tmp151, tmp148
	blt	a4,a5,.L6	#, tmp150, tmp151,
# problem152.c:13:     return sum;
	ld	a5,-56(s0)		# _48, sum
# problem152.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	ld	s1,56(sp)		#,
	fld	fs0,40(sp)	#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"problem152.c"
	.align	3
.LC2:
	.string	"func0((float[]){}, 0) == 0"
	.align	3
.LC5:
	.string	"func0((float[]){5, 4}, 2) == 25"
	.align	3
.LC9:
	.string	"func0((float[]){0.1, 0.2, 0.3}, 3) == 0"
	.align	3
.LC13:
	.string	"func0((float[]){-10, -20, -30}, 3) == 0"
	.align	3
.LC17:
	.string	"func0((float[]){-1, -2, 8}, 3) == 0"
	.align	3
.LC19:
	.string	"func0((float[]){0.2, 3, 5}, 3) == 34"
	.align	3
.LC20:
	.string	"func0(lst, lst_size) == odd_sum"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-848	#,,
	sd	ra,840(sp)	#,
	sd	s0,832(sp)	#,
	addi	s0,sp,848	#,,
# problem152.c:20: int main() {
	la	a5,__stack_chk_guard		# tmp87,
	ld	a4, 0(a5)	# tmp161, __stack_chk_guard
	sd	a4, -24(s0)	# tmp161, D.3017
	li	a4, 0	# tmp161
# problem152.c:21:     assert(func0((float[]){}, 0) == 0);
	addi	a5,s0,-824	#, tmp88,
	li	a1,0		#,
	mv	a0,a5	#, tmp88
	call	func0		#
	mv	a5,a0	# _1,
	beq	a5,zero,.L11	#, _1,,
# problem152.c:21:     assert(func0((float[]){}, 0) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L11:
# problem152.c:22:     assert(func0((float[]){5, 4}, 2) == 25);
	lla	a5,.LC3	# tmp89,
	flw	fa5,0(a5)	# tmp90,
	fsw	fa5,-824(s0)	# tmp90, MEM[(float[2] *)_71][0]
	lla	a5,.LC4	# tmp91,
	flw	fa5,0(a5)	# tmp92,
	fsw	fa5,-820(s0)	# tmp92, MEM[(float[2] *)_71][1]
	addi	a5,s0,-824	#, tmp93,
	li	a1,2		#,
	mv	a0,a5	#, tmp93
	call	func0		#
	mv	a4,a0	# _2,
	li	a5,25		# tmp94,
	beq	a4,a5,.L12	#, _2, tmp94,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L12:
# problem152.c:23:     assert(func0((float[]){0.1, 0.2, 0.3}, 3) == 0);
	lla	a5,.LC6	# tmp95,
	flw	fa5,0(a5)	# tmp96,
	fsw	fa5,-824(s0)	# tmp96, MEM[(float[3] *)_71][0]
	lla	a5,.LC7	# tmp97,
	flw	fa5,0(a5)	# tmp98,
	fsw	fa5,-820(s0)	# tmp98, MEM[(float[3] *)_71][1]
	lla	a5,.LC8	# tmp99,
	flw	fa5,0(a5)	# tmp100,
	fsw	fa5,-816(s0)	# tmp100, MEM[(float[3] *)_71][2]
	addi	a5,s0,-824	#, tmp101,
	li	a1,3		#,
	mv	a0,a5	#, tmp101
	call	func0		#
	mv	a5,a0	# _3,
	beq	a5,zero,.L13	#, _3,,
# problem152.c:23:     assert(func0((float[]){0.1, 0.2, 0.3}, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC1	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L13:
# problem152.c:24:     assert(func0((float[]){-10, -20, -30}, 3) == 0);
	lla	a5,.LC10	# tmp102,
	flw	fa5,0(a5)	# tmp103,
	fsw	fa5,-824(s0)	# tmp103, MEM[(float[3] *)_71][0]
	lla	a5,.LC11	# tmp104,
	flw	fa5,0(a5)	# tmp105,
	fsw	fa5,-820(s0)	# tmp105, MEM[(float[3] *)_71][1]
	lla	a5,.LC12	# tmp106,
	flw	fa5,0(a5)	# tmp107,
	fsw	fa5,-816(s0)	# tmp107, MEM[(float[3] *)_71][2]
	addi	a5,s0,-824	#, tmp108,
	li	a1,3		#,
	mv	a0,a5	#, tmp108
	call	func0		#
	mv	a5,a0	# _4,
	beq	a5,zero,.L14	#, _4,,
# problem152.c:24:     assert(func0((float[]){-10, -20, -30}, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC1	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L14:
# problem152.c:25:     assert(func0((float[]){-1, -2, 8}, 3) == 0);
	lla	a5,.LC14	# tmp109,
	flw	fa5,0(a5)	# tmp110,
	fsw	fa5,-824(s0)	# tmp110, MEM[(float[3] *)_71][0]
	lla	a5,.LC15	# tmp111,
	flw	fa5,0(a5)	# tmp112,
	fsw	fa5,-820(s0)	# tmp112, MEM[(float[3] *)_71][1]
	lla	a5,.LC16	# tmp113,
	flw	fa5,0(a5)	# tmp114,
	fsw	fa5,-816(s0)	# tmp114, MEM[(float[3] *)_71][2]
	addi	a5,s0,-824	#, tmp115,
	li	a1,3		#,
	mv	a0,a5	#, tmp115
	call	func0		#
	mv	a5,a0	# _5,
	beq	a5,zero,.L15	#, _5,,
# problem152.c:25:     assert(func0((float[]){-1, -2, 8}, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC1	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L15:
# problem152.c:26:     assert(func0((float[]){0.2, 3, 5}, 3) == 34);
	lla	a5,.LC7	# tmp116,
	flw	fa5,0(a5)	# tmp117,
	fsw	fa5,-824(s0)	# tmp117, MEM[(float[3] *)_71][0]
	lla	a5,.LC18	# tmp118,
	flw	fa5,0(a5)	# tmp119,
	fsw	fa5,-820(s0)	# tmp119, MEM[(float[3] *)_71][1]
	lla	a5,.LC3	# tmp120,
	flw	fa5,0(a5)	# tmp121,
	fsw	fa5,-816(s0)	# tmp121, MEM[(float[3] *)_71][2]
	addi	a5,s0,-824	#, tmp122,
	li	a1,3		#,
	mv	a0,a5	#, tmp122
	call	func0		#
	mv	a4,a0	# _6,
	li	a5,34		# tmp123,
	beq	a4,a5,.L16	#, _6, tmp123,
# problem152.c:26:     assert(func0((float[]){0.2, 3, 5}, 3) == 34);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L16:
# problem152.c:28:     long long odd_sum = 0;
	sd	zero,-832(s0)	#, odd_sum
# problem152.c:30:     int lst_size = 0;
	sw	zero,-840(s0)	#, lst_size
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	li	a5,-99		# tmp124,
	sw	a5,-836(s0)	# tmp124, i
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	j	.L17		#
.L19:
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	lw	a5,-836(s0)		# tmp126, i
	fcvt.s.w	fa5,a5	# _7, tmp125
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	lw	a5,-840(s0)		# lst_size.0_8, lst_size
	addiw	a4,a5,1	#, tmp127, lst_size.0_8
	sw	a4,-840(s0)	# tmp127, lst_size
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	fmv.w.x	fa4,zero	# tmp128,
	fadd.s	fa5,fa5,fa4	# _9, _7, tmp128
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	slli	a5,a5,2	#, tmp129, lst_size.0_8
	addi	a5,a5,-16	#, tmp165, tmp129
	add	a5,a5,s0	#, tmp129, tmp165
	fsw	fa5,-808(a5)	# _9, MEM[(float[200] *)_71][lst_size.0_8]
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	lw	a5,-836(s0)		# tmp131, i
	sext.w	a5,a5	# tmp132, tmp130
	ble	a5,zero,.L18	#, tmp132,,
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	lw	a5,-836(s0)		# tmp135, i
	mv	a4,a5	# tmp134, tmp135
	sraiw	a5,a4,31	#, tmp136, tmp134
	srliw	a5,a5,31	#, tmp137, tmp136
	addw	a4,a4,a5	# tmp137, tmp138, tmp134
	andi	a4,a4,1	#, tmp139, tmp138
	subw	a5,a4,a5	# tmp140, tmp139, tmp137
	sext.w	a5,a5	# _10, tmp140
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	mv	a4,a5	# tmp141, _10
	li	a5,1		# tmp142,
	bne	a4,a5,.L18	#, tmp141, tmp142,
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	lw	a5,-836(s0)		# tmp145, i
	mulw	a5,a5,a5	# tmp143, tmp144, tmp144
	sext.w	a5,a5	# _11, tmp143
	mv	a4,a5	# _12, _11
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	ld	a5,-832(s0)		# tmp147, odd_sum
	add	a5,a5,a4	# _12, tmp146, tmp147
	sd	a5,-832(s0)	# tmp146, odd_sum
.L18:
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	lw	a5,-836(s0)		# tmp150, i
	addiw	a5,a5,2	#, tmp148, tmp149
	sw	a5,-836(s0)	# tmp148, i
.L17:
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	lw	a5,-836(s0)		# tmp152, i
	sext.w	a4,a5	# tmp153, tmp151
	li	a5,99		# tmp154,
	ble	a4,a5,.L19	#, tmp153, tmp154,
# problem152.c:37:     assert(func0(lst, lst_size) == odd_sum);
	lw	a4,-840(s0)		# tmp155, lst_size
	addi	a5,s0,-824	#, tmp156,
	mv	a1,a4	#, tmp155
	mv	a0,a5	#, tmp156
	call	func0		#
	mv	a4,a0	# _13,
	ld	a5,-832(s0)		# tmp157, odd_sum
	beq	a5,a4,.L20	#, tmp157, _13,
# problem152.c:37:     assert(func0(lst, lst_size) == odd_sum);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC1	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L20:
# problem152.c:39:     return 0;
	li	a5,0		# _58,
# problem152.c:40: }
	mv	a4,a5	# <retval>, _58
	la	a5,__stack_chk_guard		# tmp159,
	ld	a3, -24(s0)	# tmp162, D.3017
	ld	a5, 0(a5)	# tmp160, __stack_chk_guard
	xor	a5, a3, a5	# tmp160, tmp162
	li	a3, 0	# tmp162
	beq	a5,zero,.L22	#, tmp160,,
	call	__stack_chk_fail@plt	#
.L22:
	mv	a0,a4	#, <retval>
	ld	ra,840(sp)		#,
	ld	s0,832(sp)		#,
	addi	sp,sp,848	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC0:
	.word	-350469331
	.word	1058682594
	.align	2
.LC3:
	.word	1084227584
	.align	2
.LC4:
	.word	1082130432
	.align	2
.LC6:
	.word	1036831949
	.align	2
.LC7:
	.word	1045220557
	.align	2
.LC8:
	.word	1050253722
	.align	2
.LC10:
	.word	-1054867456
	.align	2
.LC11:
	.word	-1046478848
	.align	2
.LC12:
	.word	-1041235968
	.align	2
.LC14:
	.word	-1082130432
	.align	2
.LC15:
	.word	-1073741824
	.align	2
.LC16:
	.word	1090519040
	.align	2
.LC18:
	.word	1077936128
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
