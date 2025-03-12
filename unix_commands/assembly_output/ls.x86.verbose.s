	.file	"ls.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"."
.LC1:
	.string	"-R"
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
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# argc, argc
	movq	%rsi, -48(%rbp)	# argv, argv
# ls.c:8:  {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	movq	%rax, -8(%rbp)	# tmp109, D.4010
	xorl	%eax, %eax	# tmp109
# ls.c:13:    if (argc == 1)
	cmpl	$1, -36(%rbp)	#, argc
	jne	.L2	#,
# ls.c:15:      n=scandir(".",&name,NULL,alphasort);
	leaq	-16(%rbp), %rax	#, tmp98
	movq	alphasort@GOTPCREL(%rip), %rdx	#, tmp100
	movq	%rdx, %rcx	# tmp99,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp98,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	scandir@PLT	#
	movl	%eax, -20(%rbp)	# tmp102, n
# ls.c:16:       while (n--)
	jmp	.L3	#
.L4:
# ls.c:18:          printf("%s\n",name[n]->d_name);
	movq	-16(%rbp), %rax	# name, name.0_1
	movl	-20(%rbp), %edx	# n, tmp103
	movslq	%edx, %rdx	# tmp103, _2
	salq	$3, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
	movq	(%rax), %rax	# *_4, _5
# ls.c:18:          printf("%s\n",name[n]->d_name);
	addq	$19, %rax	#, _6
# ls.c:18:          printf("%s\n",name[n]->d_name);
	movq	%rax, %rdi	# _6,
	call	puts@PLT	#
# ls.c:19:          free(name[n]);
	movq	-16(%rbp), %rax	# name, name.1_7
	movl	-20(%rbp), %edx	# n, tmp104
	movslq	%edx, %rdx	# tmp104, _8
	salq	$3, %rdx	#, _9
	addq	%rdx, %rax	# _9, _10
# ls.c:19:          free(name[n]);
	movq	(%rax), %rax	# *_10, _11
	movq	%rax, %rdi	# _11,
	call	free@PLT	#
.L3:
# ls.c:16:       while (n--)
	movl	-20(%rbp), %eax	# n, n.2_12
	leal	-1(%rax), %edx	#, tmp105
	movl	%edx, -20(%rbp)	# tmp105, n
# ls.c:16:       while (n--)
	testl	%eax, %eax	# n.2_12
	jne	.L4	#,
# ls.c:21:       free(name);
	movq	-16(%rbp), %rax	# name, name.3_13
	movq	%rax, %rdi	# name.3_13,
	call	free@PLT	#
	jmp	.L5	#
.L2:
# ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	cmpl	$2, -36(%rbp)	#, argc
	je	.L6	#,
# ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	movq	-48(%rbp), %rax	# argv, tmp106
	addq	$8, %rax	#, _14
	movq	(%rax), %rdx	# *_14, _15
# ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	leaq	.LC1(%rip), %rax	#, tmp107
	cmpq	%rax, %rdx	# tmp107, _15
	jne	.L5	#,
.L6:
# ls.c:25:    recursive(".",0);
	movl	$0, %esi	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	recursive	#
.L5:
# ls.c:29:    exit(EXIT_SUCCESS);
	movl	$0, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
.LC2:
	.string	".."
.LC3:
	.string	"%s"
.LC4:
	.string	""
.LC5:
	.string	"%*s[[%s]]\n"
.LC6:
	.string	"%*s-> %s\n"
	.text
	.globl	recursive
	.type	recursive, @function
recursive:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1072, %rsp	#,
	movq	%rdi, -1064(%rbp)	# name, name
	movl	%esi, -1068(%rbp)	# indent, indent
# ls.c:33: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp114
	movq	%rax, -8(%rbp)	# tmp114, D.4014
	xorl	%eax, %eax	# tmp114
# ls.c:37:     if (!(dir = opendir(name)))
	movq	-1064(%rbp), %rax	# name, tmp91
	movq	%rax, %rdi	# tmp91,
	call	opendir@PLT	#
	movq	%rax, -1056(%rbp)	# tmp92, dir
# ls.c:37:     if (!(dir = opendir(name)))
	cmpq	$0, -1056(%rbp)	#, dir
	je	.L18	#,
# ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	jmp	.L11	#
.L16:
# ls.c:41:         if (entry->d_type == DT_DIR) {
	movq	-1048(%rbp), %rax	# entry, tmp93
	movzbl	18(%rax), %eax	# entry_17->d_type, _1
# ls.c:41:         if (entry->d_type == DT_DIR) {
	cmpb	$4, %al	#, _1
	jne	.L12	#,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	movq	-1048(%rbp), %rax	# entry, tmp94
	addq	$19, %rax	#, _2
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	leaq	.LC0(%rip), %rdx	#, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# _2,
	call	strcmp@PLT	#
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	testl	%eax, %eax	# _3
	je	.L19	#,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	movq	-1048(%rbp), %rax	# entry, tmp96
	addq	$19, %rax	#, _4
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	leaq	.LC2(%rip), %rdx	#, tmp97
	movq	%rdx, %rsi	# tmp97,
	movq	%rax, %rdi	# _4,
	call	strcmp@PLT	#
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	testl	%eax, %eax	# _5
	je	.L19	#,
# ls.c:45:             sprintf(path,"%s",entry->d_name);
	movq	-1048(%rbp), %rax	# entry, tmp98
	leaq	19(%rax), %rdx	#, _6
# ls.c:45:             sprintf(path,"%s",entry->d_name);
	leaq	-1040(%rbp), %rax	#, tmp99
	leaq	.LC3(%rip), %rcx	#, tmp100
	movq	%rcx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# ls.c:46:             printf("%*s[[%s]]\n", indent, "", entry->d_name);
	movq	-1048(%rbp), %rax	# entry, tmp101
	leaq	19(%rax), %rdx	#, _7
# ls.c:46:             printf("%*s[[%s]]\n", indent, "", entry->d_name);
	movl	-1068(%rbp), %eax	# indent, tmp102
	movq	%rdx, %rcx	# _7,
	leaq	.LC4(%rip), %rdx	#, tmp103
	movl	%eax, %esi	# tmp102,
	leaq	.LC5(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	printf@PLT	#
# ls.c:47:             recursive(path, indent+3);
	movl	-1068(%rbp), %eax	# indent, tmp105
	leal	3(%rax), %edx	#, _8
	leaq	-1040(%rbp), %rax	#, tmp106
	movl	%edx, %esi	# _8,
	movq	%rax, %rdi	# tmp106,
	call	recursive	#
	jmp	.L11	#
.L12:
# ls.c:49:             printf("%*s-> %s\n", indent, "", entry->d_name);
	movq	-1048(%rbp), %rax	# entry, tmp107
	leaq	19(%rax), %rdx	#, _9
# ls.c:49:             printf("%*s-> %s\n", indent, "", entry->d_name);
	movl	-1068(%rbp), %eax	# indent, tmp108
	movq	%rdx, %rcx	# _9,
	leaq	.LC4(%rip), %rdx	#, tmp109
	movl	%eax, %esi	# tmp108,
	leaq	.LC6(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	movl	$0, %eax	#,
	call	printf@PLT	#
	jmp	.L11	#
.L19:
# ls.c:44:                 continue;
	nop	
.L11:
# ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	movq	-1056(%rbp), %rax	# dir, tmp111
	movq	%rax, %rdi	# tmp111,
	call	readdir@PLT	#
	movq	%rax, -1048(%rbp)	# tmp112, entry
# ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	cmpq	$0, -1048(%rbp)	#, entry
	jne	.L16	#,
# ls.c:52:     closedir(dir);
	movq	-1056(%rbp), %rax	# dir, tmp113
	movq	%rax, %rdi	# tmp113,
	call	closedir@PLT	#
	jmp	.L8	#
.L18:
# ls.c:38:         return;
	nop	
.L8:
# ls.c:53: }
	movq	-8(%rbp), %rax	# D.4014, tmp115
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	je	.L17	#,
	call	__stack_chk_fail@PLT	#
.L17:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	recursive, .-recursive
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
