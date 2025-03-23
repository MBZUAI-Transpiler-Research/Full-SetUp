	.file	"rm.c"
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
	.string	"successfull"
	.align	3
.LC3:
	.string	"Unsuccessfull"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp78, argc
	sd	a1,-48(s0)	# argv, argv
	sw	a5,-36(s0)	# tmp79, argc
# rm.c:4: if(argc!=2 || argv[1]=="--help")
	lw	a5,-36(s0)		# tmp81, argc
	sext.w	a4,a5	# tmp82, tmp80
	li	a5,2		# tmp83,
	bne	a4,a5,.L2	#, tmp82, tmp83,
# rm.c:4: if(argc!=2 || argv[1]=="--help")
	ld	a5,-48(s0)		# tmp84, argv
	addi	a5,a5,8	#, _1, tmp84
	ld	a4,0(a5)		# _2, *_1
# rm.c:4: if(argc!=2 || argv[1]=="--help")
	lla	a5,.LC0	# tmp85,
	bne	a4,a5,.L3	#, _2, tmp85,
.L2:
# rm.c:6:     printf("\nusage: rm FileTodelete\n");
	lla	a0,.LC1	#,
	call	puts@plt	#
.L3:
# rm.c:9: status=remove(argv[1]);
	ld	a5,-48(s0)		# tmp86, argv
	addi	a5,a5,8	#, _3, tmp86
# rm.c:9: status=remove(argv[1]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	remove@plt	#
	mv	a5,a0	# tmp87,
	sw	a5,-20(s0)	# tmp87, status
# rm.c:10: if(status==0)
	lw	a5,-20(s0)		# tmp89, status
	sext.w	a5,a5	# tmp90, tmp88
	bne	a5,zero,.L4	#, tmp90,,
# rm.c:12:     printf("successfull\n");
	lla	a0,.LC2	#,
	call	puts@plt	#
	j	.L5		#
.L4:
# rm.c:16:     printf("Unsuccessfull\n");
	lla	a0,.LC3	#,
	call	puts@plt	#
.L5:
	li	a5,0		# _15,
# rm.c:18: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
