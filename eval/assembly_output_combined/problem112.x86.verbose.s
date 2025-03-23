	.file	"problem112.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
# problem112.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp132
	movq	%rax, -8(%rbp)	# tmp132, D.2639
	xorl	%eax, %eax	# tmp132
# problem112.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	leaq	-112(%rbp), %rdx	#, tmp102
	movl	$0, %eax	#, tmp103
	movl	$13, %ecx	#, tmp104
	movq	%rdx, %rdi	# tmp102, tmp102
	rep stosq
# problem112.c:6:     int local_max = 0;
	movl	$0, -136(%rbp)	#, local_max
# problem112.c:7:     const char* ptr = test;
	movq	-152(%rbp), %rax	# test, tmp105
	movq	%rax, -120(%rbp)	# tmp105, ptr
# problem112.c:8:     int idx = 0;
	movl	$0, -132(%rbp)	#, idx
# problem112.c:10:     while (*ptr) {
	jmp	.L2	#
.L4:
# problem112.c:11:         if (*ptr != ' ') {
	movq	-120(%rbp), %rax	# ptr, tmp106
	movzbl	(%rax), %eax	# *ptr_23, _1
# problem112.c:11:         if (*ptr != ' ') {
	cmpb	$32, %al	#, _1
	je	.L3	#,
# problem112.c:12:             int letter_index = *ptr - 'a';
	movq	-120(%rbp), %rax	# ptr, tmp107
	movzbl	(%rax), %eax	# *ptr_23, _2
	movsbl	%al, %eax	# _2, _3
# problem112.c:12:             int letter_index = *ptr - 'a';
	subl	$97, %eax	#, tmp108
	movl	%eax, -124(%rbp)	# tmp108, letter_index
# problem112.c:13:             local_freq[letter_index]++;
	movl	-124(%rbp), %eax	# letter_index, tmp110
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[letter_index_48], _4
# problem112.c:13:             local_freq[letter_index]++;
	leal	1(%rax), %edx	#, _5
	movl	-124(%rbp), %eax	# letter_index, tmp112
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# _5, local_freq[letter_index_48]
# problem112.c:14:             if (local_freq[letter_index] > local_max) {
	movl	-124(%rbp), %eax	# letter_index, tmp114
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[letter_index_48], _6
# problem112.c:14:             if (local_freq[letter_index] > local_max) {
	cmpl	%eax, -136(%rbp)	# _6, local_max
	jge	.L3	#,
# problem112.c:15:                 local_max = local_freq[letter_index];
	movl	-124(%rbp), %eax	# letter_index, tmp116
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[letter_index_48], tmp117
	movl	%eax, -136(%rbp)	# tmp117, local_max
.L3:
# problem112.c:18:         ptr++;
	addq	$1, -120(%rbp)	#, ptr
.L2:
# problem112.c:10:     while (*ptr) {
	movq	-120(%rbp), %rax	# ptr, tmp118
	movzbl	(%rax), %eax	# *ptr_23, _7
	testb	%al, %al	# _7
	jne	.L4	#,
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	movl	$0, -128(%rbp)	#, i
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	jmp	.L5	#
.L7:
# problem112.c:22:         freq[i] = local_freq[i];
	movl	-128(%rbp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-160(%rbp), %rax	# freq, tmp120
	addq	%rax, %rdx	# tmp120, _10
# problem112.c:22:         freq[i] = local_freq[i];
	movl	-128(%rbp), %eax	# i, tmp122
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[i_26], _11
# problem112.c:22:         freq[i] = local_freq[i];
	movl	%eax, (%rdx)	# _11, *_10
# problem112.c:23:         if (local_freq[i] == local_max) {
	movl	-128(%rbp), %eax	# i, tmp124
	cltq
	movl	-112(%rbp,%rax,4), %eax	# local_freq[i_26], _12
# problem112.c:23:         if (local_freq[i] == local_max) {
	cmpl	%eax, -136(%rbp)	# _12, local_max
	jne	.L6	#,
# problem112.c:24:             letters[idx++] = 'a' + i;
	movl	-128(%rbp), %eax	# i, tmp125
	leal	97(%rax), %ecx	#, _14
# problem112.c:24:             letters[idx++] = 'a' + i;
	movl	-132(%rbp), %eax	# idx, idx.0_15
	leal	1(%rax), %edx	#, tmp126
	movl	%edx, -132(%rbp)	# tmp126, idx
	movslq	%eax, %rdx	# idx.0_15, _16
# problem112.c:24:             letters[idx++] = 'a' + i;
	movq	-176(%rbp), %rax	# letters, tmp127
	addq	%rdx, %rax	# _16, _17
# problem112.c:24:             letters[idx++] = 'a' + i;
	movl	%ecx, %edx	# _14, _18
# problem112.c:24:             letters[idx++] = 'a' + i;
	movb	%dl, (%rax)	# _18, *_17
.L6:
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	addl	$1, -128(%rbp)	#, i
.L5:
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	cmpl	$25, -128(%rbp)	#, i
	jle	.L7	#,
# problem112.c:28:     *max_count = local_max;
	movq	-168(%rbp), %rax	# max_count, tmp128
	movl	-136(%rbp), %edx	# local_max, tmp129
	movl	%edx, (%rax)	# tmp129, *max_count_38(D)
# problem112.c:29:     letters[idx] = '\0';
	movl	-132(%rbp), %eax	# idx, tmp130
	movslq	%eax, %rdx	# tmp130, _19
	movq	-176(%rbp), %rax	# letters, tmp131
	addq	%rdx, %rax	# _19, _20
# problem112.c:29:     letters[idx] = '\0';
	movb	$0, (%rax)	#, *_20
# problem112.c:30: }
	nop	
	movq	-8(%rbp), %rax	# D.2639, tmp133
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
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# freq1, freq1
	movq	%rsi, -32(%rbp)	# letters1, letters1
	movl	%edx, -36(%rbp)	# max_count1, max_count1
	movq	%rcx, -48(%rbp)	# freq2, freq2
	movq	%r8, -56(%rbp)	# letters2, letters2
	movl	%r9d, -40(%rbp)	# max_count2, max_count2
# problem112.c:40:     if (max_count1 != max_count2) return false;
	movl	-36(%rbp), %eax	# max_count1, tmp122
	cmpl	-40(%rbp), %eax	# max_count2, tmp122
	je	.L10	#,
# problem112.c:40:     if (max_count1 != max_count2) return false;
	movl	$0, %eax	#, _41
	jmp	.L11	#
.L10:
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	movl	$0, -8(%rbp)	#, i
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	jmp	.L12	#
.L14:
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	movl	-8(%rbp), %eax	# i, tmp123
	movslq	%eax, %rdx	# tmp123, _1
	movq	-32(%rbp), %rax	# letters1, tmp124
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
	movsbq	%al, %rax	# _3, _4
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	salq	$2, %rax	#, _5
	leaq	-388(%rax), %rdx	#, _6
	movq	-24(%rbp), %rax	# freq1, tmp125
	addq	%rdx, %rax	# _6, _7
	movl	(%rax), %edx	# *_7, _8
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	movl	-8(%rbp), %eax	# i, tmp126
	movslq	%eax, %rcx	# tmp126, _9
	movq	-32(%rbp), %rax	# letters1, tmp127
	addq	%rcx, %rax	# _9, _10
	movzbl	(%rax), %eax	# *_10, _11
	movsbq	%al, %rax	# _11, _12
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	salq	$2, %rax	#, _13
	leaq	-388(%rax), %rcx	#, _14
	movq	-48(%rbp), %rax	# freq2, tmp128
	addq	%rcx, %rax	# _14, _15
	movl	(%rax), %eax	# *_15, _16
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	cmpl	%eax, %edx	# _16, _8
	je	.L13	#,
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	movl	$0, %eax	#, _41
	jmp	.L11	#
.L13:
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	addl	$1, -8(%rbp)	#, i
.L12:
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	movl	-8(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, _17
	movq	-32(%rbp), %rax	# letters1, tmp130
	addq	%rdx, %rax	# _17, _18
	movzbl	(%rax), %eax	# *_18, _19
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	testb	%al, %al	# _19
	jne	.L14	#,
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	movl	$0, -4(%rbp)	#, i
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	jmp	.L15	#
.L17:
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	movl	-4(%rbp), %eax	# i, tmp131
	movslq	%eax, %rdx	# tmp131, _20
	movq	-56(%rbp), %rax	# letters2, tmp132
	addq	%rdx, %rax	# _20, _21
	movzbl	(%rax), %eax	# *_21, _22
	movsbq	%al, %rax	# _22, _23
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	salq	$2, %rax	#, _24
	leaq	-388(%rax), %rdx	#, _25
	movq	-48(%rbp), %rax	# freq2, tmp133
	addq	%rdx, %rax	# _25, _26
	movl	(%rax), %edx	# *_26, _27
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	movl	-4(%rbp), %eax	# i, tmp134
	movslq	%eax, %rcx	# tmp134, _28
	movq	-56(%rbp), %rax	# letters2, tmp135
	addq	%rcx, %rax	# _28, _29
	movzbl	(%rax), %eax	# *_29, _30
	movsbq	%al, %rax	# _30, _31
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	salq	$2, %rax	#, _32
	leaq	-388(%rax), %rcx	#, _33
	movq	-24(%rbp), %rax	# freq1, tmp136
	addq	%rcx, %rax	# _33, _34
	movl	(%rax), %eax	# *_34, _35
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	cmpl	%eax, %edx	# _35, _27
	je	.L16	#,
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	movl	$0, %eax	#, _41
	jmp	.L11	#
.L16:
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	addl	$1, -4(%rbp)	#, i
.L15:
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	movl	-4(%rbp), %eax	# i, tmp137
	movslq	%eax, %rdx	# tmp137, _36
	movq	-56(%rbp), %rax	# letters2, tmp138
	addq	%rdx, %rax	# _36, _37
	movzbl	(%rax), %eax	# *_37, _38
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	testb	%al, %al	# _38
	jne	.L17	#,
# problem112.c:47:     return true;
	movl	$1, %eax	#, _41
.L11:
# problem112.c:48: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"a b b a"
.LC1:
	.string	"ab"
.LC2:
	.string	"problem112.c"
	.align 8
.LC3:
	.string	"issame(counts1, letters1, max_count1, counts2, \"ab\", 2)"
.LC4:
	.string	"a b c a b"
.LC5:
	.string	"a b c d g"
.LC6:
	.string	"abcdg"
	.align 8
.LC7:
	.string	"issame(counts1, letters1, max_count1, counts2, \"abcdg\", 1)"
.LC8:
	.string	"r t g"
.LC9:
	.string	"rtg"
	.align 8
.LC10:
	.string	"issame(counts1, letters1, max_count1, counts2, \"rtg\", 1)"
.LC11:
	.string	"b b b b a"
.LC12:
	.string	"b"
	.align 8
.LC13:
	.string	"issame(counts1, letters1, max_count1, counts2, \"b\", 4)"
.LC14:
	.string	"a"
	.align 8
.LC15:
	.string	"issame(counts1, letters1, max_count1, counts2, \"a\", 1)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$288, %rsp	#,
# problem112.c:50: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp184
	movq	%rax, -8(%rbp)	# tmp184, D.2642
	xorl	%eax, %eax	# tmp184
# problem112.c:55:     func0("a b b a", counts1, &max_count1, letters1);
	leaq	-48(%rbp), %rcx	#, tmp106
	leaq	-276(%rbp), %rdx	#, tmp107
	leaq	-272(%rbp), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC0(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	func0	#
# problem112.c:56:     memset(counts2, 0, sizeof(counts2));
	leaq	-160(%rbp), %rax	#, tmp110
	movl	$104, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	memset@PLT	#
# problem112.c:57:     counts2['a' - 'a'] = 2;
	movl	$2, -160(%rbp)	#, counts2[0]
# problem112.c:58:     counts2['b' - 'a'] = 2;
	movl	$2, -156(%rbp)	#, counts2[1]
# problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	movl	-276(%rbp), %edx	# max_count1, max_count1.1_1
	leaq	-160(%rbp), %rcx	#, tmp111
	leaq	-48(%rbp), %rsi	#, tmp112
	leaq	-272(%rbp), %rax	#, tmp113
	movl	$2, %r9d	#,
	leaq	.LC1(%rip), %r8	#,
	movq	%rax, %rdi	# tmp113,
	call	issame	#
	testb	%al, %al	# _2
	jne	.L19	#,
# problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$59, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC3(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L19:
# problem112.c:61:     func0("a b c a b", counts1, &max_count1, letters1);
	leaq	-48(%rbp), %rcx	#, tmp117
	leaq	-276(%rbp), %rdx	#, tmp118
	leaq	-272(%rbp), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC4(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	func0	#
# problem112.c:62:     memset(counts2, 0, sizeof(counts2));
	leaq	-160(%rbp), %rax	#, tmp121
	movl	$104, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	memset@PLT	#
# problem112.c:63:     counts2['a' - 'a'] = 2;
	movl	$2, -160(%rbp)	#, counts2[0]
# problem112.c:64:     counts2['b' - 'a'] = 2;
	movl	$2, -156(%rbp)	#, counts2[1]
# problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	movl	-276(%rbp), %edx	# max_count1, max_count1.2_3
	leaq	-160(%rbp), %rcx	#, tmp122
	leaq	-48(%rbp), %rsi	#, tmp123
	leaq	-272(%rbp), %rax	#, tmp124
	movl	$2, %r9d	#,
	leaq	.LC1(%rip), %r8	#,
	movq	%rax, %rdi	# tmp124,
	call	issame	#
	testb	%al, %al	# _4
	jne	.L20	#,
# problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$65, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC3(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L20:
# problem112.c:67:     func0("a b c d g", counts1, &max_count1, letters1);
	leaq	-48(%rbp), %rcx	#, tmp128
	leaq	-276(%rbp), %rdx	#, tmp129
	leaq	-272(%rbp), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC5(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	func0	#
# problem112.c:68:     memset(counts2, 0, sizeof(counts2));
	leaq	-160(%rbp), %rax	#, tmp132
	movl	$104, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp132,
	call	memset@PLT	#
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	movl	$1, -136(%rbp)	#, counts2[6]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	movl	-136(%rbp), %eax	# counts2[6], _5
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	movl	%eax, -148(%rbp)	# _5, counts2[3]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	movl	-148(%rbp), %eax	# counts2[3], _6
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	movl	%eax, -152(%rbp)	# _6, counts2[2]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	movl	-152(%rbp), %eax	# counts2[2], _7
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	movl	%eax, -156(%rbp)	# _7, counts2[1]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	movl	-156(%rbp), %eax	# counts2[1], _8
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	movl	%eax, -160(%rbp)	# _8, counts2[0]
# problem112.c:70:     assert(issame(counts1, letters1, max_count1, counts2, "abcdg", 1));
	movl	-276(%rbp), %edx	# max_count1, max_count1.3_9
	leaq	-160(%rbp), %rcx	#, tmp133
	leaq	-48(%rbp), %rsi	#, tmp134
	leaq	-272(%rbp), %rax	#, tmp135
	movl	$1, %r9d	#,
	leaq	.LC6(%rip), %r8	#,
	movq	%rax, %rdi	# tmp135,
	call	issame	#
	testb	%al, %al	# _10
	jne	.L21	#,
# problem112.c:70:     assert(issame(counts1, letters1, max_count1, counts2, "abcdg", 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$70, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC7(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L21:
# problem112.c:72:     func0("r t g", counts1, &max_count1, letters1);
	leaq	-48(%rbp), %rcx	#, tmp139
	leaq	-276(%rbp), %rdx	#, tmp140
	leaq	-272(%rbp), %rax	#, tmp141
	movq	%rax, %rsi	# tmp141,
	leaq	.LC8(%rip), %rax	#, tmp142
	movq	%rax, %rdi	# tmp142,
	call	func0	#
# problem112.c:73:     memset(counts2, 0, sizeof(counts2));
	leaq	-160(%rbp), %rax	#, tmp143
	movl	$104, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	memset@PLT	#
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	$1, -136(%rbp)	#, counts2[6]
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	-136(%rbp), %eax	# counts2[6], _11
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	%eax, -84(%rbp)	# _11, counts2[19]
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	-84(%rbp), %eax	# counts2[19], _12
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	%eax, -92(%rbp)	# _12, counts2[17]
# problem112.c:75:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	movl	-276(%rbp), %edx	# max_count1, max_count1.4_13
	leaq	-160(%rbp), %rcx	#, tmp144
	leaq	-48(%rbp), %rsi	#, tmp145
	leaq	-272(%rbp), %rax	#, tmp146
	movl	$1, %r9d	#,
	leaq	.LC9(%rip), %r8	#,
	movq	%rax, %rdi	# tmp146,
	call	issame	#
	testb	%al, %al	# _14
	jne	.L22	#,
# problem112.c:75:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$75, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	.LC10(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	__assert_fail@PLT	#
.L22:
# problem112.c:77:     func0("b b b b a", counts1, &max_count1, letters1);
	leaq	-48(%rbp), %rcx	#, tmp150
	leaq	-276(%rbp), %rdx	#, tmp151
	leaq	-272(%rbp), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	leaq	.LC11(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	func0	#
# problem112.c:78:     memset(counts2, 0, sizeof(counts2));
	leaq	-160(%rbp), %rax	#, tmp154
	movl	$104, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	memset@PLT	#
# problem112.c:79:     counts2['b' - 'a'] = 4;
	movl	$4, -156(%rbp)	#, counts2[1]
# problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	movl	-276(%rbp), %edx	# max_count1, max_count1.5_15
	leaq	-160(%rbp), %rcx	#, tmp155
	leaq	-48(%rbp), %rsi	#, tmp156
	leaq	-272(%rbp), %rax	#, tmp157
	movl	$4, %r9d	#,
	leaq	.LC12(%rip), %r8	#,
	movq	%rax, %rdi	# tmp157,
	call	issame	#
	testb	%al, %al	# _16
	jne	.L23	#,
# problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp158
	movq	%rax, %rcx	# tmp158,
	movl	$80, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp159
	movq	%rax, %rsi	# tmp159,
	leaq	.LC13(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	__assert_fail@PLT	#
.L23:
# problem112.c:82:     func0("r t g", counts1, &max_count1, letters1);
	leaq	-48(%rbp), %rcx	#, tmp161
	leaq	-276(%rbp), %rdx	#, tmp162
	leaq	-272(%rbp), %rax	#, tmp163
	movq	%rax, %rsi	# tmp163,
	leaq	.LC8(%rip), %rax	#, tmp164
	movq	%rax, %rdi	# tmp164,
	call	func0	#
# problem112.c:83:     memset(counts2, 0, sizeof(counts2));
	leaq	-160(%rbp), %rax	#, tmp165
	movl	$104, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp165,
	call	memset@PLT	#
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	$1, -136(%rbp)	#, counts2[6]
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	-136(%rbp), %eax	# counts2[6], _17
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	%eax, -84(%rbp)	# _17, counts2[19]
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	-84(%rbp), %eax	# counts2[19], _18
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	movl	%eax, -92(%rbp)	# _18, counts2[17]
# problem112.c:85:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	movl	-276(%rbp), %edx	# max_count1, max_count1.6_19
	leaq	-160(%rbp), %rcx	#, tmp166
	leaq	-48(%rbp), %rsi	#, tmp167
	leaq	-272(%rbp), %rax	#, tmp168
	movl	$1, %r9d	#,
	leaq	.LC9(%rip), %r8	#,
	movq	%rax, %rdi	# tmp168,
	call	issame	#
	testb	%al, %al	# _20
	jne	.L24	#,
# problem112.c:85:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp169
	movq	%rax, %rcx	# tmp169,
	movl	$85, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	leaq	.LC10(%rip), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	call	__assert_fail@PLT	#
.L24:
# problem112.c:87:     func0("a", counts1, &max_count1, letters1);
	leaq	-48(%rbp), %rcx	#, tmp172
	leaq	-276(%rbp), %rdx	#, tmp173
	leaq	-272(%rbp), %rax	#, tmp174
	movq	%rax, %rsi	# tmp174,
	leaq	.LC14(%rip), %rax	#, tmp175
	movq	%rax, %rdi	# tmp175,
	call	func0	#
# problem112.c:88:     memset(counts2, 0, sizeof(counts2));
	leaq	-160(%rbp), %rax	#, tmp176
	movl	$104, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp176,
	call	memset@PLT	#
# problem112.c:89:     counts2['a' - 'a'] = 1;
	movl	$1, -160(%rbp)	#, counts2[0]
# problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	movl	-276(%rbp), %edx	# max_count1, max_count1.7_21
	leaq	-160(%rbp), %rcx	#, tmp177
	leaq	-48(%rbp), %rsi	#, tmp178
	leaq	-272(%rbp), %rax	#, tmp179
	movl	$1, %r9d	#,
	leaq	.LC14(%rip), %r8	#,
	movq	%rax, %rdi	# tmp179,
	call	issame	#
	testb	%al, %al	# _22
	jne	.L25	#,
# problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp180
	movq	%rax, %rcx	# tmp180,
	movl	$90, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp181
	movq	%rax, %rsi	# tmp181,
	leaq	.LC15(%rip), %rax	#, tmp182
	movq	%rax, %rdi	# tmp182,
	call	__assert_fail@PLT	#
.L25:
# problem112.c:92:     return 0;
	movl	$0, %eax	#, _69
# problem112.c:93: }
	movq	-8(%rbp), %rdx	# D.2642, tmp185
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp185
	je	.L27	#,
	call	__stack_chk_fail@PLT	#
.L27:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
