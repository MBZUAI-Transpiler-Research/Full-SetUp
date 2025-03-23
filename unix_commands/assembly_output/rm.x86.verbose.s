	.file	"rm.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"--help"
.LC1:
	.string	"\nusage: rm FileTodelete"
.LC2:
	.string	"successfull"
.LC3:
	.string	"Unsuccessfull"
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
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# argc, argc
	movq	%rsi, -32(%rbp)	# argv, argv
# rm.c:4: if(argc!=2 || argv[1]=="--help")
	cmpl	$2, -20(%rbp)	#, argc
	jne	.L2	#,
# rm.c:4: if(argc!=2 || argv[1]=="--help")
	movq	-32(%rbp), %rax	# argv, tmp88
	addq	$8, %rax	#, _1
	movq	(%rax), %rax	# *_1, _2
# rm.c:4: if(argc!=2 || argv[1]=="--help")
	leaq	.LC0(%rip), %rdx	#, tmp89
	cmpq	%rdx, %rax	# tmp89, _2
	jne	.L3	#,
.L2:
# rm.c:6:     printf("\nusage: rm FileTodelete\n");
	leaq	.LC1(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	puts@PLT	#
.L3:
# rm.c:9: status=remove(argv[1]);
	movq	-32(%rbp), %rax	# argv, tmp91
	addq	$8, %rax	#, _3
# rm.c:9: status=remove(argv[1]);
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	remove@PLT	#
	movl	%eax, -4(%rbp)	# tmp92, status
# rm.c:10: if(status==0)
	cmpl	$0, -4(%rbp)	#, status
	jne	.L4	#,
# rm.c:12:     printf("successfull\n");
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	puts@PLT	#
	jmp	.L5	#
.L4:
# rm.c:16:     printf("Unsuccessfull\n");
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	puts@PLT	#
.L5:
	movl	$0, %eax	#, _15
# rm.c:18: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
