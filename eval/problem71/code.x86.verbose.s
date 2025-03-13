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
	movq	%rdi, -40(%rbp)	# lst, lst
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out, out
# code.c:5:     for (int i = 0; i < size - 1; i++) {
	movl	$0, -24(%rbp)	#, i
# code.c:5:     for (int i = 0; i < size - 1; i++) {
	jmp	.L2	#
.L6:
# code.c:6:         for (int j = i + 1; j < size; j++) {
	movl	-24(%rbp), %eax	# i, tmp134
	addl	$1, %eax	#, tmp133
	movl	%eax, -20(%rbp)	# tmp133, j
# code.c:6:         for (int j = i + 1; j < size; j++) {
	jmp	.L3	#
.L5:
# code.c:7:             if (lst[i] > lst[j]) {
	movl	-24(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# lst, tmp136
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# code.c:7:             if (lst[i] > lst[j]) {
	movl	-20(%rbp), %eax	# j, tmp137
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# lst, tmp138
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# code.c:7:             if (lst[i] > lst[j]) {
	cmpl	%eax, %edx	# _8, _4
	jle	.L4	#,
# code.c:8:                 int temp = lst[i];
	movl	-24(%rbp), %eax	# i, tmp139
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-40(%rbp), %rax	# lst, tmp140
	addq	%rdx, %rax	# _10, _11
# code.c:8:                 int temp = lst[i];
	movl	(%rax), %eax	# *_11, tmp141
	movl	%eax, -4(%rbp)	# tmp141, temp
# code.c:9:                 lst[i] = lst[j];
	movl	-20(%rbp), %eax	# j, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-40(%rbp), %rax	# lst, tmp143
	addq	%rdx, %rax	# _13, _14
# code.c:9:                 lst[i] = lst[j];
	movl	-24(%rbp), %edx	# i, tmp144
	movslq	%edx, %rdx	# tmp144, _15
	leaq	0(,%rdx,4), %rcx	#, _16
	movq	-40(%rbp), %rdx	# lst, tmp145
	addq	%rcx, %rdx	# _16, _17
# code.c:9:                 lst[i] = lst[j];
	movl	(%rax), %eax	# *_14, _18
# code.c:9:                 lst[i] = lst[j];
	movl	%eax, (%rdx)	# _18, *_17
# code.c:10:                 lst[j] = temp;
	movl	-20(%rbp), %eax	# j, tmp146
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-40(%rbp), %rax	# lst, tmp147
	addq	%rax, %rdx	# tmp147, _21
# code.c:10:                 lst[j] = temp;
	movl	-4(%rbp), %eax	# temp, tmp148
	movl	%eax, (%rdx)	# tmp148, *_21
.L4:
# code.c:6:         for (int j = i + 1; j < size; j++) {
	addl	$1, -20(%rbp)	#, j
.L3:
# code.c:6:         for (int j = i + 1; j < size; j++) {
	movl	-20(%rbp), %eax	# j, tmp149
	cmpl	-44(%rbp), %eax	# size, tmp149
	jl	.L5	#,
# code.c:5:     for (int i = 0; i < size - 1; i++) {
	addl	$1, -24(%rbp)	#, i
.L2:
# code.c:5:     for (int i = 0; i < size - 1; i++) {
	movl	-44(%rbp), %eax	# size, tmp150
	subl	$1, %eax	#, _22
# code.c:5:     for (int i = 0; i < size - 1; i++) {
	cmpl	%eax, -24(%rbp)	# _22, i
	jl	.L6	#,
# code.c:15:     int l = 0, r = size - 1;
	movl	$0, -16(%rbp)	#, l
# code.c:15:     int l = 0, r = size - 1;
	movl	-44(%rbp), %eax	# size, tmp154
	subl	$1, %eax	#, tmp153
	movl	%eax, -12(%rbp)	# tmp153, r
# code.c:16:     int index = 0;
	movl	$0, -8(%rbp)	#, index
# code.c:18:     while (l <= r) {
	jmp	.L7	#
.L10:
# code.c:19:         if (l == r) {
	movl	-16(%rbp), %eax	# l, tmp155
	cmpl	-12(%rbp), %eax	# r, tmp155
	jne	.L8	#,
# code.c:20:             out[index++] = lst[l++];
	movl	-16(%rbp), %eax	# l, l.0_23
	leal	1(%rax), %edx	#, tmp156
	movl	%edx, -16(%rbp)	# tmp156, l
	cltq
# code.c:20:             out[index++] = lst[l++];
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-40(%rbp), %rax	# lst, tmp157
	leaq	(%rdx,%rax), %rcx	#, _26
# code.c:20:             out[index++] = lst[l++];
	movl	-8(%rbp), %eax	# index, index.1_27
	leal	1(%rax), %edx	#, tmp158
	movl	%edx, -8(%rbp)	# tmp158, index
	cltq
# code.c:20:             out[index++] = lst[l++];
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-56(%rbp), %rax	# out, tmp159
	addq	%rax, %rdx	# tmp159, _30
# code.c:20:             out[index++] = lst[l++];
	movl	(%rcx), %eax	# *_26, _31
# code.c:20:             out[index++] = lst[l++];
	movl	%eax, (%rdx)	# _31, *_30
	jmp	.L7	#
.L8:
# code.c:22:             out[index++] = lst[l++];
	movl	-16(%rbp), %eax	# l, l.2_32
	leal	1(%rax), %edx	#, tmp160
	movl	%edx, -16(%rbp)	# tmp160, l
	cltq
# code.c:22:             out[index++] = lst[l++];
	leaq	0(,%rax,4), %rdx	#, _34
	movq	-40(%rbp), %rax	# lst, tmp161
	leaq	(%rdx,%rax), %rcx	#, _35
# code.c:22:             out[index++] = lst[l++];
	movl	-8(%rbp), %eax	# index, index.3_36
	leal	1(%rax), %edx	#, tmp162
	movl	%edx, -8(%rbp)	# tmp162, index
	cltq
# code.c:22:             out[index++] = lst[l++];
	leaq	0(,%rax,4), %rdx	#, _38
	movq	-56(%rbp), %rax	# out, tmp163
	addq	%rax, %rdx	# tmp163, _39
# code.c:22:             out[index++] = lst[l++];
	movl	(%rcx), %eax	# *_35, _40
# code.c:22:             out[index++] = lst[l++];
	movl	%eax, (%rdx)	# _40, *_39
# code.c:23:             out[index++] = lst[r--];
	movl	-12(%rbp), %eax	# r, r.4_41
	leal	-1(%rax), %edx	#, tmp164
	movl	%edx, -12(%rbp)	# tmp164, r
	cltq
# code.c:23:             out[index++] = lst[r--];
	leaq	0(,%rax,4), %rdx	#, _43
	movq	-40(%rbp), %rax	# lst, tmp165
	leaq	(%rdx,%rax), %rcx	#, _44
# code.c:23:             out[index++] = lst[r--];
	movl	-8(%rbp), %eax	# index, index.5_45
	leal	1(%rax), %edx	#, tmp166
	movl	%edx, -8(%rbp)	# tmp166, index
	cltq
# code.c:23:             out[index++] = lst[r--];
	leaq	0(,%rax,4), %rdx	#, _47
	movq	-56(%rbp), %rax	# out, tmp167
	addq	%rax, %rdx	# tmp167, _48
# code.c:23:             out[index++] = lst[r--];
	movl	(%rcx), %eax	# *_44, _49
# code.c:23:             out[index++] = lst[r--];
	movl	%eax, (%rdx)	# _49, *_48
.L7:
# code.c:18:     while (l <= r) {
	movl	-16(%rbp), %eax	# l, tmp168
	cmpl	-12(%rbp), %eax	# r, tmp168
	jle	.L10	#,
# code.c:26: }
	nop	
	nop	
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
