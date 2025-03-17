	.file	"problem30.c"
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
	.string	"%d"
	.align	3
.LC2:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem30.c:13: {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp186, __stack_chk_guard
	sd	a4, -24(s0)	# tmp186, D.3767
	li	a4, 0	# tmp186
# problem30.c:16:   int ttl = 0;
	sw	zero,-52(s0)	#, ttl
# problem30.c:17:   for (i = 10; i < M; i++) {
	li	a5,10		# tmp145,
	sw	a5,-56(s0)	# tmp145, i
# problem30.c:17:   for (i = 10; i < M; i++) {
	j	.L2		#
.L6:
# problem30.c:18:     int sum = 0, j;
	sw	zero,-48(s0)	#, sum
# problem30.c:20:     snprintf(buf, sizeof buf, "%d", i);
	lw	a4,-56(s0)		# tmp146, i
	addi	a5,s0,-40	#, tmp147,
	mv	a3,a4	#, tmp146
	lla	a2,.LC0	#,
	li	a1,16		#,
	mv	a0,a5	#, tmp147
	call	snprintf@plt	#
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	sw	zero,-44(s0)	#, j
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	j	.L3		#
.L4:
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	lw	a5,-44(s0)		# tmp148, j
	addi	a5,a5,-16	#, tmp190, tmp148
	add	a5,a5,s0	#, tmp149, tmp190
	lbu	a5,-24(a5)	# _1, buf[j_12]
	sext.w	a5,a5	# _2, _1
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	addiw	a5,a5,-48	#, tmp150, _2
	sext.w	a5,a5	# _3, tmp150
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	fcvt.d.w	fa5,a5	# _4, _3
	lla	a5,.LC1	# tmp152,
	fld	fa4,0(a5)	# tmp151,
	fmv.d	fa1,fa4	#, tmp151
	fmv.d	fa0,fa5	#, _4
	call	pow@plt	#
	fmv.d	fa4,fa0	# _27,
# problem30.c:22:       sum += pow(buf[j]-'0', E);
	lw	a5,-48(s0)		# tmp154, sum
	fcvt.d.w	fa5,a5	# _5, tmp153
	fadd.d	fa5,fa4,fa5	# _6, _27, _5
	fcvt.w.d a5,fa5,rtz	# tmp155, _6
	sw	a5,-48(s0)	# tmp155, sum
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	lw	a5,-44(s0)		# tmp158, j
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-44(s0)	# tmp156, j
.L3:
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	lw	a5,-44(s0)		# tmp159, j
	addi	a5,a5,-16	#, tmp191, tmp159
	add	a5,a5,s0	#, tmp160, tmp191
	lbu	a5,-24(a5)	# _7, buf[j_12]
# problem30.c:21:     for (j = 0; buf[j]; j++) {
	bne	a5,zero,.L4	#, _7,,
# problem30.c:24:     if (i == sum) {
	lw	a5,-56(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-48(s0)		# tmp164, sum
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	bne	a4,a5,.L5	#, tmp165, tmp166,
# problem30.c:25:       ttl += i;
	lw	a5,-52(s0)		# tmp169, ttl
	mv	a4,a5	# tmp168, tmp169
	lw	a5,-56(s0)		# tmp171, i
	addw	a5,a4,a5	# tmp170, tmp167, tmp168
	sw	a5,-52(s0)	# tmp167, ttl
.L5:
# problem30.c:17:   for (i = 10; i < M; i++) {
	lw	a5,-56(s0)		# tmp174, i
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-56(s0)	# tmp172, i
.L2:
# problem30.c:17:   for (i = 10; i < M; i++) {
	lw	a5,-56(s0)		# tmp178, i
	sext.w	a4,a5	# tmp179, tmp177
	li	a5,999424		# tmp181,
	addi	a5,a5,575	#, tmp180, tmp181
	ble	a4,a5,.L6	#, tmp179, tmp180,
# problem30.c:28:   printf("%d\n", ttl);
	lw	a5,-52(s0)		# tmp182, ttl
	mv	a1,a5	#, tmp182
	lla	a0,.LC2	#,
	call	printf@plt	#
# problem30.c:29:   return 0;
	li	a5,0		# _19,
# problem30.c:30: }
	mv	a4,a5	# <retval>, _19
	la	a5,__stack_chk_guard		# tmp184,
	ld	a3, -24(s0)	# tmp187, D.3767
	ld	a5, 0(a5)	# tmp185, __stack_chk_guard
	xor	a5, a3, a5	# tmp185, tmp187
	li	a3, 0	# tmp187
	beq	a5,zero,.L8	#, tmp185,,
	call	__stack_chk_fail@plt	#
.L8:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.word	0
	.word	1075052544
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
