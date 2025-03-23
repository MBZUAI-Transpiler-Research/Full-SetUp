	.file	"tee.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-160	#,,
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	addi	s0,sp,160	#,,
	mv	a5,a0	# tmp75, argc
	sd	a1,-160(s0)	# argv, argv
	sw	a5,-148(s0)	# tmp76, argc
# tee.c:2: int main(int argc,char* argv[]){
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp85, __stack_chk_guard
	sd	a4, -24(s0)	# tmp85, D.1901
	li	a4, 0	# tmp85
.L2:
# tee.c:9: fp=fopen(argv[1],"a+");
	ld	a5,-160(s0)		# tmp78, argv
	addi	a5,a5,8	#, _1, tmp78
# tee.c:9: fp=fopen(argv[1],"a+");
	ld	a5,0(a5)		# _2, *_1
	lla	a1,.LC0	#,
	mv	a0,a5	#, _2
	call	fopen@plt	#
	mv	a5,a0	# tmp79,
	sd	a5,-136(s0)	# tmp79, fp
# tee.c:10: scanf("%s",input);
	addi	a5,s0,-128	#, tmp80,
	mv	a1,a5	#, tmp80
	lla	a0,.LC1	#,
	call	__isoc99_scanf@plt	#
# tee.c:11: printf("%s",input);
	addi	a5,s0,-128	#, tmp81,
	mv	a1,a5	#, tmp81
	lla	a0,.LC1	#,
	call	printf@plt	#
# tee.c:12: fprintf(fp,"%s\n",input);
	addi	a5,s0,-128	#, tmp82,
	mv	a2,a5	#, tmp82
	lla	a1,.LC2	#,
	ld	a0,-136(s0)		#, fp
	call	fprintf@plt	#
# tee.c:13: fclose(fp);
	ld	a0,-136(s0)		#, fp
	call	fclose@plt	#
# tee.c:9: fp=fopen(argv[1],"a+");
	j	.L2		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
