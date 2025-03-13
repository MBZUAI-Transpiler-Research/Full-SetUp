	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# code.c:5:     const char *uvowel = "AEIOU";
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, -24(%rbp)	# tmp96, uvowel
# code.c:6:     int count = 0;
	movl	$0, -32(%rbp)	#, count
# code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	movl	$0, -28(%rbp)	#, i
# code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	jmp	.L2	#
.L5:
# code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	movl	-28(%rbp), %eax	# i, tmp97
	addl	%eax, %eax	# _1
	movslq	%eax, %rdx	# _1, _2
# code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	movq	-40(%rbp), %rax	# s, tmp98
	addq	%rdx, %rax	# _2, _3
	movzbl	(%rax), %eax	# *_3, _4
# code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	movsbl	%al, %edx	# _4, _5
	movq	-24(%rbp), %rax	# uvowel, tmp99
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# tmp99,
	call	strchr@PLT	#
# code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	testq	%rax, %rax	# _6
	je	.L3	#,
# code.c:9:             count += 1;
	addl	$1, -32(%rbp)	#, count
.L3:
# code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	movl	-28(%rbp), %eax	# i, tmp100
	movslq	%eax, %rdx	# tmp100, _7
	movq	-40(%rbp), %rax	# s, tmp101
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
# code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	testb	%al, %al	# _9
	je	.L4	#,
# code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	movl	-28(%rbp), %eax	# i, tmp102
	addl	%eax, %eax	# _10
	movslq	%eax, %rbx	# _10, _11
# code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	movq	-40(%rbp), %rax	# s, tmp103
	movq	%rax, %rdi	# tmp103,
	call	strlen@PLT	#
# code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	cmpq	%rax, %rbx	# _12, _11
	jb	.L5	#,
.L4:
# code.c:12:     return count;
	movl	-32(%rbp), %eax	# count, _23
# code.c:13: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
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
