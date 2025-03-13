	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movl	%edi, -20(%rbp)	# a, a
# code.c:5:     if (a < 2) return 0;
	cmpl	$1, -20(%rbp)	#, a
	jg	.L2	#,
# code.c:5:     if (a < 2) return 0;
	movl	$0, %eax	#, _10
# code.c:5:     if (a < 2) return 0;
	jmp	.L3	#
.L2:
# code.c:6:     int num = 0;
	movl	$0, -8(%rbp)	#, num
# code.c:7:     for (int i = 2; i * i <= a; i++) {
	movl	$2, -4(%rbp)	#, i
# code.c:7:     for (int i = 2; i * i <= a; i++) {
	jmp	.L4	#
.L6:
# code.c:9:             a = a / i;
	movl	-20(%rbp), %eax	# a, tmp90
	cltd
	idivl	-4(%rbp)	# i
	movl	%eax, -20(%rbp)	# tmp88, a
# code.c:10:             num++;
	addl	$1, -8(%rbp)	#, num
.L5:
# code.c:8:         while (a % i == 0) {
	movl	-20(%rbp), %eax	# a, tmp91
	cltd
	idivl	-4(%rbp)	# i
	movl	%edx, %eax	# tmp92, _1
# code.c:8:         while (a % i == 0) {
	testl	%eax, %eax	# _1
	je	.L6	#,
# code.c:7:     for (int i = 2; i * i <= a; i++) {
	addl	$1, -4(%rbp)	#, i
.L4:
# code.c:7:     for (int i = 2; i * i <= a; i++) {
	movl	-4(%rbp), %eax	# i, tmp94
	imull	%eax, %eax	# tmp94, _2
# code.c:7:     for (int i = 2; i * i <= a; i++) {
	cmpl	%eax, -20(%rbp)	# _2, a
	jge	.L5	#,
# code.c:13:     if (a > 1) num++;
	cmpl	$1, -20(%rbp)	#, a
	jle	.L8	#,
# code.c:13:     if (a > 1) num++;
	addl	$1, -8(%rbp)	#, num
.L8:
# code.c:14:     return num == 3;
	cmpl	$3, -8(%rbp)	#, num
	sete	%al	#, _3
	movzbl	%al, %eax	# _3, _10
.L3:
# code.c:15: }
	popq	%rbp	#
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
