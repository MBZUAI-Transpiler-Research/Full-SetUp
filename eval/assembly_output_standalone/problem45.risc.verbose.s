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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
	mv	a5,a0	# tmp82, x
	mv	a4,a1	# tmp84, base
	sd	a2,-96(s0)	# out, out
	sw	a5,-84(s0)	# tmp83, x
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-88(s0)	# tmp85, base
# eval/problem45//code.c:5: void func0(int x, int base, char *out) {
	la	a5,__stack_chk_guard		# tmp86,
	ld	a4, 0(a5)	# tmp118, __stack_chk_guard
	sd	a4, -24(s0)	# tmp118, D.2604
	li	a4, 0	# tmp118
# eval/problem45//code.c:6:     int index = 0;
	sw	zero,-72(s0)	#, index
# eval/problem45//code.c:8:     while (x > 0) {
	j	.L2		#
.L3:
# eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	lw	a5,-84(s0)		# tmp89, x
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-88(s0)		# tmp92, base
	remw	a5,a4,a5	# tmp91, tmp90, tmp88
	sext.w	a5,a5	# _1, tmp90
# eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	andi	a4,a5,0xff	# _2, _1
# eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	lw	a5,-72(s0)		# index.0_3, index
	addiw	a3,a5,1	#, tmp93, index.0_3
	sw	a3,-72(s0)	# tmp93, index
# eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	addiw	a4,a4,48	#, tmp94, _2
	andi	a4,a4,0xff	# _4, tmp94
# eval/problem45//code.c:9:         temp[index++] = (x % base) + '0';
	addi	a5,a5,-16	#, tmp122, index.0_3
	add	a5,a5,s0	#, tmp95, tmp122
	sb	a4,-48(a5)	# _4, temp[index.0_3]
# eval/problem45//code.c:10:         x = x / base;
	lw	a5,-84(s0)		# tmp99, x
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-88(s0)		# tmp101, base
	divw	a5,a4,a5	# tmp100, tmp97, tmp98
	sw	a5,-84(s0)	# tmp97, x
.L2:
# eval/problem45//code.c:8:     while (x > 0) {
	lw	a5,-84(s0)		# tmp103, x
	sext.w	a5,a5	# tmp104, tmp102
	bgt	a5,zero,.L3	#, tmp104,,
# eval/problem45//code.c:12:     int j = 0;
	sw	zero,-68(s0)	#, j
# eval/problem45//code.c:13:     while(index > 0) {
	j	.L4		#
.L5:
# eval/problem45//code.c:14:         out[j++] = temp[--index];
	lw	a5,-72(s0)		# tmp107, index
	addiw	a5,a5,-1	#, tmp105, tmp106
	sw	a5,-72(s0)	# tmp105, index
# eval/problem45//code.c:14:         out[j++] = temp[--index];
	lw	a5,-68(s0)		# j.1_5, j
	addiw	a4,a5,1	#, tmp108, j.1_5
	sw	a4,-68(s0)	# tmp108, j
	mv	a4,a5	# _6, j.1_5
# eval/problem45//code.c:14:         out[j++] = temp[--index];
	ld	a5,-96(s0)		# tmp109, out
	add	a5,a5,a4	# _6, _7, tmp109
# eval/problem45//code.c:14:         out[j++] = temp[--index];
	lw	a4,-72(s0)		# tmp110, index
	addi	a4,a4,-16	#, tmp123, tmp110
	add	a4,a4,s0	#, tmp111, tmp123
	lbu	a4,-48(a4)	# _8, temp[index_24]
# eval/problem45//code.c:14:         out[j++] = temp[--index];
	sb	a4,0(a5)	# _8, *_7
.L4:
# eval/problem45//code.c:13:     while(index > 0) {
	lw	a5,-72(s0)		# tmp113, index
	sext.w	a5,a5	# tmp114, tmp112
	bgt	a5,zero,.L5	#, tmp114,,
# eval/problem45//code.c:16:     out[j] = '\0';
	lw	a5,-68(s0)		# _9, j
	ld	a4,-96(s0)		# tmp115, out
	add	a5,a4,a5	# _9, _10, tmp115
# eval/problem45//code.c:16:     out[j] = '\0';
	sb	zero,0(a5)	#, *_10
# eval/problem45//code.c:17: }
	nop	
	la	a5,__stack_chk_guard		# tmp116,
	ld	a4, -24(s0)	# tmp119, D.2604
	ld	a5, 0(a5)	# tmp117, __stack_chk_guard
	xor	a5, a4, a5	# tmp117, tmp119
	li	a4, 0	# tmp119
	beq	a5,zero,.L6	#, tmp117,,
	call	__stack_chk_fail@plt	#
.L6:
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
