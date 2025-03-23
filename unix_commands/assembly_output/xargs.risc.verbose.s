	.file	"xargs.c"
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
	.string	"lm.txt"
	.align	3
.LC2:
	.string	"%s\n"
	.align	3
.LC3:
	.string	"r"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-288	#,,
	sd	ra,280(sp)	#,
	sd	s0,272(sp)	#,
	addi	s0,sp,288	#,,
# xargs.c:2: int main(){
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp87, __stack_chk_guard
	sd	a4, -24(s0)	# tmp87, D.1902
	li	a4, 0	# tmp87
# xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	j	.L2		#
.L3:
# xargs.c:8:   fp=fopen("lm.txt","a+");
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	fopen@plt	#
	mv	a5,a0	# tmp78,
	sd	a5,-272(s0)	# tmp78, fp
# xargs.c:9:   fprintf(fp,"%s\n",get);
	addi	a5,s0,-264	#, tmp79,
	mv	a2,a5	#, tmp79
	lla	a1,.LC2	#,
	ld	a0,-272(s0)		#, fp
	call	fprintf@plt	#
# xargs.c:10:   fclose(fp);
	ld	a0,-272(s0)		#, fp
	call	fclose@plt	#
.L2:
# xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	la	a5,stdin		# tmp80,
	ld	a4,0(a5)		# stdin.0_1, stdin
	addi	a5,s0,-264	#, tmp81,
	mv	a2,a4	#, stdin.0_1
	li	a1,100		#,
	mv	a0,a5	#, tmp81
	call	fgets@plt	#
	mv	a5,a0	# _2,
# xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	bne	a5,zero,.L3	#, _2,,
# xargs.c:14: fp=fopen("lm.txt", "r");
	lla	a1,.LC3	#,
	lla	a0,.LC1	#,
	call	fopen@plt	#
	mv	a5,a0	# tmp82,
	sd	a5,-272(s0)	# tmp82, fp
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	j	.L4		#
.L7:
# xargs.c:18:          putchar(ch);
	lbu	a5,-273(s0)	# tmp83, ch
	sext.w	a5,a5	# _3, tmp83
	mv	a0,a5	#, _3
	call	putchar@plt	#
.L4:
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	ld	a0,-272(s0)		#, fp
	call	fgetc@plt	#
	mv	a5,a0	# tmp84,
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	sb	a5,-273(s0)	# _4, ch
	j	.L7		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
