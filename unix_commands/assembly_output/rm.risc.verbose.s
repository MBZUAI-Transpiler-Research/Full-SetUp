	.file	"rm.c"
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
	.string	"successfull"
	.align	3
.LC3:
	.string	"Unsuccessfull"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp138, argc
	sd	a1,-48(s0)	# argv, argv
	sw	a5,-36(s0)	# tmp139, argc
# rm.c:4: if(argc!=2 || argv[1]=="--help")
	lw	a5,-36(s0)		# tmp141, argc
	sext.w	a4,a5	# tmp142, tmp140
	li	a5,2		# tmp143,
	bne	a4,a5,.L2	#, tmp142, tmp143,
# rm.c:4: if(argc!=2 || argv[1]=="--help")
	ld	a5,-48(s0)		# tmp144, argv
	addi	a5,a5,8	#, _1, tmp144
	ld	a4,0(a5)		# _2, *_1
# rm.c:4: if(argc!=2 || argv[1]=="--help")
	lla	a5,.LC0	# tmp145,
	bne	a4,a5,.L3	#, _2, tmp145,
.L2:
# rm.c:6:     printf("\nusage: rm FileTodelete\n");
	lla	a0,.LC1	#,
	call	puts@plt	#
.L3:
# rm.c:9: status=remove(argv[1]);
	ld	a5,-48(s0)		# tmp146, argv
	addi	a5,a5,8	#, _3, tmp146
# rm.c:9: status=remove(argv[1]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	remove@plt	#
	mv	a5,a0	# tmp147,
	sw	a5,-20(s0)	# tmp147, status
# rm.c:10: if(status==0)
	lw	a5,-20(s0)		# tmp149, status
	sext.w	a5,a5	# tmp150, tmp148
	bne	a5,zero,.L4	#, tmp150,,
# rm.c:12:     printf("successfull\n");
	lla	a0,.LC2	#,
	call	puts@plt	#
# rm.c:18: }
	j	.L6		#
.L4:
# rm.c:16:     printf("Unsuccessfull\n");
	lla	a0,.LC3	#,
	call	puts@plt	#
.L6:
# rm.c:18: }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
