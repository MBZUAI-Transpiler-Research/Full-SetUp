	.file	"problem157.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"m"
.LC1:
	.string	"cm"
.LC2:
	.string	"d"
.LC3:
	.string	"cd"
.LC4:
	.string	"c"
.LC5:
	.string	"xc"
.LC6:
	.string	"l"
.LC7:
	.string	"xl"
.LC8:
	.string	"x"
.LC9:
	.string	"ix"
.LC10:
	.string	"v"
.LC11:
	.string	"iv"
.LC12:
	.string	"i"
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
	subq	$208, %rsp	#,
	movl	%edi, -196(%rbp)	# number, number
	movq	%rsi, -208(%rbp)	# result, result
# problem157.c:4: void func0(int number, char *result) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp106
	movq	%rax, -8(%rbp)	# tmp106, D.2614
	xorl	%eax, %eax	# tmp106
# problem157.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	leaq	.LC0(%rip), %rax	#, tmp85
	movq	%rax, -112(%rbp)	# tmp85, rep[0]
	leaq	.LC1(%rip), %rax	#, tmp86
	movq	%rax, -104(%rbp)	# tmp86, rep[1]
	leaq	.LC2(%rip), %rax	#, tmp87
	movq	%rax, -96(%rbp)	# tmp87, rep[2]
	leaq	.LC3(%rip), %rax	#, tmp88
	movq	%rax, -88(%rbp)	# tmp88, rep[3]
	leaq	.LC4(%rip), %rax	#, tmp89
	movq	%rax, -80(%rbp)	# tmp89, rep[4]
	leaq	.LC5(%rip), %rax	#, tmp90
	movq	%rax, -72(%rbp)	# tmp90, rep[5]
	leaq	.LC6(%rip), %rax	#, tmp91
	movq	%rax, -64(%rbp)	# tmp91, rep[6]
	leaq	.LC7(%rip), %rax	#, tmp92
	movq	%rax, -56(%rbp)	# tmp92, rep[7]
	leaq	.LC8(%rip), %rax	#, tmp93
	movq	%rax, -48(%rbp)	# tmp93, rep[8]
	leaq	.LC9(%rip), %rax	#, tmp94
	movq	%rax, -40(%rbp)	# tmp94, rep[9]
	leaq	.LC10(%rip), %rax	#, tmp95
	movq	%rax, -32(%rbp)	# tmp95, rep[10]
	leaq	.LC11(%rip), %rax	#, tmp96
	movq	%rax, -24(%rbp)	# tmp96, rep[11]
	leaq	.LC12(%rip), %rax	#, tmp97
	movq	%rax, -16(%rbp)	# tmp97, rep[12]
# problem157.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	movl	$1000, -176(%rbp)	#, num[0]
	movl	$900, -172(%rbp)	#, num[1]
	movl	$500, -168(%rbp)	#, num[2]
	movl	$400, -164(%rbp)	#, num[3]
	movl	$100, -160(%rbp)	#, num[4]
	movl	$90, -156(%rbp)	#, num[5]
	movl	$50, -152(%rbp)	#, num[6]
	movl	$40, -148(%rbp)	#, num[7]
	movl	$10, -144(%rbp)	#, num[8]
	movl	$9, -140(%rbp)	#, num[9]
	movl	$5, -136(%rbp)	#, num[10]
	movl	$4, -132(%rbp)	#, num[11]
	movl	$1, -128(%rbp)	#, num[12]
# problem157.c:7:     int pos = 0;
	movl	$0, -180(%rbp)	#, pos
# problem157.c:8:     result[0] = '\0';
	movq	-208(%rbp), %rax	# result, tmp98
	movb	$0, (%rax)	#, *result_37(D)
# problem157.c:10:     while(number > 0) {
	jmp	.L2	#
.L4:
# problem157.c:12:             strcat(result, rep[pos]);
	movl	-180(%rbp), %eax	# pos, tmp100
	cltq
	movq	-112(%rbp,%rax,8), %rdx	# rep[pos_6], _1
	movq	-208(%rbp), %rax	# result, tmp101
	movq	%rdx, %rsi	# _1,
	movq	%rax, %rdi	# tmp101,
	call	strcat@PLT	#
# problem157.c:13:             number -= num[pos];
	movl	-180(%rbp), %eax	# pos, tmp103
	cltq
	movl	-176(%rbp,%rax,4), %eax	# num[pos_6], _2
# problem157.c:13:             number -= num[pos];
	subl	%eax, -196(%rbp)	# _2, number
.L3:
# problem157.c:11:         while (number >= num[pos]) {
	movl	-180(%rbp), %eax	# pos, tmp105
	cltq
	movl	-176(%rbp,%rax,4), %eax	# num[pos_6], _3
# problem157.c:11:         while (number >= num[pos]) {
	cmpl	%eax, -196(%rbp)	# _3, number
	jge	.L4	#,
# problem157.c:15:         if (number > 0) pos++;
	cmpl	$0, -196(%rbp)	#, number
	jle	.L2	#,
# problem157.c:15:         if (number > 0) pos++;
	addl	$1, -180(%rbp)	#, pos
.L2:
# problem157.c:10:     while(number > 0) {
	cmpl	$0, -196(%rbp)	#, number
	jg	.L3	#,
# problem157.c:17: }
	nop	
	movq	-8(%rbp), %rax	# D.2614, tmp107
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp107
	je	.L6	#,
	call	__stack_chk_fail@PLT	#
.L6:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC13:
	.string	"xix"
.LC14:
	.string	"problem157.c"
.LC15:
	.string	"strcmp(result, \"xix\") == 0"
.LC16:
	.string	"clii"
.LC17:
	.string	"strcmp(result, \"clii\") == 0"
.LC18:
	.string	"ccli"
.LC19:
	.string	"strcmp(result, \"ccli\") == 0"
.LC20:
	.string	"cdxxvi"
.LC21:
	.string	"strcmp(result, \"cdxxvi\") == 0"
.LC22:
	.string	"strcmp(result, \"d\") == 0"
.LC23:
	.string	"strcmp(result, \"i\") == 0"
.LC24:
	.string	"strcmp(result, \"iv\") == 0"
.LC25:
	.string	"xliii"
.LC26:
	.string	"strcmp(result, \"xliii\") == 0"
.LC27:
	.string	"strcmp(result, \"xc\") == 0"
.LC28:
	.string	"xciv"
.LC29:
	.string	"strcmp(result, \"xciv\") == 0"
.LC30:
	.string	"dxxxii"
.LC31:
	.string	"strcmp(result, \"dxxxii\") == 0"
.LC32:
	.string	"strcmp(result, \"cm\") == 0"
.LC33:
	.string	"cmxciv"
.LC34:
	.string	"strcmp(result, \"cmxciv\") == 0"
.LC35:
	.string	"strcmp(result, \"m\") == 0"
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
	subq	$80, %rsp	#,
# problem157.c:24: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp183
	movq	%rax, -8(%rbp)	# tmp183, D.2629
	xorl	%eax, %eax	# tmp183
# problem157.c:27:     func0(19, result);
	leaq	-80(%rbp), %rax	#, tmp98
	movq	%rax, %rsi	# tmp98,
	movl	$19, %edi	#,
	call	func0	#
# problem157.c:28:     assert(strcmp(result, "xix") == 0);
	leaq	-80(%rbp), %rax	#, tmp99
	leaq	.LC13(%rip), %rdx	#, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp99,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _1
	je	.L8	#,
# problem157.c:28:     assert(strcmp(result, "xix") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$28, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC15(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L8:
# problem157.c:30:     func0(152, result);
	leaq	-80(%rbp), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	movl	$152, %edi	#,
	call	func0	#
# problem157.c:31:     assert(strcmp(result, "clii") == 0);
	leaq	-80(%rbp), %rax	#, tmp105
	leaq	.LC16(%rip), %rdx	#, tmp106
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp105,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L9	#,
# problem157.c:31:     assert(strcmp(result, "clii") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$31, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC17(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L9:
# problem157.c:33:     func0(251, result);
	leaq	-80(%rbp), %rax	#, tmp110
	movq	%rax, %rsi	# tmp110,
	movl	$251, %edi	#,
	call	func0	#
# problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	leaq	-80(%rbp), %rax	#, tmp111
	leaq	.LC18(%rip), %rdx	#, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp111,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _3
	je	.L10	#,
# problem157.c:34:     assert(strcmp(result, "ccli") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$34, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC19(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L10:
# problem157.c:36:     func0(426, result);
	leaq	-80(%rbp), %rax	#, tmp116
	movq	%rax, %rsi	# tmp116,
	movl	$426, %edi	#,
	call	func0	#
# problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	leaq	-80(%rbp), %rax	#, tmp117
	leaq	.LC20(%rip), %rdx	#, tmp118
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp117,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L11	#,
# problem157.c:37:     assert(strcmp(result, "cdxxvi") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$37, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC21(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L11:
# problem157.c:39:     func0(500, result);
	leaq	-80(%rbp), %rax	#, tmp122
	movq	%rax, %rsi	# tmp122,
	movl	$500, %edi	#,
	call	func0	#
# problem157.c:40:     assert(strcmp(result, "d") == 0);
	leaq	-80(%rbp), %rax	#, tmp123
	leaq	.LC2(%rip), %rdx	#, tmp124
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp123,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _5
	je	.L12	#,
# problem157.c:40:     assert(strcmp(result, "d") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$40, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC22(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L12:
# problem157.c:42:     func0(1, result);
	leaq	-80(%rbp), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	movl	$1, %edi	#,
	call	func0	#
# problem157.c:43:     assert(strcmp(result, "i") == 0);
	leaq	-80(%rbp), %rax	#, tmp129
	leaq	.LC12(%rip), %rdx	#, tmp130
	movq	%rdx, %rsi	# tmp130,
	movq	%rax, %rdi	# tmp129,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _6
	je	.L13	#,
# problem157.c:43:     assert(strcmp(result, "i") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp131
	movq	%rax, %rcx	# tmp131,
	movl	$43, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp132
	movq	%rax, %rsi	# tmp132,
	leaq	.LC23(%rip), %rax	#, tmp133
	movq	%rax, %rdi	# tmp133,
	call	__assert_fail@PLT	#
.L13:
# problem157.c:45:     func0(4, result);
	leaq	-80(%rbp), %rax	#, tmp134
	movq	%rax, %rsi	# tmp134,
	movl	$4, %edi	#,
	call	func0	#
# problem157.c:46:     assert(strcmp(result, "iv") == 0);
	leaq	-80(%rbp), %rax	#, tmp135
	leaq	.LC11(%rip), %rdx	#, tmp136
	movq	%rdx, %rsi	# tmp136,
	movq	%rax, %rdi	# tmp135,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _7
	je	.L14	#,
# problem157.c:46:     assert(strcmp(result, "iv") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp137
	movq	%rax, %rcx	# tmp137,
	movl	$46, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp138
	movq	%rax, %rsi	# tmp138,
	leaq	.LC24(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	__assert_fail@PLT	#
.L14:
# problem157.c:48:     func0(43, result);
	leaq	-80(%rbp), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	movl	$43, %edi	#,
	call	func0	#
# problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	leaq	-80(%rbp), %rax	#, tmp141
	leaq	.LC25(%rip), %rdx	#, tmp142
	movq	%rdx, %rsi	# tmp142,
	movq	%rax, %rdi	# tmp141,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _8
	je	.L15	#,
# problem157.c:49:     assert(strcmp(result, "xliii") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$49, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC26(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L15:
# problem157.c:51:     func0(90, result);
	leaq	-80(%rbp), %rax	#, tmp146
	movq	%rax, %rsi	# tmp146,
	movl	$90, %edi	#,
	call	func0	#
# problem157.c:52:     assert(strcmp(result, "xc") == 0);
	leaq	-80(%rbp), %rax	#, tmp147
	leaq	.LC5(%rip), %rdx	#, tmp148
	movq	%rdx, %rsi	# tmp148,
	movq	%rax, %rdi	# tmp147,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _9
	je	.L16	#,
# problem157.c:52:     assert(strcmp(result, "xc") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp149
	movq	%rax, %rcx	# tmp149,
	movl	$52, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp150
	movq	%rax, %rsi	# tmp150,
	leaq	.LC27(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	__assert_fail@PLT	#
.L16:
# problem157.c:54:     func0(94, result);
	leaq	-80(%rbp), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	movl	$94, %edi	#,
	call	func0	#
# problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	leaq	-80(%rbp), %rax	#, tmp153
	leaq	.LC28(%rip), %rdx	#, tmp154
	movq	%rdx, %rsi	# tmp154,
	movq	%rax, %rdi	# tmp153,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _10
	je	.L17	#,
# problem157.c:55:     assert(strcmp(result, "xciv") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp155
	movq	%rax, %rcx	# tmp155,
	movl	$55, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp156
	movq	%rax, %rsi	# tmp156,
	leaq	.LC29(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	__assert_fail@PLT	#
.L17:
# problem157.c:57:     func0(532, result);
	leaq	-80(%rbp), %rax	#, tmp158
	movq	%rax, %rsi	# tmp158,
	movl	$532, %edi	#,
	call	func0	#
# problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	leaq	-80(%rbp), %rax	#, tmp159
	leaq	.LC30(%rip), %rdx	#, tmp160
	movq	%rdx, %rsi	# tmp160,
	movq	%rax, %rdi	# tmp159,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _11
	je	.L18	#,
# problem157.c:58:     assert(strcmp(result, "dxxxii") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp161
	movq	%rax, %rcx	# tmp161,
	movl	$58, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp162
	movq	%rax, %rsi	# tmp162,
	leaq	.LC31(%rip), %rax	#, tmp163
	movq	%rax, %rdi	# tmp163,
	call	__assert_fail@PLT	#
.L18:
# problem157.c:60:     func0(900, result);
	leaq	-80(%rbp), %rax	#, tmp164
	movq	%rax, %rsi	# tmp164,
	movl	$900, %edi	#,
	call	func0	#
# problem157.c:61:     assert(strcmp(result, "cm") == 0);
	leaq	-80(%rbp), %rax	#, tmp165
	leaq	.LC1(%rip), %rdx	#, tmp166
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp165,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _12
	je	.L19	#,
# problem157.c:61:     assert(strcmp(result, "cm") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp167
	movq	%rax, %rcx	# tmp167,
	movl	$61, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp168
	movq	%rax, %rsi	# tmp168,
	leaq	.LC32(%rip), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	__assert_fail@PLT	#
.L19:
# problem157.c:63:     func0(994, result);
	leaq	-80(%rbp), %rax	#, tmp170
	movq	%rax, %rsi	# tmp170,
	movl	$994, %edi	#,
	call	func0	#
# problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	leaq	-80(%rbp), %rax	#, tmp171
	leaq	.LC33(%rip), %rdx	#, tmp172
	movq	%rdx, %rsi	# tmp172,
	movq	%rax, %rdi	# tmp171,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _13
	je	.L20	#,
# problem157.c:64:     assert(strcmp(result, "cmxciv") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp173
	movq	%rax, %rcx	# tmp173,
	movl	$64, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp174
	movq	%rax, %rsi	# tmp174,
	leaq	.LC34(%rip), %rax	#, tmp175
	movq	%rax, %rdi	# tmp175,
	call	__assert_fail@PLT	#
.L20:
# problem157.c:66:     func0(1000, result);
	leaq	-80(%rbp), %rax	#, tmp176
	movq	%rax, %rsi	# tmp176,
	movl	$1000, %edi	#,
	call	func0	#
# problem157.c:67:     assert(strcmp(result, "m") == 0);
	leaq	-80(%rbp), %rax	#, tmp177
	leaq	.LC0(%rip), %rdx	#, tmp178
	movq	%rdx, %rsi	# tmp178,
	movq	%rax, %rdi	# tmp177,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _14
	je	.L21	#,
# problem157.c:67:     assert(strcmp(result, "m") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp179
	movq	%rax, %rcx	# tmp179,
	movl	$67, %edx	#,
	leaq	.LC14(%rip), %rax	#, tmp180
	movq	%rax, %rsi	# tmp180,
	leaq	.LC35(%rip), %rax	#, tmp181
	movq	%rax, %rdi	# tmp181,
	call	__assert_fail@PLT	#
.L21:
# problem157.c:69:     return 0;
	movl	$0, %eax	#, _44
# problem157.c:70: }
	movq	-8(%rbp), %rdx	# D.2629, tmp184
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp184
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
