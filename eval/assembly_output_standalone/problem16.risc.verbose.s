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
	.section	.rodata
	.align	3
.LC0:
	.string	" %d"
	.align	3
.LC1:
	.string	"0"
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
	mv	a5,a0	# tmp142, n
	sw	a5,-52(s0)	# tmp143, n
# eval/problem16//code.c:5:     int len = 2; 
	li	a5,2		# tmp144,
	sw	a5,-44(s0)	# tmp144, len
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	li	a5,1		# tmp145,
	sw	a5,-40(s0)	# tmp145, i
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	j	.L2		#
.L3:
# eval/problem16//code.c:7:         len += snprintf(NULL, 0, " %d", i);
	lw	a5,-40(s0)		# tmp146, i
	mv	a3,a5	#, tmp146
	lla	a2,.LC0	#,
	li	a1,0		#,
	li	a0,0		#,
	call	snprintf@plt	#
	mv	a5,a0	# tmp147,
# eval/problem16//code.c:7:         len += snprintf(NULL, 0, " %d", i);
	lw	a4,-44(s0)		# tmp150, len
	addw	a5,a4,a5	# _30, tmp148, tmp149
	sw	a5,-44(s0)	# tmp148, len
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	lw	a5,-40(s0)		# tmp153, i
	addiw	a5,a5,1	#, tmp151, tmp152
	sw	a5,-40(s0)	# tmp151, i
.L2:
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	lw	a5,-40(s0)		# tmp155, i
	mv	a4,a5	# tmp154, tmp155
	lw	a5,-52(s0)		# tmp157, n
	sext.w	a4,a4	# tmp158, tmp154
	sext.w	a5,a5	# tmp159, tmp156
	ble	a4,a5,.L3	#, tmp158, tmp159,
# eval/problem16//code.c:10:     char *out = malloc(len);
	lw	a5,-44(s0)		# _1, len
	mv	a0,a5	#, _1
	call	malloc@plt	#
	mv	a5,a0	# tmp160,
	sd	a5,-24(s0)	# tmp160, out
# eval/problem16//code.c:11:     if (!out) {
	ld	a5,-24(s0)		# tmp161, out
	bne	a5,zero,.L4	#, tmp161,,
# eval/problem16//code.c:12:         return NULL;
	li	a5,0		# _8,
	j	.L5		#
.L4:
# eval/problem16//code.c:15:     char *ptr = out;
	ld	a5,-24(s0)		# tmp162, out
	sd	a5,-32(s0)	# tmp162, ptr
# eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	lla	a1,.LC1	#,
	ld	a0,-32(s0)		#, ptr
	call	sprintf@plt	#
	mv	a5,a0	# tmp163,
# eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	mv	a4,a5	# _2, _20
# eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	ld	a5,-32(s0)		# tmp165, ptr
	add	a5,a5,a4	# _2, tmp164, tmp165
	sd	a5,-32(s0)	# tmp164, ptr
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	li	a5,1		# tmp166,
	sw	a5,-36(s0)	# tmp166, i
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	j	.L6		#
.L7:
# eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	lw	a5,-36(s0)		# tmp167, i
	mv	a2,a5	#, tmp167
	lla	a1,.LC0	#,
	ld	a0,-32(s0)		#, ptr
	call	sprintf@plt	#
	mv	a5,a0	# tmp168,
# eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	mv	a4,a5	# _3, _25
# eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	ld	a5,-32(s0)		# tmp170, ptr
	add	a5,a5,a4	# _3, tmp169, tmp170
	sd	a5,-32(s0)	# tmp169, ptr
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	lw	a5,-36(s0)		# tmp173, i
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-36(s0)	# tmp171, i
.L6:
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	lw	a5,-36(s0)		# tmp175, i
	mv	a4,a5	# tmp174, tmp175
	lw	a5,-52(s0)		# tmp177, n
	sext.w	a4,a4	# tmp178, tmp174
	sext.w	a5,a5	# tmp179, tmp176
	ble	a4,a5,.L7	#, tmp178, tmp179,
# eval/problem16//code.c:20:     return out;
	ld	a5,-24(s0)		# _8, out
.L5:
# eval/problem16//code.c:21: }
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
