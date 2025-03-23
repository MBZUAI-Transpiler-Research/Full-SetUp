	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"2357BD"
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
	movq	%rdi, -40(%rbp)	# num, num
# eval/problem79//code.c:5:     const char* key = "2357BD";
	leaq	.LC0(%rip), %rax	#, tmp91
	movq	%rax, -24(%rbp)	# tmp91, key
# eval/problem79//code.c:6:     int out = 0;
	movl	$0, -32(%rbp)	#, out
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	movl	$0, -28(%rbp)	#, i
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	jmp	.L2	#
.L4:
# eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	movl	-28(%rbp), %eax	# i, tmp92
	movslq	%eax, %rdx	# tmp92, _1
	movq	-40(%rbp), %rax	# num, tmp93
	addq	%rdx, %rax	# _1, _2
	movzbl	(%rax), %eax	# *_2, _3
# eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	movsbl	%al, %edx	# _3, _4
	movq	-24(%rbp), %rax	# key, tmp94
	movl	%edx, %esi	# _4,
	movq	%rax, %rdi	# tmp94,
	call	strchr@PLT	#
# eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	testq	%rax, %rax	# _5
	je	.L3	#,
# eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	addl	$1, -32(%rbp)	#, out
.L3:
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	movl	-28(%rbp), %eax	# i, tmp95
	movslq	%eax, %rbx	# tmp95, _6
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	movq	-40(%rbp), %rax	# num, tmp96
	movq	%rax, %rdi	# tmp96,
	call	strlen@PLT	#
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	cmpq	%rax, %rbx	# _7, _6
	jb	.L4	#,
# eval/problem79//code.c:10:     return out;
	movl	-32(%rbp), %eax	# out, _16
# eval/problem79//code.c:11: }
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
