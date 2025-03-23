	.file	"cd.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-1072	#,,
	.cfi_def_cfa_offset 1072
	sd	ra,1064(sp)	#,
	sd	s0,1056(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1072	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp139, argc
	sd	a1,-1072(s0)	# argv, argv
	sw	a5,-1060(s0)	# tmp140, argc
# cd.c:6: int main(int argc,char* argv[]) {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp157, __stack_chk_guard
	sd	a4, -24(s0)	# tmp157, D.3859
	li	a4, 0	# tmp157
# cd.c:7: if(argc!=2)
	lw	a5,-1060(s0)		# tmp143, argc
	sext.w	a4,a5	# tmp144, tmp142
	li	a5,2		# tmp145,
	beq	a4,a5,.L2	#, tmp144, tmp145,
# cd.c:9:     printf("Usage:: cd Directory\n");
	lla	a0,.LC0	#,
	call	puts@plt	#
.L2:
# cd.c:11:    char *p=argv[1];
	ld	a5,-1072(s0)		# tmp146, argv
	ld	a5,8(a5)		# tmp147, MEM[(char * *)argv_9(D) + 8B]
	sd	a5,-1056(s0)	# tmp147, p
# cd.c:12: if(chdir(p)== -1)
	ld	a0,-1056(s0)		#, p
	call	chdir@plt	#
	mv	a5,a0	# tmp148,
# cd.c:12: if(chdir(p)== -1)
	mv	a4,a5	# tmp149, _1
	li	a5,-1		# tmp150,
	bne	a4,a5,.L3	#, tmp149, tmp150,
# cd.c:14:     perror("chdir");
	lla	a0,.LC1	#,
	call	perror@plt	#
# cd.c:15:     exit(EXIT_FAILURE);
	li	a0,1		#,
	call	exit@plt	#
.L3:
# cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	addi	a5,s0,-1048	#, tmp151,
	li	a1,1024		#,
	mv	a0,a5	#, tmp151
	call	getcwd@plt	#
	mv	a5,a0	# _2,
# cd.c:20:    if (getcwd(cwd, sizeof(cwd)) != NULL)
	beq	a5,zero,.L4	#, _2,,
# cd.c:21:        fprintf(stdout, "Current working dir: %s\n", cwd);
	la	a5,stdout		# tmp152,
	ld	a5,0(a5)		# stdout.0_3, stdout
	addi	a4,s0,-1048	#, tmp153,
	mv	a2,a4	#, tmp153
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
	la	a5,__stack_chk_guard		# tmp155,
	ld	a3, -24(s0)	# tmp158, D.3859
	ld	a5, 0(a5)	# tmp156, __stack_chk_guard
	xor	a5, a3, a5	# tmp156, tmp158
	li	a3, 0	# tmp158
	beq	a5,zero,.L7	#, tmp156,,
	call	__stack_chk_fail@plt	#
.L7:
	mv	a0,a4	#, <retval>
	ld	ra,1064(sp)		#,
	.cfi_restore 1
	ld	s0,1056(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 1072
	addi	sp,sp,1072	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
