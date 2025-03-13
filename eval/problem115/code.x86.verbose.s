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
	movq	%rdi, -40(%rbp)	# nums, nums
	movl	%esi, -44(%rbp)	# size, size
# code.c:4:     long long current = nums[0];
	movq	-40(%rbp), %rax	# nums, tmp92
	movq	(%rax), %rax	# *nums_14(D), tmp93
	movq	%rax, -16(%rbp)	# tmp93, current
# code.c:5:     long long min = nums[0];
	movq	-40(%rbp), %rax	# nums, tmp94
	movq	(%rax), %rax	# *nums_14(D), tmp95
	movq	%rax, -8(%rbp)	# tmp95, min
# code.c:6:     for (int i = 1; i < size; i++) {
	movl	$1, -20(%rbp)	#, i
# code.c:6:     for (int i = 1; i < size; i++) {
	jmp	.L2	#
.L6:
# code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	cmpq	$0, -16(%rbp)	#, current
	jns	.L3	#,
# code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movl	-20(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# nums, tmp97
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rdx	# *_3, _4
# code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movq	-16(%rbp), %rax	# current, tmp98
	addq	%rdx, %rax	# _4, iftmp.0_12
	jmp	.L4	#
.L3:
# code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movl	-20(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, _6
	movq	-40(%rbp), %rax	# nums, tmp100
	addq	%rdx, %rax	# _6, _7
# code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movq	(%rax), %rax	# *_7, iftmp.0_12
.L4:
# code.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	movq	%rax, -16(%rbp)	# iftmp.0_12, current
# code.c:8:         if (current < min) min = current;
	movq	-16(%rbp), %rax	# current, tmp101
	cmpq	-8(%rbp), %rax	# min, tmp101
	jge	.L5	#,
# code.c:8:         if (current < min) min = current;
	movq	-16(%rbp), %rax	# current, tmp102
	movq	%rax, -8(%rbp)	# tmp102, min
.L5:
# code.c:6:     for (int i = 1; i < size; i++) {
	addl	$1, -20(%rbp)	#, i
.L2:
# code.c:6:     for (int i = 1; i < size; i++) {
	movl	-20(%rbp), %eax	# i, tmp103
	cmpl	-44(%rbp), %eax	# size, tmp103
	jl	.L6	#,
# code.c:10:     return min;
	movq	-8(%rbp), %rax	# min, _19
# code.c:11: }
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
