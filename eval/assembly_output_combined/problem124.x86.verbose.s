	.file	"problem124.c"
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
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
	movq	%rsi, -32(%rbp)	# out, out
	movq	%rdx, -40(%rbp)	# size, size
# problem124.c:5:     int capacity = 10;
	movl	$10, -16(%rbp)	#, capacity
# problem124.c:6:     *size = 1;
	movq	-40(%rbp), %rax	# size, tmp112
	movl	$1, (%rax)	#, *size_45(D)
# problem124.c:7:     out[0] = 1;
	movq	-32(%rbp), %rax	# out, tmp113
	movl	$1, (%rax)	#, *out_47(D)
# problem124.c:9:     while (n != 1) {
	jmp	.L2	#
.L5:
# problem124.c:10:         if (n % 2 == 1) {
	movl	-20(%rbp), %eax	# n, tmp114
	cltd
	shrl	$31, %edx	#, tmp116
	addl	%edx, %eax	# tmp116, tmp117
	andl	$1, %eax	#, tmp118
	subl	%edx, %eax	# tmp116, tmp119
# problem124.c:10:         if (n % 2 == 1) {
	cmpl	$1, %eax	#, _1
	jne	.L3	#,
# problem124.c:11:             if (*size >= capacity) {
	movq	-40(%rbp), %rax	# size, tmp120
	movl	(%rax), %eax	# *size_45(D), _2
# problem124.c:11:             if (*size >= capacity) {
	cmpl	%eax, -16(%rbp)	# _2, capacity
	jg	.L4	#,
# problem124.c:12:                 capacity *= 2;
	sall	-16(%rbp)	# capacity
# problem124.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	movl	-16(%rbp), %eax	# capacity, tmp121
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-32(%rbp), %rax	# out, tmp122
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# tmp122,
	call	realloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp123, out
.L4:
# problem124.c:15:             out[(*size)++] = n;
	movq	-40(%rbp), %rax	# size, tmp124
	movl	(%rax), %eax	# *size_45(D), _5
# problem124.c:15:             out[(*size)++] = n;
	leal	1(%rax), %ecx	#, _7
	movq	-40(%rbp), %rdx	# size, tmp125
	movl	%ecx, (%rdx)	# _7, *size_45(D)
	cltq
# problem124.c:15:             out[(*size)++] = n;
	leaq	0(,%rax,4), %rdx	#, _9
	movq	-32(%rbp), %rax	# out, tmp126
	addq	%rax, %rdx	# tmp126, _10
# problem124.c:15:             out[(*size)++] = n;
	movl	-20(%rbp), %eax	# n, tmp127
	movl	%eax, (%rdx)	# tmp127, *_10
# problem124.c:16:             n = n * 3 + 1;
	movl	-20(%rbp), %edx	# n, tmp128
	movl	%edx, %eax	# tmp128, tmp129
	addl	%eax, %eax	# tmp129
	addl	%edx, %eax	# tmp128, _11
# problem124.c:16:             n = n * 3 + 1;
	addl	$1, %eax	#, tmp130
	movl	%eax, -20(%rbp)	# tmp130, n
	jmp	.L2	#
.L3:
# problem124.c:18:             n = n / 2;
	movl	-20(%rbp), %eax	# n, tmp132
	movl	%eax, %edx	# tmp132, tmp133
	shrl	$31, %edx	#, tmp133
	addl	%edx, %eax	# tmp133, tmp134
	sarl	%eax	# tmp135
	movl	%eax, -20(%rbp)	# tmp135, n
.L2:
# problem124.c:9:     while (n != 1) {
	cmpl	$1, -20(%rbp)	#, n
	jne	.L5	#,
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	movl	$1, -12(%rbp)	#, i
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	jmp	.L6	#
.L10:
# problem124.c:23:         int key = out[i];
	movl	-12(%rbp), %eax	# i, tmp136
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-32(%rbp), %rax	# out, tmp137
	addq	%rdx, %rax	# _13, _14
# problem124.c:23:         int key = out[i];
	movl	(%rax), %eax	# *_14, tmp138
	movl	%eax, -4(%rbp)	# tmp138, key
# problem124.c:24:         int j = i - 1;
	movl	-12(%rbp), %eax	# i, tmp142
	subl	$1, %eax	#, tmp141
	movl	%eax, -8(%rbp)	# tmp141, j
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	jmp	.L7	#
.L9:
# problem124.c:27:             out[j + 1] = out[j];
	movl	-8(%rbp), %eax	# j, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, _16
	movq	-32(%rbp), %rax	# out, tmp144
	addq	%rdx, %rax	# _16, _17
# problem124.c:27:             out[j + 1] = out[j];
	movl	-8(%rbp), %edx	# j, tmp145
	movslq	%edx, %rdx	# tmp145, _18
	addq	$1, %rdx	#, _19
	leaq	0(,%rdx,4), %rcx	#, _20
	movq	-32(%rbp), %rdx	# out, tmp146
	addq	%rcx, %rdx	# _20, _21
# problem124.c:27:             out[j + 1] = out[j];
	movl	(%rax), %eax	# *_17, _22
# problem124.c:27:             out[j + 1] = out[j];
	movl	%eax, (%rdx)	# _22, *_21
# problem124.c:28:             j = j - 1;
	subl	$1, -8(%rbp)	#, j
.L7:
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	cmpl	$0, -8(%rbp)	#, j
	js	.L8	#,
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	movl	-8(%rbp), %eax	# j, tmp147
	cltq
	leaq	0(,%rax,4), %rdx	#, _24
	movq	-32(%rbp), %rax	# out, tmp148
	addq	%rdx, %rax	# _24, _25
	movl	(%rax), %eax	# *_25, _26
# problem124.c:26:         while (j >= 0 && out[j] > key) {
	cmpl	%eax, -4(%rbp)	# _26, key
	jl	.L9	#,
.L8:
# problem124.c:30:         out[j + 1] = key;
	movl	-8(%rbp), %eax	# j, tmp149
	cltq
	addq	$1, %rax	#, _28
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-32(%rbp), %rax	# out, tmp150
	addq	%rax, %rdx	# tmp150, _30
# problem124.c:30:         out[j + 1] = key;
	movl	-4(%rbp), %eax	# key, tmp151
	movl	%eax, (%rdx)	# tmp151, *_30
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	addl	$1, -12(%rbp)	#, i
.L6:
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	movq	-40(%rbp), %rax	# size, tmp152
	movl	(%rax), %eax	# *size_45(D), _31
# problem124.c:22:     for (int i = 1; i < *size; i++) {
	cmpl	%eax, -12(%rbp)	# _31, i
	jl	.L10	#,
# problem124.c:32: }
	nop	
	nop	
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
	movl	%esi, -28(%rbp)	# size_a, size_a
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# size_b, size_b
# problem124.c:40:     if (size_a != size_b) return 0;
	movl	-28(%rbp), %eax	# size_a, tmp92
	cmpl	-32(%rbp), %eax	# size_b, tmp92
	je	.L12	#,
# problem124.c:40:     if (size_a != size_b) return 0;
	movl	$0, %eax	#, _10
	jmp	.L13	#
.L12:
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	movl	$0, -4(%rbp)	#, i
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	jmp	.L14	#
.L16:
# problem124.c:42:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem124.c:42:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem124.c:42:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L15	#,
# problem124.c:42:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L13	#
.L15:
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	addl	$1, -4(%rbp)	#, i
.L14:
# problem124.c:41:     for (int i = 0; i < size_a; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# size_a, tmp97
	jl	.L16	#,
# problem124.c:44:     return 1;
	movl	$1, %eax	#, _10
.L13:
# problem124.c:45: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem124.c"
	.align 8
.LC1:
	.string	"issame(result, size, expected1, 6)"
	.align 8
.LC2:
	.string	"issame(result, size, expected2, 2)"
	.align 8
.LC3:
	.string	"issame(result, size, expected3, 3)"
	.align 8
.LC4:
	.string	"issame(result, size, expected4, 1)"
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
	subq	$80, %rsp	#,
# problem124.c:47: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp129
	movq	%rax, -8(%rbp)	# tmp129, D.2954
	xorl	%eax, %eax	# tmp129
# problem124.c:52:     int expected1[] = {1, 5, 7, 11, 13, 17};
	movl	$1, -32(%rbp)	#, expected1[0]
	movl	$5, -28(%rbp)	#, expected1[1]
	movl	$7, -24(%rbp)	#, expected1[2]
	movl	$11, -20(%rbp)	#, expected1[3]
	movl	$13, -16(%rbp)	#, expected1[4]
	movl	$17, -12(%rbp)	#, expected1[5]
# problem124.c:53:     result = (int*)malloc(100 * sizeof(int));
	movl	$400, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -64(%rbp)	# tmp92, result
# problem124.c:54:     func0(14, result, &size);
	leaq	-68(%rbp), %rdx	#, tmp93
	movq	-64(%rbp), %rax	# result, tmp94
	movq	%rax, %rsi	# tmp94,
	movl	$14, %edi	#,
	call	func0	#
# problem124.c:55:     assert(issame(result, size, expected1, 6));
	movl	-68(%rbp), %esi	# size, size.0_1
	leaq	-32(%rbp), %rdx	#, tmp95
	movq	-64(%rbp), %rax	# result, tmp96
	movl	$6, %ecx	#,
	movq	%rax, %rdi	# tmp96,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L18	#,
# problem124.c:55:     assert(issame(result, size, expected1, 6));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$55, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC1(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L18:
# problem124.c:56:     free(result);
	movq	-64(%rbp), %rax	# result, tmp100
	movq	%rax, %rdi	# tmp100,
	call	free@PLT	#
# problem124.c:59:     int expected2[] = {1, 5};
	movl	$1, -52(%rbp)	#, expected2[0]
	movl	$5, -48(%rbp)	#, expected2[1]
# problem124.c:60:     result = (int*)malloc(100 * sizeof(int));
	movl	$400, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -64(%rbp)	# tmp101, result
# problem124.c:61:     func0(5, result, &size);
	leaq	-68(%rbp), %rdx	#, tmp102
	movq	-64(%rbp), %rax	# result, tmp103
	movq	%rax, %rsi	# tmp103,
	movl	$5, %edi	#,
	call	func0	#
# problem124.c:62:     assert(issame(result, size, expected2, 2));
	movl	-68(%rbp), %esi	# size, size.1_3
	leaq	-52(%rbp), %rdx	#, tmp104
	movq	-64(%rbp), %rax	# result, tmp105
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp105,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L19	#,
# problem124.c:62:     assert(issame(result, size, expected2, 2));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$62, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC2(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L19:
# problem124.c:63:     free(result);
	movq	-64(%rbp), %rax	# result, tmp109
	movq	%rax, %rdi	# tmp109,
	call	free@PLT	#
# problem124.c:66:     int expected3[] = {1, 3, 5};
	movl	$1, -44(%rbp)	#, expected3[0]
	movl	$3, -40(%rbp)	#, expected3[1]
	movl	$5, -36(%rbp)	#, expected3[2]
# problem124.c:67:     result = (int*)malloc(100 * sizeof(int));
	movl	$400, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -64(%rbp)	# tmp110, result
# problem124.c:68:     func0(12, result, &size);
	leaq	-68(%rbp), %rdx	#, tmp111
	movq	-64(%rbp), %rax	# result, tmp112
	movq	%rax, %rsi	# tmp112,
	movl	$12, %edi	#,
	call	func0	#
# problem124.c:69:     assert(issame(result, size, expected3, 3));
	movl	-68(%rbp), %esi	# size, size.2_5
	leaq	-44(%rbp), %rdx	#, tmp113
	movq	-64(%rbp), %rax	# result, tmp114
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp114,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L20	#,
# problem124.c:69:     assert(issame(result, size, expected3, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$69, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC3(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L20:
# problem124.c:70:     free(result);
	movq	-64(%rbp), %rax	# result, tmp118
	movq	%rax, %rdi	# tmp118,
	call	free@PLT	#
# problem124.c:73:     int expected4[] = {1};
	movl	$1, -56(%rbp)	#, expected4[0]
# problem124.c:74:     result = (int*)malloc(100 * sizeof(int));
	movl	$400, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -64(%rbp)	# tmp119, result
# problem124.c:75:     func0(1, result, &size);
	leaq	-68(%rbp), %rdx	#, tmp120
	movq	-64(%rbp), %rax	# result, tmp121
	movq	%rax, %rsi	# tmp121,
	movl	$1, %edi	#,
	call	func0	#
# problem124.c:76:     assert(issame(result, size, expected4, 1));
	movl	-68(%rbp), %esi	# size, size.3_7
	leaq	-56(%rbp), %rdx	#, tmp122
	movq	-64(%rbp), %rax	# result, tmp123
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp123,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L21	#,
# problem124.c:76:     assert(issame(result, size, expected4, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$76, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC4(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L21:
# problem124.c:77:     free(result);
	movq	-64(%rbp), %rax	# result, tmp127
	movq	%rax, %rdi	# tmp127,
	call	free@PLT	#
# problem124.c:79:     return 0;
	movl	$0, %eax	#, _46
# problem124.c:80: }
	movq	-8(%rbp), %rdx	# D.2954, tmp130
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	je	.L23	#,
	call	__stack_chk_fail@PLT	#
.L23:
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
