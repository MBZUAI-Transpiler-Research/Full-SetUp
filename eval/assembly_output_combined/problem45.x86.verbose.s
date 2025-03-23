	.file	"problem45.c"
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
	subq	$80, %rsp	#,
	movl	%edi, -68(%rbp)	# x, x
	movl	%esi, -72(%rbp)	# base, base
	movq	%rdx, -80(%rbp)	# out, out
# problem45.c:5: void func0(int x, int base, char *out) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp108
	movq	%rax, -8(%rbp)	# tmp108, D.3983
	xorl	%eax, %eax	# tmp108
# problem45.c:6:     int index = 0;
	movl	$0, -56(%rbp)	#, index
# problem45.c:8:     while (x > 0) {
	jmp	.L2	#
.L3:
# problem45.c:9:         temp[index++] = (x % base) + '0';
	movl	-68(%rbp), %eax	# x, tmp93
	cltd
	idivl	-72(%rbp)	# base
	movl	%edx, %eax	# tmp94, _1
# problem45.c:9:         temp[index++] = (x % base) + '0';
	leal	48(%rax), %ecx	#, _3
# problem45.c:9:         temp[index++] = (x % base) + '0';
	movl	-56(%rbp), %eax	# index, index.0_4
	leal	1(%rax), %edx	#, tmp96
	movl	%edx, -56(%rbp)	# tmp96, index
# problem45.c:9:         temp[index++] = (x % base) + '0';
	movl	%ecx, %edx	# _3, _5
# problem45.c:9:         temp[index++] = (x % base) + '0';
	cltq
	movb	%dl, -48(%rbp,%rax)	# _5, temp[index.0_4]
# problem45.c:10:         x = x / base;
	movl	-68(%rbp), %eax	# x, tmp101
	cltd
	idivl	-72(%rbp)	# base
	movl	%eax, -68(%rbp)	# tmp99, x
.L2:
# problem45.c:8:     while (x > 0) {
	cmpl	$0, -68(%rbp)	#, x
	jg	.L3	#,
# problem45.c:12:     int j = 0;
	movl	$0, -52(%rbp)	#, j
# problem45.c:13:     while(index > 0) {
	jmp	.L4	#
.L5:
# problem45.c:14:         out[j++] = temp[--index];
	subl	$1, -56(%rbp)	#, index
# problem45.c:14:         out[j++] = temp[--index];
	movl	-52(%rbp), %eax	# j, j.1_6
	leal	1(%rax), %edx	#, tmp102
	movl	%edx, -52(%rbp)	# tmp102, j
	movslq	%eax, %rdx	# j.1_6, _7
# problem45.c:14:         out[j++] = temp[--index];
	movq	-80(%rbp), %rax	# out, tmp103
	addq	%rax, %rdx	# tmp103, _8
# problem45.c:14:         out[j++] = temp[--index];
	movl	-56(%rbp), %eax	# index, tmp105
	cltq
	movzbl	-48(%rbp,%rax), %eax	# temp[index_25], _9
# problem45.c:14:         out[j++] = temp[--index];
	movb	%al, (%rdx)	# _9, *_8
.L4:
# problem45.c:13:     while(index > 0) {
	cmpl	$0, -56(%rbp)	#, index
	jg	.L5	#,
# problem45.c:16:     out[j] = '\0';
	movl	-52(%rbp), %eax	# j, tmp106
	movslq	%eax, %rdx	# tmp106, _10
	movq	-80(%rbp), %rax	# out, tmp107
	addq	%rdx, %rax	# _10, _11
# problem45.c:16:     out[j] = '\0';
	movb	$0, (%rax)	#, *_11
# problem45.c:17: }
	nop	
	movq	-8(%rbp), %rax	# D.3983, tmp109
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	je	.L6	#,
	call	__stack_chk_fail@PLT	#
.L6:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
.LC0:
	.string	"22"
.LC1:
	.string	"problem45.c"
.LC2:
	.string	"strcmp(buffer, \"22\") == 0"
.LC3:
	.string	"100"
.LC4:
	.string	"strcmp(buffer, \"100\") == 0"
.LC5:
	.string	"11101010"
	.align 8
.LC6:
	.string	"strcmp(buffer, \"11101010\") == 0"
.LC7:
	.string	"10000"
.LC8:
	.string	"strcmp(buffer, \"10000\") == 0"
.LC9:
	.string	"1000"
.LC10:
	.string	"strcmp(buffer, \"1000\") == 0"
.LC11:
	.string	"111"
.LC12:
	.string	"strcmp(buffer, \"111\") == 0"
.LC13:
	.string	"%d"
.LC14:
	.string	"strcmp(buffer, expected) == 0"
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
	subq	$112, %rsp	#,
# problem45.c:25: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp140
	movq	%rax, -8(%rbp)	# tmp140, D.3985
	xorl	%eax, %eax	# tmp140
# problem45.c:28:     func0(8, 3, buffer);
	leaq	-96(%rbp), %rax	#, tmp92
	movq	%rax, %rdx	# tmp92,
	movl	$3, %esi	#,
	movl	$8, %edi	#,
	call	func0	#
# problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	leaq	-96(%rbp), %rax	#, tmp93
	leaq	.LC0(%rip), %rdx	#, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp93,
	call	strcmp@PLT	#
# problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	testl	%eax, %eax	# _1
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$29, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L8:
# problem45.c:31:     func0(9, 3, buffer);
	leaq	-96(%rbp), %rax	#, tmp98
	movq	%rax, %rdx	# tmp98,
	movl	$3, %esi	#,
	movl	$9, %edi	#,
	call	func0	#
# problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	leaq	-96(%rbp), %rax	#, tmp99
	leaq	.LC3(%rip), %rdx	#, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp99,
	call	strcmp@PLT	#
# problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	testl	%eax, %eax	# _2
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$32, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC4(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L9:
# problem45.c:34:     func0(234, 2, buffer);
	leaq	-96(%rbp), %rax	#, tmp104
	movq	%rax, %rdx	# tmp104,
	movl	$2, %esi	#,
	movl	$234, %edi	#,
	call	func0	#
# problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	leaq	-96(%rbp), %rax	#, tmp105
	leaq	.LC5(%rip), %rdx	#, tmp106
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# tmp105,
	call	strcmp@PLT	#
# problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	testl	%eax, %eax	# _3
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp107
	movq	%rax, %rcx	# tmp107,
	movl	$35, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp108
	movq	%rax, %rsi	# tmp108,
	leaq	.LC6(%rip), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	__assert_fail@PLT	#
.L10:
# problem45.c:37:     func0(16, 2, buffer);
	leaq	-96(%rbp), %rax	#, tmp110
	movq	%rax, %rdx	# tmp110,
	movl	$2, %esi	#,
	movl	$16, %edi	#,
	call	func0	#
# problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	leaq	-96(%rbp), %rax	#, tmp111
	leaq	.LC7(%rip), %rdx	#, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp111,
	call	strcmp@PLT	#
# problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	testl	%eax, %eax	# _4
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$38, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC8(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L11:
# problem45.c:40:     func0(8, 2, buffer);
	leaq	-96(%rbp), %rax	#, tmp116
	movq	%rax, %rdx	# tmp116,
	movl	$2, %esi	#,
	movl	$8, %edi	#,
	call	func0	#
# problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	leaq	-96(%rbp), %rax	#, tmp117
	leaq	.LC9(%rip), %rdx	#, tmp118
	movq	%rdx, %rsi	# tmp118,
	movq	%rax, %rdi	# tmp117,
	call	strcmp@PLT	#
# problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	testl	%eax, %eax	# _5
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$41, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC10(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L12:
# problem45.c:43:     func0(7, 2, buffer);
	leaq	-96(%rbp), %rax	#, tmp122
	movq	%rax, %rdx	# tmp122,
	movl	$2, %esi	#,
	movl	$7, %edi	#,
	call	func0	#
# problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	leaq	-96(%rbp), %rax	#, tmp123
	leaq	.LC11(%rip), %rdx	#, tmp124
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp123,
	call	strcmp@PLT	#
# problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	testl	%eax, %eax	# _6
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp125
	movq	%rax, %rcx	# tmp125,
	movl	$44, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp126
	movq	%rax, %rsi	# tmp126,
	leaq	.LC12(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	__assert_fail@PLT	#
.L13:
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	movl	$2, -100(%rbp)	#, x
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	jmp	.L14	#
.L16:
# problem45.c:48:         sprintf(expected, "%d", x);
	movl	-100(%rbp), %edx	# x, tmp128
	leaq	-48(%rbp), %rax	#, tmp129
	leaq	.LC13(%rip), %rcx	#, tmp130
	movq	%rcx, %rsi	# tmp130,
	movq	%rax, %rdi	# tmp129,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# problem45.c:49:         func0(x, x + 1, buffer);
	movl	-100(%rbp), %eax	# x, tmp131
	leal	1(%rax), %ecx	#, _7
	leaq	-96(%rbp), %rdx	#, tmp132
	movl	-100(%rbp), %eax	# x, tmp133
	movl	%ecx, %esi	# _7,
	movl	%eax, %edi	# tmp133,
	call	func0	#
# problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	leaq	-48(%rbp), %rdx	#, tmp134
	leaq	-96(%rbp), %rax	#, tmp135
	movq	%rdx, %rsi	# tmp134,
	movq	%rax, %rdi	# tmp135,
	call	strcmp@PLT	#
# problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	testl	%eax, %eax	# _8
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$50, %edx	#,
	leaq	.LC1(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC14(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L15:
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	addl	$1, -100(%rbp)	#, x
.L14:
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	cmpl	$7, -100(%rbp)	#, x
	jle	.L16	#,
# problem45.c:53:     return 0;
	movl	$0, %eax	#, _25
# problem45.c:54: }
	movq	-8(%rbp), %rdx	# D.3985, tmp141
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp141
	je	.L18	#,
	call	__stack_chk_fail@PLT	#
.L18:
	leave	
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
