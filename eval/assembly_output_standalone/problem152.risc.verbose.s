	.file	"code.c"
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
# eval/problem152//code.c:5:     long long sum = 0;
	sd	zero,-56(s0)	#, sum
# eval/problem152//code.c:6:     for (int i = 0; i < lst_size; i++) {
	sw	zero,-60(s0)	#, i
# eval/problem152//code.c:6:     for (int i = 0; i < lst_size; i++) {
	j	.L2		#
.L6:
# eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lw	a5,-60(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-72(s0)		# tmp117, lst
	add	a5,a4,a5	# _2, _3, tmp117
	flw	fa5,0(a5)	# _4, *_3
	fcvt.d.s	fs0,fa5	# _5, _4
# eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lw	a5,-60(s0)		# _6, i
	slli	a5,a5,2	#, _7, _6
	ld	a4,-72(s0)		# tmp118, lst
	add	a5,a4,a5	# _7, _8, tmp118
	flw	fa5,0(a5)	# _9, *_8
# eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fcvt.d.s	fa5,fa5	# _10, _9
	fmv.d	fa0,fa5	#, _10
	call	round@plt	#
	fmv.d	fa5,fa0	# _11,
# eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fsub.d	fa5,fs0,fa5	# _12, _5, _11
# eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	fabs.d	fa4,fa5	# _13, _12
# eval/problem152//code.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	lla	a5,.LC0	# tmp120,
	fld	fa5,0(a5)	# tmp119,
	flt.d	a5,fa4,fa5	#, tmp121, _13, tmp119
	beq	a5,zero,.L3	#, tmp121,,
# eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	lw	a5,-60(s0)		# _14, i
	slli	a5,a5,2	#, _15, _14
	ld	a4,-72(s0)		# tmp122, lst
	add	a5,a4,a5	# _15, _16, tmp122
	flw	fa5,0(a5)	# _17, *_16
# eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fmv.w.x	fa4,zero	# tmp123,
	fgt.s	a5,fa5,fa4	#, tmp124, _17, tmp123
	beq	a5,zero,.L3	#, tmp124,,
# eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	lw	a5,-60(s0)		# _18, i
	slli	a5,a5,2	#, _19, _18
	ld	a4,-72(s0)		# tmp125, lst
	add	a5,a4,a5	# _19, _20, tmp125
	flw	fa5,0(a5)	# _21, *_20
# eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt.d.s	fa5,fa5	# _22, _21
	fmv.d	fa0,fa5	#, _22
	call	round@plt	#
	fmv.d	fa5,fa0	# _23,
# eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	fcvt.w.d a5,fa5,rtz	# tmp126, _23
	sext.w	a5,a5	# _24, tmp126
# eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	mv	a4,a5	# tmp128, _24
	sraiw	a5,a4,31	#, tmp129, tmp128
	srliw	a5,a5,31	#, tmp130, tmp129
	addw	a4,a4,a5	# tmp130, tmp131, tmp128
	andi	a4,a4,1	#, tmp132, tmp131
	subw	a5,a4,a5	# tmp133, tmp132, tmp130
	sext.w	a5,a5	# _25, tmp133
# eval/problem152//code.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	mv	a4,a5	# tmp134, _25
	li	a5,1		# tmp135,
	bne	a4,a5,.L3	#, tmp134, tmp135,
# eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	lw	a5,-60(s0)		# _26, i
	slli	a5,a5,2	#, _27, _26
	ld	a4,-72(s0)		# tmp136, lst
	add	a5,a4,a5	# _27, _28, tmp136
	flw	fa5,0(a5)	# _29, *_28
# eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.d.s	fa5,fa5	# _30, _29
	fmv.d	fa0,fa5	#, _30
	call	round@plt	#
	fmv.d	fa5,fa0	# _31,
# eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.w.d a5,fa5,rtz	# tmp137, _31
	sext.w	s1,a5	# _32, tmp137
# eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	lw	a5,-60(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a4,-72(s0)		# tmp138, lst
	add	a5,a4,a5	# _34, _35, tmp138
	flw	fa5,0(a5)	# _36, *_35
# eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.d.s	fa5,fa5	# _37, _36
	fmv.d	fa0,fa5	#, _37
	call	round@plt	#
	fmv.d	fa5,fa0	# _38,
# eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	fcvt.w.d a5,fa5,rtz	# tmp139, _38
	sext.w	a5,a5	# _39, tmp139
# eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	mulw	a5,s1,a5	# tmp140, _32, _39
	sext.w	a5,a5	# _40, tmp140
	mv	a4,a5	# _41, _40
# eval/problem152//code.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	ld	a5,-56(s0)		# tmp142, sum
	add	a5,a5,a4	# _41, tmp141, tmp142
	sd	a5,-56(s0)	# tmp141, sum
.L3:
# eval/problem152//code.c:6:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-60(s0)		# tmp145, i
	addiw	a5,a5,1	#, tmp143, tmp144
	sw	a5,-60(s0)	# tmp143, i
.L2:
# eval/problem152//code.c:6:     for (int i = 0; i < lst_size; i++) {
	lw	a5,-60(s0)		# tmp147, i
	mv	a4,a5	# tmp146, tmp147
	lw	a5,-76(s0)		# tmp149, lst_size
	sext.w	a4,a4	# tmp150, tmp146
	sext.w	a5,a5	# tmp151, tmp148
	blt	a4,a5,.L6	#, tmp150, tmp151,
# eval/problem152//code.c:13:     return sum;
	ld	a5,-56(s0)		# _48, sum
# eval/problem152//code.c:14: }
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
.LC0:
	.word	-350469331
	.word	1058682594
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
