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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp148, n
	sd	a1,-48(s0)	# size, size
	sw	a5,-36(s0)	# tmp149, n
# code.c:5:     int* out = malloc(sizeof(int) * 64);
	li	a0,256		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp150,
	sd	a5,-24(s0)	# tmp150, out
# code.c:6:     *size = 0;
	ld	a5,-48(s0)		# tmp151, size
	sw	zero,0(a5)	#, *size_24(D)
# code.c:7:     for (int i = 2; i * i <= n; i++) {
	li	a5,2		# tmp152,
	sw	a5,-28(s0)	# tmp152, i
# code.c:7:     for (int i = 2; i * i <= n; i++) {
	j	.L2		#
.L4:
# code.c:9:             n = n / i;
	lw	a5,-36(s0)		# tmp156, n
	mv	a4,a5	# tmp155, tmp156
	lw	a5,-28(s0)		# tmp158, i
	divw	a5,a4,a5	# tmp157, tmp154, tmp155
	sw	a5,-36(s0)	# tmp154, n
# code.c:10:             out[(*size)++] = i;
	ld	a5,-48(s0)		# tmp159, size
	lw	a5,0(a5)		# _1, *size_24(D)
# code.c:10:             out[(*size)++] = i;
	addiw	a4,a5,1	#, tmp160, _1
	sext.w	a3,a4	# _3, tmp160
	ld	a4,-48(s0)		# tmp161, size
	sw	a3,0(a4)	# _3, *size_24(D)
# code.c:10:             out[(*size)++] = i;
	slli	a5,a5,2	#, _5, _4
	ld	a4,-24(s0)		# tmp162, out
	add	a5,a4,a5	# _5, _6, tmp162
# code.c:10:             out[(*size)++] = i;
	lw	a4,-28(s0)		# tmp163, i
	sw	a4,0(a5)	# tmp163, *_6
.L3:
# code.c:8:         while (n % i == 0) {
	lw	a5,-36(s0)		# tmp166, n
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-28(s0)		# tmp169, i
	remw	a5,a4,a5	# tmp168, tmp167, tmp165
	sext.w	a5,a5	# _7, tmp167
# code.c:8:         while (n % i == 0) {
	beq	a5,zero,.L4	#, _7,,
# code.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-28(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-28(s0)	# tmp170, i
.L2:
# code.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-28(s0)		# tmp175, i
	mulw	a5,a5,a5	# tmp173, tmp174, tmp174
	sext.w	a4,a5	# _8, tmp173
# code.c:7:     for (int i = 2; i * i <= n; i++) {
	lw	a5,-36(s0)		# tmp177, n
	sext.w	a5,a5	# tmp178, tmp176
	bge	a5,a4,.L3	#, tmp178, tmp179,
# code.c:13:     if (n > 1) {
	lw	a5,-36(s0)		# tmp181, n
	sext.w	a4,a5	# tmp182, tmp180
	li	a5,1		# tmp183,
	ble	a4,a5,.L6	#, tmp182, tmp183,
# code.c:14:         out[(*size)++] = n;
	ld	a5,-48(s0)		# tmp184, size
	lw	a5,0(a5)		# _9, *size_24(D)
# code.c:14:         out[(*size)++] = n;
	addiw	a4,a5,1	#, tmp185, _9
	sext.w	a3,a4	# _11, tmp185
	ld	a4,-48(s0)		# tmp186, size
	sw	a3,0(a4)	# _11, *size_24(D)
# code.c:14:         out[(*size)++] = n;
	slli	a5,a5,2	#, _13, _12
	ld	a4,-24(s0)		# tmp187, out
	add	a5,a4,a5	# _13, _14, tmp187
# code.c:14:         out[(*size)++] = n;
	lw	a4,-36(s0)		# tmp188, n
	sw	a4,0(a5)	# tmp188, *_14
.L6:
# code.c:16:     return out;
	ld	a5,-24(s0)		# _30, out
# code.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
