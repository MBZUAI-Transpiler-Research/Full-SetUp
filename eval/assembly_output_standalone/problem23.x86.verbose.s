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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# values, values
	movq	%rsi, -48(%rbp)	# size, size
# eval/problem23//code.c:6: int *func0(const char *values, int *size) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp127
	movq	%rax, -8(%rbp)	# tmp127, D.4046
	xorl	%eax, %eax	# tmp127
# eval/problem23//code.c:8:     int count = 0;
	movl	$0, -32(%rbp)	#, count
# eval/problem23//code.c:9:     const char *start = values;
	movq	-40(%rbp), %rax	# values, tmp110
	movq	%rax, -16(%rbp)	# tmp110, start
# eval/problem23//code.c:11:     while (*start) {
	jmp	.L2	#
.L5:
# eval/problem23//code.c:13:             start++;
	addq	$1, -16(%rbp)	#, start
.L3:
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	movq	-16(%rbp), %rax	# start, tmp111
	movzbl	(%rax), %eax	# *start_29, _1
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	testb	%al, %al	# _1
	je	.L4	#,
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_2, _3
	movq	-16(%rbp), %rax	# start, tmp112
	movzbl	(%rax), %eax	# *start_29, _4
	movsbq	%al, %rax	# _4, _5
	addq	%rax, %rax	# _6
	addq	%rdx, %rax	# _3, _7
	movzwl	(%rax), %eax	# *_7, _8
	movzwl	%ax, %eax	# _8, _9
	andl	$2048, %eax	#, _10
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	testl	%eax, %eax	# _10
	jne	.L4	#,
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	movq	-16(%rbp), %rax	# start, tmp113
	movzbl	(%rax), %eax	# *start_29, _11
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmpb	$45, %al	#, _11
	jne	.L5	#,
.L4:
# eval/problem23//code.c:15:         if (!*start) {
	movq	-16(%rbp), %rax	# start, tmp114
	movzbl	(%rax), %eax	# *start_29, _12
# eval/problem23//code.c:15:         if (!*start) {
	testb	%al, %al	# _12
	je	.L16	#,
# eval/problem23//code.c:18:         int val = (int) strtol(start, &end, 10);
	leaq	-24(%rbp), %rcx	#, tmp115
	movq	-16(%rbp), %rax	# start, tmp116
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	strtol@PLT	#
# eval/problem23//code.c:18:         int val = (int) strtol(start, &end, 10);
	movl	%eax, -28(%rbp)	# _13, val
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	movq	-24(%rbp), %rax	# end, end.0_14
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmpq	%rax, -16(%rbp)	# end.0_14, start
	je	.L11	#,
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	movq	-24(%rbp), %rax	# end, end.1_15
	movzbl	(%rax), %eax	# *end.1_15, _16
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmpb	$44, %al	#, _16
	je	.L9	#,
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	movq	-24(%rbp), %rax	# end, end.2_17
	movzbl	(%rax), %eax	# *end.2_17, _18
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	testb	%al, %al	# _18
	jne	.L11	#,
.L9:
# eval/problem23//code.c:20:             out[count++] = val;
	movl	-32(%rbp), %eax	# count, count.3_19
	leal	1(%rax), %edx	#, tmp117
	movl	%edx, -32(%rbp)	# tmp117, count
# eval/problem23//code.c:20:             out[count++] = val;
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp119
	leaq	out.0(%rip), %rdx	#, tmp120
	movl	-28(%rbp), %eax	# val, tmp121
	movl	%eax, (%rcx,%rdx)	# tmp121, out[count.3_19]
	jmp	.L10	#
.L12:
# eval/problem23//code.c:23:                 end++;
	movq	-24(%rbp), %rax	# end, end.4_20
	addq	$1, %rax	#, _21
	movq	%rax, -24(%rbp)	# _21, end
.L11:
# eval/problem23//code.c:22:             while (*end && *end != ',') {
	movq	-24(%rbp), %rax	# end, end.5_22
	movzbl	(%rax), %eax	# *end.5_22, _23
# eval/problem23//code.c:22:             while (*end && *end != ',') {
	testb	%al, %al	# _23
	je	.L10	#,
# eval/problem23//code.c:22:             while (*end && *end != ',') {
	movq	-24(%rbp), %rax	# end, end.6_24
	movzbl	(%rax), %eax	# *end.6_24, _25
# eval/problem23//code.c:22:             while (*end && *end != ',') {
	cmpb	$44, %al	#, _25
	jne	.L12	#,
.L10:
# eval/problem23//code.c:26:         start = end;
	movq	-24(%rbp), %rax	# end, tmp122
	movq	%rax, -16(%rbp)	# tmp122, start
.L2:
# eval/problem23//code.c:11:     while (*start) {
	movq	-16(%rbp), %rax	# start, tmp123
	movzbl	(%rax), %eax	# *start_30, _26
	testb	%al, %al	# _26
	jne	.L3	#,
	jmp	.L7	#
.L16:
# eval/problem23//code.c:16:             break;
	nop	
.L7:
# eval/problem23//code.c:28:     *size = count;
	movq	-48(%rbp), %rax	# size, tmp124
	movl	-32(%rbp), %edx	# count, tmp125
	movl	%edx, (%rax)	# tmp125, *size_45(D)
# eval/problem23//code.c:29:     return out;
	leaq	out.0(%rip), %rax	#, _47
# eval/problem23//code.c:30: }
	movq	-8(%rbp), %rdx	# D.4046, tmp128
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1024,32
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
