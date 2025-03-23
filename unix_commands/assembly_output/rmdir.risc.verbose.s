	.file	"rmdir.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nusage: rm FileTodelete"
	.align	3
.LC2:
	.string	"rmdir"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	mv	a5,a0	# tmp77, argc
	sd	a1,-80(s0)	# argv, argv
	sw	a5,-68(s0)	# tmp78, argc
# rmdir.c:12: int main(int argc, char* argv[]){
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp92, __stack_chk_guard
	sd	a4, -24(s0)	# tmp92, D.3633
	li	a4, 0	# tmp92
# rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	lw	a5,-68(s0)		# tmp81, argc
	sext.w	a4,a5	# tmp82, tmp80
	li	a5,2		# tmp83,
	bne	a4,a5,.L2	#, tmp82, tmp83,
# rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	ld	a5,-80(s0)		# tmp84, argv
	addi	a5,a5,8	#, _1, tmp84
	ld	a4,0(a5)		# _2, *_1
# rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	lla	a5,.LC0	# tmp85,
	bne	a4,a5,.L3	#, _2, tmp85,
.L2:
# rmdir.c:17:     printf("\nusage: rm FileTodelete\n");
	lla	a0,.LC1	#,
	call	puts@plt	#
.L3:
# rmdir.c:20: char *cmd = "rmdir";
	lla	a5,.LC2	# tmp86,
	sd	a5,-56(s0)	# tmp86, cmd
# rmdir.c:22: args[0] = "rmdir";
	lla	a5,.LC2	# tmp87,
	sd	a5,-48(s0)	# tmp87, args[0]
# rmdir.c:23: args[1] = argv[1];
	ld	a5,-80(s0)		# tmp88, argv
	ld	a5,8(a5)		# _3, MEM[(char * *)argv_6(D) + 8B]
	sd	a5,-40(s0)	# _3, args[1]
# rmdir.c:24: args[2] = NULL;
	sd	zero,-32(s0)	#, args[2]
# rmdir.c:26: execvp(cmd, argv);
	ld	a1,-80(s0)		#, argv
	ld	a0,-56(s0)		#, cmd
	call	execvp@plt	#
	li	a5,0		# _15,
	mv	a4,a5	# <retval>, _15
# rmdir.c:27: }
	la	a5,__stack_chk_guard		# tmp90,
	ld	a3, -24(s0)	# tmp93, D.3633
	ld	a5, 0(a5)	# tmp91, __stack_chk_guard
	xor	a5, a3, a5	# tmp91, tmp93
	li	a3, 0	# tmp93
	beq	a5,zero,.L5	#, tmp91,,
	call	__stack_chk_fail@plt	#
.L5:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
