	.file	"cd.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Usage:: cd Directory"
	.align	3
.LC1:
	.string	"chdir"
	.align	3
.LC2:
	.string	"Current working dir: %s\n"
	.align	3
.LC3:
	.string	"getcwd() error"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-1072	#,,
	sd	ra,1064(sp)	#,
	sd	s0,1056(sp)	#,
	addi	s0,sp,1072	#,,
	mv	a5,a0	# tmp77, argc
	sd	a1,-1072(s0)	# argv, argv
	sw	a5,-1060(s0)	# tmp78, argc
# cd.c:6: int main(int argc,char* argv[]) {
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp95, __stack_chk_guard
	sd	a4, -24(s0)	# tmp95, D.3034
	li	a4, 0	# tmp95
# cd.c:7: if(argc!=2)
	lw	a5,-1060(s0)		# tmp81, argc
	sext.w	a4,a5	# tmp82, tmp80
	li	a5,2		# tmp83,
	beq	a4,a5,.L2	#, tmp82, tmp83,
# cd.c:9:     printf("Usage:: cd Directory\n");
	lla	a0,.LC0	#,
	call	puts@plt	#
.L2:
# cd.c:11:    char *p=argv[1];
	ld	a5,-1072(s0)		# tmp84, argv
	ld	a5,8(a5)		# tmp85, MEM[(char * *)argv_9(D) + 8B]
	sd	a5,-1056(s0)	# tmp85, p
# cd.c:12: if(chdir(p)== -1)
	ld	a0,-1056(s0)		#, p
	call	chdir@plt	#
	mv	a5,a0	# tmp86,
# cd.c:12: if(chdir(p)== -1)
	mv	a4,a5	# tmp87, _1
	li	a5,-1		# tmp88,
	bne	a4,a5,.L3	#, tmp87, tmp88,
# cd.c:14:     perror("chdir");
	lla	a0,.LC1	#,
	call	perror@plt	#
# cd.c:15:     exit(EXIT_FAILURE);
	li	a0,1		#,
	call	exit@plt	#
.L3:
# cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	addi	a5,s0,-1048	#, tmp89,
	li	a1,1024		#,
	mv	a0,a5	#, tmp89
	call	getcwd@plt	#
	mv	a5,a0	# _2,
# cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	beq	a5,zero,.L4	#, _2,,
# cd.c:21:        fprintf(stdout, "Current working dir: %s\n", cwd);
	la	a5,stdout		# tmp90,
	ld	a5,0(a5)		# stdout.0_3, stdout
	addi	a4,s0,-1048	#, tmp91,
	mv	a2,a4	#, tmp91
	lla	a1,.LC2	#,
	mv	a0,a5	#, stdout.0_3
	call	fprintf@plt	#
	j	.L5		#
.L4:
# cd.c:23:        perror("getcwd() error");
	lla	a0,.LC3	#,
	call	perror@plt	#
.L5:
# cd.c:24:    return 0;
	li	a5,0		# _15,
# cd.c:25: }
	mv	a4,a5	# <retval>, _15
	la	a5,__stack_chk_guard		# tmp93,
	ld	a3, -24(s0)	# tmp96, D.3034
	ld	a5, 0(a5)	# tmp94, __stack_chk_guard
	xor	a5, a3, a5	# tmp94, tmp96
	li	a3, 0	# tmp96
	beq	a5,zero,.L7	#, tmp94,,
	call	__stack_chk_fail@plt	#
.L7:
	mv	a0,a4	#, <retval>
	ld	ra,1064(sp)		#,
	ld	s0,1056(sp)		#,
	addi	sp,sp,1072	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
