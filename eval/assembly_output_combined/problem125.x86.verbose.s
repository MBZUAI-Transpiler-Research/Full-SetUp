	.file	"problem125.c"
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
# problem125.c:5: int func0(const char *date) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
	movq	%rax, -8(%rbp)	# tmp131, D.4029
	xorl	%eax, %eax	# tmp131
# problem125.c:8:     if (strlen(date) != 10) return 0;
	movq	-56(%rbp), %rax	# date, tmp109
	movq	%rax, %rdi	# tmp109,
	call	strlen@PLT	#
# problem125.c:8:     if (strlen(date) != 10) return 0;
	cmpq	$10, %rax	#, _1
	je	.L2	#,
# problem125.c:8:     if (strlen(date) != 10) return 0;
	movl	$0, %eax	#, _27
# problem125.c:8:     if (strlen(date) != 10) return 0;
	jmp	.L18	#
.L2:
# problem125.c:9:     for (int i = 0; i < 10; i++) {
	movl	$0, -36(%rbp)	#, i
# problem125.c:9:     for (int i = 0; i < 10; i++) {
	jmp	.L4	#
.L10:
# problem125.c:10:         if (i == 2 || i == 5) {
	cmpl	$2, -36(%rbp)	#, i
	je	.L5	#,
# problem125.c:10:         if (i == 2 || i == 5) {
	cmpl	$5, -36(%rbp)	#, i
	jne	.L6	#,
.L5:
# problem125.c:11:             if (date[i] != '-') return 0;
	movl	-36(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, _2
	movq	-56(%rbp), %rax	# date, tmp111
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %eax	# *_3, _4
# problem125.c:11:             if (date[i] != '-') return 0;
	cmpb	$45, %al	#, _4
	je	.L8	#,
# problem125.c:11:             if (date[i] != '-') return 0;
	movl	$0, %eax	#, _27
# problem125.c:11:             if (date[i] != '-') return 0;
	jmp	.L18	#
.L6:
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	movl	-36(%rbp), %eax	# i, tmp112
	movslq	%eax, %rdx	# tmp112, _5
	movq	-56(%rbp), %rax	# date, tmp113
	addq	%rdx, %rax	# _5, _6
	movzbl	(%rax), %eax	# *_6, _7
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmpb	$47, %al	#, _7
	jle	.L9	#,
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	movl	-36(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, _8
	movq	-56(%rbp), %rax	# date, tmp115
	addq	%rdx, %rax	# _8, _9
	movzbl	(%rax), %eax	# *_9, _10
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	cmpb	$57, %al	#, _10
	jle	.L8	#,
.L9:
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	movl	$0, %eax	#, _27
# problem125.c:13:             if (date[i] < '0' || date[i] > '9') return 0;
	jmp	.L18	#
.L8:
# problem125.c:9:     for (int i = 0; i < 10; i++) {
	addl	$1, -36(%rbp)	#, i
.L4:
# problem125.c:9:     for (int i = 0; i < 10; i++) {
	cmpl	$9, -36(%rbp)	#, i
	jle	.L10	#,
# problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movq	-56(%rbp), %rax	# date, tmp116
	movzbl	(%rax), %eax	# *date_30(D), _11
# problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movb	%al, -19(%rbp)	# _11, str_month[0]
# problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movq	-56(%rbp), %rax	# date, tmp117
	addq	$1, %rax	#, _12
	movzbl	(%rax), %eax	# *_12, _13
# problem125.c:17:     char str_month[3] = {date[0], date[1], '\0'};
	movb	%al, -18(%rbp)	# _13, str_month[1]
	movb	$0, -17(%rbp)	#, str_month[2]
# problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	movq	-56(%rbp), %rax	# date, tmp118
	addq	$3, %rax	#, _14
	movzbl	(%rax), %eax	# *_14, _15
# problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	movb	%al, -16(%rbp)	# _15, str_day[0]
# problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	movq	-56(%rbp), %rax	# date, tmp119
	addq	$4, %rax	#, _16
	movzbl	(%rax), %eax	# *_16, _17
# problem125.c:18:     char str_day[3] = {date[3], date[4], '\0'};
	movb	%al, -15(%rbp)	# _17, str_day[1]
	movb	$0, -14(%rbp)	#, str_day[2]
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movq	-56(%rbp), %rax	# date, tmp120
	addq	$6, %rax	#, _18
	movzbl	(%rax), %eax	# *_18, _19
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movb	%al, -13(%rbp)	# _19, str_year[0]
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movq	-56(%rbp), %rax	# date, tmp121
	addq	$7, %rax	#, _20
	movzbl	(%rax), %eax	# *_20, _21
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movb	%al, -12(%rbp)	# _21, str_year[1]
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movq	-56(%rbp), %rax	# date, tmp122
	addq	$8, %rax	#, _22
	movzbl	(%rax), %eax	# *_22, _23
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movb	%al, -11(%rbp)	# _23, str_year[2]
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movq	-56(%rbp), %rax	# date, tmp123
	addq	$9, %rax	#, _24
	movzbl	(%rax), %eax	# *_24, _25
# problem125.c:19:     char str_year[5] = {date[6], date[7], date[8], date[9], '\0'};
	movb	%al, -10(%rbp)	# _25, str_year[3]
	movb	$0, -9(%rbp)	#, str_year[4]
# problem125.c:21:     mm = atoi(str_month);
	leaq	-19(%rbp), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	atoi@PLT	#
	movl	%eax, -32(%rbp)	# tmp125, mm
# problem125.c:22:     dd = atoi(str_day);
	leaq	-16(%rbp), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	atoi@PLT	#
	movl	%eax, -28(%rbp)	# tmp127, dd
# problem125.c:23:     yy = atoi(str_year);
	leaq	-13(%rbp), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	atoi@PLT	#
	movl	%eax, -24(%rbp)	# tmp129, yy
# problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	cmpl	$0, -32(%rbp)	#, mm
	jle	.L11	#,
# problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	cmpl	$12, -32(%rbp)	#, mm
	jle	.L12	#,
.L11:
# problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	movl	$0, %eax	#, _27
# problem125.c:25:     if (mm < 1 || mm > 12) return 0;
	jmp	.L18	#
.L12:
# problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	cmpl	$0, -28(%rbp)	#, dd
	jle	.L13	#,
# problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	cmpl	$31, -28(%rbp)	#, dd
	jle	.L14	#,
.L13:
# problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	movl	$0, %eax	#, _27
# problem125.c:26:     if (dd < 1 || dd > 31) return 0;
	jmp	.L18	#
.L14:
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$4, -32(%rbp)	#, mm
	je	.L15	#,
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$6, -32(%rbp)	#, mm
	je	.L15	#,
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$9, -32(%rbp)	#, mm
	je	.L15	#,
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$11, -32(%rbp)	#, mm
	jne	.L16	#,
.L15:
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	cmpl	$31, -28(%rbp)	#, dd
	jne	.L16	#,
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	movl	$0, %eax	#, _27
# problem125.c:27:     if ((mm == 4 || mm == 6 || mm == 9 || mm == 11) && dd == 31) return 0;
	jmp	.L18	#
.L16:
# problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	cmpl	$2, -32(%rbp)	#, mm
	jne	.L17	#,
# problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	cmpl	$29, -28(%rbp)	#, dd
	jle	.L17	#,
# problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	movl	$0, %eax	#, _27
# problem125.c:28:     if (mm == 2 && dd > 29) return 0;
	jmp	.L18	#
.L17:
# problem125.c:30:     return 1;
	movl	$1, %eax	#, _27
.L18:
# problem125.c:31: }
	movq	-8(%rbp), %rdx	# D.4029, tmp132
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
	.section	.rodata
.LC0:
	.string	"03-11-2000"
.LC1:
	.string	"problem125.c"
.LC2:
	.string	"func0(\"03-11-2000\") == 1"
.LC3:
	.string	"15-01-2012"
.LC4:
	.string	"func0(\"15-01-2012\") == 0"
.LC5:
	.string	"04-0-2040"
.LC6:
	.string	"func0(\"04-0-2040\") == 0"
.LC7:
	.string	"06-04-2020"
.LC8:
	.string	"func0(\"06-04-2020\") == 1"
.LC9:
	.string	"01-01-2007"
.LC10:
	.string	"func0(\"01-01-2007\") == 1"
.LC11:
	.string	"03-32-2011"
.LC12:
	.string	"func0(\"03-32-2011\") == 0"
.LC13:
	.string	""
.LC14:
	.string	"func0(\"\") == 0"
.LC15:
	.string	"04-31-3000"
.LC16:
	.string	"func0(\"04-31-3000\") == 0"
.LC17:
	.string	"06-06-2005"
.LC18:
	.string	"func0(\"06-06-2005\") == 1"
.LC19:
	.string	"21-31-2000"
.LC20:
	.string	"func0(\"21-31-2000\") == 0"
.LC21:
	.string	"04-12-2003"
.LC22:
	.string	"func0(\"04-12-2003\") == 1"
.LC23:
	.string	"04122003"
.LC24:
	.string	"func0(\"04122003\") == 0"
.LC25:
	.string	"20030412"
.LC26:
	.string	"func0(\"20030412\") == 0"
.LC27:
	.string	"2003-04"
.LC28:
	.string	"func0(\"2003-04\") == 0"
.LC29:
	.string	"2003-04-12"
.LC30:
	.string	"func0(\"2003-04-12\") == 0"
.LC31:
	.string	"04-2003"
.LC32:
	.string	"func0(\"04-2003\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# problem125.c:38:     assert(func0("03-11-2000") == 1);
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem125.c:38:     assert(func0("03-11-2000") == 1);
	cmpl	$1, %eax	#, _1
	je	.L21	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$38, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC2(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L21:
# problem125.c:39:     assert(func0("15-01-2012") == 0);
	leaq	.LC3(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
# problem125.c:39:     assert(func0("15-01-2012") == 0);
	testl	%eax, %eax	# _2
	je	.L22	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp105
	movq	%rax, %rcx	# tmp105,
	movl	$39, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC4(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	__assert_fail@PLT	#
.L22:
# problem125.c:40:     assert(func0("04-0-2040") == 0);
	leaq	.LC5(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	func0	#
# problem125.c:40:     assert(func0("04-0-2040") == 0);
	testl	%eax, %eax	# _3
	je	.L23	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$40, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC6(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L23:
# problem125.c:41:     assert(func0("06-04-2020") == 1);
	leaq	.LC7(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	func0	#
# problem125.c:41:     assert(func0("06-04-2020") == 1);
	cmpl	$1, %eax	#, _4
	je	.L24	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$41, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC8(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L24:
# problem125.c:42:     assert(func0("01-01-2007") == 1);
	leaq	.LC9(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	func0	#
# problem125.c:42:     assert(func0("01-01-2007") == 1);
	cmpl	$1, %eax	#, _5
	je	.L25	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$42, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC10(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L25:
# problem125.c:43:     assert(func0("03-32-2011") == 0);
	leaq	.LC11(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	func0	#
# problem125.c:43:     assert(func0("03-32-2011") == 0);
	testl	%eax, %eax	# _6
	je	.L26	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$43, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC12(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L26:
# problem125.c:44:     assert(func0("") == 0);
	leaq	.LC13(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	func0	#
# problem125.c:44:     assert(func0("") == 0);
	testl	%eax, %eax	# _7
	je	.L27	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$44, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC14(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L27:
# problem125.c:45:     assert(func0("04-31-3000") == 0);
	leaq	.LC15(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	func0	#
# problem125.c:45:     assert(func0("04-31-3000") == 0);
	testl	%eax, %eax	# _8
	je	.L28	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$45, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC16(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L28:
# problem125.c:46:     assert(func0("06-06-2005") == 1);
	leaq	.LC17(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	func0	#
# problem125.c:46:     assert(func0("06-06-2005") == 1);
	cmpl	$1, %eax	#, _9
	je	.L29	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp133
	movq	%rax, %rcx	# tmp133,
	movl	$46, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	leaq	.LC18(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	__assert_fail@PLT	#
.L29:
# problem125.c:47:     assert(func0("21-31-2000") == 0);
	leaq	.LC19(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	func0	#
# problem125.c:47:     assert(func0("21-31-2000") == 0);
	testl	%eax, %eax	# _10
	je	.L30	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$47, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC20(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L30:
# problem125.c:48:     assert(func0("04-12-2003") == 1);
	leaq	.LC21(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	func0	#
# problem125.c:48:     assert(func0("04-12-2003") == 1);
	cmpl	$1, %eax	#, _11
	je	.L31	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$48, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC22(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	__assert_fail@PLT	#
.L31:
# problem125.c:49:     assert(func0("04122003") == 0);
	leaq	.LC23(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	func0	#
# problem125.c:49:     assert(func0("04122003") == 0);
	testl	%eax, %eax	# _12
	je	.L32	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$49, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	leaq	.LC24(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	__assert_fail@PLT	#
.L32:
# problem125.c:50:     assert(func0("20030412") == 0);
	leaq	.LC25(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	call	func0	#
# problem125.c:50:     assert(func0("20030412") == 0);
	testl	%eax, %eax	# _13
	je	.L33	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp149
	movq	%rax, %rcx	# tmp149,
	movl	$50, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp150
	movq	%rax, %rsi	# tmp150,
	leaq	.LC26(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	__assert_fail@PLT	#
.L33:
# problem125.c:51:     assert(func0("2003-04") == 0);
	leaq	.LC27(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	func0	#
# problem125.c:51:     assert(func0("2003-04") == 0);
	testl	%eax, %eax	# _14
	je	.L34	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp153
	movq	%rax, %rcx	# tmp153,
	movl	$51, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp154
	movq	%rax, %rsi	# tmp154,
	leaq	.LC28(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	__assert_fail@PLT	#
.L34:
# problem125.c:52:     assert(func0("2003-04-12") == 0);
	leaq	.LC29(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	func0	#
# problem125.c:52:     assert(func0("2003-04-12") == 0);
	testl	%eax, %eax	# _15
	je	.L35	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp157
	movq	%rax, %rcx	# tmp157,
	movl	$52, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp158
	movq	%rax, %rsi	# tmp158,
	leaq	.LC30(%rip), %rax	#, tmp159
	movq	%rax, %rdi	# tmp159,
	call	__assert_fail@PLT	#
.L35:
# problem125.c:53:     assert(func0("04-2003") == 0);
	leaq	.LC31(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	func0	#
# problem125.c:53:     assert(func0("04-2003") == 0);
	testl	%eax, %eax	# _16
	je	.L36	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp161
	movq	%rax, %rcx	# tmp161,
	movl	$53, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp162
	movq	%rax, %rsi	# tmp162,
	leaq	.LC32(%rip), %rax	#, tmp163
	movq	%rax, %rdi	# tmp163,
	call	__assert_fail@PLT	#
.L36:
# problem125.c:55:     return 0;
	movl	$0, %eax	#, _50
# problem125.c:56: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
