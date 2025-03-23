	.file	"problem22.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"\"%[^\"]\","
.LC2:
	.string	"%d\n"
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
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
# problem22.c:14: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp159
	movq	%rax, -24(%rbp)	# tmp159, D.3100
	xorl	%eax, %eax	# tmp159
# problem22.c:15:   int count = 0;
	movl	$0, -76(%rbp)	#, count
# problem22.c:17:   char path[] = "names.txt";
	movabsq	$8679613455007572334, %rax	#, tmp162
	movq	%rax, -34(%rbp)	# tmp162, path
	movw	$116, -26(%rbp)	#, path
# problem22.c:20:   int sum = 0;
	movl	$0, -68(%rbp)	#, sum
# problem22.c:22:   fp = fopen(path, "r");
	leaq	-34(%rbp), %rax	#, tmp124
	leaq	.LC0(%rip), %rdx	#, tmp125
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp124,
	call	fopen@PLT	#
	movq	%rax, -56(%rbp)	# tmp126, fp
# problem22.c:23:   if (!fp) {
	cmpq	$0, -56(%rbp)	#, fp
	jne	.L2	#,
# problem22.c:24:     perror(path);
	leaq	-34(%rbp), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	perror@PLT	#
# problem22.c:25:     return 1;
	movl	$1, %eax	#, _46
	jmp	.L10	#
.L2:
# problem22.c:29:   names = malloc(8192 * sizeof *names);
	movl	$65536, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -48(%rbp)	# tmp128, names
# problem22.c:30:   names[count] = malloc(16);
	movl	-76(%rbp), %eax	# count, tmp129
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-48(%rbp), %rax	# names, tmp130
	leaq	(%rdx,%rax), %rbx	#, _3
# problem22.c:30:   names[count] = malloc(16);
	movl	$16, %edi	#,
	call	malloc@PLT	#
# problem22.c:30:   names[count] = malloc(16);
	movq	%rax, (%rbx)	# _4, *_3
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	jmp	.L4	#
.L5:
# problem22.c:32:     names[++count] = malloc(16);
	addl	$1, -76(%rbp)	#, count
# problem22.c:32:     names[++count] = malloc(16);
	movl	-76(%rbp), %eax	# count, tmp132
	cltq
# problem22.c:32:     names[++count] = malloc(16);
	leaq	0(,%rax,8), %rdx	#, _6
	movq	-48(%rbp), %rax	# names, tmp133
	leaq	(%rdx,%rax), %rbx	#, _7
# problem22.c:32:     names[++count] = malloc(16);
	movl	$16, %edi	#,
	call	malloc@PLT	#
# problem22.c:32:     names[++count] = malloc(16);
	movq	%rax, (%rbx)	# _8, *_7
.L4:
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	movl	-76(%rbp), %eax	# count, tmp135
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-48(%rbp), %rax	# names, tmp136
	addq	%rdx, %rax	# _10, _11
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	movq	(%rax), %rdx	# *_11, _12
	movq	-56(%rbp), %rax	# fp, tmp137
	leaq	.LC1(%rip), %rcx	#, tmp138
	movq	%rcx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	__isoc99_fscanf@PLT	#
# problem22.c:31:   while (fscanf(fp, "\"%[^\"]\",", names[count]) != EOF) {
	cmpl	$-1, %eax	#, _13
	jne	.L5	#,
# problem22.c:34:   free(names[count]);
	movl	-76(%rbp), %eax	# count, tmp139
	cltq
	leaq	0(,%rax,8), %rdx	#, _15
	movq	-48(%rbp), %rax	# names, tmp140
	addq	%rdx, %rax	# _15, _16
# problem22.c:34:   free(names[count]);
	movq	(%rax), %rax	# *_16, _17
	movq	%rax, %rdi	# _17,
	call	free@PLT	#
# problem22.c:35:   fclose(fp);
	movq	-56(%rbp), %rax	# fp, tmp141
	movq	%rax, %rdi	# tmp141,
	call	fclose@PLT	#
# problem22.c:37:   qsort(names, count, sizeof *names, compare);
	movl	-76(%rbp), %eax	# count, tmp142
	movslq	%eax, %rsi	# tmp142, _18
	movq	-48(%rbp), %rax	# names, tmp143
	leaq	compare(%rip), %rdx	#, tmp144
	movq	%rdx, %rcx	# tmp144,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp143,
	call	qsort@PLT	#
# problem22.c:39:   for (i = 0; i < count; i++) {
	movl	$0, -72(%rbp)	#, i
# problem22.c:39:   for (i = 0; i < count; i++) {
	jmp	.L6	#
.L9:
# problem22.c:40:     int j, s = 0;
	movl	$0, -60(%rbp)	#, s
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	movl	$0, -64(%rbp)	#, j
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	jmp	.L7	#
.L8:
# problem22.c:42:       s += names[i][j]-'A'+1;
	movl	-72(%rbp), %eax	# i, tmp145
	cltq
	leaq	0(,%rax,8), %rdx	#, _20
	movq	-48(%rbp), %rax	# names, tmp146
	addq	%rdx, %rax	# _20, _21
	movq	(%rax), %rdx	# *_21, _22
# problem22.c:42:       s += names[i][j]-'A'+1;
	movl	-64(%rbp), %eax	# j, tmp147
	cltq
	addq	%rdx, %rax	# _22, _24
	movzbl	(%rax), %eax	# *_24, _25
	movsbl	%al, %eax	# _25, _26
# problem22.c:42:       s += names[i][j]-'A'+1;
	subl	$64, %eax	#, _27
# problem22.c:42:       s += names[i][j]-'A'+1;
	addl	%eax, -60(%rbp)	# _27, s
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	addl	$1, -64(%rbp)	#, j
.L7:
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	movl	-72(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,8), %rdx	#, _29
	movq	-48(%rbp), %rax	# names, tmp149
	addq	%rdx, %rax	# _29, _30
	movq	(%rax), %rdx	# *_30, _31
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	movl	-64(%rbp), %eax	# j, tmp150
	cltq
	addq	%rdx, %rax	# _31, _33
	movzbl	(%rax), %eax	# *_33, _34
# problem22.c:41:     for (j = 0; names[i][j] != 0; j++) {
	testb	%al, %al	# _34
	jne	.L8	#,
# problem22.c:44:     sum += s * (i+1);
	movl	-72(%rbp), %eax	# i, tmp151
	addl	$1, %eax	#, _35
# problem22.c:44:     sum += s * (i+1);
	imull	-60(%rbp), %eax	# s, _36
# problem22.c:44:     sum += s * (i+1);
	addl	%eax, -68(%rbp)	# _36, sum
# problem22.c:46:     free(names[i]);
	movl	-72(%rbp), %eax	# i, tmp152
	cltq
	leaq	0(,%rax,8), %rdx	#, _38
	movq	-48(%rbp), %rax	# names, tmp153
	addq	%rdx, %rax	# _38, _39
# problem22.c:46:     free(names[i]);
	movq	(%rax), %rax	# *_39, _40
	movq	%rax, %rdi	# _40,
	call	free@PLT	#
# problem22.c:39:   for (i = 0; i < count; i++) {
	addl	$1, -72(%rbp)	#, i
.L6:
# problem22.c:39:   for (i = 0; i < count; i++) {
	movl	-72(%rbp), %eax	# i, tmp154
	cmpl	-76(%rbp), %eax	# count, tmp154
	jl	.L9	#,
# problem22.c:48:   free(names);
	movq	-48(%rbp), %rax	# names, tmp155
	movq	%rax, %rdi	# tmp155,
	call	free@PLT	#
# problem22.c:50:   printf("%d\n", sum);
	movl	-68(%rbp), %eax	# sum, tmp156
	movl	%eax, %esi	# tmp156,
	leaq	.LC2(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem22.c:52:   return 0;
	movl	$0, %eax	#, _46
.L10:
# problem22.c:53: }
	movq	-24(%rbp), %rdx	# D.3100, tmp160
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp160
	je	.L11	#,
# problem22.c:53: }
	call	__stack_chk_fail@PLT	#
.L11:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.type	compare, @function
compare:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# x, x
	movq	%rsi, -16(%rbp)	# y, y
# problem22.c:57:   return strcmp(*(char * const *)x, *(char * const *)y);
	movq	-16(%rbp), %rax	# y, tmp86
	movq	(%rax), %rdx	# MEM[(char * const *)y_4(D)], _1
	movq	-8(%rbp), %rax	# x, tmp87
	movq	(%rax), %rax	# MEM[(char * const *)x_5(D)], _2
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# _2,
	call	strcmp@PLT	#
# problem22.c:58: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	compare, .-compare
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
