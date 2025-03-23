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
	mv	a5,a0	# tmp86, n
	sd	a1,-48(s0)	# size, size
	sw	a5,-36(s0)	# tmp87, n
# eval/problem26//code.c:5:     int* out = malloc(sizeof(int) * 64);
	li	a0,256		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp88,
	sd	a5,-24(s0)	# tmp88, out
# eval/problem26//code.c:6:     *size = 0;
	ld	a5,-48(s0)		# tmp89, size
	sw	zero,0(a5)	#, *size_24(D)
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	li	a5,2		# tmp90,
	sw	a5,-28(s0)	# tmp90, i
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	j	.L2		#
.L4:
# eval/problem26//code.c:9:             n = n / i;
	lw	a5,-36(s0)		# tmp94, n
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-28(s0)		# tmp96, i
	divw	a5,a4,a5	# tmp95, tmp92, tmp93
	sw	a5,-36(s0)	# tmp92, n
# eval/problem26//code.c:10:             out[(*size)++] = i;
	ld	a5,-48(s0)		# tmp97, size
	lw	a5,0(a5)		# _1, *size_24(D)
# eval/problem26//code.c:10:             out[(*size)++] = i;
	addiw	a4,a5,1	#, tmp98, _1
	sext.w	a3,a4	# _3, tmp98
	ld	a4,-48(s0)		# tmp99, size
	sw	a3,0(a4)	# _3, *size_24(D)
# eval/problem26//code.c:10:             out[(*size)++] = i;
	slli	a5,a5,2	#, _5, _4
	ld	a4,-24(s0)		# tmp100, out
	add	a5,a4,a5	# _5, _6, tmp100
# eval/problem26//code.c:10:             out[(*size)++] = i;
	lw	a4,-28(s0)		# tmp101, i
	sw	a4,0(a5)	# tmp101, *_6
.L3:
# eval/problem26//code.c:8:         while (n % i == 0) {
	lw	a5,-36(s0)		# tmp104, n
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-28(s0)		# tmp107, i
	remw	a5,a4,a5	# tmp106, tmp105, tmp103
	sext.w	a5,a5	# _7, tmp105
# eval/problem26//code.c:8:         while (n % i == 0) {
	beq	a5,zero,.L4	#, _7,,
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-28(s0)		# tmp110, i
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-28(s0)	# tmp108, i
.L2:
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-28(s0)		# tmp113, i
	mulw	a5,a5,a5	# tmp111, tmp112, tmp112
	sext.w	a4,a5	# _8, tmp111
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-36(s0)		# tmp115, n
	sext.w	a5,a5	# tmp116, tmp114
	bge	a5,a4,.L3	#, tmp116, tmp117,
# eval/problem26//code.c:13:     if (n > 1) {
	lw	a5,-36(s0)		# tmp119, n
	sext.w	a4,a5	# tmp120, tmp118
	li	a5,1		# tmp121,
	ble	a4,a5,.L6	#, tmp120, tmp121,
# eval/problem26//code.c:14:         out[(*size)++] = n;
	ld	a5,-48(s0)		# tmp122, size
	lw	a5,0(a5)		# _9, *size_24(D)
# eval/problem26//code.c:14:         out[(*size)++] = n;
	addiw	a4,a5,1	#, tmp123, _9
	sext.w	a3,a4	# _11, tmp123
	ld	a4,-48(s0)		# tmp124, size
	sw	a3,0(a4)	# _11, *size_24(D)
# eval/problem26//code.c:14:         out[(*size)++] = n;
	slli	a5,a5,2	#, _13, _12
	ld	a4,-24(s0)		# tmp125, out
	add	a5,a4,a5	# _13, _14, tmp125
# eval/problem26//code.c:14:         out[(*size)++] = n;
	lw	a4,-36(s0)		# tmp126, n
	sw	a4,0(a5)	# tmp126, *_14
.L6:
# eval/problem26//code.c:16:     return out;
	ld	a5,-24(s0)		# _30, out
# eval/problem26//code.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
