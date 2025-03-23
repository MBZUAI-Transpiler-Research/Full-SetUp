	.file	"cp.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"--help"
	.align 8
.LC1:
	.string	"\nUsage: cpcmd source destination"
	.align 8
.LC2:
	.string	"\nError opening file %s errno = %d\n"
.LC3:
	.string	"\nError in writing data to "
.LC4:
	.string	"\nError in closing file"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$4096, %rsp	#,
	orq	$0, (%rsp)	#,
	subq	$4096, %rsp	#,
	orq	$0, (%rsp)	#,
	subq	$48, %rsp	#,
	movl	%edi, -8228(%rbp)	# argc, argc
	movq	%rsi, -8240(%rbp)	# argv, argv
# cp.c:10: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp127
	movq	%rax, -8(%rbp)	# tmp127, D.4385
	xorl	%eax, %eax	# tmp127
# cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	cmpl	$3, -8228(%rbp)	#, argc
	jne	.L2	#,
# cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	movq	-8240(%rbp), %rax	# argv, tmp104
	addq	$8, %rax	#, _1
	movq	(%rax), %rdx	# *_1, _2
# cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	leaq	.LC0(%rip), %rax	#, tmp105
	cmpq	%rax, %rdx	# tmp105, _2
	jne	.L3	#,
.L2:
# cp.c:16: 		printf("\nUsage: cpcmd source destination\n");
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	puts@PLT	#
# cp.c:17: 		exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L3:
# cp.c:23: 	Source = open(argv[1],O_RDONLY);
	movq	-8240(%rbp), %rax	# argv, tmp107
	addq	$8, %rax	#, _3
# cp.c:23: 	Source = open(argv[1],O_RDONLY);
	movq	(%rax), %rax	# *_3, _4
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _4,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, -8220(%rbp)	# tmp108, Source
# cp.c:25: 	if(Source == -1)
	cmpl	$-1, -8220(%rbp)	#, Source
	jne	.L4	#,
# cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	call	__errno_location@PLT	#
# cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	movl	(%rax), %edx	# *_5, _6
# cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	movq	-8240(%rbp), %rax	# argv, tmp109
	addq	$8, %rax	#, _7
# cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	movq	(%rax), %rax	# *_7, _8
	movq	%rax, %rsi	# _8,
	leaq	.LC2(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	movl	$0, %eax	#,
	call	printf@PLT	#
# cp.c:28: 		exit(EXIT_FAILURE);	
	movl	$1, %edi	#,
	call	exit@PLT	#
.L4:
# cp.c:31: 	Destination = open(argv[2],O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH);
	movq	-8240(%rbp), %rax	# argv, tmp111
	addq	$16, %rax	#, _9
# cp.c:31: 	Destination = open(argv[2],O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH);
	movq	(%rax), %rax	# *_9, _10
	movl	$438, %edx	#,
	movl	$577, %esi	#,
	movq	%rax, %rdi	# _10,
	movl	$0, %eax	#,
	call	open@PLT	#
	movl	%eax, -8216(%rbp)	# tmp112, Destination
# cp.c:33: 	if(Destination == -1)
	cmpl	$-1, -8216(%rbp)	#, Destination
	jne	.L7	#,
# cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	call	__errno_location@PLT	#
# cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	movl	(%rax), %edx	# *_11, _12
# cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	movq	-8240(%rbp), %rax	# argv, tmp113
	addq	$16, %rax	#, _13
# cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	movq	(%rax), %rax	# *_13, _14
	movq	%rax, %rsi	# _14,
	leaq	.LC2(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	printf@PLT	#
# cp.c:36: 		exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L8:
# cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	movl	-8212(%rbp), %eax	# ReadBuffer, tmp115
	movslq	%eax, %rdx	# tmp115, _15
	leaq	-8208(%rbp), %rcx	#, tmp116
	movl	-8216(%rbp), %eax	# Destination, tmp117
	movq	%rcx, %rsi	# tmp116,
	movl	%eax, %edi	# tmp117,
	call	write@PLT	#
	movq	%rax, %rdx	#, _16
# cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	movl	-8212(%rbp), %eax	# ReadBuffer, tmp118
	cltq
# cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	cmpq	%rax, %rdx	# _17, _16
	je	.L7	#,
# cp.c:43: 			printf("\nError in writing data to \n");
	leaq	.LC3(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	puts@PLT	#
.L7:
# cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	leaq	-8208(%rbp), %rcx	#, tmp120
	movl	-8220(%rbp), %eax	# Source, tmp121
	movl	$1024, %edx	#,
	movq	%rcx, %rsi	# tmp120,
	movl	%eax, %edi	# tmp121,
	call	read@PLT	#
# cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	movl	%eax, -8212(%rbp)	# _18, ReadBuffer
# cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	cmpl	$0, -8212(%rbp)	#, ReadBuffer
	jg	.L8	#,
# cp.c:47: 	if(close(Source) == -1)
	movl	-8220(%rbp), %eax	# Source, tmp122
	movl	%eax, %edi	# tmp122,
	call	close@PLT	#
# cp.c:47: 	if(close(Source) == -1)
	cmpl	$-1, %eax	#, _19
	jne	.L9	#,
# cp.c:48: 		printf("\nError in closing file\n");
	leaq	.LC4(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	puts@PLT	#
.L9:
# cp.c:50: 	if(close(Destination) == -1)
	movl	-8216(%rbp), %eax	# Destination, tmp124
	movl	%eax, %edi	# tmp124,
	call	close@PLT	#
# cp.c:50: 	if(close(Destination) == -1)
	cmpl	$-1, %eax	#, _20
	jne	.L10	#,
# cp.c:51: 		printf("\nError in closing file\n");
	leaq	.LC4(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	puts@PLT	#
.L10:
	movl	$0, %eax	#, _38
# cp.c:53: }
	movq	-8(%rbp), %rdx	# D.4385, tmp128
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	je	.L12	#,
	call	__stack_chk_fail@PLT	#
.L12:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
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
