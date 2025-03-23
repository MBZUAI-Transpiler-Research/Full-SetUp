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
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp79, a
	mv	a4,a1	# tmp81, b
	sd	a2,-48(s0)	# out, out
	sd	a3,-56(s0)	# size, size
	sw	a5,-36(s0)	# tmp80, a
	mv	a5,a4	# tmp82, tmp81
	sw	a5,-40(s0)	# tmp82, b
# eval/problem164//code.c:5:     *size = 0;
	ld	a5,-56(s0)		# tmp83, size
	sw	zero,0(a5)	#, *size_15(D)
# eval/problem164//code.c:7:     if (b < a) {
	lw	a5,-40(s0)		# tmp85, b
	mv	a4,a5	# tmp84, tmp85
	lw	a5,-36(s0)		# tmp87, a
	sext.w	a4,a4	# tmp88, tmp84
	sext.w	a5,a5	# tmp89, tmp86
	bge	a4,a5,.L2	#, tmp88, tmp89,
# eval/problem164//code.c:8:         m = a;
	lw	a5,-36(s0)		# tmp90, a
	sw	a5,-20(s0)	# tmp90, m
# eval/problem164//code.c:9:         a = b;
	lw	a5,-40(s0)		# tmp91, b
	sw	a5,-36(s0)	# tmp91, a
# eval/problem164//code.c:10:         b = m;
	lw	a5,-20(s0)		# tmp92, m
	sw	a5,-40(s0)	# tmp92, b
.L2:
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-36(s0)		# tmp93, a
	sw	a5,-24(s0)	# tmp93, i
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	j	.L3		#
.L5:
# eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	lw	a5,-24(s0)		# tmp95, i
	sext.w	a4,a5	# tmp96, tmp94
	li	a5,9		# tmp97,
	bgt	a4,a5,.L4	#, tmp96, tmp97,
# eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	lw	a5,-24(s0)		# i.0_1, i
	andi	a5,a5,1	#, tmp99, tmp98
	sext.w	a5,a5	# _2, tmp99
# eval/problem164//code.c:14:         if (i < 10 && i % 2 == 0) {
	bne	a5,zero,.L4	#, _2,,
# eval/problem164//code.c:15:             out[(*size)++] = i;
	ld	a5,-56(s0)		# tmp100, size
	lw	a5,0(a5)		# _3, *size_15(D)
# eval/problem164//code.c:15:             out[(*size)++] = i;
	addiw	a4,a5,1	#, tmp101, _3
	sext.w	a3,a4	# _5, tmp101
	ld	a4,-56(s0)		# tmp102, size
	sw	a3,0(a4)	# _5, *size_15(D)
# eval/problem164//code.c:15:             out[(*size)++] = i;
	slli	a5,a5,2	#, _7, _6
	ld	a4,-48(s0)		# tmp103, out
	add	a5,a4,a5	# _7, _8, tmp103
# eval/problem164//code.c:15:             out[(*size)++] = i;
	lw	a4,-24(s0)		# tmp104, i
	sw	a4,0(a5)	# tmp104, *_8
.L4:
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-24(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-24(s0)	# tmp105, i
.L3:
# eval/problem164//code.c:13:     for (int i = a; i <= b; i++) {
	lw	a5,-24(s0)		# tmp109, i
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-40(s0)		# tmp111, b
	sext.w	a4,a4	# tmp112, tmp108
	sext.w	a5,a5	# tmp113, tmp110
	ble	a4,a5,.L5	#, tmp112, tmp113,
# eval/problem164//code.c:18: }
	nop	
	nop	
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
