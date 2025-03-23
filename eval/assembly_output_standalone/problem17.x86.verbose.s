	.file	"code.c"
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
	subq	$1072, %rsp	#,
	movq	%rdi, -1064(%rbp)	# str, str
# eval/problem17//code.c:5: int func0(const char *str) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	movq	%rax, -8(%rbp)	# tmp115, D.2651
	xorl	%eax, %eax	# tmp115
# eval/problem17//code.c:6:     int count = 0;
	movl	$0, -1048(%rbp)	#, count
# eval/problem17//code.c:7:     int char_map[256] = {0};
	leaq	-1040(%rbp), %rdx	#, tmp105
	movl	$0, %eax	#, tmp106
	movl	$128, %ecx	#, tmp107
	movq	%rdx, %rdi	# tmp105, tmp105
	rep stosq
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	movl	$0, -1044(%rbp)	#, index
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	jmp	.L2	#
.L4:
# eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	movl	-1044(%rbp), %eax	# index, tmp108
	movslq	%eax, %rdx	# tmp108, _1
	movq	-1064(%rbp), %rax	# str, tmp109
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	movzbl	%al, %eax	# _4, _5
	movl	%eax, %edi	# _5,
	call	tolower@PLT	#
# eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	movb	%al, -1049(%rbp)	# _6, ch
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	movsbl	-1049(%rbp), %eax	# ch, _7
	cltq
	movl	-1040(%rbp,%rax,4), %eax	# char_map[_7], _8
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	testl	%eax, %eax	# _8
	jne	.L3	#,
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	call	__ctype_b_loc@PLT	#
	movq	(%rax), %rdx	# *_9, _10
	movzbl	-1049(%rbp), %eax	# ch, ch.0_11
	movzbl	%al, %eax	# ch.0_11, _12
	addq	%rax, %rax	# _13
	addq	%rdx, %rax	# _10, _14
	movzwl	(%rax), %eax	# *_14, _15
	movzwl	%ax, %eax	# _15, _16
	andl	$1024, %eax	#, _17
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	testl	%eax, %eax	# _17
	je	.L3	#,
# eval/problem17//code.c:13:             char_map[ch] = 1;
	movsbl	-1049(%rbp), %eax	# ch, _18
# eval/problem17//code.c:13:             char_map[ch] = 1;
	cltq
	movl	$1, -1040(%rbp,%rax,4)	#, char_map[_18]
# eval/problem17//code.c:14:             count++;
	addl	$1, -1048(%rbp)	#, count
.L3:
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	addl	$1, -1044(%rbp)	#, index
.L2:
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	movl	-1044(%rbp), %eax	# index, tmp112
	movslq	%eax, %rdx	# tmp112, _19
	movq	-1064(%rbp), %rax	# str, tmp113
	addq	%rdx, %rax	# _19, _20
	movzbl	(%rax), %eax	# *_20, _21
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	testb	%al, %al	# _21
	jne	.L4	#,
# eval/problem17//code.c:18:     return count;
	movl	-1048(%rbp), %eax	# count, _32
# eval/problem17//code.c:19: }
	movq	-8(%rbp), %rdx	# D.2651, tmp116
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp116
	je	.L6	#,
	call	__stack_chk_fail@PLT	#
.L6:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
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
