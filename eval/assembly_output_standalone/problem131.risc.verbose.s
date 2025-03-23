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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp103, n
	sw	a5,-36(s0)	# tmp104, n
# eval/problem131//code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	lw	a5,-36(s0)		# tmp107, n
	addiw	a5,a5,1	#, tmp105, tmp106
	sext.w	a5,a5	# _1, tmp105
# eval/problem131//code.c:5:     int* out = (int*)malloc((n + 1) * sizeof(int));
	slli	a5,a5,2	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp108,
	sd	a5,-24(s0)	# tmp108, out
# eval/problem131//code.c:6:     out[0] = 1;
	ld	a5,-24(s0)		# tmp109, out
	li	a4,1		# tmp110,
	sw	a4,0(a5)	# tmp110, *out_38
# eval/problem131//code.c:7:     if (n == 0) return out;
	lw	a5,-36(s0)		# tmp112, n
	sext.w	a5,a5	# tmp113, tmp111
	bne	a5,zero,.L2	#, tmp113,,
# eval/problem131//code.c:7:     if (n == 0) return out;
	ld	a5,-24(s0)		# _31, out
	j	.L3		#
.L2:
# eval/problem131//code.c:8:     out[1] = 3;
	ld	a5,-24(s0)		# tmp114, out
	addi	a5,a5,4	#, _4, tmp114
# eval/problem131//code.c:8:     out[1] = 3;
	li	a4,3		# tmp115,
	sw	a4,0(a5)	# tmp115, *_4
# eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	li	a5,2		# tmp116,
	sw	a5,-28(s0)	# tmp116, i
# eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	j	.L4		#
.L7:
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	lw	a5,-28(s0)		# i.0_5, i
	andi	a5,a5,1	#, tmp118, tmp117
	sext.w	a5,a5	# _6, tmp118
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	bne	a5,zero,.L5	#, _6,,
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	lw	a5,-28(s0)		# tmp121, i
	srliw	a4,a5,31	#, tmp122, tmp120
	addw	a5,a4,a5	# tmp120, tmp123, tmp122
	sraiw	a5,a5,1	#, tmp124, tmp123
	sext.w	a4,a5	# _7, tmp124
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	lw	a5,-28(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a3,-24(s0)		# tmp125, out
	add	a5,a3,a5	# _9, _10, tmp125
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	addiw	a4,a4,1	#, tmp126, _7
	sext.w	a4,a4	# _11, tmp126
# eval/problem131//code.c:10:         if (i % 2 == 0) out[i] = 1 + i / 2;
	sw	a4,0(a5)	# _11, *_10
	j	.L6		#
.L5:
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	addi	a5,a5,-4	#, _14, _13
	ld	a4,-24(s0)		# tmp127, out
	add	a5,a4,a5	# _14, _15, tmp127
	lw	a4,0(a5)		# _16, *_15
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# _17, i
	slli	a5,a5,2	#, _18, _17
	addi	a5,a5,-8	#, _19, _18
	ld	a3,-24(s0)		# tmp128, out
	add	a5,a3,a5	# _19, _20, tmp128
	lw	a5,0(a5)		# _21, *_20
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addw	a5,a4,a5	# _21, tmp129, _16
	sext.w	a5,a5	# _22, tmp129
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addiw	a5,a5,1	#, tmp130, _22
	sext.w	a3,a5	# _23, tmp130
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# tmp133, i
	addiw	a5,a5,1	#, tmp131, tmp132
	sext.w	a5,a5	# _24, tmp131
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	srliw	a4,a5,31	#, tmp136, tmp135
	addw	a5,a4,a5	# tmp135, tmp137, tmp136
	sraiw	a5,a5,1	#, tmp138, tmp137
	sext.w	a4,a5	# _25, tmp138
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	lw	a5,-28(s0)		# _26, i
	slli	a5,a5,2	#, _27, _26
	ld	a2,-24(s0)		# tmp139, out
	add	a5,a2,a5	# _27, _28, tmp139
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	addw	a4,a3,a4	# _25, tmp140, _23
	sext.w	a4,a4	# _29, tmp140
# eval/problem131//code.c:11:         else out[i] = out[i - 1] + out[i - 2] + 1 + (i + 1) / 2;
	sw	a4,0(a5)	# _29, *_28
.L6:
# eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	lw	a5,-28(s0)		# tmp143, i
	addiw	a5,a5,1	#, tmp141, tmp142
	sw	a5,-28(s0)	# tmp141, i
.L4:
# eval/problem131//code.c:9:     for (int i = 2; i <= n; i++) {
	lw	a5,-28(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-36(s0)		# tmp147, n
	sext.w	a4,a4	# tmp148, tmp144
	sext.w	a5,a5	# tmp149, tmp146
	ble	a4,a5,.L7	#, tmp148, tmp149,
# eval/problem131//code.c:13:     return out;
	ld	a5,-24(s0)		# _31, out
.L3:
# eval/problem131//code.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
