	.file	"touch.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	retvalue
	.bss
	.align 4
	.type	retvalue, @object
	.size	retvalue, 4
retvalue:
	.zero	4
	.section	.rodata
.LC0:
	.string	"--help"
.LC1:
	.string	"Usage::touch textfileTomodify"
.LC2:
	.string	"Timestamp modified"
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
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# argc, argc
	movq	%rsi, -16(%rbp)	# argv, argv
# touch.c:5: if(argc!=2 || argv[1]=="--help"){
	cmpl	$2, -4(%rbp)	#, argc
	jne	.L2	#,
# touch.c:5: if(argc!=2 || argv[1]=="--help"){
	movq	-16(%rbp), %rax	# argv, tmp90
	addq	$8, %rax	#, _1
	movq	(%rax), %rax	# *_1, _2
# touch.c:5: if(argc!=2 || argv[1]=="--help"){
	leaq	.LC0(%rip), %rdx	#, tmp91
	cmpq	%rdx, %rax	# tmp91, _2
	jne	.L3	#,
.L2:
# touch.c:6: printf("Usage::touch textfileTomodify\n");
	leaq	.LC1(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	puts@PLT	#
.L3:
# touch.c:8: retvalue=utime(argv[1],NULL);
	movq	-16(%rbp), %rax	# argv, tmp93
	addq	$8, %rax	#, _3
# touch.c:8: retvalue=utime(argv[1],NULL);
	movq	(%rax), %rax	# *_3, _4
	movl	$0, %esi	#,
	movq	%rax, %rdi	# _4,
	call	utime@PLT	#
# touch.c:8: retvalue=utime(argv[1],NULL);
	movl	%eax, retvalue(%rip)	# _5, retvalue
# touch.c:9: if(retvalue==0){
	movl	retvalue(%rip), %eax	# retvalue, retvalue.0_6
# touch.c:9: if(retvalue==0){
	testl	%eax, %eax	# retvalue.0_6
	jne	.L4	#,
# touch.c:10: printf("Timestamp modified\n");
	leaq	.LC2(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	puts@PLT	#
.L4:
	movl	$0, %eax	#, _16
# touch.c:12: }
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
