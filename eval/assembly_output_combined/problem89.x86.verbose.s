	.file	"problem89.c"
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
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# array, array
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out_array, out_array
	movq	%rcx, -64(%rbp)	# out_size, out_size
# problem89.c:5:     *out_size = size;
	movq	-64(%rbp), %rax	# out_size, tmp158
	movl	-44(%rbp), %edx	# size, tmp159
	movl	%edx, (%rax)	# tmp159, *out_size_86(D)
# problem89.c:6:     if (size == 0) {
	cmpl	$0, -44(%rbp)	#, size
	jne	.L2	#,
# problem89.c:7:         *out_array = NULL;
	movq	-56(%rbp), %rax	# out_array, tmp160
	movq	$0, (%rax)	#, *out_array_90(D)
# problem89.c:8:         return;
	jmp	.L1	#
.L2:
# problem89.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	movl	-44(%rbp), %eax	# size, tmp161
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp162, _3
# problem89.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	movq	-56(%rbp), %rax	# out_array, tmp163
	movq	%rdx, (%rax)	# _3, *out_array_90(D)
# problem89.c:12:     if (*out_array == NULL) {
	movq	-56(%rbp), %rax	# out_array, tmp164
	movq	(%rax), %rax	# *out_array_90(D), _4
# problem89.c:12:     if (*out_array == NULL) {
	testq	%rax, %rax	# _4
	jne	.L4	#,
# problem89.c:13:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L4:
# problem89.c:16:     for (int i = 0; i < size; i++) {
	movl	$0, -24(%rbp)	#, i
# problem89.c:16:     for (int i = 0; i < size; i++) {
	jmp	.L5	#
.L6:
# problem89.c:17:         (*out_array)[i] = array[i];
	movl	-24(%rbp), %eax	# i, tmp165
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-40(%rbp), %rax	# array, tmp166
	leaq	(%rdx,%rax), %rcx	#, _7
# problem89.c:17:         (*out_array)[i] = array[i];
	movq	-56(%rbp), %rax	# out_array, tmp167
	movq	(%rax), %rdx	# *out_array_90(D), _8
# problem89.c:17:         (*out_array)[i] = array[i];
	movl	-24(%rbp), %eax	# i, tmp168
	cltq
	salq	$2, %rax	#, _10
	addq	%rax, %rdx	# _10, _11
# problem89.c:17:         (*out_array)[i] = array[i];
	movl	(%rcx), %eax	# *_7, _12
# problem89.c:17:         (*out_array)[i] = array[i];
	movl	%eax, (%rdx)	# _12, *_11
# problem89.c:16:     for (int i = 0; i < size; i++) {
	addl	$1, -24(%rbp)	#, i
.L5:
# problem89.c:16:     for (int i = 0; i < size; i++) {
	movl	-24(%rbp), %eax	# i, tmp169
	cmpl	-44(%rbp), %eax	# size, tmp169
	jl	.L6	#,
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	movq	-40(%rbp), %rax	# array, tmp170
	movl	(%rax), %edx	# *array_93(D), _13
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	movl	-44(%rbp), %eax	# size, tmp171
	cltq
	salq	$2, %rax	#, _15
	leaq	-4(%rax), %rcx	#, _16
	movq	-40(%rbp), %rax	# array, tmp172
	addq	%rcx, %rax	# _16, _17
	movl	(%rax), %eax	# *_17, _18
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	addl	%edx, %eax	# _13, _19
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	cltd
	shrl	$31, %edx	#, tmp174
	addl	%edx, %eax	# tmp174, tmp175
	andl	$1, %eax	#, tmp176
	subl	%edx, %eax	# tmp174, tmp177
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	cmpl	$1, %eax	#, _20
	sete	%al	#, _21
# problem89.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	movzbl	%al, %eax	# _21, tmp178
	movl	%eax, -12(%rbp)	# tmp178, shouldSortAscending
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	movl	$0, -20(%rbp)	#, i
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	jmp	.L7	#
.L12:
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	movl	-20(%rbp), %eax	# i, tmp182
	addl	$1, %eax	#, tmp181
	movl	%eax, -16(%rbp)	# tmp181, j
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	jmp	.L8	#
.L11:
# problem89.c:24:             if (shouldSortAscending) {
	cmpl	$0, -12(%rbp)	#, shouldSortAscending
	je	.L9	#,
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movq	-56(%rbp), %rax	# out_array, tmp183
	movq	(%rax), %rdx	# *out_array_90(D), _22
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movl	-20(%rbp), %eax	# i, tmp184
	cltq
	salq	$2, %rax	#, _24
	addq	%rdx, %rax	# _22, _25
	movl	(%rax), %edx	# *_25, _26
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movq	-56(%rbp), %rax	# out_array, tmp185
	movq	(%rax), %rcx	# *out_array_90(D), _27
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movl	-16(%rbp), %eax	# j, tmp186
	cltq
	salq	$2, %rax	#, _29
	addq	%rcx, %rax	# _27, _30
	movl	(%rax), %eax	# *_30, _31
# problem89.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	cmpl	%eax, %edx	# _31, _26
	jle	.L10	#,
# problem89.c:26:                     int temp = (*out_array)[i];
	movq	-56(%rbp), %rax	# out_array, tmp187
	movq	(%rax), %rdx	# *out_array_90(D), _32
# problem89.c:26:                     int temp = (*out_array)[i];
	movl	-20(%rbp), %eax	# i, tmp188
	cltq
	salq	$2, %rax	#, _34
	addq	%rdx, %rax	# _32, _35
# problem89.c:26:                     int temp = (*out_array)[i];
	movl	(%rax), %eax	# *_35, tmp189
	movl	%eax, -4(%rbp)	# tmp189, temp
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	movq	-56(%rbp), %rax	# out_array, tmp190
	movq	(%rax), %rdx	# *out_array_90(D), _36
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	movl	-16(%rbp), %eax	# j, tmp191
	cltq
	salq	$2, %rax	#, _38
	leaq	(%rdx,%rax), %rcx	#, _39
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	movq	-56(%rbp), %rax	# out_array, tmp192
	movq	(%rax), %rdx	# *out_array_90(D), _40
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	movl	-20(%rbp), %eax	# i, tmp193
	cltq
	salq	$2, %rax	#, _42
	addq	%rax, %rdx	# _42, _43
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	movl	(%rcx), %eax	# *_39, _44
# problem89.c:27:                     (*out_array)[i] = (*out_array)[j];
	movl	%eax, (%rdx)	# _44, *_43
# problem89.c:28:                     (*out_array)[j] = temp;
	movq	-56(%rbp), %rax	# out_array, tmp194
	movq	(%rax), %rdx	# *out_array_90(D), _45
# problem89.c:28:                     (*out_array)[j] = temp;
	movl	-16(%rbp), %eax	# j, tmp195
	cltq
	salq	$2, %rax	#, _47
	addq	%rax, %rdx	# _47, _48
# problem89.c:28:                     (*out_array)[j] = temp;
	movl	-4(%rbp), %eax	# temp, tmp196
	movl	%eax, (%rdx)	# tmp196, *_48
	jmp	.L10	#
.L9:
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	movq	-56(%rbp), %rax	# out_array, tmp197
	movq	(%rax), %rdx	# *out_array_90(D), _49
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	movl	-20(%rbp), %eax	# i, tmp198
	cltq
	salq	$2, %rax	#, _51
	addq	%rdx, %rax	# _49, _52
	movl	(%rax), %edx	# *_52, _53
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	movq	-56(%rbp), %rax	# out_array, tmp199
	movq	(%rax), %rcx	# *out_array_90(D), _54
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	movl	-16(%rbp), %eax	# j, tmp200
	cltq
	salq	$2, %rax	#, _56
	addq	%rcx, %rax	# _54, _57
	movl	(%rax), %eax	# *_57, _58
# problem89.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	cmpl	%eax, %edx	# _58, _53
	jge	.L10	#,
# problem89.c:32:                     int temp = (*out_array)[i];
	movq	-56(%rbp), %rax	# out_array, tmp201
	movq	(%rax), %rdx	# *out_array_90(D), _59
# problem89.c:32:                     int temp = (*out_array)[i];
	movl	-20(%rbp), %eax	# i, tmp202
	cltq
	salq	$2, %rax	#, _61
	addq	%rdx, %rax	# _59, _62
# problem89.c:32:                     int temp = (*out_array)[i];
	movl	(%rax), %eax	# *_62, tmp203
	movl	%eax, -8(%rbp)	# tmp203, temp
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	movq	-56(%rbp), %rax	# out_array, tmp204
	movq	(%rax), %rdx	# *out_array_90(D), _63
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	movl	-16(%rbp), %eax	# j, tmp205
	cltq
	salq	$2, %rax	#, _65
	leaq	(%rdx,%rax), %rcx	#, _66
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	movq	-56(%rbp), %rax	# out_array, tmp206
	movq	(%rax), %rdx	# *out_array_90(D), _67
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	movl	-20(%rbp), %eax	# i, tmp207
	cltq
	salq	$2, %rax	#, _69
	addq	%rax, %rdx	# _69, _70
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	movl	(%rcx), %eax	# *_66, _71
# problem89.c:33:                     (*out_array)[i] = (*out_array)[j];
	movl	%eax, (%rdx)	# _71, *_70
# problem89.c:34:                     (*out_array)[j] = temp;
	movq	-56(%rbp), %rax	# out_array, tmp208
	movq	(%rax), %rdx	# *out_array_90(D), _72
# problem89.c:34:                     (*out_array)[j] = temp;
	movl	-16(%rbp), %eax	# j, tmp209
	cltq
	salq	$2, %rax	#, _74
	addq	%rax, %rdx	# _74, _75
# problem89.c:34:                     (*out_array)[j] = temp;
	movl	-8(%rbp), %eax	# temp, tmp210
	movl	%eax, (%rdx)	# tmp210, *_75
.L10:
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	addl	$1, -16(%rbp)	#, j
.L8:
# problem89.c:23:         for (int j = i + 1; j < size; j++) {
	movl	-16(%rbp), %eax	# j, tmp211
	cmpl	-44(%rbp), %eax	# size, tmp211
	jl	.L11	#,
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	addl	$1, -20(%rbp)	#, i
.L7:
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	movl	-44(%rbp), %eax	# size, tmp212
	subl	$1, %eax	#, _76
# problem89.c:22:     for (int i = 0; i < size - 1; i++) {
	cmpl	%eax, -20(%rbp)	# _76, i
	jl	.L12	#,
.L1:
# problem89.c:39: }
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
	movl	%esi, -28(%rbp)	# aSize, aSize
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# bSize, bSize
# problem89.c:48:     if (aSize != bSize) return 0;
	movl	-28(%rbp), %eax	# aSize, tmp92
	cmpl	-32(%rbp), %eax	# bSize, tmp92
	je	.L14	#,
# problem89.c:48:     if (aSize != bSize) return 0;
	movl	$0, %eax	#, _10
	jmp	.L15	#
.L14:
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	movl	$0, -4(%rbp)	#, i
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	jmp	.L16	#
.L18:
# problem89.c:50:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem89.c:50:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem89.c:50:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L17	#,
# problem89.c:50:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L15	#
.L17:
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	addl	$1, -4(%rbp)	#, i
.L16:
# problem89.c:49:     for (int i = 0; i < aSize; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# aSize, tmp97
	jl	.L18	#,
# problem89.c:52:     return 1;
	movl	$1, %eax	#, _10
.L15:
# problem89.c:53: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem89.c"
	.align 8
.LC1:
	.string	"issame(result, result_size, (int[]){}, 0)"
	.align 8
.LC2:
	.string	"issame(result, result_size, (int[]){5}, 1)"
	.align 8
.LC3:
	.string	"issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6)"
	.align 8
.LC4:
	.string	"issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7)"
	.align 8
.LC5:
	.string	"issame(result, result_size, (int[]){1, 2}, 2)"
	.align 8
.LC6:
	.string	"issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6)"
	.align 8
.LC7:
	.string	"issame(result, result_size, (int[]){23, 21, 14, 11}, 4)"
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
	subq	$192, %rsp	#,
# problem89.c:55: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp162
	movq	%rax, -8(%rbp)	# tmp162, D.2994
	xorl	%eax, %eax	# tmp162
# problem89.c:58:     func0((int[]){}, 0, &result, &result_size);
	leaq	-188(%rbp), %rcx	#, tmp112
	leaq	-184(%rbp), %rdx	#, tmp113
	leaq	-176(%rbp), %rax	#, tmp114
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	func0	#
# problem89.c:59:     assert(issame(result, result_size, (int[]){}, 0));
	movl	-188(%rbp), %esi	# result_size, result_size.0_1
	movq	-184(%rbp), %rax	# result, result.1_2
	leaq	-48(%rbp), %rdx	#, tmp115
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# result.1_2,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L20	#,
# problem89.c:59:     assert(issame(result, result_size, (int[]){}, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$59, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC1(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L20:
# problem89.c:60:     free(result);
	movq	-184(%rbp), %rax	# result, result.2_4
	movq	%rax, %rdi	# result.2_4,
	call	free@PLT	#
# problem89.c:62:     func0((int[]){5}, 1, &result, &result_size);
	movl	$5, -172(%rbp)	#, D.2929[0]
# problem89.c:62:     func0((int[]){5}, 1, &result, &result_size);
	leaq	-188(%rbp), %rcx	#, tmp119
	leaq	-184(%rbp), %rdx	#, tmp120
	leaq	-172(%rbp), %rax	#, tmp121
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	func0	#
# problem89.c:63:     assert(issame(result, result_size, (int[]){5}, 1));
	movl	$5, -48(%rbp)	#, MEM[(int[1] *)_137][0]
	movl	-188(%rbp), %esi	# result_size, result_size.3_5
	movq	-184(%rbp), %rax	# result, result.4_6
	leaq	-48(%rbp), %rdx	#, tmp122
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# result.4_6,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L21	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$63, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC2(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L21:
# problem89.c:64:     free(result);
	movq	-184(%rbp), %rax	# result, result.5_8
	movq	%rax, %rdi	# result.5_8,
	call	free@PLT	#
# problem89.c:66:     func0((int[]){2, 4, 3, 0, 1, 5}, 6, &result, &result_size);
	movl	$2, -144(%rbp)	#, D.2932[0]
	movl	$4, -140(%rbp)	#, D.2932[1]
	movl	$3, -136(%rbp)	#, D.2932[2]
	movl	$0, -132(%rbp)	#, D.2932[3]
	movl	$1, -128(%rbp)	#, D.2932[4]
	movl	$5, -124(%rbp)	#, D.2932[5]
# problem89.c:66:     func0((int[]){2, 4, 3, 0, 1, 5}, 6, &result, &result_size);
	leaq	-188(%rbp), %rcx	#, tmp126
	leaq	-184(%rbp), %rdx	#, tmp127
	leaq	-144(%rbp), %rax	#, tmp128
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	func0	#
# problem89.c:67:     assert(issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6));
	movl	$0, -48(%rbp)	#, MEM[(int[6] *)_137][0]
	movl	$1, -44(%rbp)	#, MEM[(int[6] *)_137][1]
	movl	$2, -40(%rbp)	#, MEM[(int[6] *)_137][2]
	movl	$3, -36(%rbp)	#, MEM[(int[6] *)_137][3]
	movl	$4, -32(%rbp)	#, MEM[(int[6] *)_137][4]
	movl	$5, -28(%rbp)	#, MEM[(int[6] *)_137][5]
	movl	-188(%rbp), %esi	# result_size, result_size.6_9
	movq	-184(%rbp), %rax	# result, result.7_10
	leaq	-48(%rbp), %rdx	#, tmp129
	movl	$6, %ecx	#,
	movq	%rax, %rdi	# result.7_10,
	call	issame	#
	testl	%eax, %eax	# _11
	jne	.L22	#,
# problem89.c:67:     assert(issame(result, result_size, (int[]){0, 1, 2, 3, 4, 5}, 6));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$67, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC3(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L22:
# problem89.c:68:     free(result);
	movq	-184(%rbp), %rax	# result, result.8_12
	movq	%rax, %rdi	# result.8_12,
	call	free@PLT	#
# problem89.c:70:     func0((int[]){2, 4, 3, 0, 1, 5, 6}, 7, &result, &result_size);
	movl	$2, -80(%rbp)	#, D.2935[0]
	movl	$4, -76(%rbp)	#, D.2935[1]
	movl	$3, -72(%rbp)	#, D.2935[2]
	movl	$0, -68(%rbp)	#, D.2935[3]
	movl	$1, -64(%rbp)	#, D.2935[4]
	movl	$5, -60(%rbp)	#, D.2935[5]
	movl	$6, -56(%rbp)	#, D.2935[6]
# problem89.c:70:     func0((int[]){2, 4, 3, 0, 1, 5, 6}, 7, &result, &result_size);
	leaq	-188(%rbp), %rcx	#, tmp133
	leaq	-184(%rbp), %rdx	#, tmp134
	leaq	-80(%rbp), %rax	#, tmp135
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	func0	#
# problem89.c:71:     assert(issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7));
	movl	$6, -48(%rbp)	#, MEM[(int[7] *)_137][0]
	movl	$5, -44(%rbp)	#, MEM[(int[7] *)_137][1]
	movl	$4, -40(%rbp)	#, MEM[(int[7] *)_137][2]
	movl	$3, -36(%rbp)	#, MEM[(int[7] *)_137][3]
	movl	$2, -32(%rbp)	#, MEM[(int[7] *)_137][4]
	movl	$1, -28(%rbp)	#, MEM[(int[7] *)_137][5]
	movl	$0, -24(%rbp)	#, MEM[(int[7] *)_137][6]
	movl	-188(%rbp), %esi	# result_size, result_size.9_13
	movq	-184(%rbp), %rax	# result, result.10_14
	leaq	-48(%rbp), %rdx	#, tmp136
	movl	$7, %ecx	#,
	movq	%rax, %rdi	# result.10_14,
	call	issame	#
	testl	%eax, %eax	# _15
	jne	.L23	#,
# problem89.c:71:     assert(issame(result, result_size, (int[]){6, 5, 4, 3, 2, 1, 0}, 7));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$71, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC4(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L23:
# problem89.c:72:     free(result);
	movq	-184(%rbp), %rax	# result, result.11_16
	movq	%rax, %rdi	# result.11_16,
	call	free@PLT	#
# problem89.c:74:     func0((int[]){2, 1}, 2, &result, &result_size);
	movl	$2, -168(%rbp)	#, D.2938[0]
	movl	$1, -164(%rbp)	#, D.2938[1]
# problem89.c:74:     func0((int[]){2, 1}, 2, &result, &result_size);
	leaq	-188(%rbp), %rcx	#, tmp140
	leaq	-184(%rbp), %rdx	#, tmp141
	leaq	-168(%rbp), %rax	#, tmp142
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	func0	#
# problem89.c:75:     assert(issame(result, result_size, (int[]){1, 2}, 2));
	movl	$1, -48(%rbp)	#, MEM[(int[2] *)_137][0]
	movl	$2, -44(%rbp)	#, MEM[(int[2] *)_137][1]
	movl	-188(%rbp), %esi	# result_size, result_size.12_17
	movq	-184(%rbp), %rax	# result, result.13_18
	leaq	-48(%rbp), %rdx	#, tmp143
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# result.13_18,
	call	issame	#
	testl	%eax, %eax	# _19
	jne	.L24	#,
# problem89.c:75:     assert(issame(result, result_size, (int[]){1, 2}, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp144
	movq	%rax, %rcx	# tmp144,
	movl	$75, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp145
	movq	%rax, %rsi	# tmp145,
	leaq	.LC5(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	__assert_fail@PLT	#
.L24:
# problem89.c:76:     free(result);
	movq	-184(%rbp), %rax	# result, result.14_20
	movq	%rax, %rdi	# result.14_20,
	call	free@PLT	#
# problem89.c:78:     func0((int[]){15, 42, 87, 32, 11, 0}, 6, &result, &result_size);
	movl	$15, -112(%rbp)	#, D.2941[0]
	movl	$42, -108(%rbp)	#, D.2941[1]
	movl	$87, -104(%rbp)	#, D.2941[2]
	movl	$32, -100(%rbp)	#, D.2941[3]
	movl	$11, -96(%rbp)	#, D.2941[4]
	movl	$0, -92(%rbp)	#, D.2941[5]
# problem89.c:78:     func0((int[]){15, 42, 87, 32, 11, 0}, 6, &result, &result_size);
	leaq	-188(%rbp), %rcx	#, tmp147
	leaq	-184(%rbp), %rdx	#, tmp148
	leaq	-112(%rbp), %rax	#, tmp149
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp149,
	call	func0	#
# problem89.c:79:     assert(issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6));
	movl	$0, -48(%rbp)	#, MEM[(int[6] *)_137][0]
	movl	$11, -44(%rbp)	#, MEM[(int[6] *)_137][1]
	movl	$15, -40(%rbp)	#, MEM[(int[6] *)_137][2]
	movl	$32, -36(%rbp)	#, MEM[(int[6] *)_137][3]
	movl	$42, -32(%rbp)	#, MEM[(int[6] *)_137][4]
	movl	$87, -28(%rbp)	#, MEM[(int[6] *)_137][5]
	movl	-188(%rbp), %esi	# result_size, result_size.15_21
	movq	-184(%rbp), %rax	# result, result.16_22
	leaq	-48(%rbp), %rdx	#, tmp150
	movl	$6, %ecx	#,
	movq	%rax, %rdi	# result.16_22,
	call	issame	#
	testl	%eax, %eax	# _23
	jne	.L25	#,
# problem89.c:79:     assert(issame(result, result_size, (int[]){0, 11, 15, 32, 42, 87}, 6));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp151
	movq	%rax, %rcx	# tmp151,
	movl	$79, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	leaq	.LC6(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	__assert_fail@PLT	#
.L25:
# problem89.c:80:     free(result);
	movq	-184(%rbp), %rax	# result, result.17_24
	movq	%rax, %rdi	# result.17_24,
	call	free@PLT	#
# problem89.c:82:     func0((int[]){21, 14, 23, 11}, 4, &result, &result_size);
	movl	$21, -160(%rbp)	#, D.2944[0]
	movl	$14, -156(%rbp)	#, D.2944[1]
	movl	$23, -152(%rbp)	#, D.2944[2]
	movl	$11, -148(%rbp)	#, D.2944[3]
# problem89.c:82:     func0((int[]){21, 14, 23, 11}, 4, &result, &result_size);
	leaq	-188(%rbp), %rcx	#, tmp154
	leaq	-184(%rbp), %rdx	#, tmp155
	leaq	-160(%rbp), %rax	#, tmp156
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	func0	#
# problem89.c:83:     assert(issame(result, result_size, (int[]){23, 21, 14, 11}, 4));
	movl	$23, -48(%rbp)	#, MEM[(int[4] *)_137][0]
	movl	$21, -44(%rbp)	#, MEM[(int[4] *)_137][1]
	movl	$14, -40(%rbp)	#, MEM[(int[4] *)_137][2]
	movl	$11, -36(%rbp)	#, MEM[(int[4] *)_137][3]
	movl	-188(%rbp), %esi	# result_size, result_size.18_25
	movq	-184(%rbp), %rax	# result, result.19_26
	leaq	-48(%rbp), %rdx	#, tmp157
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# result.19_26,
	call	issame	#
	testl	%eax, %eax	# _27
	jne	.L26	#,
# problem89.c:83:     assert(issame(result, result_size, (int[]){23, 21, 14, 11}, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp158
	movq	%rax, %rcx	# tmp158,
	movl	$83, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp159
	movq	%rax, %rsi	# tmp159,
	leaq	.LC7(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	__assert_fail@PLT	#
.L26:
# problem89.c:84:     free(result);
	movq	-184(%rbp), %rax	# result, result.20_28
	movq	%rax, %rdi	# result.20_28,
	call	free@PLT	#
# problem89.c:86:     return 0;
	movl	$0, %eax	#, _119
# problem89.c:87: }
	movq	-8(%rbp), %rdx	# D.2994, tmp163
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp163
	je	.L28	#,
# problem89.c:87: }
	call	__stack_chk_fail@PLT	#
.L28:
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
