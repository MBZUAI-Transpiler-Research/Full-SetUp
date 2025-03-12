	.file	"problem42.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"words.txt"
.LC2:
	.string	"\"%[^\"]\","
.LC3:
	.string	"%d\n"
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
	subq	$80, %rsp	#,
# problem42.c:12: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, -8(%rbp)	# tmp106, D.4264
	xorl	%eax, %eax	# tmp106
# problem42.c:14:   int cnt = 0;
	movl	$0, -68(%rbp)	#, cnt
# problem42.c:17:   fp = fopen("words.txt", "r");
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	fopen@PLT	#
	movq	%rax, -56(%rbp)	# tmp92, fp
# problem42.c:18:   if (!fp) {
	cmpq	$0, -56(%rbp)	#, fp
	jne	.L4	#,
# problem42.c:19:     perror("words.txt");
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	call	perror@PLT	#
# problem42.c:20:     return 1;
	movl	$1, %eax	#, _9
	jmp	.L8	#
.L7:
# problem42.c:24:     int i, sum = 0;
	movl	$0, -60(%rbp)	#, sum
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	movl	$0, -64(%rbp)	#, i
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	jmp	.L5	#
.L6:
# problem42.c:26:       sum += buf[i]-'A'+1;
	movl	-64(%rbp), %eax	# i, tmp95
	cltq
	movzbl	-48(%rbp,%rax), %eax	# buf[i_7], _1
	movsbl	%al, %eax	# _1, _2
# problem42.c:26:       sum += buf[i]-'A'+1;
	subl	$64, %eax	#, _3
# problem42.c:26:       sum += buf[i]-'A'+1;
	addl	%eax, -60(%rbp)	# _3, sum
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	addl	$1, -64(%rbp)	#, i
.L5:
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	movl	-64(%rbp), %eax	# i, tmp97
	cltq
	movzbl	-48(%rbp,%rax), %eax	# buf[i_7], _4
# problem42.c:25:     for (i = 0; buf[i] != '\0'; i++) {
	testb	%al, %al	# _4
	jne	.L6	#,
# problem42.c:28:     cnt += is_triangle(sum);
	movl	-60(%rbp), %eax	# sum, tmp98
	movl	%eax, %edi	# tmp98,
	call	is_triangle	#
# problem42.c:28:     cnt += is_triangle(sum);
	addl	%eax, -68(%rbp)	# _23, cnt
.L4:
# problem42.c:23:   while (fscanf(fp, "\"%[^\"]\",", buf) != EOF) {
	leaq	-48(%rbp), %rdx	#, tmp99
	movq	-56(%rbp), %rax	# fp, tmp100
	leaq	.LC2(%rip), %rcx	#, tmp101
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	__isoc99_fscanf@PLT	#
# problem42.c:23:   while (fscanf(fp, "\"%[^\"]\",", buf) != EOF) {
	cmpl	$-1, %eax	#, _5
	jne	.L7	#,
# problem42.c:30:   fclose(fp);
	movq	-56(%rbp), %rax	# fp, tmp102
	movq	%rax, %rdi	# tmp102,
	call	fclose@PLT	#
# problem42.c:32:   printf("%d\n", cnt);
	movl	-68(%rbp), %eax	# cnt, tmp103
	movl	%eax, %esi	# tmp103,
	leaq	.LC3(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem42.c:34:   return 0;
	movl	$0, %eax	#, _9
.L8:
# problem42.c:35: }
	movq	-8(%rbp), %rdx	# D.4264, tmp107
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	je	.L9	#,
	call	__stack_chk_fail@PLT	#
.L9:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	is_triangle, @function
is_triangle:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# c, c
# problem42.c:43:   int sq = sqrt(1+8*c);
	movl	-20(%rbp), %eax	# c, tmp92
	sall	$3, %eax	#, _1
# problem42.c:43:   int sq = sqrt(1+8*c);
	addl	$1, %eax	#, _2
# problem42.c:43:   int sq = sqrt(1+8*c);
	pxor	%xmm1, %xmm1	# _3
	cvtsi2sdl	%eax, %xmm1	# _2, _3
	movq	%xmm1, %rax	# _3, _3
	movq	%rax, %xmm0	# _3,
	call	sqrt@PLT	#
# problem42.c:43:   int sq = sqrt(1+8*c);
	cvttsd2sil	%xmm0, %eax	# _4, tmp93
	movl	%eax, -4(%rbp)	# tmp93, sq
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	movl	-4(%rbp), %eax	# sq, tmp94
	imull	%eax, %eax	# tmp94, tmp94
	movl	%eax, %edx	# tmp94, _5
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	movl	-20(%rbp), %eax	# c, tmp95
	sall	$3, %eax	#, _6
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	addl	$1, %eax	#, _7
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	cmpl	%eax, %edx	# _7, _5
	jne	.L11	#,
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	movl	-4(%rbp), %eax	# sq, tmp96
	andl	$1, %eax	#, _8
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	testl	%eax, %eax	# _8
	je	.L11	#,
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	movl	$1, %eax	#, iftmp.0_9
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	jmp	.L13	#
.L11:
# problem42.c:44:   return (sq*sq == 1+8*c && (sq & 1) == 1);
	movl	$0, %eax	#, iftmp.0_9
.L13:
# problem42.c:45: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	is_triangle, .-is_triangle
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
