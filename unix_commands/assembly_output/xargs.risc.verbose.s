	.file	"xargs.c"
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-288	#,,
	.cfi_def_cfa_offset 288
	sd	ra,280(sp)	#,
	sd	s0,272(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,288	#,,
	.cfi_def_cfa 8, 0
# xargs.c:2: int main(){
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp149, __stack_chk_guard
	sd	a4, -24(s0)	# tmp149, D.2720
	li	a4, 0	# tmp149
# xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	j	.L2		#
.L3:
# xargs.c:8:   fp=fopen("lm.txt","a+");
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	fopen@plt	#
	mv	a5,a0	# tmp140,
	sd	a5,-272(s0)	# tmp140, fp
# xargs.c:9:   fprintf(fp,"%s\n",get);
	addi	a5,s0,-264	#, tmp141,
	mv	a2,a5	#, tmp141
	lla	a1,.LC2	#,
	ld	a0,-272(s0)		#, fp
	call	fprintf@plt	#
# xargs.c:10:   fclose(fp);
	ld	a0,-272(s0)		#, fp
	call	fclose@plt	#
.L2:
# xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	la	a5,stdin		# tmp142,
	ld	a4,0(a5)		# stdin.0_1, stdin
	addi	a5,s0,-264	#, tmp143,
	mv	a2,a4	#, stdin.0_1
	li	a1,100		#,
	mv	a0,a5	#, tmp143
	call	fgets@plt	#
	mv	a5,a0	# _2,
# xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	bne	a5,zero,.L3	#, _2,,
# xargs.c:14: fp=fopen("lm.txt", "r");
	lla	a1,.LC3	#,
	lla	a0,.LC1	#,
	call	fopen@plt	#
	mv	a5,a0	# tmp144,
	sd	a5,-272(s0)	# tmp144, fp
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	j	.L4		#
.L7:
# xargs.c:18:          putchar(ch);
	lbu	a5,-273(s0)	# tmp145, ch
	sext.w	a5,a5	# _3, tmp145
	mv	a0,a5	#, _3
	call	putchar@plt	#
.L4:
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	ld	a0,-272(s0)		#, fp
	call	fgetc@plt	#
	mv	a5,a0	# tmp146,
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	sb	a5,-273(s0)	# _4, ch
	j	.L7		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
