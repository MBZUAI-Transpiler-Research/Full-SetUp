	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movl	%edi, -20(%rbp)	# x, x
	movl	%esi, -24(%rbp)	# n, n
# code.c:4:     int p = 1, count = 0;
	movl	$1, -8(%rbp)	#, p
# code.c:4:     int p = 1, count = 0;
	movl	$0, -4(%rbp)	#, count
# code.c:5:     while (p <= x && count < 100) {
	jmp	.L2	#
.L6:
# code.c:6:         if (p == x) return 1;
	movl	-8(%rbp), %eax	# p, tmp84
	cmpl	-20(%rbp), %eax	# x, tmp84
	jne	.L3	#,
# code.c:6:         if (p == x) return 1;
	movl	$1, %eax	#, _3
# code.c:6:         if (p == x) return 1;
	jmp	.L4	#
.L3:
# code.c:7:         p = p * n; count += 1;
	movl	-8(%rbp), %eax	# p, tmp86
	imull	-24(%rbp), %eax	# n, tmp85
	movl	%eax, -8(%rbp)	# tmp85, p
# code.c:7:         p = p * n; count += 1;
	addl	$1, -4(%rbp)	#, count
.L2:
# code.c:5:     while (p <= x && count < 100) {
	movl	-8(%rbp), %eax	# p, tmp87
	cmpl	-20(%rbp), %eax	# x, tmp87
	jg	.L5	#,
# code.c:5:     while (p <= x && count < 100) {
	cmpl	$99, -4(%rbp)	#, count
	jle	.L6	#,
.L5:
# code.c:9:     return 0;
	movl	$0, %eax	#, _3
.L4:
# code.c:10: }
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
