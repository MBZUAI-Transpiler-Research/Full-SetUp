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
	mv	a5,a0	# tmp86, n
	sw	a5,-52(s0)	# tmp87, n
# eval/problem107//code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	lw	a5,-52(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp88,
	sd	a5,-24(s0)	# tmp88, out
# eval/problem107//code.c:6:     int sum = 0, prod = 1;
	sw	zero,-36(s0)	#, sum
# eval/problem107//code.c:6:     int sum = 0, prod = 1;
	li	a5,1		# tmp89,
	sw	a5,-32(s0)	# tmp89, prod
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp90,
	sw	a5,-28(s0)	# tmp90, i
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L5:
# eval/problem107//code.c:8:         sum += i;
	lw	a5,-36(s0)		# tmp93, sum
	mv	a4,a5	# tmp92, tmp93
	lw	a5,-28(s0)		# tmp95, i
	addw	a5,a4,a5	# tmp94, tmp91, tmp92
	sw	a5,-36(s0)	# tmp91, sum
# eval/problem107//code.c:9:         prod *= i;
	lw	a5,-32(s0)		# tmp98, prod
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-28(s0)		# tmp100, i
	mulw	a5,a4,a5	# tmp96, tmp97, tmp99
	sw	a5,-32(s0)	# tmp96, prod
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a5,-28(s0)		# i.0_3, i
	andi	a5,a5,1	#, tmp102, tmp101
	sext.w	a5,a5	# _4, tmp102
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	bne	a5,zero,.L3	#, _4,,
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a5,-28(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-24(s0)		# tmp103, out
	add	a5,a4,a5	# _7, _8, tmp103
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a4,-32(s0)		# tmp104, prod
	sw	a4,0(a5)	# tmp104, *_8
	j	.L4		#
.L3:
# eval/problem107//code.c:11:         else out[i - 1] = sum;
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	addi	a5,a5,-4	#, _11, _10
	ld	a4,-24(s0)		# tmp105, out
	add	a5,a4,a5	# _11, _12, tmp105
# eval/problem107//code.c:11:         else out[i - 1] = sum;
	lw	a4,-36(s0)		# tmp106, sum
	sw	a4,0(a5)	# tmp106, *_12
.L4:
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	lw	a5,-28(s0)		# tmp109, i
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-28(s0)	# tmp107, i
.L2:
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	lw	a5,-28(s0)		# tmp111, i
	mv	a4,a5	# tmp110, tmp111
	lw	a5,-52(s0)		# tmp113, n
	sext.w	a4,a4	# tmp114, tmp110
	sext.w	a5,a5	# tmp115, tmp112
	ble	a4,a5,.L5	#, tmp114, tmp115,
# eval/problem107//code.c:13:     return out;
	ld	a5,-24(s0)		# _25, out
# eval/problem107//code.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
