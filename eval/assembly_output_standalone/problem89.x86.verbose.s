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
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# array, array
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out_array, out_array
	movq	%rcx, -64(%rbp)	# out_size, out_size
# eval/problem89//code.c:5:     *out_size = size;
	movq	-64(%rbp), %rax	# out_size, tmp158
	movl	-44(%rbp), %edx	# size, tmp159
	movl	%edx, (%rax)	# tmp159, *out_size_86(D)
# eval/problem89//code.c:6:     if (size == 0) {
	cmpl	$0, -44(%rbp)	#, size
	jne	.L2	#,
# eval/problem89//code.c:7:         *out_array = NULL;
	movq	-56(%rbp), %rax	# out_array, tmp160
	movq	$0, (%rax)	#, *out_array_90(D)
# eval/problem89//code.c:8:         return;
	jmp	.L1	#
.L2:
# eval/problem89//code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	movl	-44(%rbp), %eax	# size, tmp161
	cltq
	salq	$2, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, %rdx	# tmp162, _3
# eval/problem89//code.c:11:     *out_array = (int *)malloc(sizeof(int) * size);
	movq	-56(%rbp), %rax	# out_array, tmp163
	movq	%rdx, (%rax)	# _3, *out_array_90(D)
# eval/problem89//code.c:12:     if (*out_array == NULL) {
	movq	-56(%rbp), %rax	# out_array, tmp164
	movq	(%rax), %rax	# *out_array_90(D), _4
# eval/problem89//code.c:12:     if (*out_array == NULL) {
	testq	%rax, %rax	# _4
	jne	.L4	#,
# eval/problem89//code.c:13:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L4:
# eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	movl	$0, -24(%rbp)	#, i
# eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	jmp	.L5	#
.L6:
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	movl	-24(%rbp), %eax	# i, tmp165
	cltq
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-40(%rbp), %rax	# array, tmp166
	leaq	(%rdx,%rax), %rcx	#, _7
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	movq	-56(%rbp), %rax	# out_array, tmp167
	movq	(%rax), %rdx	# *out_array_90(D), _8
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	movl	-24(%rbp), %eax	# i, tmp168
	cltq
	salq	$2, %rax	#, _10
	addq	%rax, %rdx	# _10, _11
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	movl	(%rcx), %eax	# *_7, _12
# eval/problem89//code.c:17:         (*out_array)[i] = array[i];
	movl	%eax, (%rdx)	# _12, *_11
# eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	addl	$1, -24(%rbp)	#, i
.L5:
# eval/problem89//code.c:16:     for (int i = 0; i < size; i++) {
	movl	-24(%rbp), %eax	# i, tmp169
	cmpl	-44(%rbp), %eax	# size, tmp169
	jl	.L6	#,
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	movq	-40(%rbp), %rax	# array, tmp170
	movl	(%rax), %edx	# *array_93(D), _13
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	movl	-44(%rbp), %eax	# size, tmp171
	cltq
	salq	$2, %rax	#, _15
	leaq	-4(%rax), %rcx	#, _16
	movq	-40(%rbp), %rax	# array, tmp172
	addq	%rcx, %rax	# _16, _17
	movl	(%rax), %eax	# *_17, _18
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	addl	%edx, %eax	# _13, _19
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	cltd
	shrl	$31, %edx	#, tmp174
	addl	%edx, %eax	# tmp174, tmp175
	andl	$1, %eax	#, tmp176
	subl	%edx, %eax	# tmp174, tmp177
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	cmpl	$1, %eax	#, _20
	sete	%al	#, _21
# eval/problem89//code.c:20:     int shouldSortAscending = (array[0] + array[size - 1]) % 2 == 1;
	movzbl	%al, %eax	# _21, tmp178
	movl	%eax, -12(%rbp)	# tmp178, shouldSortAscending
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	movl	$0, -20(%rbp)	#, i
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	jmp	.L7	#
.L12:
# eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	movl	-20(%rbp), %eax	# i, tmp182
	addl	$1, %eax	#, tmp181
	movl	%eax, -16(%rbp)	# tmp181, j
# eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	jmp	.L8	#
.L11:
# eval/problem89//code.c:24:             if (shouldSortAscending) {
	cmpl	$0, -12(%rbp)	#, shouldSortAscending
	je	.L9	#,
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movq	-56(%rbp), %rax	# out_array, tmp183
	movq	(%rax), %rdx	# *out_array_90(D), _22
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movl	-20(%rbp), %eax	# i, tmp184
	cltq
	salq	$2, %rax	#, _24
	addq	%rdx, %rax	# _22, _25
	movl	(%rax), %edx	# *_25, _26
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movq	-56(%rbp), %rax	# out_array, tmp185
	movq	(%rax), %rcx	# *out_array_90(D), _27
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	movl	-16(%rbp), %eax	# j, tmp186
	cltq
	salq	$2, %rax	#, _29
	addq	%rcx, %rax	# _27, _30
	movl	(%rax), %eax	# *_30, _31
# eval/problem89//code.c:25:                 if ((*out_array)[i] > (*out_array)[j]) {
	cmpl	%eax, %edx	# _31, _26
	jle	.L10	#,
# eval/problem89//code.c:26:                     int temp = (*out_array)[i];
	movq	-56(%rbp), %rax	# out_array, tmp187
	movq	(%rax), %rdx	# *out_array_90(D), _32
# eval/problem89//code.c:26:                     int temp = (*out_array)[i];
	movl	-20(%rbp), %eax	# i, tmp188
	cltq
	salq	$2, %rax	#, _34
	addq	%rdx, %rax	# _32, _35
# eval/problem89//code.c:26:                     int temp = (*out_array)[i];
	movl	(%rax), %eax	# *_35, tmp189
	movl	%eax, -4(%rbp)	# tmp189, temp
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	movq	-56(%rbp), %rax	# out_array, tmp190
	movq	(%rax), %rdx	# *out_array_90(D), _36
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	movl	-16(%rbp), %eax	# j, tmp191
	cltq
	salq	$2, %rax	#, _38
	leaq	(%rdx,%rax), %rcx	#, _39
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	movq	-56(%rbp), %rax	# out_array, tmp192
	movq	(%rax), %rdx	# *out_array_90(D), _40
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	movl	-20(%rbp), %eax	# i, tmp193
	cltq
	salq	$2, %rax	#, _42
	addq	%rax, %rdx	# _42, _43
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	movl	(%rcx), %eax	# *_39, _44
# eval/problem89//code.c:27:                     (*out_array)[i] = (*out_array)[j];
	movl	%eax, (%rdx)	# _44, *_43
# eval/problem89//code.c:28:                     (*out_array)[j] = temp;
	movq	-56(%rbp), %rax	# out_array, tmp194
	movq	(%rax), %rdx	# *out_array_90(D), _45
# eval/problem89//code.c:28:                     (*out_array)[j] = temp;
	movl	-16(%rbp), %eax	# j, tmp195
	cltq
	salq	$2, %rax	#, _47
	addq	%rax, %rdx	# _47, _48
# eval/problem89//code.c:28:                     (*out_array)[j] = temp;
	movl	-4(%rbp), %eax	# temp, tmp196
	movl	%eax, (%rdx)	# tmp196, *_48
	jmp	.L10	#
.L9:
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	movq	-56(%rbp), %rax	# out_array, tmp197
	movq	(%rax), %rdx	# *out_array_90(D), _49
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	movl	-20(%rbp), %eax	# i, tmp198
	cltq
	salq	$2, %rax	#, _51
	addq	%rdx, %rax	# _49, _52
	movl	(%rax), %edx	# *_52, _53
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	movq	-56(%rbp), %rax	# out_array, tmp199
	movq	(%rax), %rcx	# *out_array_90(D), _54
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	movl	-16(%rbp), %eax	# j, tmp200
	cltq
	salq	$2, %rax	#, _56
	addq	%rcx, %rax	# _54, _57
	movl	(%rax), %eax	# *_57, _58
# eval/problem89//code.c:31:                 if ((*out_array)[i] < (*out_array)[j]) {
	cmpl	%eax, %edx	# _58, _53
	jge	.L10	#,
# eval/problem89//code.c:32:                     int temp = (*out_array)[i];
	movq	-56(%rbp), %rax	# out_array, tmp201
	movq	(%rax), %rdx	# *out_array_90(D), _59
# eval/problem89//code.c:32:                     int temp = (*out_array)[i];
	movl	-20(%rbp), %eax	# i, tmp202
	cltq
	salq	$2, %rax	#, _61
	addq	%rdx, %rax	# _59, _62
# eval/problem89//code.c:32:                     int temp = (*out_array)[i];
	movl	(%rax), %eax	# *_62, tmp203
	movl	%eax, -8(%rbp)	# tmp203, temp
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	movq	-56(%rbp), %rax	# out_array, tmp204
	movq	(%rax), %rdx	# *out_array_90(D), _63
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	movl	-16(%rbp), %eax	# j, tmp205
	cltq
	salq	$2, %rax	#, _65
	leaq	(%rdx,%rax), %rcx	#, _66
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	movq	-56(%rbp), %rax	# out_array, tmp206
	movq	(%rax), %rdx	# *out_array_90(D), _67
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	movl	-20(%rbp), %eax	# i, tmp207
	cltq
	salq	$2, %rax	#, _69
	addq	%rax, %rdx	# _69, _70
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	movl	(%rcx), %eax	# *_66, _71
# eval/problem89//code.c:33:                     (*out_array)[i] = (*out_array)[j];
	movl	%eax, (%rdx)	# _71, *_70
# eval/problem89//code.c:34:                     (*out_array)[j] = temp;
	movq	-56(%rbp), %rax	# out_array, tmp208
	movq	(%rax), %rdx	# *out_array_90(D), _72
# eval/problem89//code.c:34:                     (*out_array)[j] = temp;
	movl	-16(%rbp), %eax	# j, tmp209
	cltq
	salq	$2, %rax	#, _74
	addq	%rax, %rdx	# _74, _75
# eval/problem89//code.c:34:                     (*out_array)[j] = temp;
	movl	-8(%rbp), %eax	# temp, tmp210
	movl	%eax, (%rdx)	# tmp210, *_75
.L10:
# eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	addl	$1, -16(%rbp)	#, j
.L8:
# eval/problem89//code.c:23:         for (int j = i + 1; j < size; j++) {
	movl	-16(%rbp), %eax	# j, tmp211
	cmpl	-44(%rbp), %eax	# size, tmp211
	jl	.L11	#,
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	addl	$1, -20(%rbp)	#, i
.L7:
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	movl	-44(%rbp), %eax	# size, tmp212
	subl	$1, %eax	#, _76
# eval/problem89//code.c:22:     for (int i = 0; i < size - 1; i++) {
	cmpl	%eax, -20(%rbp)	# _76, i
	jl	.L12	#,
.L1:
# eval/problem89//code.c:39: }
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
