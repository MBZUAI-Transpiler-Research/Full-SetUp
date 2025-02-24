	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp144, x
	mv	a4,a1	# tmp146, base
	sd	a2,-96(s0)	# out, out
	sw	a5,-84(s0)	# tmp145, x
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-88(s0)	# tmp147, base
# code.c:5: void func0(int x, int base, char *out) {
	la	a5,__stack_chk_guard		# tmp148,
	ld	a4, 0(a5)	# tmp180, __stack_chk_guard
	sd	a4, -24(s0)	# tmp180, D.3456
	li	a4, 0	# tmp180
# code.c:6:     int index = 0;
	sw	zero,-72(s0)	#, index
# code.c:8:     while (x > 0) {
	j	.L2		#
.L3:
# code.c:9:         temp[index++] = (x % base) + '0';
	lw	a5,-84(s0)		# tmp151, x
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-88(s0)		# tmp154, base
	remw	a5,a4,a5	# tmp153, tmp152, tmp150
	sext.w	a5,a5	# _1, tmp152
# code.c:9:         temp[index++] = (x % base) + '0';
	andi	a4,a5,0xff	# _2, _1
# code.c:9:         temp[index++] = (x % base) + '0';
	lw	a5,-72(s0)		# index.0_3, index
	addiw	a3,a5,1	#, tmp155, index.0_3
	sw	a3,-72(s0)	# tmp155, index
# code.c:9:         temp[index++] = (x % base) + '0';
	addiw	a4,a4,48	#, tmp156, _2
	andi	a4,a4,0xff	# _4, tmp156
# code.c:9:         temp[index++] = (x % base) + '0';
	addi	a5,a5,-16	#, tmp184, index.0_3
	add	a5,a5,s0	#, tmp157, tmp184
	sb	a4,-48(a5)	# _4, temp[index.0_3]
# code.c:10:         x = x / base;
	lw	a5,-84(s0)		# tmp161, x
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-88(s0)		# tmp163, base
	divw	a5,a4,a5	# tmp162, tmp159, tmp160
	sw	a5,-84(s0)	# tmp159, x
.L2:
# code.c:8:     while (x > 0) {
	lw	a5,-84(s0)		# tmp165, x
	sext.w	a5,a5	# tmp166, tmp164
	bgt	a5,zero,.L3	#, tmp166,,
# code.c:12:     int j = 0;
	sw	zero,-68(s0)	#, j
# code.c:13:     while(index > 0) {
	j	.L4		#
.L5:
# code.c:14:         out[j++] = temp[--index];
	lw	a5,-72(s0)		# tmp169, index
	addiw	a5,a5,-1	#, tmp167, tmp168
	sw	a5,-72(s0)	# tmp167, index
# code.c:14:         out[j++] = temp[--index];
	lw	a5,-68(s0)		# j.1_5, j
	addiw	a4,a5,1	#, tmp170, j.1_5
	sw	a4,-68(s0)	# tmp170, j
	mv	a4,a5	# _6, j.1_5
# code.c:14:         out[j++] = temp[--index];
	ld	a5,-96(s0)		# tmp171, out
	add	a5,a5,a4	# _6, _7, tmp171
# code.c:14:         out[j++] = temp[--index];
	lw	a4,-72(s0)		# tmp172, index
	addi	a4,a4,-16	#, tmp185, tmp172
	add	a4,a4,s0	#, tmp173, tmp185
	lbu	a4,-48(a4)	# _8, temp[index_24]
# code.c:14:         out[j++] = temp[--index];
	sb	a4,0(a5)	# _8, *_7
.L4:
# code.c:13:     while(index > 0) {
	lw	a5,-72(s0)		# tmp175, index
	sext.w	a5,a5	# tmp176, tmp174
	bgt	a5,zero,.L5	#, tmp176,,
# code.c:16:     out[j] = '\0';
	lw	a5,-68(s0)		# _9, j
	ld	a4,-96(s0)		# tmp177, out
	add	a5,a4,a5	# _9, _10, tmp177
# code.c:16:     out[j] = '\0';
	sb	zero,0(a5)	#, *_10
# code.c:17: }
	nop	
	la	a5,__stack_chk_guard		# tmp178,
	ld	a4, -24(s0)	# tmp181, D.3456
	ld	a5, 0(a5)	# tmp179, __stack_chk_guard
	xor	a5, a4, a5	# tmp179, tmp181
	li	a4, 0	# tmp181
	beq	a5,zero,.L6	#, tmp179,,
	call	__stack_chk_fail@plt	#
.L6:
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
