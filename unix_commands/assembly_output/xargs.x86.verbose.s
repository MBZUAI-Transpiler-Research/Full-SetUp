	.file	"xargs.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"a+"
.LC1:
	.string	"lm.txt"
.LC2:
	.string	"%s\n"
.LC3:
	.string	"r"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$272, %rsp	#,
# xargs.c:2: int main(){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp102
	movq	%rax, -8(%rbp)	# tmp102, D.3189
	xorl	%eax, %eax	# tmp102
# xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	jmp	.L2	#
.L3:
# xargs.c:8:   fp=fopen("lm.txt","a+");
	leaq	.LC0(%rip), %rax	#, tmp88
	movq	%rax, %rsi	# tmp88,
	leaq	.LC1(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	fopen@PLT	#
	movq	%rax, -264(%rbp)	# tmp90, fp
# xargs.c:9:   fprintf(fp,"%s\n",get);
	leaq	-256(%rbp), %rdx	#, tmp91
	movq	-264(%rbp), %rax	# fp, tmp92
	leaq	.LC2(%rip), %rcx	#, tmp93
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	fprintf@PLT	#
# xargs.c:10:   fclose(fp);
	movq	-264(%rbp), %rax	# fp, tmp94
	movq	%rax, %rdi	# tmp94,
	call	fclose@PLT	#
.L2:
# xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	movq	stdin(%rip), %rdx	# stdin, stdin.0_1
	leaq	-256(%rbp), %rax	#, tmp95
	movl	$100, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	fgets@PLT	#
# xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	testq	%rax, %rax	# _2
	jne	.L3	#,
# xargs.c:14: fp=fopen("lm.txt", "r");
	leaq	.LC3(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	fopen@PLT	#
	movq	%rax, -264(%rbp)	# tmp98, fp
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	jmp	.L4	#
.L5:
# xargs.c:18:          putchar(ch);
	movsbl	-265(%rbp), %eax	# ch, _3
	movl	%eax, %edi	# _3,
	call	putchar@PLT	#
.L4:
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	movq	-264(%rbp), %rax	# fp, tmp99
	movq	%rax, %rdi	# tmp99,
	call	fgetc@PLT	#
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	movb	%al, -265(%rbp)	# _4, ch
# xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	cmpb	$-1, -265(%rbp)	#, ch
	jne	.L5	#,
# xargs.c:20:     printf("\n");
	movl	$10, %edi	#,
	call	putchar@PLT	#
# xargs.c:21:     fclose(fp);
	movq	-264(%rbp), %rax	# fp, tmp100
	movq	%rax, %rdi	# tmp100,
	call	fclose@PLT	#
	movl	$0, %eax	#, _16
# xargs.c:23: }
	movq	-8(%rbp), %rdx	# D.3189, tmp103
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp103
	je	.L7	#,
	call	__stack_chk_fail@PLT	#
.L7:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
