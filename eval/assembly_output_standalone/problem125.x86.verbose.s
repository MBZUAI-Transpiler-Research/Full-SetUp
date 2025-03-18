	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# date, date
# eval/problem125//code.c:5: int func0(const char *date) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	movq	%rax, -8(%rbp)	# tmp131, D.3958
	xorl	%eax, %eax	# tmp131
# eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	movq	-56(%rbp), %rax	# date, tmp109
	movq	%rax, %rdi	# tmp109,
	call	strlen@PLT	#
# eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	cmpq	$10, %rax	#, _1
	je	.L2	#,
# eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	movl	$0, %eax	#, _27
# eval/problem125//code.c:8:     if (strlen(date) != 10) return 0;
	jmp	.L18	#
.L2:
# eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	movl	$0, -36(%rbp)	#, i
# eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	jmp	.L4	#
.L10:
# eval/problem125//code.c:10:         if (i == 2 || i == 5) {
	cmpl	$2, -36(%rbp)	#, i
	je	.L5	#,
# eval/problem125//code.c:10:         if (i == 2 || i == 5) {
	cmpl	$5, -36(%rbp)	#, i
	jne	.L6	#,
.L5:
# eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	movl	-36(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, _2
	movq	-56(%rbp), %rax	# date, tmp111
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %eax	# *_3, _4
# eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	cmpb	$45, %al	#, _4
	je	.L8	#,
# eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	movl	$0, %eax	#, _27
# eval/problem125//code.c:11:             if (date[i] != '-') return 0;
	jmp	.L18	#
.L6:
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	movl	-36(%rbp), %eax	# i, tmp112
	movslq	%eax, %rdx	# tmp112, _5
	movq	-56(%rbp), %rax	# date, tmp113
	addq	%rdx, %rax	# _5, _6
	movzbl	(%rax), %eax	# *_6, _7
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmpb	$47, %al	#, _7
	jle	.L9	#,
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	movl	-36(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, _8
	movq	-56(%rbp), %rax	# date, tmp115
	addq	%rdx, %rax	# _8, _9
	movzbl	(%rax), %eax	# *_9, _10
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmpb	$57, %al	#, _10
	jle	.L8	#,
.L9:
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	movl	$0, %eax	#, _27
# eval/problem125//code.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	jmp	.L18	#
.L8:
# eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	addl	$1, -36(%rbp)	#, i
.L4:
# eval/problem125//code.c:9:     for (int i = 0; i < 10; i++) {
	cmpl	$9, -36(%rbp)	#, i
	jle	.L10	#,
# eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movq	-56(%rbp), %rax	# date, tmp116
	movzbl	(%rax), %eax	# *date_30(D), _11
# eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movb	%al, -19(%rbp)	# _11, str_month[0]
# eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movq	-56(%rbp), %rax	# date, tmp117
	addq	$1, %rax	#, _12
	movzbl	(%rax), %eax	# *_12, _13
# eval/problem125//code.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movb	%al, -18(%rbp)	# _13, str_month[1]
	movb	$0, -17(%rbp)	#, str_month[2]
# eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	movq	-56(%rbp), %rax	# date, tmp118
	addq	$3, %rax	#, _14
	movzbl	(%rax), %eax	# *_14, _15
# eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	movb	%al, -16(%rbp)	# _15, str_day[0]
# eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	movq	-56(%rbp), %rax	# date, tmp119
	addq	$4, %rax	#, _16
	movzbl	(%rax), %eax	# *_16, _17
# eval/problem125//code.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	movb	%al, -15(%rbp)	# _17, str_day[1]
	movb	$0, -14(%rbp)	#, str_day[2]
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movq	-56(%rbp), %rax	# date, tmp120
	addq	$6, %rax	#, _18
	movzbl	(%rax), %eax	# *_18, _19
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movb	%al, -13(%rbp)	# _19, str_year[0]
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movq	-56(%rbp), %rax	# date, tmp121
	addq	$7, %rax	#, _20
	movzbl	(%rax), %eax	# *_20, _21
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movb	%al, -12(%rbp)	# _21, str_year[1]
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movq	-56(%rbp), %rax	# date, tmp122
	addq	$8, %rax	#, _22
	movzbl	(%rax), %eax	# *_22, _23
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movb	%al, -11(%rbp)	# _23, str_year[2]
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movq	-56(%rbp), %rax	# date, tmp123
	addq	$9, %rax	#, _24
	movzbl	(%rax), %eax	# *_24, _25
# eval/problem125//code.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movb	%al, -10(%rbp)	# _25, str_year[3]
	movb	$0, -9(%rbp)	#, str_year[4]
# eval/problem125//code.c:21:     mm = atoi(str_month);
	leaq	-19(%rbp), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	atoi@PLT	#
	movl	%eax, -32(%rbp)	# tmp125, mm
# eval/problem125//code.c:22:     dd = atoi(str_day);
	leaq	-16(%rbp), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	atoi@PLT	#
	movl	%eax, -28(%rbp)	# tmp127, dd
# eval/problem125//code.c:23:     yy = atoi(str_year);
	leaq	-13(%rbp), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	atoi@PLT	#
	movl	%eax, -24(%rbp)	# tmp129, yy
# eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	cmpl	$0, -32(%rbp)	#, mm
	jle	.L11	#,
# eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	cmpl	$12, -32(%rbp)	#, mm
	jle	.L12	#,
.L11:
# eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	movl	$0, %eax	#, _27
# eval/problem125//code.c:25:     if (mm < 1 || mm > 12) return 0;
	jmp	.L18	#
.L12:
# eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	cmpl	$0, -28(%rbp)	#, dd
	jle	.L13	#,
# eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	cmpl	$31, -28(%rbp)	#, dd
	jle	.L14	#,
.L13:
# eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	movl	$0, %eax	#, _27
# eval/problem125//code.c:26:     if (dd < 1 || dd > 31) return 0;
	jmp	.L18	#
.L14:
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$4, -32(%rbp)	#, mm
	je	.L15	#,
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$6, -32(%rbp)	#, mm
	je	.L15	#,
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$9, -32(%rbp)	#, mm
	je	.L15	#,
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$11, -32(%rbp)	#, mm
	jne	.L16	#,
.L15:
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$31, -28(%rbp)	#, dd
	jne	.L16	#,
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	movl	$0, %eax	#, _27
# eval/problem125//code.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	jmp	.L18	#
.L16:
# eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	cmpl	$2, -32(%rbp)	#, mm
	jne	.L17	#,
# eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	cmpl	$29, -28(%rbp)	#, dd
	jle	.L17	#,
# eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	movl	$0, %eax	#, _27
# eval/problem125//code.c:28:     if (mm == 2 && dd > 29) return 0;
	jmp	.L18	#
.L17:
# eval/problem125//code.c:30:     return 1;
	movl	$1, %eax	#, _27
.L18:
# eval/problem125//code.c:31: }
	movq	-8(%rbp), %rdx	# D.3958, tmp132
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
