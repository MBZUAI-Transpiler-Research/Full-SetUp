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
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
	movq	%rsi, -32(%rbp)	# size, size
# eval/problem26//code.c:5:     int* out = malloc(sizeof(int) * 64);
	movl	$256, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp96, out
# eval/problem26//code.c:6:     *size = 0;
	movq	-32(%rbp), %rax	# size, tmp97
	movl	$0, (%rax)	#, *size_24(D)
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	movl	$2, -12(%rbp)	#, i
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	jmp	.L2	#
.L4:
# eval/problem26//code.c:9:             n = n / i;
	movl	-20(%rbp), %eax	# n, tmp101
	cltd
	idivl	-12(%rbp)	# i
	movl	%eax, -20(%rbp)	# tmp99, n
# eval/problem26//code.c:10:             out[(*size)++] = i;
	movq	-32(%rbp), %rax	# size, tmp102
	movl	(%rax), %eax	# *size_24(D), _1
# eval/problem26//code.c:10:             out[(*size)++] = i;
	leal	1(%rax), %ecx	#, _3
	movq	-32(%rbp), %rdx	# size, tmp103
	movl	%ecx, (%rdx)	# _3, *size_24(D)
	cltq
# eval/problem26//code.c:10:             out[(*size)++] = i;
	leaq	0(,%rax,4), %rdx	#, _5
	movq	-8(%rbp), %rax	# out, tmp104
	addq	%rax, %rdx	# tmp104, _6
# eval/problem26//code.c:10:             out[(*size)++] = i;
	movl	-12(%rbp), %eax	# i, tmp105
	movl	%eax, (%rdx)	# tmp105, *_6
.L3:
# eval/problem26//code.c:8:         while (n % i == 0) {
	movl	-20(%rbp), %eax	# n, tmp106
	cltd
	idivl	-12(%rbp)	# i
	movl	%edx, %eax	# tmp107, _7
# eval/problem26//code.c:8:         while (n % i == 0) {
	testl	%eax, %eax	# _7
	je	.L4	#,
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	movl	-12(%rbp), %eax	# i, tmp109
	imull	%eax, %eax	# tmp109, _8
# eval/problem26//code.c:7:     for (int i = 2; i * i <= n; i++) {
	cmpl	%eax, -20(%rbp)	# _8, n
	jge	.L3	#,
# eval/problem26//code.c:13:     if (n > 1) {
	cmpl	$1, -20(%rbp)	#, n
	jle	.L6	#,
# eval/problem26//code.c:14:         out[(*size)++] = n;
	movq	-32(%rbp), %rax	# size, tmp110
	movl	(%rax), %eax	# *size_24(D), _9
# eval/problem26//code.c:14:         out[(*size)++] = n;
	leal	1(%rax), %ecx	#, _11
	movq	-32(%rbp), %rdx	# size, tmp111
	movl	%ecx, (%rdx)	# _11, *size_24(D)
	cltq
# eval/problem26//code.c:14:         out[(*size)++] = n;
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-8(%rbp), %rax	# out, tmp112
	addq	%rax, %rdx	# tmp112, _14
# eval/problem26//code.c:14:         out[(*size)++] = n;
	movl	-20(%rbp), %eax	# n, tmp113
	movl	%eax, (%rdx)	# tmp113, *_14
.L6:
# eval/problem26//code.c:16:     return out;
	movq	-8(%rbp), %rax	# out, _30
# eval/problem26//code.c:17: }
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
