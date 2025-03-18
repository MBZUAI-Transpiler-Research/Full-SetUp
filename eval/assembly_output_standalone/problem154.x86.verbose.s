	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%s.%s"
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
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# class_name, class_name
	movq	%rsi, -64(%rbp)	# extensions, extensions
	movl	%edx, -68(%rbp)	# ext_count, ext_count
	movq	%rcx, -80(%rbp)	# output, output
# eval/problem154//code.c:5:     int max_strength = -1000;
	movl	$-1000, -32(%rbp)	#, max_strength
# eval/problem154//code.c:6:     const char* strongest = NULL;
	movq	$0, -16(%rbp)	#, strongest
# eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	movl	$0, -28(%rbp)	#, i
# eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	jmp	.L2	#
.L8:
# eval/problem154//code.c:8:         const char* extension = extensions[i];
	movl	-28(%rbp), %eax	# i, tmp90
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-64(%rbp), %rax	# extensions, tmp91
	addq	%rdx, %rax	# _2, _3
# eval/problem154//code.c:8:         const char* extension = extensions[i];
	movq	(%rax), %rax	# *_3, tmp92
	movq	%rax, -8(%rbp)	# tmp92, extension
# eval/problem154//code.c:9:         int strength = 0;
	movl	$0, -24(%rbp)	#, strength
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	movl	$0, -20(%rbp)	#, j
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	jmp	.L3	#
.L6:
# eval/problem154//code.c:11:             char chr = extension[j];
	movl	-20(%rbp), %eax	# j, tmp93
	movslq	%eax, %rdx	# tmp93, _4
	movq	-8(%rbp), %rax	# extension, tmp94
	addq	%rdx, %rax	# _4, _5
# eval/problem154//code.c:11:             char chr = extension[j];
	movzbl	(%rax), %eax	# *_5, tmp95
	movb	%al, -33(%rbp)	# tmp95, chr
# eval/problem154//code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	cmpb	$64, -33(%rbp)	#, chr
	jle	.L4	#,
# eval/problem154//code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	cmpb	$90, -33(%rbp)	#, chr
	jg	.L4	#,
# eval/problem154//code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	addl	$1, -24(%rbp)	#, strength
.L4:
# eval/problem154//code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	cmpb	$96, -33(%rbp)	#, chr
	jle	.L5	#,
# eval/problem154//code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	cmpb	$122, -33(%rbp)	#, chr
	jg	.L5	#,
# eval/problem154//code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	subl	$1, -24(%rbp)	#, strength
.L5:
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	addl	$1, -20(%rbp)	#, j
.L3:
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	movl	-20(%rbp), %eax	# j, tmp96
	movslq	%eax, %rdx	# tmp96, _6
	movq	-8(%rbp), %rax	# extension, tmp97
	addq	%rdx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	testb	%al, %al	# _8
	jne	.L6	#,
# eval/problem154//code.c:15:         if (strength > max_strength) {
	movl	-24(%rbp), %eax	# strength, tmp98
	cmpl	-32(%rbp), %eax	# max_strength, tmp98
	jle	.L7	#,
# eval/problem154//code.c:16:             max_strength = strength;
	movl	-24(%rbp), %eax	# strength, tmp99
	movl	%eax, -32(%rbp)	# tmp99, max_strength
# eval/problem154//code.c:17:             strongest = extension;
	movq	-8(%rbp), %rax	# extension, tmp100
	movq	%rax, -16(%rbp)	# tmp100, strongest
.L7:
# eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	movl	-28(%rbp), %eax	# i, tmp101
	cmpl	-68(%rbp), %eax	# ext_count, tmp101
	jl	.L8	#,
# eval/problem154//code.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	movq	-16(%rbp), %rcx	# strongest, tmp102
	movq	-56(%rbp), %rdx	# class_name, tmp103
	movq	-80(%rbp), %rax	# output, tmp104
	leaq	.LC0(%rip), %rsi	#, tmp105
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# eval/problem154//code.c:21: }
	nop	
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
