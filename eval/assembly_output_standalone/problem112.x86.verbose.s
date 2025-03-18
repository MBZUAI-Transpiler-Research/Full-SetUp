	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -152(%rbp)	# test, test
	movq	%rsi, -160(%rbp)	# freq, freq
	movq	%rdx, -168(%rbp)	# max_count, max_count
	movq	%rcx, -176(%rbp)	# letters, letters
# eval/problem112//code.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	movq	%rax, -8(%rbp)	# tmp132, D.3412
	xorl	%eax, %eax	# tmp132
# eval/problem112//code.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	leaq	-112(%rbp), %rdx	#, tmp102
	movl	$0, %eax	#, tmp103
	movl	$13, %ecx	#, tmp104
	movq	%rdx, %rdi	# tmp102, tmp102
	rep stosq
# eval/problem112//code.c:6:     int local_max = 0;
	movl	$0, -136(%rbp)	#, local_max
# eval/problem112//code.c:7:     const char* ptr = test;
	movq	-152(%rbp), %rax	# test, tmp105
	movq	%rax, -120(%rbp)	# tmp105, ptr
# eval/problem112//code.c:8:     int idx = 0;
	movl	$0, -132(%rbp)	#, idx
# eval/problem112//code.c:10:     while (*ptr) {
	jmp	.L2	#
.L4:
# eval/problem112//code.c:11:         if (*ptr != ' ') {
	movq	-120(%rbp), %rax	# ptr, tmp106
	movzbl	(%rax), %eax	# *ptr_23, _1
# eval/problem112//code.c:11:         if (*ptr != ' ') {
	cmpb	$32, %al	#, _1
	je	.L3	#,
# eval/problem112//code.c:12:             int letter_index = *ptr - 'a';
	movq	-120(%rbp), %rax	# ptr, tmp107
	movzbl	(%rax), %eax	# *ptr_23, _2
	movsbl	%al, %eax	# _2, _3
# eval/problem112//code.c:12:             int letter_index = *ptr - 'a';
	subl	$97, %eax	#, tmp108
	movl	%eax, -124(%rbp)	# tmp108, letter_index
# eval/problem112//code.c:13:             local_freq[letter_index]++;
	movl	-124(%rbp), %eax	# letter_index, tmp110
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[letter_index_48], _4
# eval/problem112//code.c:13:             local_freq[letter_index]++;
	leal	1(%rax), %edx	#, _5
	movl	-124(%rbp), %eax	# letter_index, tmp112
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# _5, local_freq[letter_index_48]
# eval/problem112//code.c:14:             if (local_freq[letter_index] > local_max) {
	movl	-124(%rbp), %eax	# letter_index, tmp114
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[letter_index_48], _6
# eval/problem112//code.c:14:             if (local_freq[letter_index] > local_max) {
	cmpl	%eax, -136(%rbp)	# _6, local_max
	jge	.L3	#,
# eval/problem112//code.c:15:                 local_max = local_freq[letter_index];
	movl	-124(%rbp), %eax	# letter_index, tmp116
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[letter_index_48], tmp117
	movl	%eax, -136(%rbp)	# tmp117, local_max
.L3:
# eval/problem112//code.c:18:         ptr++;
	addq	$1, -120(%rbp)	#, ptr
.L2:
# eval/problem112//code.c:10:     while (*ptr) {
	movq	-120(%rbp), %rax	# ptr, tmp118
	movzbl	(%rax), %eax	# *ptr_23, _7
	testb	%al, %al	# _7
	jne	.L4	#,
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	movl	$0, -128(%rbp)	#, i
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	jmp	.L5	#
.L7:
# eval/problem112//code.c:22:         freq[i] = local_freq[i];
	movl	-128(%rbp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-160(%rbp), %rax	# freq, tmp120
	addq	%rax, %rdx	# tmp120, _10
# eval/problem112//code.c:22:         freq[i] = local_freq[i];
	movl	-128(%rbp), %eax	# i, tmp122
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[i_26], _11
# eval/problem112//code.c:22:         freq[i] = local_freq[i];
	movl	%eax, (%rdx)	# _11, *_10
# eval/problem112//code.c:23:         if (local_freq[i] == local_max) {
	movl	-128(%rbp), %eax	# i, tmp124
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[i_26], _12
# eval/problem112//code.c:23:         if (local_freq[i] == local_max) {
	cmpl	%eax, -136(%rbp)	# _12, local_max
	jne	.L6	#,
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	movl	-128(%rbp), %eax	# i, tmp125
	leal	97(%rax), %ecx	#, _14
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	movl	-132(%rbp), %eax	# idx, idx.0_15
	leal	1(%rax), %edx	#, tmp126
	movl	%edx, -132(%rbp)	# tmp126, idx
	movslq	%eax, %rdx	# idx.0_15, _16
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	movq	-176(%rbp), %rax	# letters, tmp127
	addq	%rdx, %rax	# _16, _17
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	movl	%ecx, %edx	# _14, _18
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	movb	%dl, (%rax)	# _18, *_17
.L6:
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	addl	$1, -128(%rbp)	#, i
.L5:
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	cmpl	$25, -128(%rbp)	#, i
	jle	.L7	#,
# eval/problem112//code.c:28:     *max_count = local_max;
	movq	-168(%rbp), %rax	# max_count, tmp128
	movl	-136(%rbp), %edx	# local_max, tmp129
	movl	%edx, (%rax)	# tmp129, *max_count_38(D)
# eval/problem112//code.c:29:     letters[idx] = '\0';
	movl	-132(%rbp), %eax	# idx, tmp130
	movslq	%eax, %rdx	# tmp130, _19
	movq	-176(%rbp), %rax	# letters, tmp131
	addq	%rdx, %rax	# _19, _20
# eval/problem112//code.c:29:     letters[idx] = '\0';
	movb	$0, (%rax)	#, *_20
# eval/problem112//code.c:30: }
	nop	
	movq	-8(%rbp), %rax	# D.3412, tmp133
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp133
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
