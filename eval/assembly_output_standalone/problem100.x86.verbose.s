	.file	"code.c"
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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# value, value
# eval/problem100//code.c:7:     w = atof(value);
	movq	-24(%rbp), %rax	# value, tmp88
	movq	%rax, %rdi	# tmp88,
	call	atof@PLT	#
	movq	%xmm0, %rax	#, tmp89
	movq	%rax, -8(%rbp)	# tmp89, w
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	pxor	%xmm0, %xmm0	# tmp90
	comisd	-8(%rbp), %xmm0	# w, tmp90
	jbe	.L7	#,
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	movsd	-8(%rbp), %xmm0	# w, tmp91
	movsd	.LC1(%rip), %xmm1	#, tmp92
	subsd	%xmm1, %xmm0	# tmp92, tmp91
	movq	%xmm0, %rax	# tmp91, _1
	movq	%rax, %xmm0	# _1,
	call	ceil@PLT	#
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvttsd2sil	%xmm0, %eax	# _2, iftmp.0_5
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	jmp	.L5	#
.L7:
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	movsd	-8(%rbp), %xmm1	# w, tmp93
	movsd	.LC1(%rip), %xmm0	#, tmp94
	addsd	%xmm0, %xmm1	# tmp94, tmp93
	movq	%xmm1, %rax	# tmp93, _3
	movq	%rax, %xmm0	# _3,
	call	floor@PLT	#
# eval/problem100//code.c:8:     return (int)(w < 0 ? ceil(w - 0.5) : floor(w + 0.5));
	cvttsd2sil	%xmm0, %eax	# _4, iftmp.0_5
.L5:
# eval/problem100//code.c:9: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1071644672
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
