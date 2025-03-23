	.file	"ps.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# ps.c:4: {
	la	a5,__stack_chk_guard		# tmp74,
	ld	a4, 0(a5)	# tmp82, __stack_chk_guard
	sd	a4, -24(s0)	# tmp82, D.2508
	li	a4, 0	# tmp82
# ps.c:5: char *cmd = "ps";
	lla	a5,.LC0	# tmp75,
	sd	a5,-56(s0)	# tmp75, cmd
# ps.c:7: args[0] = "ps";
	lla	a5,.LC0	# tmp76,
	sd	a5,-48(s0)	# tmp76, args[0]
# ps.c:8: args[1] = "ax";
	lla	a5,.LC1	# tmp77,
	sd	a5,-40(s0)	# tmp77, args[1]
# ps.c:9: args[2] = NULL;
	sd	zero,-32(s0)	#, args[2]
# ps.c:10: execvp(cmd,args);
	addi	a5,s0,-48	#, tmp78,
	mv	a1,a5	#, tmp78
	ld	a0,-56(s0)		#, cmd
	call	execvp@plt	#
	li	a5,0		# _8,
	mv	a4,a5	# <retval>, _8
# ps.c:12: }
	la	a5,__stack_chk_guard		# tmp80,
	ld	a3, -24(s0)	# tmp83, D.2508
	ld	a5, 0(a5)	# tmp81, __stack_chk_guard
	xor	a5, a3, a5	# tmp81, tmp83
	li	a3, 0	# tmp83
	beq	a5,zero,.L3	#, tmp81,,
	call	__stack_chk_fail@plt	#
.L3:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
