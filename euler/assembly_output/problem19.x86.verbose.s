	.file	"problem19.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
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
	subq	$16, %rsp	#,
# problem19.c:12:   int year, wday = 0, sun = 0, mon;
	movl	$0, -12(%rbp)	#, wday
# problem19.c:12:   int year, wday = 0, sun = 0, mon;
	movl	$0, -8(%rbp)	#, sun
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	movl	$1901, -16(%rbp)	#, year
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	jmp	.L2	#
.L6:
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	movl	$1, -4(%rbp)	#, mon
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	jmp	.L3	#
.L5:
# problem19.c:16:       if (wday == 5) {
	cmpl	$5, -12(%rbp)	#, wday
	jne	.L4	#,
# problem19.c:18:         sun++;
	addl	$1, -8(%rbp)	#, sun
.L4:
# problem19.c:20:       wday = (wday + days(year, mon))%7;
	movl	-4(%rbp), %edx	# mon, tmp86
	movl	-16(%rbp), %eax	# year, tmp87
	movl	%edx, %esi	# tmp86,
	movl	%eax, %edi	# tmp87,
	call	days	#
# problem19.c:20:       wday = (wday + days(year, mon))%7;
	movl	-12(%rbp), %edx	# wday, tmp88
	addl	%edx, %eax	# tmp88, _2
# problem19.c:20:       wday = (wday + days(year, mon))%7;
	movslq	%eax, %rdx	# _2, tmp89
	imulq	$-1840700269, %rdx, %rdx	#, tmp89, tmp90
	shrq	$32, %rdx	#, tmp91
	addl	%eax, %edx	# _2, tmp92
	sarl	$2, %edx	#, tmp93
	movl	%eax, %ecx	# _2, tmp94
	sarl	$31, %ecx	#, tmp94
	subl	%ecx, %edx	# tmp94, tmp95
	movl	%edx, -12(%rbp)	# tmp95, wday
	movl	-12(%rbp), %ecx	# wday, tmp96
	movl	%ecx, %edx	# tmp96, tmp97
	sall	$3, %edx	#, tmp98
	subl	%ecx, %edx	# tmp96, tmp97
	subl	%edx, %eax	# tmp97, tmp99
	movl	%eax, -12(%rbp)	# tmp99, wday
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	addl	$1, -4(%rbp)	#, mon
.L3:
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	cmpl	$12, -4(%rbp)	#, mon
	jle	.L5	#,
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	addl	$1, -16(%rbp)	#, year
.L2:
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	cmpl	$2000, -16(%rbp)	#, year
	jle	.L6	#,
# problem19.c:23:   printf("%d\n", sun);
	movl	-8(%rbp), %eax	# sun, tmp100
	movl	%eax, %esi	# tmp100,
	leaq	.LC0(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem19.c:25:   return 0;
	movl	$0, %eax	#, _17
# problem19.c:26: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.type	days, @function
days:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# y, y
	movl	%esi, -8(%rbp)	# m, m
# problem19.c:30:   switch (m) {
	movl	-8(%rbp), %eax	# m, _13
	cmpl	$11, %eax	#, _13
	seta	%dl	#, _14
	testb	%dl, %dl	# _14
	jne	.L9	#,
	movl	$1, %edx	#, tmp95
	movl	%eax, %ecx	# _13, tmp113
	salq	%cl, %rdx	# tmp113, tmp95
	movq	%rdx, %rax	# tmp95, _15
	movq	%rax, %rdx	# _15, _16
	andl	$2640, %edx	#, _16
	testq	%rdx, %rdx	# _16
	setne	%dl	#, _17
	testb	%dl, %dl	# _17
	jne	.L10	#,
	andl	$4, %eax	#, _18
	testq	%rax, %rax	# _18
	setne	%al	#, _19
	testb	%al, %al	# _19
	je	.L9	#,
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	movl	-4(%rbp), %eax	# y, y.0_1
	andl	$3, %eax	#, _2
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	testl	%eax, %eax	# _2
	jne	.L11	#,
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	movl	-4(%rbp), %edx	# y, tmp96
	movslq	%edx, %rax	# tmp96, tmp97
	imulq	$1374389535, %rax, %rax	#, tmp97, tmp98
	shrq	$32, %rax	#, tmp99
	sarl	$5, %eax	#, tmp100
	movl	%edx, %ecx	# tmp96, tmp101
	sarl	$31, %ecx	#, tmp101
	subl	%ecx, %eax	# tmp101, _3
	imull	$100, %eax, %ecx	#, _3, tmp102
	movl	%edx, %eax	# tmp96, tmp96
	subl	%ecx, %eax	# tmp102, tmp96
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	testl	%eax, %eax	# _3
	jne	.L12	#,
.L11:
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	movl	-4(%rbp), %edx	# y, tmp103
	movslq	%edx, %rax	# tmp103, tmp104
	imulq	$1374389535, %rax, %rax	#, tmp104, tmp105
	shrq	$32, %rax	#, tmp106
	sarl	$7, %eax	#, tmp107
	movl	%edx, %ecx	# tmp103, tmp108
	sarl	$31, %ecx	#, tmp108
	subl	%ecx, %eax	# tmp108, _4
	imull	$400, %eax, %ecx	#, _4, tmp109
	movl	%edx, %eax	# tmp103, tmp103
	subl	%ecx, %eax	# tmp109, tmp103
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	testl	%eax, %eax	# _4
	jne	.L13	#,
.L12:
# problem19.c:34:         return 29;
	movl	$29, %eax	#, _5
	jmp	.L14	#
.L13:
# problem19.c:37:         return 28;
	movl	$28, %eax	#, _5
	jmp	.L14	#
.L10:
# problem19.c:44:       return 30;
	movl	$30, %eax	#, _5
	jmp	.L14	#
.L9:
# problem19.c:47:       return 31;
	movl	$31, %eax	#, _5
.L14:
# problem19.c:49: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	days, .-days
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
