	.file	"code.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# numbers, numbers
	movl	%esi, -92(%rbp)	# size, size
	movq	%rdx, -104(%rbp)	# new_size, new_size
# eval/problem27//code.c:5:     int* out = (int*)malloc(size * sizeof(int));
	movl	-92(%rbp), %eax	# size, tmp118
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp119, out
# eval/problem27//code.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	movl	-92(%rbp), %eax	# size, tmp120
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# _3,
	call	calloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp121, has1
# eval/problem27//code.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	movl	-92(%rbp), %eax	# size, tmp122
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# _4,
	call	calloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp123, has2
# eval/problem27//code.c:8:     int has1_count = 0;
	movl	$0, -76(%rbp)	#, has1_count
# eval/problem27//code.c:9:     int has2_count = 0;
	movl	$0, -72(%rbp)	#, has2_count
# eval/problem27//code.c:10:     int out_count = 0;
	movl	$0, -68(%rbp)	#, out_count
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	movl	$0, -64(%rbp)	#, i
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L14:
# eval/problem27//code.c:13:         int num = numbers[i];
	movl	-64(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-88(%rbp), %rax	# numbers, tmp125
	addq	%rdx, %rax	# _6, _7
# eval/problem27//code.c:13:         int num = numbers[i];
	movl	(%rax), %eax	# *_7, tmp126
	movl	%eax, -28(%rbp)	# tmp126, num
# eval/problem27//code.c:14:         int in_has2 = 0;
	movl	$0, -60(%rbp)	#, in_has2
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	movl	$0, -56(%rbp)	#, j
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	jmp	.L3	#
.L6:
# eval/problem27//code.c:17:             if (has2[j] == num) {
	movl	-56(%rbp), %eax	# j, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-8(%rbp), %rax	# has2, tmp128
	addq	%rdx, %rax	# _9, _10
	movl	(%rax), %eax	# *_10, _11
# eval/problem27//code.c:17:             if (has2[j] == num) {
	cmpl	%eax, -28(%rbp)	# _11, num
	jne	.L4	#,
# eval/problem27//code.c:18:                 in_has2 = 1;
	movl	$1, -60(%rbp)	#, in_has2
# eval/problem27//code.c:19:                 break;
	jmp	.L5	#
.L4:
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	addl	$1, -56(%rbp)	#, j
.L3:
# eval/problem27//code.c:16:         for (int j = 0; j < has2_count; j++) {
	movl	-56(%rbp), %eax	# j, tmp129
	cmpl	-72(%rbp), %eax	# has2_count, tmp129
	jl	.L6	#,
.L5:
# eval/problem27//code.c:22:         if (in_has2) continue;
	cmpl	$0, -60(%rbp)	#, in_has2
	jne	.L23	#,
# eval/problem27//code.c:24:         int in_has1 = 0;
	movl	$0, -52(%rbp)	#, in_has1
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	movl	$0, -48(%rbp)	#, j
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	jmp	.L9	#
.L12:
# eval/problem27//code.c:26:             if (has1[j] == num) {
	movl	-48(%rbp), %eax	# j, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-16(%rbp), %rax	# has1, tmp131
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
# eval/problem27//code.c:26:             if (has1[j] == num) {
	cmpl	%eax, -28(%rbp)	# _15, num
	jne	.L10	#,
# eval/problem27//code.c:27:                 in_has1 = 1;
	movl	$1, -52(%rbp)	#, in_has1
# eval/problem27//code.c:28:                 break;
	jmp	.L11	#
.L10:
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	addl	$1, -48(%rbp)	#, j
.L9:
# eval/problem27//code.c:25:         for (int j = 0; j < has1_count; j++) {
	movl	-48(%rbp), %eax	# j, tmp132
	cmpl	-76(%rbp), %eax	# has1_count, tmp132
	jl	.L12	#,
.L11:
# eval/problem27//code.c:31:         if (in_has1) {
	cmpl	$0, -52(%rbp)	#, in_has1
	je	.L13	#,
# eval/problem27//code.c:32:             has2[has2_count++] = num;
	movl	-72(%rbp), %eax	# has2_count, has2_count.0_16
	leal	1(%rax), %edx	#, tmp133
	movl	%edx, -72(%rbp)	# tmp133, has2_count
	cltq
# eval/problem27//code.c:32:             has2[has2_count++] = num;
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-8(%rbp), %rax	# has2, tmp134
	addq	%rax, %rdx	# tmp134, _19
# eval/problem27//code.c:32:             has2[has2_count++] = num;
	movl	-28(%rbp), %eax	# num, tmp135
	movl	%eax, (%rdx)	# tmp135, *_19
	jmp	.L8	#
.L13:
# eval/problem27//code.c:34:             has1[has1_count++] = num;
	movl	-76(%rbp), %eax	# has1_count, has1_count.1_20
	leal	1(%rax), %edx	#, tmp136
	movl	%edx, -76(%rbp)	# tmp136, has1_count
	cltq
# eval/problem27//code.c:34:             has1[has1_count++] = num;
	leaq	0(,%rax,4), %rdx	#, _22
	movq	-16(%rbp), %rax	# has1, tmp137
	addq	%rax, %rdx	# tmp137, _23
# eval/problem27//code.c:34:             has1[has1_count++] = num;
	movl	-28(%rbp), %eax	# num, tmp138
	movl	%eax, (%rdx)	# tmp138, *_23
	jmp	.L8	#
.L23:
# eval/problem27//code.c:22:         if (in_has2) continue;
	nop	
.L8:
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	addl	$1, -64(%rbp)	#, i
.L2:
# eval/problem27//code.c:12:     for (int i = 0; i < size; i++) {
	movl	-64(%rbp), %eax	# i, tmp139
	cmpl	-92(%rbp), %eax	# size, tmp139
	jl	.L14	#,
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	movl	$0, -44(%rbp)	#, i
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	jmp	.L15	#
.L21:
# eval/problem27//code.c:39:         int num = numbers[i];
	movl	-44(%rbp), %eax	# i, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-88(%rbp), %rax	# numbers, tmp141
	addq	%rdx, %rax	# _25, _26
# eval/problem27//code.c:39:         int num = numbers[i];
	movl	(%rax), %eax	# *_26, tmp142
	movl	%eax, -32(%rbp)	# tmp142, num
# eval/problem27//code.c:40:         int in_has2 = 0;
	movl	$0, -40(%rbp)	#, in_has2
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	movl	$0, -36(%rbp)	#, j
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	jmp	.L16	#
.L19:
# eval/problem27//code.c:42:             if (has2[j] == num) {
	movl	-36(%rbp), %eax	# j, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-8(%rbp), %rax	# has2, tmp144
	addq	%rdx, %rax	# _28, _29
	movl	(%rax), %eax	# *_29, _30
# eval/problem27//code.c:42:             if (has2[j] == num) {
	cmpl	%eax, -32(%rbp)	# _30, num
	jne	.L17	#,
# eval/problem27//code.c:43:                 in_has2 = 1;
	movl	$1, -40(%rbp)	#, in_has2
# eval/problem27//code.c:44:                 break;
	jmp	.L18	#
.L17:
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	addl	$1, -36(%rbp)	#, j
.L16:
# eval/problem27//code.c:41:         for (int j = 0; j < has2_count; j++) {
	movl	-36(%rbp), %eax	# j, tmp145
	cmpl	-72(%rbp), %eax	# has2_count, tmp145
	jl	.L19	#,
.L18:
# eval/problem27//code.c:47:         if (!in_has2) {
	cmpl	$0, -40(%rbp)	#, in_has2
	jne	.L20	#,
# eval/problem27//code.c:48:             out[out_count++] = num;
	movl	-68(%rbp), %eax	# out_count, out_count.2_31
	leal	1(%rax), %edx	#, tmp146
	movl	%edx, -68(%rbp)	# tmp146, out_count
	cltq
# eval/problem27//code.c:48:             out[out_count++] = num;
	leaq	0(,%rax,4), %rdx	#, _33
	movq	-24(%rbp), %rax	# out, tmp147
	addq	%rax, %rdx	# tmp147, _34
# eval/problem27//code.c:48:             out[out_count++] = num;
	movl	-32(%rbp), %eax	# num, tmp148
	movl	%eax, (%rdx)	# tmp148, *_34
.L20:
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	addl	$1, -44(%rbp)	#, i
.L15:
# eval/problem27//code.c:38:     for (int i = 0; i < size; i++) {
	movl	-44(%rbp), %eax	# i, tmp149
	cmpl	-92(%rbp), %eax	# size, tmp149
	jl	.L21	#,
# eval/problem27//code.c:52:     *new_size = out_count;
	movq	-104(%rbp), %rax	# new_size, tmp150
	movl	-68(%rbp), %edx	# out_count, tmp151
	movl	%edx, (%rax)	# tmp151, *new_size_66(D)
# eval/problem27//code.c:53:     free(has1);
	movq	-16(%rbp), %rax	# has1, tmp152
	movq	%rax, %rdi	# tmp152,
	call	free@PLT	#
# eval/problem27//code.c:54:     free(has2);
	movq	-8(%rbp), %rax	# has2, tmp153
	movq	%rax, %rdi	# tmp153,
	call	free@PLT	#
# eval/problem27//code.c:55:     return out;
	movq	-24(%rbp), %rax	# out, _70
# eval/problem27//code.c:56: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
