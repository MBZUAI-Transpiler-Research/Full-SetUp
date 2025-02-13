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
	mv	a5,a0	# tmp137, argc
	sd	a1,-80(s0)	# argv, argv
	sw	a5,-68(s0)	# tmp138, argc
# rmdir.c:12: void main(int argc, char* argv[]){
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp151, __stack_chk_guard
	sd	a4, -24(s0)	# tmp151, D.4485
	li	a4, 0	# tmp151
# rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	lw	a5,-68(s0)		# tmp141, argc
	sext.w	a4,a5	# tmp142, tmp140
	li	a5,2		# tmp143,
	bne	a4,a5,.L2	#, tmp142, tmp143,
# rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	ld	a5,-80(s0)		# tmp144, argv
	addi	a5,a5,8	#, _1, tmp144
	ld	a4,0(a5)		# _2, *_1
# rmdir.c:15: if(argc!=2 || argv[1]=="--help")
	lla	a5,.LC0	# tmp145,
	bne	a4,a5,.L3	#, _2, tmp145,
.L2:
# rmdir.c:17:     printf("\nusage: rm FileTodelete\n");
	lla	a0,.LC1	#,
	call	puts@plt	#
.L3:
# rmdir.c:20: char *cmd = "rmdir";
	lla	a5,.LC2	# tmp146,
	sd	a5,-56(s0)	# tmp146, cmd
# rmdir.c:22: args[0] = "rmdir";
	lla	a5,.LC2	# tmp147,
	sd	a5,-48(s0)	# tmp147, args[0]
# rmdir.c:23: args[1] = argv[1];
	ld	a5,-80(s0)		# tmp148, argv
	ld	a5,8(a5)		# _3, MEM[(char * *)argv_6(D) + 8B]
	sd	a5,-40(s0)	# _3, args[1]
# rmdir.c:24: args[2] = NULL;
	sd	zero,-32(s0)	#, args[2]
# rmdir.c:26: execvp(cmd, argv);
	ld	a1,-80(s0)		#, argv
	ld	a0,-56(s0)		#, cmd
	call	execvp@plt	#
# rmdir.c:27: }
	nop	
	la	a5,__stack_chk_guard		# tmp149,
	ld	a4, -24(s0)	# tmp152, D.4485
	ld	a5, 0(a5)	# tmp150, __stack_chk_guard
	xor	a5, a4, a5	# tmp150, tmp152
	li	a4, 0	# tmp152
	beq	a5,zero,.L4	#, tmp150,,
	call	__stack_chk_fail@plt	#
.L4:
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
