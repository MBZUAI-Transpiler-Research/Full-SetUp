	.file	"problem23.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	movq	%rdi, -40(%rbp)	# values, values
	movq	%rsi, -48(%rbp)	# size, size
# problem23.c:6: int *func0(const char *values, int *size) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp127
	movq	%rax, -8(%rbp)	# tmp127, D.4109
	xorl	%eax, %eax	# tmp127
# problem23.c:8:     int count = 0;
	movl	$0, -32(%rbp)	#, count
# problem23.c:9:     const char *start = values;
	movq	-40(%rbp), %rax	# values, tmp110
	movq	%rax, -16(%rbp)	# tmp110, start
# problem23.c:11:     while (*start) {
	jmp	.L2	#
.L5:
# problem23.c:13:             start++;
	addq	$1, -16(%rbp)	#, start
.L3:
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	movq	-16(%rbp), %rax	# start, tmp111
	movzbl	(%rax), %eax	# *start_29, _1
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	testb	%al, %al	# _1
	je	.L4	#,
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_2, _3
	movq	-16(%rbp), %rax	# start, tmp112
	movzbl	(%rax), %eax	# *start_29, _4
	movsbq	%al, %rax	# _4, _5
	addq	%rax, %rax	# _6
	addq	%rdx, %rax	# _3, _7
	movzwl	(%rax), %eax	# *_7, _8
	movzwl	%ax, %eax	# _8, _9
	andl	$2048, %eax	#, _10
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	testl	%eax, %eax	# _10
	jne	.L4	#,
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	movq	-16(%rbp), %rax	# start, tmp113
	movzbl	(%rax), %eax	# *start_29, _11
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	cmpb	$45, %al	#, _11
	jne	.L5	#,
.L4:
# problem23.c:15:         if (!*start) {
	movq	-16(%rbp), %rax	# start, tmp114
	movzbl	(%rax), %eax	# *start_29, _12
# problem23.c:15:         if (!*start) {
	testb	%al, %al	# _12
	je	.L16	#,
# problem23.c:18:         int val = (int) strtol(start, &end, 10);
	leaq	-24(%rbp), %rcx	#, tmp115
	movq	-16(%rbp), %rax	# start, tmp116
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	strtol@PLT	#
# problem23.c:18:         int val = (int) strtol(start, &end, 10);
	movl	%eax, -28(%rbp)	# _13, val
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	movq	-24(%rbp), %rax	# end, end.0_14
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmpq	%rax, -16(%rbp)	# end.0_14, start
	je	.L11	#,
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	movq	-24(%rbp), %rax	# end, end.1_15
	movzbl	(%rax), %eax	# *end.1_15, _16
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	cmpb	$44, %al	#, _16
	je	.L9	#,
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	movq	-24(%rbp), %rax	# end, end.2_17
	movzbl	(%rax), %eax	# *end.2_17, _18
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	testb	%al, %al	# _18
	jne	.L11	#,
.L9:
# problem23.c:20:             out[count++] = val;
	movl	-32(%rbp), %eax	# count, count.3_19
	leal	1(%rax), %edx	#, tmp117
	movl	%edx, -32(%rbp)	# tmp117, count
# problem23.c:20:             out[count++] = val;
	cltq
	leaq	0(,%rax,4), %rcx	#, tmp119
	leaq	out.1(%rip), %rdx	#, tmp120
	movl	-28(%rbp), %eax	# val, tmp121
	movl	%eax, (%rcx,%rdx)	# tmp121, out[count.3_19]
	jmp	.L10	#
.L12:
# problem23.c:23:                 end++;
	movq	-24(%rbp), %rax	# end, end.4_20
	addq	$1, %rax	#, _21
	movq	%rax, -24(%rbp)	# _21, end
.L11:
# problem23.c:22:             while (*end && *end != ',') {
	movq	-24(%rbp), %rax	# end, end.5_22
	movzbl	(%rax), %eax	# *end.5_22, _23
# problem23.c:22:             while (*end && *end != ',') {
	testb	%al, %al	# _23
	je	.L10	#,
# problem23.c:22:             while (*end && *end != ',') {
	movq	-24(%rbp), %rax	# end, end.6_24
	movzbl	(%rax), %eax	# *end.6_24, _25
# problem23.c:22:             while (*end && *end != ',') {
	cmpb	$44, %al	#, _25
	jne	.L12	#,
.L10:
# problem23.c:26:         start = end;
	movq	-24(%rbp), %rax	# end, tmp122
	movq	%rax, -16(%rbp)	# tmp122, start
.L2:
# problem23.c:11:     while (*start) {
	movq	-16(%rbp), %rax	# start, tmp123
	movzbl	(%rax), %eax	# *start_30, _26
	testb	%al, %al	# _26
	jne	.L3	#,
	jmp	.L7	#
.L16:
# problem23.c:16:             break;
	nop	
.L7:
# problem23.c:28:     *size = count;
	movq	-48(%rbp), %rax	# size, tmp124
	movl	-32(%rbp), %edx	# count, tmp125
	movl	%edx, (%rax)	# tmp125, *size_45(D)
# problem23.c:29:     return out;
	leaq	out.1(%rip), %rax	#, _47
# problem23.c:30: }
	movq	-8(%rbp), %rdx	# D.4109, tmp128
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp128
	je	.L15	#,
	call	__stack_chk_fail@PLT	#
.L15:
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
# problem23.c:41:     if (size_a != size_b) return 0;
	movl	-28(%rbp), %eax	# size_a, tmp92
	cmpl	-32(%rbp), %eax	# size_b, tmp92
	je	.L18	#,
# problem23.c:41:     if (size_a != size_b) return 0;
	movl	$0, %eax	#, _10
# problem23.c:41:     if (size_a != size_b) return 0;
	jmp	.L19	#
.L18:
# problem23.c:42:     for (int i = 0; i < size_a; i++) {
	movl	$0, -4(%rbp)	#, i
# problem23.c:42:     for (int i = 0; i < size_a; i++) {
	jmp	.L20	#
.L22:
# problem23.c:43:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem23.c:43:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem23.c:43:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L21	#,
# problem23.c:43:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem23.c:43:         if (a[i] != b[i]) return 0;
	jmp	.L19	#
.L21:
# problem23.c:42:     for (int i = 0; i < size_a; i++) {
	addl	$1, -4(%rbp)	#, i
.L20:
# problem23.c:42:     for (int i = 0; i < size_a; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# size_a, tmp97
	jl	.L22	#,
# problem23.c:45:     return 1;
	movl	$1, %eax	#, _10
.L19:
# problem23.c:46: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"problem23.c"
	.align 8
.LC2:
	.string	"issame(result1, size, (int[]){}, 0)"
.LC3:
	.string	"4,,23.2,9,adasd"
	.align 8
.LC4:
	.string	"issame(result2, size, (int[]){4, 9}, 2)"
.LC5:
	.string	"3,c,3,3,a,b"
	.align 8
.LC6:
	.string	"issame(result3, size, (int[]){3, 3, 3}, 3)"
.LC7:
	.string	"All tests passed."
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
	subq	$64, %rsp	#,
# problem23.c:48: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	movq	%rax, -8(%rbp)	# tmp116, D.4112
	xorl	%eax, %eax	# tmp116
# problem23.c:52:     int *result1 = func0("", &size);
	leaq	-52(%rbp), %rax	#, tmp90
	movq	%rax, %rsi	# tmp90,
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	func0	#
	movq	%rax, -48(%rbp)	# tmp92, result1
# problem23.c:53:     assert(issame(result1, size, (int[]){}, 0));
	movl	-52(%rbp), %esi	# size, size.7_1
	leaq	-20(%rbp), %rdx	#, tmp93
	movq	-48(%rbp), %rax	# result1, tmp94
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp94,
	call	issame	#
# problem23.c:53:     assert(issame(result1, size, (int[]){}, 0));
	testl	%eax, %eax	# _2
	jne	.L24	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$53, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L24:
# problem23.c:56:     int *result2 = func0("4,,23.2,9,adasd", &size);
	leaq	-52(%rbp), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC3(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	func0	#
	movq	%rax, -40(%rbp)	# tmp100, result2
# problem23.c:57:     assert(issame(result2, size, (int[]){4, 9}, 2));
	movl	$4, -20(%rbp)	#, MEM[(int[2] *)_35][0]
	movl	$9, -16(%rbp)	#, MEM[(int[2] *)_35][1]
	movl	-52(%rbp), %esi	# size, size.8_3
	leaq	-20(%rbp), %rdx	#, tmp101
	movq	-40(%rbp), %rax	# result2, tmp102
	movl	$2, %ecx	#,
	movq	%rax, %rdi	# tmp102,
	call	issame	#
# problem23.c:57:     assert(issame(result2, size, (int[]){4, 9}, 2));
	testl	%eax, %eax	# _4
	jne	.L25	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$57, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC4(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L25:
# problem23.c:60:     int *result3 = func0("3,c,3,3,a,b", &size);
	leaq	-52(%rbp), %rax	#, tmp106
	movq	%rax, %rsi	# tmp106,
	leaq	.LC5(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	func0	#
	movq	%rax, -32(%rbp)	# tmp108, result3
# problem23.c:61:     assert(issame(result3, size, (int[]){3, 3, 3}, 3));
	movl	$3, -20(%rbp)	#, MEM[(int[3] *)_35][0]
	movl	$3, -16(%rbp)	#, MEM[(int[3] *)_35][1]
	movl	$3, -12(%rbp)	#, MEM[(int[3] *)_35][2]
	movl	-52(%rbp), %esi	# size, size.9_5
	leaq	-20(%rbp), %rdx	#, tmp109
	movq	-32(%rbp), %rax	# result3, tmp110
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp110,
	call	issame	#
# problem23.c:61:     assert(issame(result3, size, (int[]){3, 3, 3}, 3));
	testl	%eax, %eax	# _6
	jne	.L26	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$61, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC6(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L26:
# problem23.c:63:     printf("All tests passed.\n");
	leaq	.LC7(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	puts@PLT	#
# problem23.c:64:     return 0;
	movl	$0, %eax	#, _29
# problem23.c:65: }
	movq	-8(%rbp), %rdx	# D.4112, tmp117
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	je	.L28	#,
	call	__stack_chk_fail@PLT	#
.L28:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.local	out.1
	.comm	out.1,1024,32
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
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
