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
	subq	$80, %rsp	#,
	movl	%edi, -68(%rbp)	# x, x
	movl	%esi, -72(%rbp)	# base, base
	movq	%rdx, -80(%rbp)	# out, out
# code.c:5: void func0(int x, int base, char *out) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	movq	%rax, -8(%rbp)	# tmp108, D.3927
	xorl	%eax, %eax	# tmp108
# code.c:6:     int index = 0;
	movl	$0, -56(%rbp)	#, index
# code.c:8:     while (x > 0) {
	jmp	.L2	#
.L3:
# code.c:9:         temp[index++] = (x % base) + '0';
	movl	-68(%rbp), %eax	# x, tmp93
	cltd
	idivl	-72(%rbp)	# base
	movl	%edx, %eax	# tmp94, _1
# code.c:9:         temp[index++] = (x % base) + '0';
	leal	48(%rax), %ecx	#, _3
# code.c:9:         temp[index++] = (x % base) + '0';
	movl	-56(%rbp), %eax	# index, index.0_4
	leal	1(%rax), %edx	#, tmp96
	movl	%edx, -56(%rbp)	# tmp96, index
# code.c:9:         temp[index++] = (x % base) + '0';
	movl	%ecx, %edx	# _3, _5
# code.c:9:         temp[index++] = (x % base) + '0';
	cltq
	movb	%dl, -48(%rbp,%rax)	# _5, temp[index.0_4]
# code.c:10:         x = x / base;
	movl	-68(%rbp), %eax	# x, tmp101
	cltd
	idivl	-72(%rbp)	# base
	movl	%eax, -68(%rbp)	# tmp99, x
.L2:
# code.c:8:     while (x > 0) {
	cmpl	$0, -68(%rbp)	#, x
	jg	.L3	#,
# code.c:12:     int j = 0;
	movl	$0, -52(%rbp)	#, j
# code.c:13:     while(index > 0) {
	jmp	.L4	#
.L5:
# code.c:14:         out[j++] = temp[--index];
	subl	$1, -56(%rbp)	#, index
# code.c:14:         out[j++] = temp[--index];
	movl	-52(%rbp), %eax	# j, j.1_6
	leal	1(%rax), %edx	#, tmp102
	movl	%edx, -52(%rbp)	# tmp102, j
	movslq	%eax, %rdx	# j.1_6, _7
# code.c:14:         out[j++] = temp[--index];
	movq	-80(%rbp), %rax	# out, tmp103
	addq	%rax, %rdx	# tmp103, _8
# code.c:14:         out[j++] = temp[--index];
	movl	-56(%rbp), %eax	# index, tmp105
	cltq
	movzbl	-48(%rbp,%rax), %eax	# temp[index_25], _9
# code.c:14:         out[j++] = temp[--index];
	movb	%al, (%rdx)	# _9, *_8
.L4:
# code.c:13:     while(index > 0) {
	cmpl	$0, -56(%rbp)	#, index
	jg	.L5	#,
# code.c:16:     out[j] = '\0';
	movl	-52(%rbp), %eax	# j, tmp106
	movslq	%eax, %rdx	# tmp106, _10
	movq	-80(%rbp), %rax	# out, tmp107
	addq	%rdx, %rax	# _10, _11
# code.c:16:     out[j] = '\0';
	movb	$0, (%rax)	#, *_11
# code.c:17: }
	nop	
	movq	-8(%rbp), %rax	# D.3927, tmp109
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L6	#,
	call	__stack_chk_fail@PLT	#
.L6:
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
