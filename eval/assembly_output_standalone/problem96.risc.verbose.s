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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# dict, dict
	mv	a5,a1	# tmp114, size
	sw	a5,-60(s0)	# tmp115, size
# eval/problem96//code.c:7:     if (size == 0) return 0;
	lw	a5,-60(s0)		# tmp117, size
	sext.w	a5,a5	# tmp118, tmp116
	bne	a5,zero,.L2	#, tmp118,,
# eval/problem96//code.c:7:     if (size == 0) return 0;
	li	a5,0		# _49,
	j	.L3		#
.L2:
# eval/problem96//code.c:8:     int has_lower = 0, has_upper = 0;
	sw	zero,-40(s0)	#, has_lower
# eval/problem96//code.c:8:     int has_lower = 0, has_upper = 0;
	sw	zero,-36(s0)	#, has_upper
# eval/problem96//code.c:9:     for (int i = 0; i < size; ++i) {
	sw	zero,-32(s0)	#, i
# eval/problem96//code.c:9:     for (int i = 0; i < size; ++i) {
	j	.L4		#
.L11:
# eval/problem96//code.c:10:         char* key = dict[i][0];
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,4	#, _2, _1
	ld	a4,-56(s0)		# tmp119, dict
	add	a5,a4,a5	# _2, _3, tmp119
# eval/problem96//code.c:10:         char* key = dict[i][0];
	ld	a5,0(a5)		# tmp120, (*_3)[0]
	sd	a5,-24(s0)	# tmp120, key
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	sw	zero,-28(s0)	#, j
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	j	.L5		#
.L10:
# eval/problem96//code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _4,
	ld	a4,0(a5)		# _5, *_4
	lw	a5,-28(s0)		# _6, j
	ld	a3,-24(s0)		# tmp121, key
	add	a5,a3,a5	# _6, _7, tmp121
	lbu	a5,0(a5)	# _8, *_7
	slli	a5,a5,1	#, _10, _9
	add	a5,a4,a5	# _10, _11, _5
	lhu	a5,0(a5)	# _12, *_11
	sext.w	a5,a5	# _13, _12
	andi	a5,a5,1024	#, tmp122, _13
	sext.w	a5,a5	# _14, tmp122
# eval/problem96//code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	bne	a5,zero,.L6	#, _14,,
# eval/problem96//code.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	li	a5,0		# _49,
	j	.L3		#
.L6:
# eval/problem96//code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _15,
	ld	a4,0(a5)		# _16, *_15
	lw	a5,-28(s0)		# _17, j
	ld	a3,-24(s0)		# tmp123, key
	add	a5,a3,a5	# _17, _18, tmp123
	lbu	a5,0(a5)	# _19, *_18
	slli	a5,a5,1	#, _21, _20
	add	a5,a4,a5	# _21, _22, _16
	lhu	a5,0(a5)	# _23, *_22
	sext.w	a5,a5	# _24, _23
	andi	a5,a5,256	#, tmp124, _24
	sext.w	a5,a5	# _25, tmp124
# eval/problem96//code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	beq	a5,zero,.L7	#, _25,,
# eval/problem96//code.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	li	a5,1		# tmp125,
	sw	a5,-36(s0)	# tmp125, has_upper
.L7:
# eval/problem96//code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _26,
	ld	a4,0(a5)		# _27, *_26
	lw	a5,-28(s0)		# _28, j
	ld	a3,-24(s0)		# tmp126, key
	add	a5,a3,a5	# _28, _29, tmp126
	lbu	a5,0(a5)	# _30, *_29
	slli	a5,a5,1	#, _32, _31
	add	a5,a4,a5	# _32, _33, _27
	lhu	a5,0(a5)	# _34, *_33
	sext.w	a5,a5	# _35, _34
	andi	a5,a5,512	#, tmp127, _35
	sext.w	a5,a5	# _36, tmp127
# eval/problem96//code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	beq	a5,zero,.L8	#, _36,,
# eval/problem96//code.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	li	a5,1		# tmp128,
	sw	a5,-40(s0)	# tmp128, has_lower
.L8:
# eval/problem96//code.c:15:             if (has_upper + has_lower == 2) return 0;
	lw	a5,-36(s0)		# tmp131, has_upper
	mv	a4,a5	# tmp130, tmp131
	lw	a5,-40(s0)		# tmp133, has_lower
	addw	a5,a4,a5	# tmp132, tmp129, tmp130
	sext.w	a5,a5	# _37, tmp129
# eval/problem96//code.c:15:             if (has_upper + has_lower == 2) return 0;
	mv	a4,a5	# tmp134, _37
	li	a5,2		# tmp135,
	bne	a4,a5,.L9	#, tmp134, tmp135,
# eval/problem96//code.c:15:             if (has_upper + has_lower == 2) return 0;
	li	a5,0		# _49,
	j	.L3		#
.L9:
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	lw	a5,-28(s0)		# tmp138, j
	addiw	a5,a5,1	#, tmp136, tmp137
	sw	a5,-28(s0)	# tmp136, j
.L5:
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	lw	a5,-28(s0)		# _38, j
	ld	a4,-24(s0)		# tmp139, key
	add	a5,a4,a5	# _38, _39, tmp139
	lbu	a5,0(a5)	# _40, *_39
# eval/problem96//code.c:11:         for (int j = 0; key[j]; ++j) {
	bne	a5,zero,.L10	#, _40,,
# eval/problem96//code.c:9:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp142, i
	addiw	a5,a5,1	#, tmp140, tmp141
	sw	a5,-32(s0)	# tmp140, i
.L4:
# eval/problem96//code.c:9:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp144, i
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-60(s0)		# tmp146, size
	sext.w	a4,a4	# tmp147, tmp143
	sext.w	a5,a5	# tmp148, tmp145
	blt	a4,a5,.L11	#, tmp147, tmp148,
# eval/problem96//code.c:18:     return 1;
	li	a5,1		# _49,
.L3:
# eval/problem96//code.c:19: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
