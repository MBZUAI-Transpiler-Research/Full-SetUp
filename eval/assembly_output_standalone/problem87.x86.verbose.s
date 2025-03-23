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
	addq	$-128, %rsp	#,
	movq	%rdi, -120(%rbp)	# s, s
# eval/problem87//code.c:5: char* func0(const char* s) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp152
	movq	%rax, -8(%rbp)	# tmp152, D.3953
	xorl	%eax, %eax	# tmp152
# eval/problem87//code.c:6:     int len = strlen(s);
	movq	-120(%rbp), %rax	# s, tmp110
	movq	%rax, %rdi	# tmp110,
	call	strlen@PLT	#
# eval/problem87//code.c:6:     int len = strlen(s);
	movl	%eax, -76(%rbp)	# _1, len
# eval/problem87//code.c:7:     char* out = malloc(len + 2); 
	movl	-76(%rbp), %eax	# len, tmp111
	addl	$2, %eax	#, _2
# eval/problem87//code.c:7:     char* out = malloc(len + 2); 
	cltq
	movq	%rax, %rdi	# _3,
	call	malloc@PLT	#
	movq	%rax, -72(%rbp)	# tmp112, out
# eval/problem87//code.c:9:     int out_index = 0, current_index = 0;
	movl	$0, -100(%rbp)	#, out_index
# eval/problem87//code.c:9:     int out_index = 0, current_index = 0;
	movl	$0, -96(%rbp)	#, current_index
# eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	movl	$0, -92(%rbp)	#, i
# eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	jmp	.L2	#
.L14:
# eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	movl	-92(%rbp), %eax	# i, tmp113
	movslq	%eax, %rdx	# tmp113, _4
	movq	-120(%rbp), %rax	# s, tmp114
	addq	%rdx, %rax	# _4, _5
	movzbl	(%rax), %eax	# *_5, _6
# eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	cmpb	$32, %al	#, _6
	je	.L3	#,
# eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	movl	-92(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, _7
	movq	-120(%rbp), %rax	# s, tmp116
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
# eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	testb	%al, %al	# _9
	jne	.L4	#,
.L3:
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	movl	$0, -88(%rbp)	#, j
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	jmp	.L5	#
.L9:
# eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	movl	-88(%rbp), %eax	# j, tmp120
	addl	$1, %eax	#, tmp119
	movl	%eax, -84(%rbp)	# tmp119, k
# eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	jmp	.L6	#
.L8:
# eval/problem87//code.c:15:                     if (current[j] > current[k]) {
	movl	-88(%rbp), %eax	# j, tmp122
	cltq
	movzbl	-64(%rbp,%rax), %edx	# current[j_34], _10
# eval/problem87//code.c:15:                     if (current[j] > current[k]) {
	movl	-84(%rbp), %eax	# k, tmp124
	cltq
	movzbl	-64(%rbp,%rax), %eax	# current[k_35], _11
# eval/problem87//code.c:15:                     if (current[j] > current[k]) {
	cmpb	%al, %dl	# _11, _10
	jle	.L7	#,
# eval/problem87//code.c:16:                         char temp = current[j];
	movl	-88(%rbp), %eax	# j, tmp126
	cltq
	movzbl	-64(%rbp,%rax), %eax	# current[j_34], tmp127
	movb	%al, -101(%rbp)	# tmp127, temp
# eval/problem87//code.c:17:                         current[j] = current[k];
	movl	-84(%rbp), %eax	# k, tmp129
	cltq
	movzbl	-64(%rbp,%rax), %edx	# current[k_35], _12
# eval/problem87//code.c:17:                         current[j] = current[k];
	movl	-88(%rbp), %eax	# j, tmp131
	cltq
	movb	%dl, -64(%rbp,%rax)	# _12, current[j_34]
# eval/problem87//code.c:18:                         current[k] = temp;
	movl	-84(%rbp), %eax	# k, tmp133
	cltq
	movzbl	-101(%rbp), %edx	# temp, tmp134
	movb	%dl, -64(%rbp,%rax)	# tmp134, current[k_35]
.L7:
# eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	addl	$1, -84(%rbp)	#, k
.L6:
# eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	movl	-84(%rbp), %eax	# k, tmp135
	cmpl	-96(%rbp), %eax	# current_index, tmp135
	jl	.L8	#,
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	addl	$1, -88(%rbp)	#, j
.L5:
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	movl	-96(%rbp), %eax	# current_index, tmp136
	subl	$1, %eax	#, _13
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	cmpl	%eax, -88(%rbp)	# _13, j
	jl	.L9	#,
# eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	cmpl	$0, -100(%rbp)	#, out_index
	jle	.L10	#,
# eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	movl	-100(%rbp), %eax	# out_index, out_index.0_14
	leal	1(%rax), %edx	#, tmp137
	movl	%edx, -100(%rbp)	# tmp137, out_index
	movslq	%eax, %rdx	# out_index.0_14, _15
# eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	movq	-72(%rbp), %rax	# out, tmp138
	addq	%rdx, %rax	# _15, _16
# eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	movb	$32, (%rax)	#, *_16
.L10:
# eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	movl	$0, -80(%rbp)	#, j
# eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	jmp	.L11	#
.L12:
# eval/problem87//code.c:24:                 out[out_index++] = current[j];
	movl	-100(%rbp), %eax	# out_index, out_index.1_17
	leal	1(%rax), %edx	#, tmp139
	movl	%edx, -100(%rbp)	# tmp139, out_index
	movslq	%eax, %rdx	# out_index.1_17, _18
# eval/problem87//code.c:24:                 out[out_index++] = current[j];
	movq	-72(%rbp), %rax	# out, tmp140
	addq	%rax, %rdx	# tmp140, _19
# eval/problem87//code.c:24:                 out[out_index++] = current[j];
	movl	-80(%rbp), %eax	# j, tmp142
	cltq
	movzbl	-64(%rbp,%rax), %eax	# current[j_36], _20
# eval/problem87//code.c:24:                 out[out_index++] = current[j];
	movb	%al, (%rdx)	# _20, *_19
# eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	addl	$1, -80(%rbp)	#, j
.L11:
# eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	movl	-80(%rbp), %eax	# j, tmp143
	cmpl	-96(%rbp), %eax	# current_index, tmp143
	jl	.L12	#,
# eval/problem87//code.c:26:             current_index = 0;
	movl	$0, -96(%rbp)	#, current_index
	jmp	.L13	#
.L4:
# eval/problem87//code.c:28:             current[current_index++] = s[i];
	movl	-92(%rbp), %eax	# i, tmp144
	movslq	%eax, %rdx	# tmp144, _21
	movq	-120(%rbp), %rax	# s, tmp145
	leaq	(%rdx,%rax), %rcx	#, _22
# eval/problem87//code.c:28:             current[current_index++] = s[i];
	movl	-96(%rbp), %eax	# current_index, current_index.2_23
	leal	1(%rax), %edx	#, tmp146
	movl	%edx, -96(%rbp)	# tmp146, current_index
# eval/problem87//code.c:28:             current[current_index++] = s[i];
	movzbl	(%rcx), %edx	# *_22, _24
# eval/problem87//code.c:28:             current[current_index++] = s[i];
	cltq
	movb	%dl, -64(%rbp,%rax)	# _24, current[current_index.2_23]
.L13:
# eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	addl	$1, -92(%rbp)	#, i
.L2:
# eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	movl	-92(%rbp), %eax	# i, tmp148
	cmpl	-76(%rbp), %eax	# len, tmp148
	jle	.L14	#,
# eval/problem87//code.c:32:     out[out_index] = '\0';
	movl	-100(%rbp), %eax	# out_index, tmp149
	movslq	%eax, %rdx	# tmp149, _25
	movq	-72(%rbp), %rax	# out, tmp150
	addq	%rdx, %rax	# _25, _26
# eval/problem87//code.c:32:     out[out_index] = '\0';
	movb	$0, (%rax)	#, *_26
# eval/problem87//code.c:33:     return out;
	movq	-72(%rbp), %rax	# out, _53
# eval/problem87//code.c:34: }
	movq	-8(%rbp), %rdx	# D.3953, tmp153
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
