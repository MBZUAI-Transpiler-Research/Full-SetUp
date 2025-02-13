	.file	"touch.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp140, argc
	sd	a1,-32(s0)	# argv, argv
	sw	a5,-20(s0)	# tmp141, argc
# touch.c:5: if(argc!=2 || argv[1]=="--help"){
	lw	a5,-20(s0)		# tmp143, argc
	sext.w	a4,a5	# tmp144, tmp142
	li	a5,2		# tmp145,
	bne	a4,a5,.L2	#, tmp144, tmp145,
# touch.c:5: if(argc!=2 || argv[1]=="--help"){
	ld	a5,-32(s0)		# tmp146, argv
	addi	a5,a5,8	#, _1, tmp146
	ld	a4,0(a5)		# _2, *_1
# touch.c:5: if(argc!=2 || argv[1]=="--help"){
	lla	a5,.LC0	# tmp147,
	bne	a4,a5,.L3	#, _2, tmp147,
.L2:
# touch.c:6: printf("Usage::touch textfileTomodify\n");
	lla	a0,.LC1	#,
	call	puts@plt	#
.L3:
# touch.c:8: retvalue=utime(argv[1],NULL);
	ld	a5,-32(s0)		# tmp148, argv
	addi	a5,a5,8	#, _3, tmp148
# touch.c:8: retvalue=utime(argv[1],NULL);
	ld	a5,0(a5)		# _4, *_3
	li	a1,0		#,
	mv	a0,a5	#, _4
	call	utime@plt	#
	mv	a5,a0	# tmp149,
	mv	a4,a5	# _5, tmp149
# touch.c:8: retvalue=utime(argv[1],NULL);
	lla	a5,retvalue	# tmp150,
	sw	a4,0(a5)	# _5, retvalue
# touch.c:9: if(retvalue==0){
	lla	a5,retvalue	# tmp151,
	lw	a5,0(a5)		# retvalue.0_6, retvalue
# touch.c:9: if(retvalue==0){
	bne	a5,zero,.L5	#, retvalue.0_6,,
# touch.c:10: printf("Timestamp modified\n");
	lla	a0,.LC2	#,
	call	puts@plt	#
.L5:
# touch.c:12: }
	nop	
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
