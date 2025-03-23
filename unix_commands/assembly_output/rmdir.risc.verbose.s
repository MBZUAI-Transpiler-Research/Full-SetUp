	.file	"rmdir.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp139, argc
	sd	a1,-80(s0)	# argv, argv
	sw	a5,-68(s0)	# tmp140, argc
# rmdir.c:12: int main(int argc, char* argv[]){
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp154, __stack_chk_guard
	sd	a4, -24(s0)	# tmp154, D.4487
	li	a4, 0	# tmp154
# rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	lw	a5,-68(s0)		# tmp143, argc
	sext.w	a4,a5	# tmp144, tmp142
	li	a5,2		# tmp145,
	bne	a4,a5,.L2	#, tmp144, tmp145,
# rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	ld	a5,-80(s0)		# tmp146, argv
	addi	a5,a5,8	#, _1, tmp146
	ld	a4,0(a5)		# _2, *_1
# rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	lla	a5,.LC0	# tmp147,
	bne	a4,a5,.L3	#, _2, tmp147,
.L2:
# rmdir.c:17:     printf("\nusage: rm FileTodelete\n");
	lla	a0,.LC1	#,
	call	puts@plt	#
.L3:
# rmdir.c:20: char *cmd = "rmdir";
	lla	a5,.LC2	# tmp148,
	sd	a5,-56(s0)	# tmp148, cmd
# rmdir.c:22: args[0] = "rmdir";
	lla	a5,.LC2	# tmp149,
	sd	a5,-48(s0)	# tmp149, args[0]
# rmdir.c:23: args[1] = argv[1];
	ld	a5,-80(s0)		# tmp150, argv
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
	la	a5,__stack_chk_guard		# tmp152,
	ld	a3, -24(s0)	# tmp155, D.4487
	ld	a5, 0(a5)	# tmp153, __stack_chk_guard
	xor	a5, a3, a5	# tmp153, tmp155
	li	a3, 0	# tmp155
	beq	a5,zero,.L5	#, tmp153,,
	call	__stack_chk_fail@plt	#
.L5:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
