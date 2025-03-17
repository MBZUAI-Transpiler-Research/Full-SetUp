	.file	"problem99.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"AEIOU"
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
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# s, s
# problem99.c:5:     const char *uvowel = "AEIOU";
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, -24(%rbp)	# tmp96, uvowel
# problem99.c:6:     int count = 0;
	movl	$0, -32(%rbp)	#, count
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	movl	$0, -28(%rbp)	#, i
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	jmp	.L2	#
.L5:
# problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	movl	-28(%rbp), %eax	# i, tmp97
	addl	%eax, %eax	# _1
	movslq	%eax, %rdx	# _1, _2
# problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	movq	-40(%rbp), %rax	# s, tmp98
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %eax	# *_3, _4
# problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	movsbl	%al, %edx	# _4, _5
	movq	-24(%rbp), %rax	# uvowel, tmp99
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# tmp99,
	call	strchr@PLT	#
# problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	testq	%rax, %rax	# _6
	je	.L3	#,
# problem99.c:9:             count += 1;
	addl	$1, -32(%rbp)	#, count
.L3:
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	movl	-28(%rbp), %eax	# i, tmp100
	movslq	%eax, %rdx	# tmp100, _7
	movq	-40(%rbp), %rax	# s, tmp101
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	testb	%al, %al	# _9
	je	.L4	#,
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	movl	-28(%rbp), %eax	# i, tmp102
	addl	%eax, %eax	# _10
	movslq	%eax, %rbx	# _10, _11
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	movq	-40(%rbp), %rax	# s, tmp103
	movq	%rax, %rdi	# tmp103,
	call	strlen@PLT	#
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cmpq	%rax, %rbx	# _12, _11
	jb	.L5	#,
.L4:
# problem99.c:12:     return count;
	movl	-32(%rbp), %eax	# count, _23
# problem99.c:13: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"aBCdEf"
.LC2:
	.string	"problem99.c"
.LC3:
	.string	"func0(\"aBCdEf\") == 1"
.LC4:
	.string	"abcdefg"
.LC5:
	.string	"func0(\"abcdefg\") == 0"
.LC6:
	.string	"dBBE"
.LC7:
	.string	"func0(\"dBBE\") == 0"
.LC8:
	.string	"B"
.LC9:
	.string	"func0(\"B\") == 0"
.LC10:
	.string	"U"
.LC11:
	.string	"func0(\"U\") == 1"
.LC12:
	.string	""
.LC13:
	.string	"func0(\"\") == 0"
.LC14:
	.string	"EEEE"
.LC15:
	.string	"func0(\"EEEE\") == 2"
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
# problem99.c:20:     assert(func0("aBCdEf") == 1);
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	func0	#
# problem99.c:20:     assert(func0("aBCdEf") == 1);
	cmpl	$1, %eax	#, _1
	je	.L8	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp92
	movq	%rax, %rcx	# tmp92,
	movl	$20, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC3(%rip), %rax	#, tmp94
	movq	%rax, %rdi	# tmp94,
	call	__assert_fail@PLT	#
.L8:
# problem99.c:21:     assert(func0("abcdefg") == 0);
	leaq	.LC4(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	func0	#
# problem99.c:21:     assert(func0("abcdefg") == 0);
	testl	%eax, %eax	# _2
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp96
	movq	%rax, %rcx	# tmp96,
	movl	$21, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp97
	movq	%rax, %rsi	# tmp97,
	leaq	.LC5(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	__assert_fail@PLT	#
.L9:
# problem99.c:22:     assert(func0("dBBE") == 0);
	leaq	.LC6(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	func0	#
# problem99.c:22:     assert(func0("dBBE") == 0);
	testl	%eax, %eax	# _3
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp100
	movq	%rax, %rcx	# tmp100,
	movl	$22, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp101
	movq	%rax, %rsi	# tmp101,
	leaq	.LC7(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	__assert_fail@PLT	#
.L10:
# problem99.c:23:     assert(func0("B") == 0);
	leaq	.LC8(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	func0	#
# problem99.c:23:     assert(func0("B") == 0);
	testl	%eax, %eax	# _4
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$23, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC9(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L11:
# problem99.c:24:     assert(func0("U") == 1);
	leaq	.LC10(%rip), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	func0	#
# problem99.c:24:     assert(func0("U") == 1);
	cmpl	$1, %eax	#, _5
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$24, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC11(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L12:
# problem99.c:25:     assert(func0("") == 0);
	leaq	.LC12(%rip), %rax	#, tmp111
	movq	%rax, %rdi	# tmp111,
	call	func0	#
# problem99.c:25:     assert(func0("") == 0);
	testl	%eax, %eax	# _6
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp112
	movq	%rax, %rcx	# tmp112,
	movl	$25, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp113
	movq	%rax, %rsi	# tmp113,
	leaq	.LC13(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	call	__assert_fail@PLT	#
.L13:
# problem99.c:26:     assert(func0("EEEE") == 2);
	leaq	.LC14(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	func0	#
# problem99.c:26:     assert(func0("EEEE") == 2);
	cmpl	$2, %eax	#, _7
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp116
	movq	%rax, %rcx	# tmp116,
	movl	$26, %edx	#,
	leaq	.LC2(%rip), %rax	#, tmp117
	movq	%rax, %rsi	# tmp117,
	leaq	.LC15(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	__assert_fail@PLT	#
.L14:
# problem99.c:28:     return 0;
	movl	$0, %eax	#, _23
# problem99.c:29: }
	popq	%rbp	#
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
