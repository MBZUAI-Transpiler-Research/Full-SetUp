	.file	"ps.c"
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
	.string	"ps"
	.align	3
.LC1:
	.string	"ax"
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
# ps.c:4: {
	la	a5,__stack_chk_guard		# tmp136,
	ld	a4, 0(a5)	# tmp144, __stack_chk_guard
	sd	a4, -24(s0)	# tmp144, D.3326
	li	a4, 0	# tmp144
# ps.c:5: char *cmd = "ps";
	lla	a5,.LC0	# tmp137,
	sd	a5,-56(s0)	# tmp137, cmd
# ps.c:7: args[0] = "ps";
	lla	a5,.LC0	# tmp138,
	sd	a5,-48(s0)	# tmp138, args[0]
# ps.c:8: args[1] = "ax";
	lla	a5,.LC1	# tmp139,
	sd	a5,-40(s0)	# tmp139, args[1]
# ps.c:9: args[2] = NULL;
	sd	zero,-32(s0)	#, args[2]
# ps.c:10: execvp(cmd,args);
	addi	a5,s0,-48	#, tmp140,
	mv	a1,a5	#, tmp140
	ld	a0,-56(s0)		#, cmd
	call	execvp@plt	#
	li	a5,0		# _8,
	mv	a4,a5	# <retval>, _8
# ps.c:12: }
	la	a5,__stack_chk_guard		# tmp142,
	ld	a3, -24(s0)	# tmp145, D.3326
	ld	a5, 0(a5)	# tmp143, __stack_chk_guard
	xor	a5, a3, a5	# tmp143, tmp145
	li	a3, 0	# tmp145
	beq	a5,zero,.L3	#, tmp143,,
	call	__stack_chk_fail@plt	#
.L3:
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
