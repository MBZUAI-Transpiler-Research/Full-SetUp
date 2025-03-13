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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# str, str
# code.c:6:     int l = strlen(str);
	movq	-24(%rbp), %rax	# str, tmp87
	movq	%rax, %rdi	# tmp87,
	call	strlen@PLT	#
# code.c:6:     int l = strlen(str);
	movl	%eax, -4(%rbp)	# _1, l
# code.c:7:     if (l < 2) return false;
	cmpl	$1, -4(%rbp)	#, l
	jg	.L2	#,
# code.c:7:     if (l < 2) return false;
	movl	$0, %eax	#, _5
# code.c:7:     if (l < 2) return false;
	jmp	.L3	#
.L2:
# code.c:8:     for (int i = 2; i * i <= l; i++) {
	movl	$2, -8(%rbp)	#, i
# code.c:8:     for (int i = 2; i * i <= l; i++) {
	jmp	.L4	#
.L6:
# code.c:9:         if (l % i == 0) return false;
	movl	-4(%rbp), %eax	# l, tmp88
	cltd
	idivl	-8(%rbp)	# i
	movl	%edx, %eax	# tmp89, _2
# code.c:9:         if (l % i == 0) return false;
	testl	%eax, %eax	# _2
	jne	.L5	#,
# code.c:9:         if (l % i == 0) return false;
	movl	$0, %eax	#, _5
# code.c:9:         if (l % i == 0) return false;
	jmp	.L3	#
.L5:
# code.c:8:     for (int i = 2; i * i <= l; i++) {
	addl	$1, -8(%rbp)	#, i
.L4:
# code.c:8:     for (int i = 2; i * i <= l; i++) {
	movl	-8(%rbp), %eax	# i, tmp91
	imull	%eax, %eax	# tmp91, _3
# code.c:8:     for (int i = 2; i * i <= l; i++) {
	cmpl	%eax, -4(%rbp)	# _3, l
	jge	.L6	#,
# code.c:11:     return true;
	movl	$1, %eax	#, _5
.L3:
# code.c:12: }
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
