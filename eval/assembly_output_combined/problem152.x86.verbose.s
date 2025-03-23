	.file	"problem152.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# lst, lst
	movl	%esi, -44(%rbp)	# lst_size, lst_size
# problem152.c:5:     long long sum = 0;
	movq	$0, -24(%rbp)	#, sum
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	movl	$0, -28(%rbp)	#, i
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	jmp	.L2	#
.L6:
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movl	-28(%rbp), %eax	# i, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# lst, tmp126
	addq	%rdx, %rax	# _2, _3
	movss	(%rax), %xmm0	# *_3, _4
	pxor	%xmm2, %xmm2	# _5
	cvtss2sd	%xmm0, %xmm2	# _4, _5
	movsd	%xmm2, -56(%rbp)	# _5, %sfp
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movl	-28(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-40(%rbp), %rax	# lst, tmp128
	addq	%rdx, %rax	# _7, _8
	movss	(%rax), %xmm0	# *_8, _9
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	pxor	%xmm3, %xmm3	# _10
	cvtss2sd	%xmm0, %xmm3	# _9, _10
	movq	%xmm3, %rax	# _10, _10
	movq	%rax, %xmm0	# _10,
	call	round@PLT	#
	movapd	%xmm0, %xmm1	#, _11
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movsd	-56(%rbp), %xmm0	# %sfp, _5
	subsd	%xmm1, %xmm0	# _11, _5
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movq	.LC0(%rip), %xmm1	#, tmp129
	andpd	%xmm0, %xmm1	# _12, _13
# problem152.c:7:         if (fabs(lst[i] - round(lst[i])) < 1e-4) {
	movsd	.LC1(%rip), %xmm0	#, tmp130
	comisd	%xmm1, %xmm0	# _13, tmp130
	jbe	.L3	#,
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	movl	-28(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-40(%rbp), %rax	# lst, tmp132
	addq	%rdx, %rax	# _15, _16
	movss	(%rax), %xmm0	# *_16, _17
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	pxor	%xmm1, %xmm1	# tmp133
	comiss	%xmm1, %xmm0	# tmp133, _17
	jbe	.L3	#,
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	movl	-28(%rbp), %eax	# i, tmp134
	cltq
	leaq	0(,%rax,4), %rdx	#, _19
	movq	-40(%rbp), %rax	# lst, tmp135
	addq	%rdx, %rax	# _19, _20
	movss	(%rax), %xmm0	# *_20, _21
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	pxor	%xmm4, %xmm4	# _22
	cvtss2sd	%xmm0, %xmm4	# _21, _22
	movq	%xmm4, %rax	# _22, _22
	movq	%rax, %xmm0	# _22,
	call	round@PLT	#
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cvttsd2sil	%xmm0, %eax	# _23, _24
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cltd
	shrl	$31, %edx	#, tmp137
	addl	%edx, %eax	# tmp137, tmp138
	andl	$1, %eax	#, tmp139
	subl	%edx, %eax	# tmp137, tmp140
# problem152.c:8:             if (lst[i] > 0 && (int)(round(lst[i])) % 2 == 1) {
	cmpl	$1, %eax	#, _25
	jne	.L3	#,
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	movl	-28(%rbp), %eax	# i, tmp141
	cltq
	leaq	0(,%rax,4), %rdx	#, _27
	movq	-40(%rbp), %rax	# lst, tmp142
	addq	%rdx, %rax	# _27, _28
	movss	(%rax), %xmm0	# *_28, _29
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	pxor	%xmm5, %xmm5	# _30
	cvtss2sd	%xmm0, %xmm5	# _29, _30
	movq	%xmm5, %rax	# _30, _30
	movq	%rax, %xmm0	# _30,
	call	round@PLT	#
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	cvttsd2sil	%xmm0, %ebx	# _31, _32
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	movl	-28(%rbp), %eax	# i, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, _34
	movq	-40(%rbp), %rax	# lst, tmp144
	addq	%rdx, %rax	# _34, _35
	movss	(%rax), %xmm0	# *_35, _36
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	pxor	%xmm6, %xmm6	# _37
	cvtss2sd	%xmm0, %xmm6	# _36, _37
	movq	%xmm6, %rax	# _37, _37
	movq	%rax, %xmm0	# _37,
	call	round@PLT	#
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	cvttsd2sil	%xmm0, %eax	# _38, _39
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	imull	%ebx, %eax	# _32, _40
	cltq
# problem152.c:9:                 sum += (int)(round(lst[i])) * (int)(round(lst[i]));
	addq	%rax, -24(%rbp)	# _41, sum
.L3:
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# problem152.c:6:     for (int i = 0; i < lst_size; i++) {
	movl	-28(%rbp), %eax	# i, tmp145
	cmpl	-44(%rbp), %eax	# lst_size, tmp145
	jl	.L6	#,
# problem152.c:13:     return sum;
	movq	-24(%rbp), %rax	# sum, _48
# problem152.c:14: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC3:
	.string	"problem152.c"
.LC4:
	.string	"func0((float[]){}, 0) == 0"
	.align 8
.LC7:
	.string	"func0((float[]){5, 4}, 2) == 25"
	.align 8
.LC11:
	.string	"func0((float[]){0.1, 0.2, 0.3}, 3) == 0"
	.align 8
.LC15:
	.string	"func0((float[]){-10, -20, -30}, 3) == 0"
	.align 8
.LC19:
	.string	"func0((float[]){-1, -2, 8}, 3) == 0"
	.align 8
.LC21:
	.string	"func0((float[]){0.2, 3, 5}, 3) == 34"
	.align 8
.LC22:
	.string	"func0(lst, lst_size) == odd_sum"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$832, %rsp	#,
# problem152.c:20: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp151
	movq	%rax, -8(%rbp)	# tmp151, D.3490
	xorl	%eax, %eax	# tmp151
# problem152.c:21:     assert(func0((float[]){}, 0) == 0);
	leaq	-816(%rbp), %rax	#, tmp97
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	func0	#
	testq	%rax, %rax	# _1
	je	.L11	#,
# problem152.c:21:     assert(func0((float[]){}, 0) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$21, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L11:
# problem152.c:22:     assert(func0((float[]){5, 4}, 2) == 25);
	movss	.LC5(%rip), %xmm0	#, tmp101
	movss	%xmm0, -816(%rbp)	# tmp101, MEM[(float[2] *)_71][0]
	movss	.LC6(%rip), %xmm0	#, tmp102
	movss	%xmm0, -812(%rbp)	# tmp102, MEM[(float[2] *)_71][1]
	leaq	-816(%rbp), %rax	#, tmp103
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	func0	#
	cmpq	$25, %rax	#, _2
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$22, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC7(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L12:
# problem152.c:23:     assert(func0((float[]){0.1, 0.2, 0.3}, 3) == 0);
	movss	.LC8(%rip), %xmm0	#, tmp107
	movss	%xmm0, -816(%rbp)	# tmp107, MEM[(float[3] *)_71][0]
	movss	.LC9(%rip), %xmm0	#, tmp108
	movss	%xmm0, -812(%rbp)	# tmp108, MEM[(float[3] *)_71][1]
	movss	.LC10(%rip), %xmm0	#, tmp109
	movss	%xmm0, -808(%rbp)	# tmp109, MEM[(float[3] *)_71][2]
	leaq	-816(%rbp), %rax	#, tmp110
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	func0	#
	testq	%rax, %rax	# _3
	je	.L13	#,
# problem152.c:23:     assert(func0((float[]){0.1, 0.2, 0.3}, 3) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$23, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC11(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L13:
# problem152.c:24:     assert(func0((float[]){-10, -20, -30}, 3) == 0);
	movss	.LC12(%rip), %xmm0	#, tmp114
	movss	%xmm0, -816(%rbp)	# tmp114, MEM[(float[3] *)_71][0]
	movss	.LC13(%rip), %xmm0	#, tmp115
	movss	%xmm0, -812(%rbp)	# tmp115, MEM[(float[3] *)_71][1]
	movss	.LC14(%rip), %xmm0	#, tmp116
	movss	%xmm0, -808(%rbp)	# tmp116, MEM[(float[3] *)_71][2]
	leaq	-816(%rbp), %rax	#, tmp117
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	func0	#
	testq	%rax, %rax	# _4
	je	.L14	#,
# problem152.c:24:     assert(func0((float[]){-10, -20, -30}, 3) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$24, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC15(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L14:
# problem152.c:25:     assert(func0((float[]){-1, -2, 8}, 3) == 0);
	movss	.LC16(%rip), %xmm0	#, tmp121
	movss	%xmm0, -816(%rbp)	# tmp121, MEM[(float[3] *)_71][0]
	movss	.LC17(%rip), %xmm0	#, tmp122
	movss	%xmm0, -812(%rbp)	# tmp122, MEM[(float[3] *)_71][1]
	movss	.LC18(%rip), %xmm0	#, tmp123
	movss	%xmm0, -808(%rbp)	# tmp123, MEM[(float[3] *)_71][2]
	leaq	-816(%rbp), %rax	#, tmp124
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	func0	#
	testq	%rax, %rax	# _5
	je	.L15	#,
# problem152.c:25:     assert(func0((float[]){-1, -2, 8}, 3) == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$25, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC19(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L15:
# problem152.c:26:     assert(func0((float[]){0.2, 3, 5}, 3) == 34);
	movss	.LC9(%rip), %xmm0	#, tmp128
	movss	%xmm0, -816(%rbp)	# tmp128, MEM[(float[3] *)_71][0]
	movss	.LC20(%rip), %xmm0	#, tmp129
	movss	%xmm0, -812(%rbp)	# tmp129, MEM[(float[3] *)_71][1]
	movss	.LC5(%rip), %xmm0	#, tmp130
	movss	%xmm0, -808(%rbp)	# tmp130, MEM[(float[3] *)_71][2]
	leaq	-816(%rbp), %rax	#, tmp131
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	func0	#
	cmpq	$34, %rax	#, _6
	je	.L16	#,
# problem152.c:26:     assert(func0((float[]){0.2, 3, 5}, 3) == 34);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$26, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC21(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L16:
# problem152.c:28:     long long odd_sum = 0;
	movq	$0, -824(%rbp)	#, odd_sum
# problem152.c:30:     int lst_size = 0;
	movl	$0, -832(%rbp)	#, lst_size
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	movl	$-99, -828(%rbp)	#, i
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	jmp	.L17	#
.L19:
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	pxor	%xmm1, %xmm1	# _7
	cvtsi2ssl	-828(%rbp), %xmm1	# i, _7
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	movl	-832(%rbp), %eax	# lst_size, lst_size.0_8
	leal	1(%rax), %edx	#, tmp135
	movl	%edx, -832(%rbp)	# tmp135, lst_size
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	pxor	%xmm0, %xmm0	# tmp136
	addss	%xmm1, %xmm0	# _7, _9
# problem152.c:33:         lst[lst_size++] = i + 0.0f;
	cltq
	movss	%xmm0, -816(%rbp,%rax,4)	# _9, MEM[(float[200] *)_71][lst_size.0_8]
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	cmpl	$0, -828(%rbp)	#, i
	jle	.L18	#,
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	movl	-828(%rbp), %eax	# i, tmp138
	cltd
	shrl	$31, %edx	#, tmp140
	addl	%edx, %eax	# tmp140, tmp141
	andl	$1, %eax	#, tmp142
	subl	%edx, %eax	# tmp140, tmp143
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	cmpl	$1, %eax	#, _10
	jne	.L18	#,
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	movl	-828(%rbp), %eax	# i, tmp144
	imull	%eax, %eax	# tmp144, _11
	cltq
# problem152.c:34:         if (i > 0 && i % 2 == 1) odd_sum += i * i;
	addq	%rax, -824(%rbp)	# _12, odd_sum
.L18:
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	addl	$2, -828(%rbp)	#, i
.L17:
# problem152.c:32:     for (int i = -99; i < 100; i += 2) {
	cmpl	$99, -828(%rbp)	#, i
	jle	.L19	#,
# problem152.c:37:     assert(func0(lst, lst_size) == odd_sum);
	movl	-832(%rbp), %edx	# lst_size, tmp145
	leaq	-816(%rbp), %rax	#, tmp146
	movl	%edx, %esi	# tmp145,
	movq	%rax, %rdi	# tmp146,
	call	func0	#
	cmpq	%rax, -824(%rbp)	# _13, odd_sum
	je	.L20	#,
# problem152.c:37:     assert(func0(lst, lst_size) == odd_sum);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp147
	movq	%rax, %rcx	# tmp147,
	movl	$37, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	leaq	.LC22(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	__assert_fail@PLT	#
.L20:
# problem152.c:39:     return 0;
	movl	$0, %eax	#, _58
# problem152.c:40: }
	movq	-8(%rbp), %rdx	# D.3490, tmp152
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp152
	je	.L22	#,
	call	__stack_chk_fail@PLT	#
.L22:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align 16
.LC0:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC1:
	.long	-350469331
	.long	1058682594
	.align 4
.LC5:
	.long	1084227584
	.align 4
.LC6:
	.long	1082130432
	.align 4
.LC8:
	.long	1036831949
	.align 4
.LC9:
	.long	1045220557
	.align 4
.LC10:
	.long	1050253722
	.align 4
.LC12:
	.long	-1054867456
	.align 4
.LC13:
	.long	-1046478848
	.align 4
.LC14:
	.long	-1041235968
	.align 4
.LC16:
	.long	-1082130432
	.align 4
.LC17:
	.long	-1073741824
	.align 4
.LC18:
	.long	1090519040
	.align 4
.LC20:
	.long	1077936128
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
