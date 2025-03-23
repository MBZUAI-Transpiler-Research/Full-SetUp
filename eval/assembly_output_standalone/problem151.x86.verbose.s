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
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, -24(%rbp)	# x, x
	movl	%edx, -28(%rbp)	# y, y
# eval/problem151//code.c:4:     int isp = 1;
	movl	$1, -8(%rbp)	#, isp
# eval/problem151//code.c:5:     if (n < 2) isp = 0;
	cmpl	$1, -20(%rbp)	#, n
	jg	.L2	#,
# eval/problem151//code.c:5:     if (n < 2) isp = 0;
	movl	$0, -8(%rbp)	#, isp
.L2:
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	movl	$2, -4(%rbp)	#, i
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	jmp	.L3	#
.L5:
# eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	movl	-20(%rbp), %eax	# n, tmp86
	cltd
	idivl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp87, _1
# eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	testl	%eax, %eax	# _1
	jne	.L4	#,
# eval/problem151//code.c:7:         if (n % i == 0) isp = 0;
	movl	$0, -8(%rbp)	#, isp
.L4:
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	addl	$1, -4(%rbp)	#, i
.L3:
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	movl	-4(%rbp), %eax	# i, tmp89
	imull	%eax, %eax	# tmp89, _2
# eval/problem151//code.c:6:     for (int i = 2; i * i <= n; i++) {
	cmpl	%eax, -20(%rbp)	# _2, n
	jge	.L5	#,
# eval/problem151//code.c:9:     if (isp) return x;
	cmpl	$0, -8(%rbp)	#, isp
	je	.L6	#,
# eval/problem151//code.c:9:     if (isp) return x;
	movl	-24(%rbp), %eax	# x, _7
# eval/problem151//code.c:9:     if (isp) return x;
	jmp	.L7	#
.L6:
# eval/problem151//code.c:10:     return y;
	movl	-28(%rbp), %eax	# y, _7
.L7:
# eval/problem151//code.c:11: }
	popq	%rbp	#
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
