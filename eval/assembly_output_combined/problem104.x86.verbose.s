	.file	"problem104.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"-1"
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
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# n, n
	movl	%esi, -24(%rbp)	# m, m
# problem104.c:5:     if (n > m) return "-1";
	movl	-20(%rbp), %eax	# n, tmp97
	cmpl	-24(%rbp), %eax	# m, tmp97
	jle	.L2	#,
# problem104.c:5:     if (n > m) return "-1";
	leaq	.LC0(%rip), %rax	#, _16
	jmp	.L3	#
.L2:
# problem104.c:6:     int num = (m + n) / 2;
	movl	-24(%rbp), %edx	# m, tmp98
	movl	-20(%rbp), %eax	# n, tmp99
	addl	%edx, %eax	# tmp98, _1
# problem104.c:6:     int num = (m + n) / 2;
	movl	%eax, %edx	# _1, tmp100
	shrl	$31, %edx	#, tmp100
	addl	%edx, %eax	# tmp100, tmp101
	sarl	%eax	# tmp102
	movl	%eax, -16(%rbp)	# tmp102, num
# problem104.c:7:     char* out = (char*)malloc(33);
	movl	$33, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp103, out
# problem104.c:8:     out[0] = '\0';
	movq	-8(%rbp), %rax	# out, tmp104
	movb	$0, (%rax)	#, *out_24
# problem104.c:10:     int index = 32;
	movl	$32, -12(%rbp)	#, index
# problem104.c:11:     out[index--] = '\0';
	movl	-12(%rbp), %eax	# index, index.0_2
	leal	-1(%rax), %edx	#, tmp105
	movl	%edx, -12(%rbp)	# tmp105, index
	movslq	%eax, %rdx	# index.0_2, _3
# problem104.c:11:     out[index--] = '\0';
	movq	-8(%rbp), %rax	# out, tmp106
	addq	%rdx, %rax	# _3, _4
# problem104.c:11:     out[index--] = '\0';
	movb	$0, (%rax)	#, *_4
.L4:
# problem104.c:14:         out[index--] = '0' + num % 2;
	movl	-16(%rbp), %eax	# num, tmp107
	cltd
	shrl	$31, %edx	#, tmp109
	addl	%edx, %eax	# tmp109, tmp110
	andl	$1, %eax	#, tmp111
	subl	%edx, %eax	# tmp109, tmp112
# problem104.c:14:         out[index--] = '0' + num % 2;
	leal	48(%rax), %ecx	#, _7
# problem104.c:14:         out[index--] = '0' + num % 2;
	movl	-12(%rbp), %eax	# index, index.1_8
	leal	-1(%rax), %edx	#, tmp113
	movl	%edx, -12(%rbp)	# tmp113, index
	movslq	%eax, %rdx	# index.1_8, _9
# problem104.c:14:         out[index--] = '0' + num % 2;
	movq	-8(%rbp), %rax	# out, tmp114
	addq	%rdx, %rax	# _9, _10
# problem104.c:14:         out[index--] = '0' + num % 2;
	movl	%ecx, %edx	# _7, _11
# problem104.c:14:         out[index--] = '0' + num % 2;
	movb	%dl, (%rax)	# _11, *_10
# problem104.c:15:         num /= 2;
	movl	-16(%rbp), %eax	# num, tmp116
	movl	%eax, %edx	# tmp116, tmp117
	shrl	$31, %edx	#, tmp117
	addl	%edx, %eax	# tmp117, tmp118
	sarl	%eax	# tmp119
	movl	%eax, -16(%rbp)	# tmp119, num
# problem104.c:16:     } while (num > 0);
	cmpl	$0, -16(%rbp)	#, num
	jg	.L4	#,
# problem104.c:18:     return &out[index + 1]; 
	movl	-12(%rbp), %eax	# index, tmp120
	cltq
	leaq	1(%rax), %rdx	#, _13
# problem104.c:18:     return &out[index + 1]; 
	movq	-8(%rbp), %rax	# out, tmp121
	addq	%rdx, %rax	# _13, _16
.L3:
# problem104.c:19: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"11"
.LC2:
	.string	"problem104.c"
	.align 8
.LC3:
	.string	"strcmp(func0(1, 5), \"11\") == 0"
.LC4:
	.string	"1010"
	.align 8
.LC5:
	.string	"strcmp(func0(7, 13), \"1010\") == 0"
.LC6:
	.string	"1111001010"
	.align 8
.LC7:
	.string	"strcmp(func0(964, 977), \"1111001010\") == 0"
.LC8:
	.string	"1111100100"
	.align 8
.LC9:
	.string	"strcmp(func0(996, 997), \"1111100100\") == 0"
.LC10:
	.string	"1011000001"
	.align 8
.LC11:
	.string	"strcmp(func0(560, 851), \"1011000001\") == 0"
.LC12:
	.string	"101101101"
	.align 8
.LC13:
	.string	"strcmp(func0(185, 546), \"101101101\") == 0"
.LC14:
	.string	"110101101"
	.align 8
.LC15:
	.string	"strcmp(func0(362, 496), \"110101101\") == 0"
.LC16:
	.string	"1001110010"
	.align 8
.LC17:
	.string	"strcmp(func0(350, 902), \"1001110010\") == 0"
.LC18:
	.string	"11010111"
	.align 8
.LC19:
	.string	"strcmp(func0(197, 233), \"11010111\") == 0"
	.align 8
.LC20:
	.string	"strcmp(func0(7, 5), \"-1\") == 0"
	.align 8
.LC21:
	.string	"strcmp(func0(5, 1), \"-1\") == 0"
.LC22:
	.string	"101"
	.align 8
.LC23:
	.string	"strcmp(func0(5, 5), \"101\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# problem104.c:27:     assert(strcmp(func0(1, 5), "11") == 0);
	movl	$5, %esi	#,
	movl	$1, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _1
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	movq	%rdx, %rdi	# _1,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L6	#,
# problem104.c:27:     assert(strcmp(func0(1, 5), "11") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp109
	movq	%rax, %rcx	# tmp109,
	movl	$27, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	leaq	.LC3(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	__assert_fail@PLT	#
.L6:
# problem104.c:28:     assert(strcmp(func0(7, 13), "1010") == 0);
	movl	$13, %esi	#,
	movl	$7, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _3
	leaq	.LC4(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L7	#,
# problem104.c:28:     assert(strcmp(func0(7, 13), "1010") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$28, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC5(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L7:
# problem104.c:29:     assert(strcmp(func0(964, 977), "1111001010") == 0);
	movl	$977, %esi	#,
	movl	$964, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _5
	leaq	.LC6(%rip), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _6
	je	.L8	#,
# problem104.c:29:     assert(strcmp(func0(964, 977), "1111001010") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$29, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC7(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L8:
# problem104.c:30:     assert(strcmp(func0(996, 997), "1111100100") == 0);
	movl	$997, %esi	#,
	movl	$996, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _7
	leaq	.LC8(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	movq	%rdx, %rdi	# _7,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _8
	je	.L9	#,
# problem104.c:30:     assert(strcmp(func0(996, 997), "1111100100") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp121
	movq	%rax, %rcx	# tmp121,
	movl	$30, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	leaq	.LC9(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	call	__assert_fail@PLT	#
.L9:
# problem104.c:31:     assert(strcmp(func0(560, 851), "1011000001") == 0);
	movl	$851, %esi	#,
	movl	$560, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _9
	leaq	.LC10(%rip), %rax	#, tmp124
	movq	%rax, %rsi	# tmp124,
	movq	%rdx, %rdi	# _9,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _10
	je	.L10	#,
# problem104.c:31:     assert(strcmp(func0(560, 851), "1011000001") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$31, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC11(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L10:
# problem104.c:32:     assert(strcmp(func0(185, 546), "101101101") == 0);
	movl	$546, %esi	#,
	movl	$185, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _11
	leaq	.LC12(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	movq	%rdx, %rdi	# _11,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _12
	je	.L11	#,
# problem104.c:32:     assert(strcmp(func0(185, 546), "101101101") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp129
	movq	%rax, %rcx	# tmp129,
	movl	$32, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC13(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	__assert_fail@PLT	#
.L11:
# problem104.c:33:     assert(strcmp(func0(362, 496), "110101101") == 0);
	movl	$496, %esi	#,
	movl	$362, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _13
	leaq	.LC14(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	movq	%rdx, %rdi	# _13,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _14
	je	.L12	#,
# problem104.c:33:     assert(strcmp(func0(362, 496), "110101101") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp133
	movq	%rax, %rcx	# tmp133,
	movl	$33, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	leaq	.LC15(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	__assert_fail@PLT	#
.L12:
# problem104.c:34:     assert(strcmp(func0(350, 902), "1001110010") == 0);
	movl	$902, %esi	#,
	movl	$350, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _15
	leaq	.LC16(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	movq	%rdx, %rdi	# _15,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _16
	je	.L13	#,
# problem104.c:34:     assert(strcmp(func0(350, 902), "1001110010") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$34, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC17(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L13:
# problem104.c:35:     assert(strcmp(func0(197, 233), "11010111") == 0);
	movl	$233, %esi	#,
	movl	$197, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _17
	leaq	.LC18(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	movq	%rdx, %rdi	# _17,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _18
	je	.L14	#,
# problem104.c:35:     assert(strcmp(func0(197, 233), "11010111") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$35, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC19(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	__assert_fail@PLT	#
.L14:
# problem104.c:36:     assert(strcmp(func0(7, 5), "-1") == 0);
	movl	$5, %esi	#,
	movl	$7, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _19
	leaq	.LC0(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	movq	%rdx, %rdi	# _19,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _20
	je	.L15	#,
# problem104.c:36:     assert(strcmp(func0(7, 5), "-1") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp145
	movq	%rax, %rcx	# tmp145,
	movl	$36, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	leaq	.LC20(%rip), %rax	#, tmp147
	movq	%rax, %rdi	# tmp147,
	call	__assert_fail@PLT	#
.L15:
# problem104.c:37:     assert(strcmp(func0(5, 1), "-1") == 0);
	movl	$1, %esi	#,
	movl	$5, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _21
	leaq	.LC0(%rip), %rax	#, tmp148
	movq	%rax, %rsi	# tmp148,
	movq	%rdx, %rdi	# _21,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _22
	je	.L16	#,
# problem104.c:37:     assert(strcmp(func0(5, 1), "-1") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp149
	movq	%rax, %rcx	# tmp149,
	movl	$37, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp150
	movq	%rax, %rsi	# tmp150,
	leaq	.LC21(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	__assert_fail@PLT	#
.L16:
# problem104.c:38:     assert(strcmp(func0(5, 5), "101") == 0);
	movl	$5, %esi	#,
	movl	$5, %edi	#,
	call	func0	#
	movq	%rax, %rdx	#, _23
	leaq	.LC22(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	movq	%rdx, %rdi	# _23,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _24
	je	.L17	#,
# problem104.c:38:     assert(strcmp(func0(5, 5), "101") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp153
	movq	%rax, %rcx	# tmp153,
	movl	$38, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp154
	movq	%rax, %rsi	# tmp154,
	leaq	.LC23(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	__assert_fail@PLT	#
.L17:
# problem104.c:40:     return 0;
	movl	$0, %eax	#, _50
# problem104.c:41: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
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
