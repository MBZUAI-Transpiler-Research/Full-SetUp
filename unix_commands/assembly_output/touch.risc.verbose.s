	.file	"touch.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.globl	retvalue
	.bss
	.align	2
	.type	retvalue, @object
	.size	retvalue, 4
retvalue:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"Usage::touch textfileTomodify"
	.align	3
.LC2:
	.string	"Timestamp modified"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
	mv	a5,a0	# tmp80, argc
	sd	a1,-32(s0)	# argv, argv
	sw	a5,-20(s0)	# tmp81, argc
# touch.c:5: if(argc!=2 || argv[1]=="--help"){
	lw	a5,-20(s0)		# tmp83, argc
	sext.w	a4,a5	# tmp84, tmp82
	li	a5,2		# tmp85,
	bne	a4,a5,.L2	#, tmp84, tmp85,
# touch.c:5: if(argc!=2 || argv[1]=="--help"){
	ld	a5,-32(s0)		# tmp86, argv
	addi	a5,a5,8	#, _1, tmp86
	ld	a4,0(a5)		# _2, *_1
# touch.c:5: if(argc!=2 || argv[1]=="--help"){
	lla	a5,.LC0	# tmp87,
	bne	a4,a5,.L3	#, _2, tmp87,
.L2:
# touch.c:6: printf("Usage::touch textfileTomodify\n");
	lla	a0,.LC1	#,
	call	puts@plt	#
.L3:
# touch.c:8: retvalue=utime(argv[1],NULL);
	ld	a5,-32(s0)		# tmp88, argv
	addi	a5,a5,8	#, _3, tmp88
# touch.c:8: retvalue=utime(argv[1],NULL);
	ld	a5,0(a5)		# _4, *_3
	li	a1,0		#,
	mv	a0,a5	#, _4
	call	utime@plt	#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# _5, tmp89
# touch.c:8: retvalue=utime(argv[1],NULL);
	lla	a5,retvalue	# tmp90,
	sw	a4,0(a5)	# _5, retvalue
# touch.c:9: if(retvalue==0){
	lla	a5,retvalue	# tmp91,
	lw	a5,0(a5)		# retvalue.0_6, retvalue
# touch.c:9: if(retvalue==0){
	bne	a5,zero,.L4	#, retvalue.0_6,,
# touch.c:10: printf("Timestamp modified\n");
	lla	a0,.LC2	#,
	call	puts@plt	#
.L4:
	li	a5,0		# _16,
# touch.c:12: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
