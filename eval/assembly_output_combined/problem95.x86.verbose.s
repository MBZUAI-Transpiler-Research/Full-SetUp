	.file	"problem95.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	movq	%rdi, -40(%rbp)	# lst, lst
	movl	%esi, -44(%rbp)	# size, size
# problem95.c:4:     int largest = 0, sum = 0, num, temp;
	movl	$0, -24(%rbp)	#, largest
# problem95.c:4:     int largest = 0, sum = 0, num, temp;
	movl	$0, -20(%rbp)	#, sum
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	movl	$0, -16(%rbp)	#, i
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	jmp	.L2	#
.L8:
# problem95.c:7:         num = lst[i];
	movl	-16(%rbp), %eax	# i, tmp90
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# lst, tmp91
	addq	%rdx, %rax	# _2, _3
# problem95.c:7:         num = lst[i];
	movl	(%rax), %eax	# *_3, tmp92
	movl	%eax, -4(%rbp)	# tmp92, num
# problem95.c:8:         if (num > 1) {
	cmpl	$1, -4(%rbp)	#, num
	jle	.L3	#,
# problem95.c:9:             int prime = 1;
	movl	$1, -12(%rbp)	#, prime
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	movl	$2, -8(%rbp)	#, j
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	jmp	.L4	#
.L7:
# problem95.c:11:                 if (num % j == 0) {
	movl	-4(%rbp), %eax	# num, tmp93
	cltd
	idivl	-8(%rbp)	# j
	movl	%edx, %eax	# tmp94, _4
# problem95.c:11:                 if (num % j == 0) {
	testl	%eax, %eax	# _4
	jne	.L5	#,
# problem95.c:12:                     prime = 0;
	movl	$0, -12(%rbp)	#, prime
# problem95.c:13:                     break;
	jmp	.L6	#
.L5:
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	addl	$1, -8(%rbp)	#, j
.L4:
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	movl	-8(%rbp), %eax	# j, tmp96
	imull	%eax, %eax	# tmp96, _5
# problem95.c:10:             for (int j = 2; j * j <= num; ++j) {
	cmpl	%eax, -4(%rbp)	# _5, num
	jge	.L7	#,
.L6:
# problem95.c:16:             if (prime) {
	cmpl	$0, -12(%rbp)	#, prime
	je	.L3	#,
# problem95.c:17:                 largest = num > largest ? num : largest;
	movl	-24(%rbp), %edx	# largest, tmp98
	movl	-4(%rbp), %eax	# num, tmp116
	cmpl	%eax, %edx	# tmp116, tmp98
	cmovge	%edx, %eax	# tmp98,, tmp97
	movl	%eax, -24(%rbp)	# tmp97, largest
.L3:
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	addl	$1, -16(%rbp)	#, i
.L2:
# problem95.c:6:     for (int i = 0; i < size; ++i) {
	movl	-16(%rbp), %eax	# i, tmp99
	cmpl	-44(%rbp), %eax	# size, tmp99
	jl	.L8	#,
# problem95.c:22:     while (largest > 0) {
	jmp	.L9	#
.L10:
# problem95.c:23:         sum += largest % 10;
	movl	-24(%rbp), %ecx	# largest, tmp100
	movslq	%ecx, %rax	# tmp100, tmp101
	imulq	$1717986919, %rax, %rax	#, tmp101, tmp102
	shrq	$32, %rax	#, tmp103
	movl	%eax, %edx	# tmp103, tmp104
	sarl	$2, %edx	#, tmp104
	movl	%ecx, %eax	# tmp100, tmp105
	sarl	$31, %eax	#, tmp105
	subl	%eax, %edx	# tmp105, _6
	movl	%edx, %eax	# _6, tmp106
	sall	$2, %eax	#, tmp106
	addl	%edx, %eax	# _6, tmp106
	addl	%eax, %eax	# tmp107
	subl	%eax, %ecx	# tmp106, tmp100
	movl	%ecx, %edx	# tmp100, _6
# problem95.c:23:         sum += largest % 10;
	addl	%edx, -20(%rbp)	# _6, sum
# problem95.c:24:         largest /= 10;
	movl	-24(%rbp), %eax	# largest, tmp109
	movslq	%eax, %rdx	# tmp109, tmp110
	imulq	$1717986919, %rdx, %rdx	#, tmp110, tmp111
	shrq	$32, %rdx	#, tmp112
	movl	%edx, %ecx	# tmp112, tmp113
	sarl	$2, %ecx	#, tmp113
	cltd
	movl	%ecx, %eax	# tmp113, tmp113
	subl	%edx, %eax	# tmp114, tmp113
	movl	%eax, -24(%rbp)	# tmp108, largest
.L9:
# problem95.c:22:     while (largest > 0) {
	cmpl	$0, -24(%rbp)	#, largest
	jg	.L10	#,
# problem95.c:27:     return sum;
	movl	-20(%rbp), %eax	# sum, _18
# problem95.c:28: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"problem95.c"
	.align 8
.LC1:
	.string	"func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10"
	.align 8
.LC2:
	.string	"func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25"
	.align 8
.LC3:
	.string	"func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13"
	.align 8
.LC4:
	.string	"func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11"
	.align 8
.LC5:
	.string	"func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3"
	.align 8
.LC6:
	.string	"func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7"
	.align 8
.LC7:
	.string	"func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19"
	.align 8
.LC8:
	.string	"func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19"
	.align 8
.LC9:
	.string	"func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10"
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
	subq	$400, %rsp	#,
# problem95.c:34: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp130
	movq	%rax, -8(%rbp)	# tmp130, D.3268
	xorl	%eax, %eax	# tmp130
# problem95.c:35:     int lst1[] = {0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3};
	movl	$0, -96(%rbp)	#, lst1[0]
	movl	$3, -92(%rbp)	#, lst1[1]
	movl	$2, -88(%rbp)	#, lst1[2]
	movl	$1, -84(%rbp)	#, lst1[3]
	movl	$3, -80(%rbp)	#, lst1[4]
	movl	$5, -76(%rbp)	#, lst1[5]
	movl	$7, -72(%rbp)	#, lst1[6]
	movl	$4, -68(%rbp)	#, lst1[7]
	movl	$5, -64(%rbp)	#, lst1[8]
	movl	$5, -60(%rbp)	#, lst1[9]
	movl	$5, -56(%rbp)	#, lst1[10]
	movl	$2, -52(%rbp)	#, lst1[11]
	movl	$181, -48(%rbp)	#, lst1[12]
	movl	$32, -44(%rbp)	#, lst1[13]
	movl	$4, -40(%rbp)	#, lst1[14]
	movl	$32, -36(%rbp)	#, lst1[15]
	movl	$3, -32(%rbp)	#, lst1[16]
	movl	$2, -28(%rbp)	#, lst1[17]
	movl	$32, -24(%rbp)	#, lst1[18]
	movl	$324, -20(%rbp)	#, lst1[19]
	movl	$4, -16(%rbp)	#, lst1[20]
	movl	$3, -12(%rbp)	#, lst1[21]
# problem95.c:36:     assert(func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10);
	leaq	-96(%rbp), %rax	#, tmp93
	movl	$22, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	func0	#
# problem95.c:36:     assert(func0(lst1, sizeof(lst1)/sizeof(lst1[0])) == 10);
	cmpl	$10, %eax	#, _1
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp94
	movq	%rax, %rcx	# tmp94,
	movl	$36, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp95
	movq	%rax, %rsi	# tmp95,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rdi	# tmp96,
	call	__assert_fail@PLT	#
.L13:
# problem95.c:38:     int lst2[] = {1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1};
	movl	$1, -176(%rbp)	#, lst2[0]
	movl	$0, -172(%rbp)	#, lst2[1]
	movl	$1, -168(%rbp)	#, lst2[2]
	movl	$8, -164(%rbp)	#, lst2[3]
	movl	$2, -160(%rbp)	#, lst2[4]
	movl	$4597, -156(%rbp)	#, lst2[5]
	movl	$2, -152(%rbp)	#, lst2[6]
	movl	$1, -148(%rbp)	#, lst2[7]
	movl	$3, -144(%rbp)	#, lst2[8]
	movl	$40, -140(%rbp)	#, lst2[9]
	movl	$1, -136(%rbp)	#, lst2[10]
	movl	$2, -132(%rbp)	#, lst2[11]
	movl	$1, -128(%rbp)	#, lst2[12]
	movl	$2, -124(%rbp)	#, lst2[13]
	movl	$4, -120(%rbp)	#, lst2[14]
	movl	$2, -116(%rbp)	#, lst2[15]
	movl	$5, -112(%rbp)	#, lst2[16]
	movl	$1, -108(%rbp)	#, lst2[17]
# problem95.c:39:     assert(func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25);
	leaq	-176(%rbp), %rax	#, tmp97
	movl	$18, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	func0	#
# problem95.c:39:     assert(func0(lst2, sizeof(lst2)/sizeof(lst2[0])) == 25);
	cmpl	$25, %eax	#, _2
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp98
	movq	%rax, %rcx	# tmp98,
	movl	$39, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rsi	# tmp99,
	leaq	.LC2(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	call	__assert_fail@PLT	#
.L14:
# problem95.c:41:     int lst3[] = {1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3};
	movl	$1, -240(%rbp)	#, lst3[0]
	movl	$3, -236(%rbp)	#, lst3[1]
	movl	$1, -232(%rbp)	#, lst3[2]
	movl	$32, -228(%rbp)	#, lst3[3]
	movl	$5107, -224(%rbp)	#, lst3[4]
	movl	$34, -220(%rbp)	#, lst3[5]
	movl	$83278, -216(%rbp)	#, lst3[6]
	movl	$109, -212(%rbp)	#, lst3[7]
	movl	$163, -208(%rbp)	#, lst3[8]
	movl	$23, -204(%rbp)	#, lst3[9]
	movl	$2323, -200(%rbp)	#, lst3[10]
	movl	$32, -196(%rbp)	#, lst3[11]
	movl	$30, -192(%rbp)	#, lst3[12]
	movl	$1, -188(%rbp)	#, lst3[13]
	movl	$9, -184(%rbp)	#, lst3[14]
	movl	$3, -180(%rbp)	#, lst3[15]
# problem95.c:42:     assert(func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13);
	leaq	-240(%rbp), %rax	#, tmp101
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	func0	#
# problem95.c:42:     assert(func0(lst3, sizeof(lst3)/sizeof(lst3[0])) == 13);
	cmpl	$13, %eax	#, _3
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp102
	movq	%rax, %rcx	# tmp102,
	movl	$42, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC3(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	__assert_fail@PLT	#
.L15:
# problem95.c:44:     int lst4[] = {0,724,32,71,99,32,6,0,5,91,83,0,5,6};
	movl	$0, -304(%rbp)	#, lst4[0]
	movl	$724, -300(%rbp)	#, lst4[1]
	movl	$32, -296(%rbp)	#, lst4[2]
	movl	$71, -292(%rbp)	#, lst4[3]
	movl	$99, -288(%rbp)	#, lst4[4]
	movl	$32, -284(%rbp)	#, lst4[5]
	movl	$6, -280(%rbp)	#, lst4[6]
	movl	$0, -276(%rbp)	#, lst4[7]
	movl	$5, -272(%rbp)	#, lst4[8]
	movl	$91, -268(%rbp)	#, lst4[9]
	movl	$83, -264(%rbp)	#, lst4[10]
	movl	$0, -260(%rbp)	#, lst4[11]
	movl	$5, -256(%rbp)	#, lst4[12]
	movl	$6, -252(%rbp)	#, lst4[13]
# problem95.c:45:     assert(func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11);
	leaq	-304(%rbp), %rax	#, tmp105
	movl	$14, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	func0	#
# problem95.c:45:     assert(func0(lst4, sizeof(lst4)/sizeof(lst4[0])) == 11);
	cmpl	$11, %eax	#, _4
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp106
	movq	%rax, %rcx	# tmp106,
	movl	$45, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp107
	movq	%rax, %rsi	# tmp107,
	leaq	.LC4(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	call	__assert_fail@PLT	#
.L16:
# problem95.c:47:     int lst5[] = {0,81,12,3,1,21};
	movl	$0, -368(%rbp)	#, lst5[0]
	movl	$81, -364(%rbp)	#, lst5[1]
	movl	$12, -360(%rbp)	#, lst5[2]
	movl	$3, -356(%rbp)	#, lst5[3]
	movl	$1, -352(%rbp)	#, lst5[4]
	movl	$21, -348(%rbp)	#, lst5[5]
# problem95.c:48:     assert(func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3);
	leaq	-368(%rbp), %rax	#, tmp109
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	func0	#
# problem95.c:48:     assert(func0(lst5, sizeof(lst5)/sizeof(lst5[0])) == 3);
	cmpl	$3, %eax	#, _5
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp110
	movq	%rax, %rcx	# tmp110,
	movl	$48, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp111
	movq	%rax, %rsi	# tmp111,
	leaq	.LC5(%rip), %rax	#, tmp112
	movq	%rax, %rdi	# tmp112,
	call	__assert_fail@PLT	#
.L17:
# problem95.c:50:     int lst6[] = {0,8,1,2,1,7};
	movl	$0, -336(%rbp)	#, lst6[0]
	movl	$8, -332(%rbp)	#, lst6[1]
	movl	$1, -328(%rbp)	#, lst6[2]
	movl	$2, -324(%rbp)	#, lst6[3]
	movl	$1, -320(%rbp)	#, lst6[4]
	movl	$7, -316(%rbp)	#, lst6[5]
# problem95.c:51:     assert(func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7);
	leaq	-336(%rbp), %rax	#, tmp113
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	func0	#
# problem95.c:51:     assert(func0(lst6, sizeof(lst6)/sizeof(lst6[0])) == 7);
	cmpl	$7, %eax	#, _6
	je	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$51, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC6(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L18:
# problem95.c:53:     int lst7[] = {8191};
	movl	$8191, -400(%rbp)	#, lst7[0]
# problem95.c:54:     assert(func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19);
	leaq	-400(%rbp), %rax	#, tmp117
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	func0	#
# problem95.c:54:     assert(func0(lst7, sizeof(lst7)/sizeof(lst7[0])) == 19);
	cmpl	$19, %eax	#, _7
	je	.L19	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp118
	movq	%rax, %rcx	# tmp118,
	movl	$54, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp119
	movq	%rax, %rsi	# tmp119,
	leaq	.LC7(%rip), %rax	#, tmp120
	movq	%rax, %rdi	# tmp120,
	call	__assert_fail@PLT	#
.L19:
# problem95.c:56:     int lst8[] = {8191, 123456, 127, 7};
	movl	$8191, -384(%rbp)	#, lst8[0]
	movl	$123456, -380(%rbp)	#, lst8[1]
	movl	$127, -376(%rbp)	#, lst8[2]
	movl	$7, -372(%rbp)	#, lst8[3]
# problem95.c:57:     assert(func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19);
	leaq	-384(%rbp), %rax	#, tmp121
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	func0	#
# problem95.c:57:     assert(func0(lst8, sizeof(lst8)/sizeof(lst8[0])) == 19);
	cmpl	$19, %eax	#, _8
	je	.L20	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp122
	movq	%rax, %rcx	# tmp122,
	movl	$57, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	leaq	.LC8(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	__assert_fail@PLT	#
.L20:
# problem95.c:59:     int lst9[] = {127, 97, 8192};
	movl	$127, -396(%rbp)	#, lst9[0]
	movl	$97, -392(%rbp)	#, lst9[1]
	movl	$8192, -388(%rbp)	#, lst9[2]
# problem95.c:60:     assert(func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10);
	leaq	-396(%rbp), %rax	#, tmp125
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	func0	#
# problem95.c:60:     assert(func0(lst9, sizeof(lst9)/sizeof(lst9[0])) == 10);
	cmpl	$10, %eax	#, _9
	je	.L21	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$60, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC9(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L21:
# problem95.c:62:     return 0;
	movl	$0, %eax	#, _119
# problem95.c:63: }
	movq	-8(%rbp), %rdx	# D.3268, tmp131
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp131
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
