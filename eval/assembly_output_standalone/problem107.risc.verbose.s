	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp148, n
	sw	a5,-52(s0)	# tmp149, n
# eval/problem107//code.c:5:     int* out = (int*)malloc(n * sizeof(int));
	lw	a5,-52(s0)		# _1, n
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp150,
	sd	a5,-24(s0)	# tmp150, out
# eval/problem107//code.c:6:     int sum = 0, prod = 1;
	sw	zero,-36(s0)	#, sum
# eval/problem107//code.c:6:     int sum = 0, prod = 1;
	li	a5,1		# tmp151,
	sw	a5,-32(s0)	# tmp151, prod
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	li	a5,1		# tmp152,
	sw	a5,-28(s0)	# tmp152, i
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	j	.L2		#
.L5:
# eval/problem107//code.c:8:         sum += i;
	lw	a5,-36(s0)		# tmp155, sum
	mv	a4,a5	# tmp154, tmp155
	lw	a5,-28(s0)		# tmp157, i
	addw	a5,a4,a5	# tmp156, tmp153, tmp154
	sw	a5,-36(s0)	# tmp153, sum
# eval/problem107//code.c:9:         prod *= i;
	lw	a5,-32(s0)		# tmp160, prod
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-28(s0)		# tmp162, i
	mulw	a5,a4,a5	# tmp158, tmp159, tmp161
	sw	a5,-32(s0)	# tmp158, prod
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a5,-28(s0)		# i.0_3, i
	andi	a5,a5,1	#, tmp164, tmp163
	sext.w	a5,a5	# _4, tmp164
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	bne	a5,zero,.L3	#, _4,,
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a5,-28(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	addi	a5,a5,-4	#, _7, _6
	ld	a4,-24(s0)		# tmp165, out
	add	a5,a4,a5	# _7, _8, tmp165
# eval/problem107//code.c:10:         if (i % 2 == 0) out[i - 1] = prod;
	lw	a4,-32(s0)		# tmp166, prod
	sw	a4,0(a5)	# tmp166, *_8
	j	.L4		#
.L3:
# eval/problem107//code.c:11:         else out[i - 1] = sum;
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	addi	a5,a5,-4	#, _11, _10
	ld	a4,-24(s0)		# tmp167, out
	add	a5,a4,a5	# _11, _12, tmp167
# eval/problem107//code.c:11:         else out[i - 1] = sum;
	lw	a4,-36(s0)		# tmp168, sum
	sw	a4,0(a5)	# tmp168, *_12
.L4:
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	lw	a5,-28(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-28(s0)	# tmp169, i
.L2:
# eval/problem107//code.c:7:     for (int i = 1; i <= n; i++) {
	lw	a5,-28(s0)		# tmp173, i
	mv	a4,a5	# tmp172, tmp173
	lw	a5,-52(s0)		# tmp175, n
	sext.w	a4,a4	# tmp176, tmp172
	sext.w	a5,a5	# tmp177, tmp174
	ble	a4,a5,.L5	#, tmp176, tmp177,
# eval/problem107//code.c:13:     return out;
	ld	a5,-24(s0)		# _25, out
# eval/problem107//code.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
