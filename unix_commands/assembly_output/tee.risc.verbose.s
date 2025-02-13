	.file	"tee.c"
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
	.string	"a+"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"%s\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-160	#,,
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp136, argc
	sd	a1,-160(s0)	# argv, argv
	sw	a5,-148(s0)	# tmp137, argc
# tee.c:2: void main(int argc,char* argv[]){
	la	a5,__stack_chk_guard		# tmp138,
	ld	a4, 0(a5)	# tmp146, __stack_chk_guard
	sd	a4, -24(s0)	# tmp146, D.2717
	li	a4, 0	# tmp146
.L2:
# tee.c:9: fp=fopen(argv[1],"a+");
	ld	a5,-160(s0)		# tmp139, argv
	addi	a5,a5,8	#, _1, tmp139
# tee.c:9: fp=fopen(argv[1],"a+");
	ld	a5,0(a5)		# _2, *_1
	lla	a1,.LC0	#,
	mv	a0,a5	#, _2
	call	fopen@plt	#
	mv	a5,a0	# tmp140,
	sd	a5,-136(s0)	# tmp140, fp
# tee.c:10: scanf("%s",input);
	addi	a5,s0,-128	#, tmp141,
	mv	a1,a5	#, tmp141
	lla	a0,.LC1	#,
	call	__isoc99_scanf@plt	#
# tee.c:11: printf("%s",input);
	addi	a5,s0,-128	#, tmp142,
	mv	a1,a5	#, tmp142
	lla	a0,.LC1	#,
	call	printf@plt	#
# tee.c:12: fprintf(fp,"%s\n",input);
	addi	a5,s0,-128	#, tmp143,
	mv	a2,a5	#, tmp143
	lla	a1,.LC2	#,
	ld	a0,-136(s0)		#, fp
	call	fprintf@plt	#
# tee.c:13: fclose(fp);
	ld	a0,-136(s0)		#, fp
	call	fclose@plt	#
# tee.c:9: fp=fopen(argv[1],"a+");
	nop	
	j	.L2		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
