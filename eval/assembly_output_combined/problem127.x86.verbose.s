	.file	"problem127.c"
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
	movq	%rdi, -24(%rbp)	# lst, lst
	movl	%esi, -28(%rbp)	# lst_size, lst_size
# problem127.c:5:     if (lst_size == 0) return true;
	cmpl	$0, -28(%rbp)	#, lst_size
	jne	.L2	#,
# problem127.c:5:     if (lst_size == 0) return true;
	movl	$1, %eax	#, _29
	jmp	.L3	#
.L2:
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	movl	$1, -4(%rbp)	#, i
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	jmp	.L4	#
.L7:
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	movl	-4(%rbp), %eax	# i, tmp111
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# lst, tmp112
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	movl	-4(%rbp), %eax	# i, tmp113
	cltq
	salq	$2, %rax	#, _6
	leaq	-4(%rax), %rcx	#, _7
	movq	-24(%rbp), %rax	# lst, tmp114
	addq	%rcx, %rax	# _7, _8
	movl	(%rax), %eax	# *_8, _9
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	cmpl	%eax, %edx	# _9, _4
	jge	.L5	#,
# problem127.c:8:         if (lst[i] < lst[i - 1]) return false;
	movl	$0, %eax	#, _29
	jmp	.L3	#
.L5:
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmpl	$1, -4(%rbp)	#, i
	jle	.L6	#,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	-4(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-24(%rbp), %rax	# lst, tmp116
	addq	%rdx, %rax	# _11, _12
	movl	(%rax), %edx	# *_12, _13
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	-4(%rbp), %eax	# i, tmp117
	cltq
	salq	$2, %rax	#, _15
	leaq	-4(%rax), %rcx	#, _16
	movq	-24(%rbp), %rax	# lst, tmp118
	addq	%rcx, %rax	# _16, _17
	movl	(%rax), %eax	# *_17, _18
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmpl	%eax, %edx	# _18, _13
	jne	.L6	#,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	-4(%rbp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-24(%rbp), %rax	# lst, tmp120
	addq	%rdx, %rax	# _20, _21
	movl	(%rax), %edx	# *_21, _22
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	-4(%rbp), %eax	# i, tmp121
	cltq
	salq	$2, %rax	#, _24
	leaq	-8(%rax), %rcx	#, _25
	movq	-24(%rbp), %rax	# lst, tmp122
	addq	%rcx, %rax	# _25, _26
	movl	(%rax), %eax	# *_26, _27
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	cmpl	%eax, %edx	# _27, _22
	jne	.L6	#,
# problem127.c:9:         if (i >= 2 && lst[i] == lst[i - 1] && lst[i] == lst[i - 2]) return false;
	movl	$0, %eax	#, _29
	jmp	.L3	#
.L6:
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L4:
# problem127.c:7:     for (int i = 1; i < lst_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp123
	cmpl	-28(%rbp), %eax	# lst_size, tmp123
	jl	.L7	#,
# problem127.c:11:     return true;
	movl	$1, %eax	#, _29
.L3:
# problem127.c:12: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem127.c"
.LC1:
	.string	"func0(list1, 1) == true"
.LC2:
	.string	"func0(list2, 5) == true"
.LC3:
	.string	"func0(list3, 5) == false"
.LC4:
	.string	"func0(list4, 6) == true"
.LC5:
	.string	"func0(list5, 7) == true"
.LC6:
	.string	"func0(list6, 7) == false"
.LC7:
	.string	"func0(NULL, 0) == true"
.LC8:
	.string	"func0(list7, 1) == true"
.LC9:
	.string	"func0(list8, 3) == false"
.LC10:
	.string	"func0(list9, 6) == false"
.LC11:
	.string	"func0(list10, 6) == false"
.LC12:
	.string	"func0(list11, 6) == true"
.LC13:
	.string	"func0(list12, 4) == true"
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
	subq	$320, %rsp	#,
# problem127.c:20: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp154
	movq	%rax, -8(%rbp)	# tmp154, D.2444
	xorl	%eax, %eax	# tmp154
# problem127.c:21:     int list1[] = {5};
	movl	$5, -308(%rbp)	#, list1[0]
# problem127.c:22:     assert(func0(list1, 1) == true);
	leaq	-308(%rbp), %rax	#, tmp102
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	func0	#
	testb	%al, %al	# _1
	jne	.L9	#,
# problem127.c:22:     assert(func0(list1, 1) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$22, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC1(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L9:
# problem127.c:24:     int list2[] = {1, 2, 3, 4, 5};
	movl	$1, -272(%rbp)	#, list2[0]
	movl	$2, -268(%rbp)	#, list2[1]
	movl	$3, -264(%rbp)	#, list2[2]
	movl	$4, -260(%rbp)	#, list2[3]
	movl	$5, -256(%rbp)	#, list2[4]
# problem127.c:25:     assert(func0(list2, 5) == true);
	leaq	-272(%rbp), %rax	#, tmp106
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	func0	#
	testb	%al, %al	# _2
	jne	.L10	#,
# problem127.c:25:     assert(func0(list2, 5) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$25, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC2(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L10:
# problem127.c:27:     int list3[] = {1, 3, 2, 4, 5};
	movl	$1, -240(%rbp)	#, list3[0]
	movl	$3, -236(%rbp)	#, list3[1]
	movl	$2, -232(%rbp)	#, list3[2]
	movl	$4, -228(%rbp)	#, list3[3]
	movl	$5, -224(%rbp)	#, list3[4]
# problem127.c:28:     assert(func0(list3, 5) == false);
	leaq	-240(%rbp), %rax	#, tmp110
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	func0	#
	xorl	$1, %eax	#, _4
	testb	%al, %al	# _4
	jne	.L11	#,
# problem127.c:28:     assert(func0(list3, 5) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$28, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC3(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L11:
# problem127.c:30:     int list4[] = {1, 2, 3, 4, 5, 6};
	movl	$1, -208(%rbp)	#, list4[0]
	movl	$2, -204(%rbp)	#, list4[1]
	movl	$3, -200(%rbp)	#, list4[2]
	movl	$4, -196(%rbp)	#, list4[3]
	movl	$5, -192(%rbp)	#, list4[4]
	movl	$6, -188(%rbp)	#, list4[5]
# problem127.c:31:     assert(func0(list4, 6) == true);
	leaq	-208(%rbp), %rax	#, tmp114
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp114,
	call	func0	#
	testb	%al, %al	# _5
	jne	.L12	#,
# problem127.c:31:     assert(func0(list4, 6) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp115
	movq	%rax, %rcx	# tmp115,
	movl	$31, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	leaq	.LC4(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	__assert_fail@PLT	#
.L12:
# problem127.c:33:     int list5[] = {1, 2, 3, 4, 5, 6, 7};
	movl	$1, -80(%rbp)	#, list5[0]
	movl	$2, -76(%rbp)	#, list5[1]
	movl	$3, -72(%rbp)	#, list5[2]
	movl	$4, -68(%rbp)	#, list5[3]
	movl	$5, -64(%rbp)	#, list5[4]
	movl	$6, -60(%rbp)	#, list5[5]
	movl	$7, -56(%rbp)	#, list5[6]
# problem127.c:34:     assert(func0(list5, 7) == true);
	leaq	-80(%rbp), %rax	#, tmp118
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	func0	#
	testb	%al, %al	# _6
	jne	.L13	#,
# problem127.c:34:     assert(func0(list5, 7) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$34, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC5(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L13:
# problem127.c:36:     int list6[] = {1, 3, 2, 4, 5, 6, 7};
	movl	$1, -48(%rbp)	#, list6[0]
	movl	$3, -44(%rbp)	#, list6[1]
	movl	$2, -40(%rbp)	#, list6[2]
	movl	$4, -36(%rbp)	#, list6[3]
	movl	$5, -32(%rbp)	#, list6[4]
	movl	$6, -28(%rbp)	#, list6[5]
	movl	$7, -24(%rbp)	#, list6[6]
# problem127.c:37:     assert(func0(list6, 7) == false);
	leaq	-48(%rbp), %rax	#, tmp122
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	func0	#
	xorl	$1, %eax	#, _8
	testb	%al, %al	# _8
	jne	.L14	#,
# problem127.c:37:     assert(func0(list6, 7) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp123
	movq	%rax, %rcx	# tmp123,
	movl	$37, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	leaq	.LC6(%rip), %rax	#, tmp125
	movq	%rax, %rdi	# tmp125,
	call	__assert_fail@PLT	#
.L14:
# problem127.c:39:     assert(func0(NULL, 0) == true);
	movl	$0, %esi	#,
	movl	$0, %edi	#,
	call	func0	#
	testb	%al, %al	# _9
	jne	.L15	#,
# problem127.c:39:     assert(func0(NULL, 0) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$39, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC7(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L15:
# problem127.c:41:     int list7[] = {1};
	movl	$1, -304(%rbp)	#, list7[0]
# problem127.c:42:     assert(func0(list7, 1) == true);
	leaq	-304(%rbp), %rax	#, tmp129
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp129,
	call	func0	#
	testb	%al, %al	# _10
	jne	.L16	#,
# problem127.c:42:     assert(func0(list7, 1) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp130
	movq	%rax, %rcx	# tmp130,
	movl	$42, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp131
	movq	%rax, %rsi	# tmp131,
	leaq	.LC8(%rip), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	__assert_fail@PLT	#
.L16:
# problem127.c:44:     int list8[] = {3, 2, 1};
	movl	$3, -300(%rbp)	#, list8[0]
	movl	$2, -296(%rbp)	#, list8[1]
	movl	$1, -292(%rbp)	#, list8[2]
# problem127.c:45:     assert(func0(list8, 3) == false);
	leaq	-300(%rbp), %rax	#, tmp133
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	func0	#
	xorl	$1, %eax	#, _12
	testb	%al, %al	# _12
	jne	.L17	#,
# problem127.c:45:     assert(func0(list8, 3) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$45, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC9(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L17:
# problem127.c:47:     int list9[] = {1, 2, 2, 2, 3, 4};
	movl	$1, -176(%rbp)	#, list9[0]
	movl	$2, -172(%rbp)	#, list9[1]
	movl	$2, -168(%rbp)	#, list9[2]
	movl	$2, -164(%rbp)	#, list9[3]
	movl	$3, -160(%rbp)	#, list9[4]
	movl	$4, -156(%rbp)	#, list9[5]
# problem127.c:48:     assert(func0(list9, 6) == false);
	leaq	-176(%rbp), %rax	#, tmp137
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp137,
	call	func0	#
	xorl	$1, %eax	#, _14
	testb	%al, %al	# _14
	jne	.L18	#,
# problem127.c:48:     assert(func0(list9, 6) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp138
	movq	%rax, %rcx	# tmp138,
	movl	$48, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	leaq	.LC10(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	__assert_fail@PLT	#
.L18:
# problem127.c:50:     int list10[] = {1, 2, 3, 3, 3, 4};
	movl	$1, -144(%rbp)	#, list10[0]
	movl	$2, -140(%rbp)	#, list10[1]
	movl	$3, -136(%rbp)	#, list10[2]
	movl	$3, -132(%rbp)	#, list10[3]
	movl	$3, -128(%rbp)	#, list10[4]
	movl	$4, -124(%rbp)	#, list10[5]
# problem127.c:51:     assert(func0(list10, 6) == false);
	leaq	-144(%rbp), %rax	#, tmp141
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp141,
	call	func0	#
	xorl	$1, %eax	#, _16
	testb	%al, %al	# _16
	jne	.L19	#,
# problem127.c:51:     assert(func0(list10, 6) == false);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp142
	movq	%rax, %rcx	# tmp142,
	movl	$51, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp143
	movq	%rax, %rsi	# tmp143,
	leaq	.LC11(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	__assert_fail@PLT	#
.L19:
# problem127.c:53:     int list11[] = {1, 2, 2, 3, 3, 4};
	movl	$1, -112(%rbp)	#, list11[0]
	movl	$2, -108(%rbp)	#, list11[1]
	movl	$2, -104(%rbp)	#, list11[2]
	movl	$3, -100(%rbp)	#, list11[3]
	movl	$3, -96(%rbp)	#, list11[4]
	movl	$4, -92(%rbp)	#, list11[5]
# problem127.c:54:     assert(func0(list11, 6) == true);
	leaq	-112(%rbp), %rax	#, tmp145
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp145,
	call	func0	#
	testb	%al, %al	# _17
	jne	.L20	#,
# problem127.c:54:     assert(func0(list11, 6) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp146
	movq	%rax, %rcx	# tmp146,
	movl	$54, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp147
	movq	%rax, %rsi	# tmp147,
	leaq	.LC12(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	call	__assert_fail@PLT	#
.L20:
# problem127.c:56:     int list12[] = {1, 2, 3, 4};
	movl	$1, -288(%rbp)	#, list12[0]
	movl	$2, -284(%rbp)	#, list12[1]
	movl	$3, -280(%rbp)	#, list12[2]
	movl	$4, -276(%rbp)	#, list12[3]
# problem127.c:57:     assert(func0(list12, 4) == true);
	leaq	-288(%rbp), %rax	#, tmp149
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp149,
	call	func0	#
	testb	%al, %al	# _18
	jne	.L21	#,
# problem127.c:57:     assert(func0(list12, 4) == true);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp150
	movq	%rax, %rcx	# tmp150,
	movl	$57, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp151
	movq	%rax, %rsi	# tmp151,
	leaq	.LC13(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	__assert_fail@PLT	#
.L21:
# problem127.c:59:     return 0;
	movl	$0, %eax	#, _103
# problem127.c:60: }
	movq	-8(%rbp), %rdx	# D.2444, tmp155
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp155
	je	.L23	#,
	call	__stack_chk_fail@PLT	#
.L23:
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
