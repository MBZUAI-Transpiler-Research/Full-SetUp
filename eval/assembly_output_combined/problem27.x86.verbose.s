	.file	"problem27.c"
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
# problem27.c:5:     int* out = (int*)malloc(size * sizeof(int));
	movl	-92(%rbp), %eax	# size, tmp118
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -24(%rbp)	# tmp119, out
# problem27.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	movl	-92(%rbp), %eax	# size, tmp120
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# _3,
	call	calloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp121, has1
# problem27.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	movl	-92(%rbp), %eax	# size, tmp122
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# _4,
	call	calloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp123, has2
# problem27.c:8:     int has1_count = 0;
	movl	$0, -76(%rbp)	#, has1_count
# problem27.c:9:     int has2_count = 0;
	movl	$0, -72(%rbp)	#, has2_count
# problem27.c:10:     int out_count = 0;
	movl	$0, -68(%rbp)	#, out_count
# problem27.c:12:     for (int i = 0; i < size; i++) {
	movl	$0, -64(%rbp)	#, i
# problem27.c:12:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L14:
# problem27.c:13:         int num = numbers[i];
	movl	-64(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-88(%rbp), %rax	# numbers, tmp125
	addq	%rdx, %rax	# _6, _7
# problem27.c:13:         int num = numbers[i];
	movl	(%rax), %eax	# *_7, tmp126
	movl	%eax, -28(%rbp)	# tmp126, num
# problem27.c:14:         int in_has2 = 0;
	movl	$0, -60(%rbp)	#, in_has2
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	movl	$0, -56(%rbp)	#, j
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	jmp	.L3	#
.L6:
# problem27.c:17:             if (has2[j] == num) {
	movl	-56(%rbp), %eax	# j, tmp127
	cltq
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-8(%rbp), %rax	# has2, tmp128
	addq	%rdx, %rax	# _9, _10
	movl	(%rax), %eax	# *_10, _11
# problem27.c:17:             if (has2[j] == num) {
	cmpl	%eax, -28(%rbp)	# _11, num
	jne	.L4	#,
# problem27.c:18:                 in_has2 = 1;
	movl	$1, -60(%rbp)	#, in_has2
# problem27.c:19:                 break;
	jmp	.L5	#
.L4:
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	addl	$1, -56(%rbp)	#, j
.L3:
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	movl	-56(%rbp), %eax	# j, tmp129
	cmpl	-72(%rbp), %eax	# has2_count, tmp129
	jl	.L6	#,
.L5:
# problem27.c:22:         if (in_has2) continue;
	cmpl	$0, -60(%rbp)	#, in_has2
	jne	.L23	#,
# problem27.c:24:         int in_has1 = 0;
	movl	$0, -52(%rbp)	#, in_has1
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	movl	$0, -48(%rbp)	#, j
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	jmp	.L9	#
.L12:
# problem27.c:26:             if (has1[j] == num) {
	movl	-48(%rbp), %eax	# j, tmp130
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-16(%rbp), %rax	# has1, tmp131
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
# problem27.c:26:             if (has1[j] == num) {
	cmpl	%eax, -28(%rbp)	# _15, num
	jne	.L10	#,
# problem27.c:27:                 in_has1 = 1;
	movl	$1, -52(%rbp)	#, in_has1
# problem27.c:28:                 break;
	jmp	.L11	#
.L10:
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	addl	$1, -48(%rbp)	#, j
.L9:
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	movl	-48(%rbp), %eax	# j, tmp132
	cmpl	-76(%rbp), %eax	# has1_count, tmp132
	jl	.L12	#,
.L11:
# problem27.c:31:         if (in_has1) {
	cmpl	$0, -52(%rbp)	#, in_has1
	je	.L13	#,
# problem27.c:32:             has2[has2_count++] = num;
	movl	-72(%rbp), %eax	# has2_count, has2_count.0_16
	leal	1(%rax), %edx	#, tmp133
	movl	%edx, -72(%rbp)	# tmp133, has2_count
	cltq
# problem27.c:32:             has2[has2_count++] = num;
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-8(%rbp), %rax	# has2, tmp134
	addq	%rax, %rdx	# tmp134, _19
# problem27.c:32:             has2[has2_count++] = num;
	movl	-28(%rbp), %eax	# num, tmp135
	movl	%eax, (%rdx)	# tmp135, *_19
	jmp	.L8	#
.L13:
# problem27.c:34:             has1[has1_count++] = num;
	movl	-76(%rbp), %eax	# has1_count, has1_count.1_20
	leal	1(%rax), %edx	#, tmp136
	movl	%edx, -76(%rbp)	# tmp136, has1_count
	cltq
# problem27.c:34:             has1[has1_count++] = num;
	leaq	0(,%rax,4), %rdx	#, _22
	movq	-16(%rbp), %rax	# has1, tmp137
	addq	%rax, %rdx	# tmp137, _23
# problem27.c:34:             has1[has1_count++] = num;
	movl	-28(%rbp), %eax	# num, tmp138
	movl	%eax, (%rdx)	# tmp138, *_23
	jmp	.L8	#
.L23:
# problem27.c:22:         if (in_has2) continue;
	nop	
.L8:
# problem27.c:12:     for (int i = 0; i < size; i++) {
	addl	$1, -64(%rbp)	#, i
.L2:
# problem27.c:12:     for (int i = 0; i < size; i++) {
	movl	-64(%rbp), %eax	# i, tmp139
	cmpl	-92(%rbp), %eax	# size, tmp139
	jl	.L14	#,
# problem27.c:38:     for (int i = 0; i < size; i++) {
	movl	$0, -44(%rbp)	#, i
# problem27.c:38:     for (int i = 0; i < size; i++) {
	jmp	.L15	#
.L21:
# problem27.c:39:         int num = numbers[i];
	movl	-44(%rbp), %eax	# i, tmp140
	cltq
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-88(%rbp), %rax	# numbers, tmp141
	addq	%rdx, %rax	# _25, _26
# problem27.c:39:         int num = numbers[i];
	movl	(%rax), %eax	# *_26, tmp142
	movl	%eax, -32(%rbp)	# tmp142, num
# problem27.c:40:         int in_has2 = 0;
	movl	$0, -40(%rbp)	#, in_has2
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	movl	$0, -36(%rbp)	#, j
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	jmp	.L16	#
.L19:
# problem27.c:42:             if (has2[j] == num) {
	movl	-36(%rbp), %eax	# j, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-8(%rbp), %rax	# has2, tmp144
	addq	%rdx, %rax	# _28, _29
	movl	(%rax), %eax	# *_29, _30
# problem27.c:42:             if (has2[j] == num) {
	cmpl	%eax, -32(%rbp)	# _30, num
	jne	.L17	#,
# problem27.c:43:                 in_has2 = 1;
	movl	$1, -40(%rbp)	#, in_has2
# problem27.c:44:                 break;
	jmp	.L18	#
.L17:
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	addl	$1, -36(%rbp)	#, j
.L16:
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	movl	-36(%rbp), %eax	# j, tmp145
	cmpl	-72(%rbp), %eax	# has2_count, tmp145
	jl	.L19	#,
.L18:
# problem27.c:47:         if (!in_has2) {
	cmpl	$0, -40(%rbp)	#, in_has2
	jne	.L20	#,
# problem27.c:48:             out[out_count++] = num;
	movl	-68(%rbp), %eax	# out_count, out_count.2_31
	leal	1(%rax), %edx	#, tmp146
	movl	%edx, -68(%rbp)	# tmp146, out_count
	cltq
# problem27.c:48:             out[out_count++] = num;
	leaq	0(,%rax,4), %rdx	#, _33
	movq	-24(%rbp), %rax	# out, tmp147
	addq	%rax, %rdx	# tmp147, _34
# problem27.c:48:             out[out_count++] = num;
	movl	-32(%rbp), %eax	# num, tmp148
	movl	%eax, (%rdx)	# tmp148, *_34
.L20:
# problem27.c:38:     for (int i = 0; i < size; i++) {
	addl	$1, -44(%rbp)	#, i
.L15:
# problem27.c:38:     for (int i = 0; i < size; i++) {
	movl	-44(%rbp), %eax	# i, tmp149
	cmpl	-92(%rbp), %eax	# size, tmp149
	jl	.L21	#,
# problem27.c:52:     *new_size = out_count;
	movq	-104(%rbp), %rax	# new_size, tmp150
	movl	-68(%rbp), %edx	# out_count, tmp151
	movl	%edx, (%rax)	# tmp151, *new_size_66(D)
# problem27.c:53:     free(has1);
	movq	-16(%rbp), %rax	# has1, tmp152
	movq	%rax, %rdi	# tmp152,
	call	free@PLT	#
# problem27.c:54:     free(has2);
	movq	-8(%rbp), %rax	# has2, tmp153
	movq	%rax, %rdi	# tmp153,
	call	free@PLT	#
# problem27.c:55:     return out;
	movq	-24(%rbp), %rax	# out, _70
# problem27.c:56: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# a_size, a_size
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_size, b_size
# problem27.c:65:     if (a_size != b_size) return 0;
	movl	-28(%rbp), %eax	# a_size, tmp92
	cmpl	-32(%rbp), %eax	# b_size, tmp92
	je	.L25	#,
# problem27.c:65:     if (a_size != b_size) return 0;
	movl	$0, %eax	#, _10
	jmp	.L26	#
.L25:
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	jmp	.L27	#
.L29:
# problem27.c:67:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem27.c:67:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem27.c:67:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L28	#,
# problem27.c:67:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L26	#
.L28:
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L27:
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# a_size, tmp97
	jl	.L29	#,
# problem27.c:69:     return 1;
	movl	$1, %eax	#, _10
.L26:
# problem27.c:70: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem27.c"
	.align 8
.LC1:
	.string	"issame(result, new_size, (int[]){}, 0)"
	.align 8
.LC2:
	.string	"issame(result, new_size, (int[]){1, 2, 3, 4}, 4)"
	.align 8
.LC3:
	.string	"issame(result, new_size, (int[]){1, 4, 5}, 3)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
# problem27.c:72: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	movq	%rax, -8(%rbp)	# tmp118, D.3172
	xorl	%eax, %eax	# tmp118
# problem27.c:76:     result = func0((int[]){}, 0, &new_size);
	leaq	-92(%rbp), %rdx	#, tmp90
	leaq	-80(%rbp), %rax	#, tmp91
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	movq	%rax, -88(%rbp)	# tmp92, result
# problem27.c:77:     assert(issame(result, new_size, (int[]){}, 0));
	movl	-92(%rbp), %esi	# new_size, new_size.3_1
	leaq	-48(%rbp), %rdx	#, tmp93
	movq	-88(%rbp), %rax	# result, tmp94
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp94,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L31	#,
# problem27.c:77:     assert(issame(result, new_size, (int[]){}, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$77, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L31:
# problem27.c:78:     free(result);
	movq	-88(%rbp), %rax	# result, tmp98
	movq	%rax, %rdi	# tmp98,
	call	free@PLT	#
# problem27.c:80:     result = func0((int[]){1, 2, 3, 4}, 4, &new_size);
	movl	$1, -64(%rbp)	#, D.3128[0]
	movl	$2, -60(%rbp)	#, D.3128[1]
	movl	$3, -56(%rbp)	#, D.3128[2]
	movl	$4, -52(%rbp)	#, D.3128[3]
# problem27.c:80:     result = func0((int[]){1, 2, 3, 4}, 4, &new_size);
	leaq	-92(%rbp), %rdx	#, tmp99
	leaq	-64(%rbp), %rax	#, tmp100
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
	movq	%rax, -88(%rbp)	# tmp101, result
# problem27.c:81:     assert(issame(result, new_size, (int[]){1, 2, 3, 4}, 4));
	movl	$1, -48(%rbp)	#, MEM[(int[4] *)_55][0]
	movl	$2, -44(%rbp)	#, MEM[(int[4] *)_55][1]
	movl	$3, -40(%rbp)	#, MEM[(int[4] *)_55][2]
	movl	$4, -36(%rbp)	#, MEM[(int[4] *)_55][3]
	movl	-92(%rbp), %esi	# new_size, new_size.4_3
	leaq	-48(%rbp), %rdx	#, tmp102
	movq	-88(%rbp), %rax	# result, tmp103
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp103,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L32	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$81, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L32:
# problem27.c:82:     free(result);
	movq	-88(%rbp), %rax	# result, tmp107
	movq	%rax, %rdi	# tmp107,
	call	free@PLT	#
# problem27.c:84:     result = func0((int[]){1, 2, 3, 2, 4, 3, 5}, 7, &new_size);
	movl	$1, -48(%rbp)	#, MEM[(int[7] *)_55][0]
	movl	$2, -44(%rbp)	#, MEM[(int[7] *)_55][1]
	movl	$3, -40(%rbp)	#, MEM[(int[7] *)_55][2]
	movl	$2, -36(%rbp)	#, MEM[(int[7] *)_55][3]
	movl	$4, -32(%rbp)	#, MEM[(int[7] *)_55][4]
	movl	$3, -28(%rbp)	#, MEM[(int[7] *)_55][5]
	movl	$5, -24(%rbp)	#, MEM[(int[7] *)_55][6]
# problem27.c:84:     result = func0((int[]){1, 2, 3, 2, 4, 3, 5}, 7, &new_size);
	leaq	-92(%rbp), %rdx	#, tmp108
	leaq	-48(%rbp), %rax	#, tmp109
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	func0	#
	movq	%rax, -88(%rbp)	# tmp110, result
# problem27.c:85:     assert(issame(result, new_size, (int[]){1, 4, 5}, 3));
	movl	$1, -76(%rbp)	#, D.3133[0]
	movl	$4, -72(%rbp)	#, D.3133[1]
	movl	$5, -68(%rbp)	#, D.3133[2]
	movl	-92(%rbp), %esi	# new_size, new_size.5_5
	leaq	-76(%rbp), %rdx	#, tmp111
	movq	-88(%rbp), %rax	# result, tmp112
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp112,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L33	#,
# problem27.c:85:     assert(issame(result, new_size, (int[]){1, 4, 5}, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$85, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC3(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L33:
# problem27.c:86:     free(result);
	movq	-88(%rbp), %rax	# result, tmp116
	movq	%rax, %rdi	# tmp116,
	call	free@PLT	#
# problem27.c:88:     return 0;
	movl	$0, %eax	#, _46
# problem27.c:89: }
	movq	-8(%rbp), %rdx	# D.3172, tmp119
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp119
	je	.L35	#,
# problem27.c:89: }
	call	__stack_chk_fail@PLT	#
.L35:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
