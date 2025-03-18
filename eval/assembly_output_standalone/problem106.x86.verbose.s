	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"One"
.LC2:
	.string	"Two"
.LC3:
	.string	"Three"
.LC4:
	.string	"Four"
.LC5:
	.string	"Five"
.LC6:
	.string	"Six"
.LC7:
	.string	"Seven"
.LC8:
	.string	"Eight"
.LC9:
	.string	"Nine"
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
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# arr, arr
	movl	%esi, -124(%rbp)	# size, size
	movq	%rdx, -136(%rbp)	# out, out
	movq	%rcx, -144(%rbp)	# out_size, out_size
# eval/problem106//code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp196
	movq	%rax, -8(%rbp)	# tmp196, D.3950
	xorl	%eax, %eax	# tmp196
# eval/problem106//code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	leaq	.LC0(%rip), %rax	#, tmp142
	movq	%rax, -96(%rbp)	# tmp142, names[0]
	leaq	.LC1(%rip), %rax	#, tmp143
	movq	%rax, -88(%rbp)	# tmp143, names[1]
	leaq	.LC2(%rip), %rax	#, tmp144
	movq	%rax, -80(%rbp)	# tmp144, names[2]
	leaq	.LC3(%rip), %rax	#, tmp145
	movq	%rax, -72(%rbp)	# tmp145, names[3]
	leaq	.LC4(%rip), %rax	#, tmp146
	movq	%rax, -64(%rbp)	# tmp146, names[4]
	leaq	.LC5(%rip), %rax	#, tmp147
	movq	%rax, -56(%rbp)	# tmp147, names[5]
	leaq	.LC6(%rip), %rax	#, tmp148
	movq	%rax, -48(%rbp)	# tmp148, names[6]
	leaq	.LC7(%rip), %rax	#, tmp149
	movq	%rax, -40(%rbp)	# tmp149, names[7]
	leaq	.LC8(%rip), %rax	#, tmp150
	movq	%rax, -32(%rbp)	# tmp150, names[8]
	leaq	.LC9(%rip), %rax	#, tmp151
	movq	%rax, -24(%rbp)	# tmp151, names[9]
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	movl	$0, -108(%rbp)	#, i
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	jmp	.L2	#
.L6:
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	movl	$0, -104(%rbp)	#, j
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	jmp	.L3	#
.L5:
# eval/problem106//code.c:11:             if (arr[j] > arr[j + 1]) {
	movl	-104(%rbp), %eax	# j, tmp152
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-120(%rbp), %rax	# arr, tmp153
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# eval/problem106//code.c:11:             if (arr[j] > arr[j + 1]) {
	movl	-104(%rbp), %eax	# j, tmp154
	cltq
	addq	$1, %rax	#, _6
	leaq	0(,%rax,4), %rcx	#, _7
	movq	-120(%rbp), %rax	# arr, tmp155
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# eval/problem106//code.c:11:             if (arr[j] > arr[j + 1]) {
	cmpl	%eax, %edx	# _9, _4
	jle	.L4	#,
# eval/problem106//code.c:12:                 int temp = arr[j];
	movl	-104(%rbp), %eax	# j, tmp156
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-120(%rbp), %rax	# arr, tmp157
	addq	%rdx, %rax	# _11, _12
# eval/problem106//code.c:12:                 int temp = arr[j];
	movl	(%rax), %eax	# *_12, tmp158
	movl	%eax, -100(%rbp)	# tmp158, temp
# eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	movl	-104(%rbp), %eax	# j, tmp159
	cltq
	addq	$1, %rax	#, _14
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-120(%rbp), %rax	# arr, tmp160
	addq	%rdx, %rax	# _15, _16
# eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	movl	-104(%rbp), %edx	# j, tmp161
	movslq	%edx, %rdx	# tmp161, _17
	leaq	0(,%rdx,4), %rcx	#, _18
	movq	-120(%rbp), %rdx	# arr, tmp162
	addq	%rcx, %rdx	# _18, _19
# eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	movl	(%rax), %eax	# *_16, _20
# eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	movl	%eax, (%rdx)	# _20, *_19
# eval/problem106//code.c:14:                 arr[j + 1] = temp;
	movl	-104(%rbp), %eax	# j, tmp163
	cltq
	addq	$1, %rax	#, _22
	leaq	0(,%rax,4), %rdx	#, _23
	movq	-120(%rbp), %rax	# arr, tmp164
	addq	%rax, %rdx	# tmp164, _24
# eval/problem106//code.c:14:                 arr[j + 1] = temp;
	movl	-100(%rbp), %eax	# temp, tmp165
	movl	%eax, (%rdx)	# tmp165, *_24
.L4:
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	addl	$1, -104(%rbp)	#, j
.L3:
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	movl	-124(%rbp), %eax	# size, tmp166
	subl	-108(%rbp), %eax	# i, _25
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	subl	$1, %eax	#, _26
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	cmpl	%eax, -104(%rbp)	# _26, j
	jl	.L5	#,
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	addl	$1, -108(%rbp)	#, i
.L2:
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	movl	-124(%rbp), %eax	# size, tmp167
	subl	$1, %eax	#, _27
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	cmpl	%eax, -108(%rbp)	# _27, i
	jl	.L6	#,
# eval/problem106//code.c:19:     *out_size = 0;
	movq	-144(%rbp), %rax	# out_size, tmp168
	movl	$0, (%rax)	#, *out_size_87(D)
# eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	movl	-124(%rbp), %eax	# size, tmp172
	subl	$1, %eax	#, tmp171
	movl	%eax, -108(%rbp)	# tmp171, i
# eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	jmp	.L7	#
.L9:
# eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	movl	-108(%rbp), %eax	# i, tmp173
	cltq
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-120(%rbp), %rax	# arr, tmp174
	addq	%rdx, %rax	# _29, _30
	movl	(%rax), %eax	# *_30, _31
# eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	testl	%eax, %eax	# _31
	jle	.L8	#,
# eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	movl	-108(%rbp), %eax	# i, tmp175
	cltq
	leaq	0(,%rax,4), %rdx	#, _33
	movq	-120(%rbp), %rax	# arr, tmp176
	addq	%rdx, %rax	# _33, _34
	movl	(%rax), %eax	# *_34, _35
# eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmpl	$9, %eax	#, _35
	jg	.L8	#,
# eval/problem106//code.c:22:             (*out_size)++;
	movq	-144(%rbp), %rax	# out_size, tmp177
	movl	(%rax), %eax	# *out_size_87(D), _36
# eval/problem106//code.c:22:             (*out_size)++;
	leal	1(%rax), %edx	#, _37
	movq	-144(%rbp), %rax	# out_size, tmp178
	movl	%edx, (%rax)	# _37, *out_size_87(D)
.L8:
# eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	subl	$1, -108(%rbp)	#, i
.L7:
# eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	cmpl	$0, -108(%rbp)	#, i
	jns	.L9	#,
# eval/problem106//code.c:26:     *out = malloc(*out_size * sizeof(char *));
	movq	-144(%rbp), %rax	# out_size, tmp179
	movl	(%rax), %eax	# *out_size_87(D), _38
	cltq
# eval/problem106//code.c:26:     *out = malloc(*out_size * sizeof(char *));
	salq	$3, %rax	#, _40
	movq	%rax, %rdi	# _40,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp180, _41
# eval/problem106//code.c:26:     *out = malloc(*out_size * sizeof(char *));
	movq	-136(%rbp), %rax	# out, tmp181
	movq	%rdx, (%rax)	# _41, *out_91(D)
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	movl	-124(%rbp), %eax	# size, tmp185
	subl	$1, %eax	#, tmp184
	movl	%eax, -108(%rbp)	# tmp184, i
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	movl	$0, -104(%rbp)	#, j
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	jmp	.L10	#
.L13:
# eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	movl	-108(%rbp), %eax	# i, tmp186
	cltq
	leaq	0(,%rax,4), %rdx	#, _43
	movq	-120(%rbp), %rax	# arr, tmp187
	addq	%rdx, %rax	# _43, _44
	movl	(%rax), %eax	# *_44, _45
# eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	testl	%eax, %eax	# _45
	jle	.L11	#,
# eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	movl	-108(%rbp), %eax	# i, tmp188
	cltq
	leaq	0(,%rax,4), %rdx	#, _47
	movq	-120(%rbp), %rax	# arr, tmp189
	addq	%rdx, %rax	# _47, _48
	movl	(%rax), %eax	# *_48, _49
# eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	cmpl	$9, %eax	#, _49
	jg	.L11	#,
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	movl	-108(%rbp), %eax	# i, tmp190
	cltq
	leaq	0(,%rax,4), %rdx	#, _51
	movq	-120(%rbp), %rax	# arr, tmp191
	addq	%rdx, %rax	# _51, _52
	movl	(%rax), %ecx	# *_52, _53
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	movq	-136(%rbp), %rax	# out, tmp192
	movq	(%rax), %rsi	# *out_91(D), _54
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	movl	-104(%rbp), %eax	# j, j.0_55
	leal	1(%rax), %edx	#, tmp193
	movl	%edx, -104(%rbp)	# tmp193, j
	cltq
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	salq	$3, %rax	#, _57
	leaq	(%rsi,%rax), %rdx	#, _58
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	movslq	%ecx, %rax	# _53, tmp194
	movq	-96(%rbp,%rax,8), %rax	# names[_53], _59
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	movq	%rax, (%rdx)	# _59, *_58
.L11:
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	subl	$1, -108(%rbp)	#, i
.L10:
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	cmpl	$0, -108(%rbp)	#, i
	js	.L15	#,
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	movq	-144(%rbp), %rax	# out_size, tmp195
	movl	(%rax), %eax	# *out_size_87(D), _60
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	cmpl	%eax, -104(%rbp)	# _60, j
	jl	.L13	#,
.L15:
# eval/problem106//code.c:33: }
	nop	
	movq	-8(%rbp), %rax	# D.3950, tmp197
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp197
	je	.L14	#,
	call	__stack_chk_fail@PLT	#
.L14:
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
