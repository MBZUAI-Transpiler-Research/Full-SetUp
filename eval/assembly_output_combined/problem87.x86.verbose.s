	.file	"problem87.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	addq	$-128, %rsp	#,
	movq	%rdi, -120(%rbp)	# s, s
# problem87.c:5: char* func0(const char* s) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp152
	movq	%rax, -8(%rbp)	# tmp152, D.3135
	xorl	%eax, %eax	# tmp152
# problem87.c:6:     int len = strlen(s);
	movq	-120(%rbp), %rax	# s, tmp110
	movq	%rax, %rdi	# tmp110,
	call	strlen@PLT	#
# problem87.c:6:     int len = strlen(s);
	movl	%eax, -76(%rbp)	# _1, len
# problem87.c:7:     char* out = malloc(len + 2); 
	movl	-76(%rbp), %eax	# len, tmp111
	addl	$2, %eax	#, _2
# problem87.c:7:     char* out = malloc(len + 2); 
	cltq
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -72(%rbp)	# tmp112, out
# problem87.c:9:     int out_index = 0, current_index = 0;
	movl	$0, -100(%rbp)	#, out_index
# problem87.c:9:     int out_index = 0, current_index = 0;
	movl	$0, -96(%rbp)	#, current_index
# problem87.c:11:     for (int i = 0; i <= len; i++) {
	movl	$0, -92(%rbp)	#, i
# problem87.c:11:     for (int i = 0; i <= len; i++) {
	jmp	.L2	#
.L14:
# problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	movl	-92(%rbp), %eax	# i, tmp113
	movslq	%eax, %rdx	# tmp113, _4
	movq	-120(%rbp), %rax	# s, tmp114
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmpb	$32, %al	#, _6
	je	.L3	#,
# problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	movl	-92(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, _7
	movq	-120(%rbp), %rax	# s, tmp116
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
# problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	testb	%al, %al	# _9
	jne	.L4	#,
.L3:
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	movl	$0, -88(%rbp)	#, j
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	jmp	.L5	#
.L9:
# problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	movl	-88(%rbp), %eax	# j, tmp120
	addl	$1, %eax	#, tmp119
	movl	%eax, -84(%rbp)	# tmp119, k
# problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	jmp	.L6	#
.L8:
# problem87.c:15:                     if (current[j] > current[k]) {
	movl	-88(%rbp), %eax	# j, tmp122
	cltq
	movzbl	-64(%rbp,%rax), %edx	# current[j_34], _10
# problem87.c:15:                     if (current[j] > current[k]) {
	movl	-84(%rbp), %eax	# k, tmp124
	cltq
	movzbl	-64(%rbp,%rax), %eax	# current[k_35], _11
# problem87.c:15:                     if (current[j] > current[k]) {
	cmpb	%al, %dl	# _11, _10
	jle	.L7	#,
# problem87.c:16:                         char temp = current[j];
	movl	-88(%rbp), %eax	# j, tmp126
	cltq
	movzbl	-64(%rbp,%rax), %eax	# current[j_34], tmp127
	movb	%al, -101(%rbp)	# tmp127, temp
# problem87.c:17:                         current[j] = current[k];
	movl	-84(%rbp), %eax	# k, tmp129
	cltq
	movzbl	-64(%rbp,%rax), %edx	# current[k_35], _12
# problem87.c:17:                         current[j] = current[k];
	movl	-88(%rbp), %eax	# j, tmp131
	cltq
	movb	%dl, -64(%rbp,%rax)	# _12, current[j_34]
# problem87.c:18:                         current[k] = temp;
	movl	-84(%rbp), %eax	# k, tmp133
	cltq
	movzbl	-101(%rbp), %edx	# temp, tmp134
	movb	%dl, -64(%rbp,%rax)	# tmp134, current[k_35]
.L7:
# problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	addl	$1, -84(%rbp)	#, k
.L6:
# problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	movl	-84(%rbp), %eax	# k, tmp135
	cmpl	-96(%rbp), %eax	# current_index, tmp135
	jl	.L8	#,
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	addl	$1, -88(%rbp)	#, j
.L5:
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	movl	-96(%rbp), %eax	# current_index, tmp136
	subl	$1, %eax	#, _13
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	cmpl	%eax, -88(%rbp)	# _13, j
	jl	.L9	#,
# problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	cmpl	$0, -100(%rbp)	#, out_index
	jle	.L10	#,
# problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	movl	-100(%rbp), %eax	# out_index, out_index.0_14
	leal	1(%rax), %edx	#, tmp137
	movl	%edx, -100(%rbp)	# tmp137, out_index
	movslq	%eax, %rdx	# out_index.0_14, _15
# problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	movq	-72(%rbp), %rax	# out, tmp138
	addq	%rdx, %rax	# _15, _16
# problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	movb	$32, (%rax)	#, *_16
.L10:
# problem87.c:23:             for (int j = 0; j < current_index; j++) {
	movl	$0, -80(%rbp)	#, j
# problem87.c:23:             for (int j = 0; j < current_index; j++) {
	jmp	.L11	#
.L12:
# problem87.c:24:                 out[out_index++] = current[j];
	movl	-100(%rbp), %eax	# out_index, out_index.1_17
	leal	1(%rax), %edx	#, tmp139
	movl	%edx, -100(%rbp)	# tmp139, out_index
	movslq	%eax, %rdx	# out_index.1_17, _18
# problem87.c:24:                 out[out_index++] = current[j];
	movq	-72(%rbp), %rax	# out, tmp140
	addq	%rax, %rdx	# tmp140, _19
# problem87.c:24:                 out[out_index++] = current[j];
	movl	-80(%rbp), %eax	# j, tmp142
	cltq
	movzbl	-64(%rbp,%rax), %eax	# current[j_36], _20
# problem87.c:24:                 out[out_index++] = current[j];
	movb	%al, (%rdx)	# _20, *_19
# problem87.c:23:             for (int j = 0; j < current_index; j++) {
	addl	$1, -80(%rbp)	#, j
.L11:
# problem87.c:23:             for (int j = 0; j < current_index; j++) {
	movl	-80(%rbp), %eax	# j, tmp143
	cmpl	-96(%rbp), %eax	# current_index, tmp143
	jl	.L12	#,
# problem87.c:26:             current_index = 0;
	movl	$0, -96(%rbp)	#, current_index
	jmp	.L13	#
.L4:
# problem87.c:28:             current[current_index++] = s[i];
	movl	-92(%rbp), %eax	# i, tmp144
	movslq	%eax, %rdx	# tmp144, _21
	movq	-120(%rbp), %rax	# s, tmp145
	leaq	(%rdx,%rax), %rcx	#, _22
# problem87.c:28:             current[current_index++] = s[i];
	movl	-96(%rbp), %eax	# current_index, current_index.2_23
	leal	1(%rax), %edx	#, tmp146
	movl	%edx, -96(%rbp)	# tmp146, current_index
# problem87.c:28:             current[current_index++] = s[i];
	movzbl	(%rcx), %edx	# *_22, _24
# problem87.c:28:             current[current_index++] = s[i];
	cltq
	movb	%dl, -64(%rbp,%rax)	# _24, current[current_index.2_23]
.L13:
# problem87.c:11:     for (int i = 0; i <= len; i++) {
	addl	$1, -92(%rbp)	#, i
.L2:
# problem87.c:11:     for (int i = 0; i <= len; i++) {
	movl	-92(%rbp), %eax	# i, tmp148
	cmpl	-76(%rbp), %eax	# len, tmp148
	jle	.L14	#,
# problem87.c:32:     out[out_index] = '\0';
	movl	-100(%rbp), %eax	# out_index, tmp149
	movslq	%eax, %rdx	# tmp149, _25
	movq	-72(%rbp), %rax	# out, tmp150
	addq	%rdx, %rax	# _25, _26
# problem87.c:32:     out[out_index] = '\0';
	movb	$0, (%rax)	#, *_26
# problem87.c:33:     return out;
	movq	-72(%rbp), %rax	# out, _53
# problem87.c:34: }
	movq	-8(%rbp), %rdx	# D.3135, tmp153
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp153
	je	.L16	#,
	call	__stack_chk_fail@PLT	#
.L16:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"Hi"
.LC1:
	.string	"problem87.c"
.LC2:
	.string	"strcmp(result, \"Hi\") == 0"
.LC3:
	.string	"hello"
.LC4:
	.string	"ehllo"
.LC5:
	.string	"strcmp(result, \"ehllo\") == 0"
.LC6:
	.string	"number"
.LC7:
	.string	"bemnru"
.LC8:
	.string	"strcmp(result, \"bemnru\") == 0"
.LC9:
	.string	"abcd"
.LC10:
	.string	"strcmp(result, \"abcd\") == 0"
.LC11:
	.string	"Hello World!!!"
.LC12:
	.string	"Hello !!!Wdlor"
	.align 8
.LC13:
	.string	"strcmp(result, \"Hello !!!Wdlor\") == 0"
.LC14:
	.string	""
.LC15:
	.string	"strcmp(result, \"\") == 0"
	.align 8
.LC16:
	.string	"Hi. My name is Mister Robot. How are you?"
	.align 8
.LC17:
	.string	".Hi My aemn is Meirst .Rboot How aer ?ouy"
	.align 8
.LC18:
	.string	"strcmp(result, \".Hi My aemn is Meirst .Rboot How aer ?ouy\") == 0"
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
	subq	$16, %rsp	#,
# problem87.c:45:     result = func0("Hi");
	leaq	.LC0(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp93, result
# problem87.c:46:     assert(strcmp(result, "Hi") == 0);
	movq	-8(%rbp), %rax	# result, tmp94
	leaq	.LC0(%rip), %rdx	#, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp94,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _1
	je	.L18	#,
# problem87.c:46:     assert(strcmp(result, "Hi") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$46, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC2(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L18:
# problem87.c:47:     free(result);
	movq	-8(%rbp), %rax	# result, tmp99
	movq	%rax, %rdi	# tmp99,
	call	free@PLT	#
# problem87.c:49:     result = func0("hello");
	leaq	.LC3(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp101, result
# problem87.c:50:     assert(strcmp(result, "ehllo") == 0);
	movq	-8(%rbp), %rax	# result, tmp102
	leaq	.LC4(%rip), %rdx	#, tmp103
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp102,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L19	#,
# problem87.c:50:     assert(strcmp(result, "ehllo") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$50, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC5(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L19:
# problem87.c:51:     free(result);
	movq	-8(%rbp), %rax	# result, tmp107
	movq	%rax, %rdi	# tmp107,
	call	free@PLT	#
# problem87.c:53:     result = func0("number");
	leaq	.LC6(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp109, result
# problem87.c:54:     assert(strcmp(result, "bemnru") == 0);
	movq	-8(%rbp), %rax	# result, tmp110
	leaq	.LC7(%rip), %rdx	#, tmp111
	movq	%rdx, %rsi	# tmp111,
	movq	%rax, %rdi	# tmp110,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _3
	je	.L20	#,
# problem87.c:54:     assert(strcmp(result, "bemnru") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$54, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC8(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L20:
# problem87.c:55:     free(result);
	movq	-8(%rbp), %rax	# result, tmp115
	movq	%rax, %rdi	# tmp115,
	call	free@PLT	#
# problem87.c:57:     result = func0("abcd");
	leaq	.LC9(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp117, result
# problem87.c:58:     assert(strcmp(result, "abcd") == 0);
	movq	-8(%rbp), %rax	# result, tmp118
	leaq	.LC9(%rip), %rdx	#, tmp119
	movq	%rdx, %rsi	# tmp119,
	movq	%rax, %rdi	# tmp118,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L21	#,
# problem87.c:58:     assert(strcmp(result, "abcd") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp120
	movq	%rax, %rcx	# tmp120,
	movl	$58, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC10(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	__assert_fail@PLT	#
.L21:
# problem87.c:59:     free(result);
	movq	-8(%rbp), %rax	# result, tmp123
	movq	%rax, %rdi	# tmp123,
	call	free@PLT	#
# problem87.c:61:     result = func0("Hello World!!!");
	leaq	.LC11(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp125, result
# problem87.c:62:     assert(strcmp(result, "Hello !!!Wdlor") == 0);
	movq	-8(%rbp), %rax	# result, tmp126
	leaq	.LC12(%rip), %rdx	#, tmp127
	movq	%rdx, %rsi	# tmp127,
	movq	%rax, %rdi	# tmp126,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _5
	je	.L22	#,
# problem87.c:62:     assert(strcmp(result, "Hello !!!Wdlor") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp128
	movq	%rax, %rcx	# tmp128,
	movl	$62, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp129
	movq	%rax, %rsi	# tmp129,
	leaq	.LC13(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	__assert_fail@PLT	#
.L22:
# problem87.c:63:     free(result);
	movq	-8(%rbp), %rax	# result, tmp131
	movq	%rax, %rdi	# tmp131,
	call	free@PLT	#
# problem87.c:65:     result = func0("");
	leaq	.LC14(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp133, result
# problem87.c:66:     assert(strcmp(result, "") == 0);
	movq	-8(%rbp), %rax	# result, tmp134
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})result_30], _31
	movzbl	%al, %eax	# _31, _6
	testl	%eax, %eax	# _6
	je	.L23	#,
# problem87.c:66:     assert(strcmp(result, "") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp135
	movq	%rax, %rcx	# tmp135,
	movl	$66, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	.LC15(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	__assert_fail@PLT	#
.L23:
# problem87.c:67:     free(result);
	movq	-8(%rbp), %rax	# result, tmp138
	movq	%rax, %rdi	# tmp138,
	call	free@PLT	#
# problem87.c:69:     result = func0("Hi. My name is Mister Robot. How are you?");
	leaq	.LC16(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	func0	#
	movq	%rax, -8(%rbp)	# tmp140, result
# problem87.c:70:     assert(strcmp(result, ".Hi My aemn is Meirst .Rboot How aer ?ouy") == 0);
	movq	-8(%rbp), %rax	# result, tmp141
	leaq	.LC17(%rip), %rdx	#, tmp142
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# tmp141,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _7
	je	.L24	#,
# problem87.c:70:     assert(strcmp(result, ".Hi My aemn is Meirst .Rboot How aer ?ouy") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$70, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC18(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L24:
# problem87.c:71:     free(result);
	movq	-8(%rbp), %rax	# result, tmp146
	movq	%rax, %rdi	# tmp146,
	call	free@PLT	#
# problem87.c:73:     return 0;
	movl	$0, %eax	#, _38
# problem87.c:74: }
	leave	
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
