	.file	"cat.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-160	#,,
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	addi	s0,sp,160	#,,
	mv	a5,a0	# tmp78, argc
	sd	a1,-160(s0)	# argv, argv
	sw	a5,-148(s0)	# tmp79, argc
# cat.c:9: {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp93, __stack_chk_guard
	sd	a4, -24(s0)	# tmp93, D.3260
	li	a4, 0	# tmp93
# cat.c:14:     fp=open(argv[1], O_RDONLY);
	ld	a5,-160(s0)		# tmp81, argv
	addi	a5,a5,8	#, _1, tmp81
# cat.c:14:     fp=open(argv[1], O_RDONLY);
	ld	a5,0(a5)		# _2, *_1
	li	a1,0		#,
	mv	a0,a5	#, _2
	call	open@plt	#
	mv	a5,a0	# tmp82,
	sw	a5,-136(s0)	# tmp82, fp
# cat.c:17:     while(op=read(fp,ch,99)){
	j	.L2		#
.L3:
# cat.c:19:          write(1,ch,op);
	lw	a4,-132(s0)		# _3, op
	addi	a5,s0,-128	#, tmp83,
	mv	a2,a4	#, _3
	mv	a1,a5	#, tmp83
	li	a0,1		#,
	call	write@plt	#
.L2:
# cat.c:17:     while(op=read(fp,ch,99)){
	addi	a4,s0,-128	#, tmp84,
	lw	a5,-136(s0)		# tmp85, fp
	li	a2,99		#,
	mv	a1,a4	#, tmp84
	mv	a0,a5	#, tmp85
	call	read@plt	#
	mv	a5,a0	# _4,
# cat.c:17:     while(op=read(fp,ch,99)){
	sw	a5,-132(s0)	# _4, op
# cat.c:17:     while(op=read(fp,ch,99)){
	lw	a5,-132(s0)		# tmp87, op
	sext.w	a5,a5	# tmp88, tmp86
	bne	a5,zero,.L3	#, tmp88,,
# cat.c:21:     printf("\n");
	li	a0,10		#,
	call	putchar@plt	#
# cat.c:22:     close(fp);
	lw	a5,-136(s0)		# tmp89, fp
	mv	a0,a5	#, tmp89
	call	close@plt	#
# cat.c:24: return 0;
	li	a5,0		# _14,
# cat.c:25: }
	mv	a4,a5	# <retval>, _14
	la	a5,__stack_chk_guard		# tmp91,
	ld	a3, -24(s0)	# tmp94, D.3260
	ld	a5, 0(a5)	# tmp92, __stack_chk_guard
	xor	a5, a3, a5	# tmp92, tmp94
	li	a3, 0	# tmp94
	beq	a5,zero,.L5	#, tmp92,,
	call	__stack_chk_fail@plt	#
.L5:
	mv	a0,a4	#, <retval>
	ld	ra,152(sp)		#,
	ld	s0,144(sp)		#,
	addi	sp,sp,160	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
