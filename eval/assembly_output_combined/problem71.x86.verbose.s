	.file	"problem71.c"
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
	movq	%rdi, -40(%rbp)	# lst, lst
	movl	%esi, -44(%rbp)	# size, size
	movq	%rdx, -56(%rbp)	# out, out
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	movl	$0, -24(%rbp)	#, i
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	jmp	.L2	#
.L6:
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	movl	-24(%rbp), %eax	# i, tmp134
	addl	$1, %eax	#, tmp133
	movl	%eax, -20(%rbp)	# tmp133, j
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	jmp	.L3	#
.L5:
# problem71.c:7:             if (lst[i] > lst[j]) {
	movl	-24(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# lst, tmp136
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem71.c:7:             if (lst[i] > lst[j]) {
	movl	-20(%rbp), %eax	# j, tmp137
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# lst, tmp138
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem71.c:7:             if (lst[i] > lst[j]) {
	cmpl	%eax, %edx	# _8, _4
	jle	.L4	#,
# problem71.c:8:                 int temp = lst[i];
	movl	-24(%rbp), %eax	# i, tmp139
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-40(%rbp), %rax	# lst, tmp140
	addq	%rdx, %rax	# _10, _11
# problem71.c:8:                 int temp = lst[i];
	movl	(%rax), %eax	# *_11, tmp141
	movl	%eax, -4(%rbp)	# tmp141, temp
# problem71.c:9:                 lst[i] = lst[j];
	movl	-20(%rbp), %eax	# j, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-40(%rbp), %rax	# lst, tmp143
	addq	%rdx, %rax	# _13, _14
# problem71.c:9:                 lst[i] = lst[j];
	movl	-24(%rbp), %edx	# i, tmp144
	movslq	%edx, %rdx	# tmp144, _15
	leaq	0(,%rdx,4), %rcx	#, _16
	movq	-40(%rbp), %rdx	# lst, tmp145
	addq	%rcx, %rdx	# _16, _17
# problem71.c:9:                 lst[i] = lst[j];
	movl	(%rax), %eax	# *_14, _18
# problem71.c:9:                 lst[i] = lst[j];
	movl	%eax, (%rdx)	# _18, *_17
# problem71.c:10:                 lst[j] = temp;
	movl	-20(%rbp), %eax	# j, tmp146
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-40(%rbp), %rax	# lst, tmp147
	addq	%rax, %rdx	# tmp147, _21
# problem71.c:10:                 lst[j] = temp;
	movl	-4(%rbp), %eax	# temp, tmp148
	movl	%eax, (%rdx)	# tmp148, *_21
.L4:
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	addl	$1, -20(%rbp)	#, j
.L3:
# problem71.c:6:         for (int j = i + 1; j < size; j++) {
	movl	-20(%rbp), %eax	# j, tmp149
	cmpl	-44(%rbp), %eax	# size, tmp149
	jl	.L5	#,
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	addl	$1, -24(%rbp)	#, i
.L2:
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	movl	-44(%rbp), %eax	# size, tmp150
	subl	$1, %eax	#, _22
# problem71.c:5:     for (int i = 0; i < size - 1; i++) {
	cmpl	%eax, -24(%rbp)	# _22, i
	jl	.L6	#,
# problem71.c:15:     int l = 0, r = size - 1;
	movl	$0, -16(%rbp)	#, l
# problem71.c:15:     int l = 0, r = size - 1;
	movl	-44(%rbp), %eax	# size, tmp154
	subl	$1, %eax	#, tmp153
	movl	%eax, -12(%rbp)	# tmp153, r
# problem71.c:16:     int index = 0;
	movl	$0, -8(%rbp)	#, index
# problem71.c:18:     while (l <= r) {
	jmp	.L7	#
.L9:
# problem71.c:19:         if (l == r) {
	movl	-16(%rbp), %eax	# l, tmp155
	cmpl	-12(%rbp), %eax	# r, tmp155
	jne	.L8	#,
# problem71.c:20:             out[index++] = lst[l++];
	movl	-16(%rbp), %eax	# l, l.0_23
	leal	1(%rax), %edx	#, tmp156
	movl	%edx, -16(%rbp)	# tmp156, l
	cltq
# problem71.c:20:             out[index++] = lst[l++];
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-40(%rbp), %rax	# lst, tmp157
	leaq	(%rdx,%rax), %rcx	#, _26
# problem71.c:20:             out[index++] = lst[l++];
	movl	-8(%rbp), %eax	# index, index.1_27
	leal	1(%rax), %edx	#, tmp158
	movl	%edx, -8(%rbp)	# tmp158, index
	cltq
# problem71.c:20:             out[index++] = lst[l++];
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-56(%rbp), %rax	# out, tmp159
	addq	%rax, %rdx	# tmp159, _30
# problem71.c:20:             out[index++] = lst[l++];
	movl	(%rcx), %eax	# *_26, _31
# problem71.c:20:             out[index++] = lst[l++];
	movl	%eax, (%rdx)	# _31, *_30
	jmp	.L7	#
.L8:
# problem71.c:22:             out[index++] = lst[l++];
	movl	-16(%rbp), %eax	# l, l.2_32
	leal	1(%rax), %edx	#, tmp160
	movl	%edx, -16(%rbp)	# tmp160, l
	cltq
# problem71.c:22:             out[index++] = lst[l++];
	leaq	0(,%rax,4), %rdx	#, _34
	movq	-40(%rbp), %rax	# lst, tmp161
	leaq	(%rdx,%rax), %rcx	#, _35
# problem71.c:22:             out[index++] = lst[l++];
	movl	-8(%rbp), %eax	# index, index.3_36
	leal	1(%rax), %edx	#, tmp162
	movl	%edx, -8(%rbp)	# tmp162, index
	cltq
# problem71.c:22:             out[index++] = lst[l++];
	leaq	0(,%rax,4), %rdx	#, _38
	movq	-56(%rbp), %rax	# out, tmp163
	addq	%rax, %rdx	# tmp163, _39
# problem71.c:22:             out[index++] = lst[l++];
	movl	(%rcx), %eax	# *_35, _40
# problem71.c:22:             out[index++] = lst[l++];
	movl	%eax, (%rdx)	# _40, *_39
# problem71.c:23:             out[index++] = lst[r--];
	movl	-12(%rbp), %eax	# r, r.4_41
	leal	-1(%rax), %edx	#, tmp164
	movl	%edx, -12(%rbp)	# tmp164, r
	cltq
# problem71.c:23:             out[index++] = lst[r--];
	leaq	0(,%rax,4), %rdx	#, _43
	movq	-40(%rbp), %rax	# lst, tmp165
	leaq	(%rdx,%rax), %rcx	#, _44
# problem71.c:23:             out[index++] = lst[r--];
	movl	-8(%rbp), %eax	# index, index.5_45
	leal	1(%rax), %edx	#, tmp166
	movl	%edx, -8(%rbp)	# tmp166, index
	cltq
# problem71.c:23:             out[index++] = lst[r--];
	leaq	0(,%rax,4), %rdx	#, _47
	movq	-56(%rbp), %rax	# out, tmp167
	addq	%rax, %rdx	# tmp167, _48
# problem71.c:23:             out[index++] = lst[r--];
	movl	(%rcx), %eax	# *_44, _49
# problem71.c:23:             out[index++] = lst[r--];
	movl	%eax, (%rdx)	# _49, *_48
.L7:
# problem71.c:18:     while (l <= r) {
	movl	-16(%rbp), %eax	# l, tmp168
	cmpl	-12(%rbp), %eax	# r, tmp168
	jle	.L9	#,
# problem71.c:26: }
	nop	
	nop	
	popq	%rbp	#
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
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size, size
# problem71.c:34:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem71.c:34:     for (int i = 0; i < size; i++) {
	jmp	.L11	#
.L14:
# problem71.c:35:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp93
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem71.c:35:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem71.c:35:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L12	#,
# problem71.c:35:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L13	#
.L12:
# problem71.c:34:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L11:
# problem71.c:34:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-36(%rbp), %eax	# size, tmp96
	jl	.L14	#,
# problem71.c:37:     return 1;
	movl	$1, %eax	#, _10
.L13:
# problem71.c:38: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem71.c"
.LC1:
	.string	"issame(e1, out1, 4)"
.LC2:
	.string	"issame(e2, out2, 5)"
.LC3:
	.string	"issame(e3, out3, 5)"
.LC4:
	.string	"issame(e4, out4, 6)"
.LC5:
	.string	"issame(e5, out5, 4)"
.LC6:
	.string	"issame(e6, out6, 0)"
.LC7:
	.string	"issame(e7, out7, 8)"
.LC8:
	.string	"issame(e8, out8, 8)"
.LC9:
	.string	"issame(e9, out9, 1)"
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
	subq	$624, %rsp	#,
# problem71.c:40: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp157
	movq	%rax, -8(%rbp)	# tmp157, D.3173
	xorl	%eax, %eax	# tmp157
# problem71.c:41:     int a1[] = {1, 2, 3, 4};
	movl	$1, -592(%rbp)	#, a1[0]
	movl	$2, -588(%rbp)	#, a1[1]
	movl	$3, -584(%rbp)	#, a1[2]
	movl	$4, -580(%rbp)	#, a1[3]
# problem71.c:42:     int e1[] = {1, 4, 2, 3};
	movl	$1, -576(%rbp)	#, e1[0]
	movl	$4, -572(%rbp)	#, e1[1]
	movl	$2, -568(%rbp)	#, e1[2]
	movl	$3, -564(%rbp)	#, e1[3]
# problem71.c:44:     func0(a1, 4, out1);
	leaq	-560(%rbp), %rdx	#, tmp93
	leaq	-592(%rbp), %rax	#, tmp94
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	func0	#
# problem71.c:45:     assert(issame(e1, out1, 4));
	leaq	-560(%rbp), %rcx	#, tmp95
	leaq	-576(%rbp), %rax	#, tmp96
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L16	#,
# problem71.c:45:     assert(issame(e1, out1, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp97
	movq	%rax, %rcx	# tmp97,
	movl	$45, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	leaq	.LC1(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	__assert_fail@PLT	#
.L16:
# problem71.c:47:     int a2[] = {5, 6, 7, 8, 9};
	movl	$5, -496(%rbp)	#, a2[0]
	movl	$6, -492(%rbp)	#, a2[1]
	movl	$7, -488(%rbp)	#, a2[2]
	movl	$8, -484(%rbp)	#, a2[3]
	movl	$9, -480(%rbp)	#, a2[4]
# problem71.c:48:     int e2[] = {5, 9, 6, 8, 7};
	movl	$5, -464(%rbp)	#, e2[0]
	movl	$9, -460(%rbp)	#, e2[1]
	movl	$6, -456(%rbp)	#, e2[2]
	movl	$8, -452(%rbp)	#, e2[3]
	movl	$7, -448(%rbp)	#, e2[4]
# problem71.c:50:     func0(a2, 5, out2);
	leaq	-432(%rbp), %rdx	#, tmp100
	leaq	-496(%rbp), %rax	#, tmp101
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
# problem71.c:51:     assert(issame(e2, out2, 5));
	leaq	-432(%rbp), %rcx	#, tmp102
	leaq	-464(%rbp), %rax	#, tmp103
	movl	$5, %edx	#,
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L17	#,
# problem71.c:51:     assert(issame(e2, out2, 5));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$51, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC2(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L17:
# problem71.c:53:     int a3[] = {1, 2, 3, 4, 5};
	movl	$1, -400(%rbp)	#, a3[0]
	movl	$2, -396(%rbp)	#, a3[1]
	movl	$3, -392(%rbp)	#, a3[2]
	movl	$4, -388(%rbp)	#, a3[3]
	movl	$5, -384(%rbp)	#, a3[4]
# problem71.c:54:     int e3[] = {1, 5, 2, 4, 3};
	movl	$1, -368(%rbp)	#, e3[0]
	movl	$5, -364(%rbp)	#, e3[1]
	movl	$2, -360(%rbp)	#, e3[2]
	movl	$4, -356(%rbp)	#, e3[3]
	movl	$3, -352(%rbp)	#, e3[4]
# problem71.c:56:     func0(a3, 5, out3);
	leaq	-336(%rbp), %rdx	#, tmp107
	leaq	-400(%rbp), %rax	#, tmp108
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp108,
	call	func0	#
# problem71.c:57:     assert(issame(e3, out3, 5));
	leaq	-336(%rbp), %rcx	#, tmp109
	leaq	-368(%rbp), %rax	#, tmp110
	movl	$5, %edx	#,
	movq	%rcx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L18	#,
# problem71.c:57:     assert(issame(e3, out3, 5));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$57, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC3(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L18:
# problem71.c:59:     int a4[] = {5, 6, 7, 8, 9, 1};
	movl	$5, -304(%rbp)	#, a4[0]
	movl	$6, -300(%rbp)	#, a4[1]
	movl	$7, -296(%rbp)	#, a4[2]
	movl	$8, -292(%rbp)	#, a4[3]
	movl	$9, -288(%rbp)	#, a4[4]
	movl	$1, -284(%rbp)	#, a4[5]
# problem71.c:60:     int e4[] = {1, 9, 5, 8, 6, 7};
	movl	$1, -272(%rbp)	#, e4[0]
	movl	$9, -268(%rbp)	#, e4[1]
	movl	$5, -264(%rbp)	#, e4[2]
	movl	$8, -260(%rbp)	#, e4[3]
	movl	$6, -256(%rbp)	#, e4[4]
	movl	$7, -252(%rbp)	#, e4[5]
# problem71.c:62:     func0(a4, 6, out4);
	leaq	-240(%rbp), %rdx	#, tmp114
	leaq	-304(%rbp), %rax	#, tmp115
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	func0	#
# problem71.c:63:     assert(issame(e4, out4, 6));
	leaq	-240(%rbp), %rcx	#, tmp116
	leaq	-272(%rbp), %rax	#, tmp117
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L19	#,
# problem71.c:63:     assert(issame(e4, out4, 6));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$63, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC4(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L19:
# problem71.c:65:     int a5[] = {5, 5, 5, 5};
	movl	$5, -544(%rbp)	#, a5[0]
	movl	$5, -540(%rbp)	#, a5[1]
	movl	$5, -536(%rbp)	#, a5[2]
	movl	$5, -532(%rbp)	#, a5[3]
# problem71.c:66:     int e5[] = {5, 5, 5, 5};
	movl	$5, -528(%rbp)	#, e5[0]
	movl	$5, -524(%rbp)	#, e5[1]
	movl	$5, -520(%rbp)	#, e5[2]
	movl	$5, -516(%rbp)	#, e5[3]
# problem71.c:68:     func0(a5, 4, out5);
	leaq	-512(%rbp), %rdx	#, tmp121
	leaq	-544(%rbp), %rax	#, tmp122
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	func0	#
# problem71.c:69:     assert(issame(e5, out5, 4));
	leaq	-512(%rbp), %rcx	#, tmp123
	leaq	-528(%rbp), %rax	#, tmp124
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp123,
	movq	%rax, %rdi	# tmp124,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L20	#,
# problem71.c:69:     assert(issame(e5, out5, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$69, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC5(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L20:
# problem71.c:74:     func0(a6, 0, out6);
	leaq	-608(%rbp), %rdx	#, tmp128
	leaq	-616(%rbp), %rax	#, tmp129
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	func0	#
# problem71.c:75:     assert(issame(e6, out6, 0));
	leaq	-608(%rbp), %rcx	#, tmp130
	leaq	-612(%rbp), %rax	#, tmp131
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp130,
	movq	%rax, %rdi	# tmp131,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L21	#,
# problem71.c:75:     assert(issame(e6, out6, 0));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$75, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC6(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L21:
# problem71.c:77:     int a7[] = {1, 2, 3, 4, 5, 6, 7, 8};
	movl	$1, -208(%rbp)	#, a7[0]
	movl	$2, -204(%rbp)	#, a7[1]
	movl	$3, -200(%rbp)	#, a7[2]
	movl	$4, -196(%rbp)	#, a7[3]
	movl	$5, -192(%rbp)	#, a7[4]
	movl	$6, -188(%rbp)	#, a7[5]
	movl	$7, -184(%rbp)	#, a7[6]
	movl	$8, -180(%rbp)	#, a7[7]
# problem71.c:78:     int e7[] = {1, 8, 2, 7, 3, 6, 4, 5};
	movl	$1, -176(%rbp)	#, e7[0]
	movl	$8, -172(%rbp)	#, e7[1]
	movl	$2, -168(%rbp)	#, e7[2]
	movl	$7, -164(%rbp)	#, e7[3]
	movl	$3, -160(%rbp)	#, e7[4]
	movl	$6, -156(%rbp)	#, e7[5]
	movl	$4, -152(%rbp)	#, e7[6]
	movl	$5, -148(%rbp)	#, e7[7]
# problem71.c:80:     func0(a7, 8, out7);
	leaq	-144(%rbp), %rdx	#, tmp135
	leaq	-208(%rbp), %rax	#, tmp136
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	func0	#
# problem71.c:81:     assert(issame(e7, out7, 8));
	leaq	-144(%rbp), %rcx	#, tmp137
	leaq	-176(%rbp), %rax	#, tmp138
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp137,
	movq	%rax, %rdi	# tmp138,
	call	issame	#
	testl	%eax, %eax	# _7
	jne	.L22	#,
# problem71.c:81:     assert(issame(e7, out7, 8));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp139
	movq	%rax, %rcx	# tmp139,
	movl	$81, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	leaq	.LC7(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	__assert_fail@PLT	#
.L22:
# problem71.c:83:     int a8[] = {0, 2, 2, 2, 5, 5, -5, -5};
	movl	$0, -112(%rbp)	#, a8[0]
	movl	$2, -108(%rbp)	#, a8[1]
	movl	$2, -104(%rbp)	#, a8[2]
	movl	$2, -100(%rbp)	#, a8[3]
	movl	$5, -96(%rbp)	#, a8[4]
	movl	$5, -92(%rbp)	#, a8[5]
	movl	$-5, -88(%rbp)	#, a8[6]
	movl	$-5, -84(%rbp)	#, a8[7]
# problem71.c:84:     int e8[] = {-5, 5, -5, 5, 0, 2, 2, 2};
	movl	$-5, -80(%rbp)	#, e8[0]
	movl	$5, -76(%rbp)	#, e8[1]
	movl	$-5, -72(%rbp)	#, e8[2]
	movl	$5, -68(%rbp)	#, e8[3]
	movl	$0, -64(%rbp)	#, e8[4]
	movl	$2, -60(%rbp)	#, e8[5]
	movl	$2, -56(%rbp)	#, e8[6]
	movl	$2, -52(%rbp)	#, e8[7]
# problem71.c:86:     func0(a8, 8, out8);
	leaq	-48(%rbp), %rdx	#, tmp142
	leaq	-112(%rbp), %rax	#, tmp143
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp143,
	call	func0	#
# problem71.c:87:     assert(issame(e8, out8, 8));
	leaq	-48(%rbp), %rcx	#, tmp144
	leaq	-80(%rbp), %rax	#, tmp145
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	issame	#
	testl	%eax, %eax	# _8
	jne	.L23	#,
# problem71.c:87:     assert(issame(e8, out8, 8));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp146
	movq	%rax, %rcx	# tmp146,
	movl	$87, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp147
	movq	%rax, %rsi	# tmp147,
	leaq	.LC8(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	call	__assert_fail@PLT	#
.L23:
# problem71.c:89:     int a9[] = {111111};
	movl	$111111, -604(%rbp)	#, a9[0]
# problem71.c:90:     int e9[] = {111111};
	movl	$111111, -600(%rbp)	#, e9[0]
# problem71.c:92:     func0(a9, 1, out9);
	leaq	-596(%rbp), %rdx	#, tmp149
	leaq	-604(%rbp), %rax	#, tmp150
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	func0	#
# problem71.c:93:     assert(issame(e9, out9, 1));
	leaq	-596(%rbp), %rcx	#, tmp151
	leaq	-600(%rbp), %rax	#, tmp152
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp151,
	movq	%rax, %rdi	# tmp152,
	call	issame	#
	testl	%eax, %eax	# _9
	jne	.L24	#,
# problem71.c:93:     assert(issame(e9, out9, 1));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp153
	movq	%rax, %rcx	# tmp153,
	movl	$93, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp154
	movq	%rax, %rsi	# tmp154,
	leaq	.LC9(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	__assert_fail@PLT	#
.L24:
# problem71.c:95:     return 0;
	movl	$0, %eax	#, _122
# problem71.c:96: }
	movq	-8(%rbp), %rdx	# D.3173, tmp158
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp158
	je	.L26	#,
	call	__stack_chk_fail@PLT	#
.L26:
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
