	.file	"problem82.c"
	.text
	.section	.rodata
.LC1:
	.string	"A+"
.LC3:
	.string	"A"
.LC5:
	.string	"A-"
.LC7:
	.string	"B+"
.LC9:
	.string	"B"
.LC11:
	.string	"B-"
.LC13:
	.string	"C+"
.LC15:
	.string	"C"
.LC17:
	.string	"C-"
.LC19:
	.string	"D+"
.LC21:
	.string	"D"
.LC23:
	.string	"D-"
.LC24:
	.string	"E"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L28:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC0(%rip), %xmm0
	jb	.L42
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L42:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC2(%rip), %xmm0
	jbe	.L43
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L43:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC4(%rip), %xmm0
	jbe	.L44
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L44:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC6(%rip), %xmm0
	jbe	.L45
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L45:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC8(%rip), %xmm0
	jbe	.L46
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC9(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L46:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC10(%rip), %xmm0
	jbe	.L47
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC11(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L47:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC12(%rip), %xmm0
	jbe	.L48
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC13(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L48:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC14(%rip), %xmm0
	jbe	.L49
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC15(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L49:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC16(%rip), %xmm0
	jbe	.L50
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L50:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC18(%rip), %xmm0
	jbe	.L51
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L51:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC20(%rip), %xmm0
	jbe	.L52
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC21(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L52:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	comisd	.LC22(%rip), %xmm0
	jbe	.L53
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC23(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L5
.L53:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC24(%rip), %rdx
	movq	%rdx, (%rax)
.L5:
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L28
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L55
.L58:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	addl	$1, -4(%rbp)
.L55:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L58
	movl	$1, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC30:
	.string	"problem82.c"
.LC31:
	.string	"issame(result1, expected1, 5)"
.LC33:
	.string	"issame(result2, expected2, 1)"
.LC35:
	.string	"issame(result3, expected3, 1)"
.LC37:
	.string	"issame(result4, expected4, 1)"
.LC43:
	.string	"issame(result5, expected5, 5)"
.LC45:
	.string	"issame(result6, expected6, 2)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movss	.LC25(%rip), %xmm0
	movss	%xmm0, -160(%rbp)
	movss	.LC26(%rip), %xmm0
	movss	%xmm0, -156(%rbp)
	movss	.LC27(%rip), %xmm0
	movss	%xmm0, -152(%rbp)
	movss	.LC28(%rip), %xmm0
	movss	%xmm0, -148(%rbp)
	movss	.LC29(%rip), %xmm0
	movss	%xmm0, -144(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	-160(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -272(%rbp)
	leaq	-96(%rbp), %rcx
	movq	-272(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L60
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L60:
	movq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movss	.LC32(%rip), %xmm0
	movss	%xmm0, -220(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, -208(%rbp)
	leaq	-220(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -264(%rbp)
	leaq	-208(%rbp), %rcx
	movq	-264(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L61
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$48, %edx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L61:
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movss	.LC34(%rip), %xmm0
	movss	%xmm0, -216(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -200(%rbp)
	leaq	-216(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -256(%rbp)
	leaq	-200(%rbp), %rcx
	movq	-256(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L62
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L62:
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	pxor	%xmm0, %xmm0
	movss	%xmm0, -212(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -192(%rbp)
	leaq	-212(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -248(%rbp)
	leaq	-192(%rbp), %rcx
	movq	-248(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L63
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L63:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movss	.LC38(%rip), %xmm0
	movss	%xmm0, -128(%rbp)
	movss	.LC39(%rip), %xmm0
	movss	%xmm0, -124(%rbp)
	movss	.LC40(%rip), %xmm0
	movss	%xmm0, -120(%rbp)
	movss	.LC41(%rip), %xmm0
	movss	%xmm0, -116(%rbp)
	movss	.LC42(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	leaq	.LC21(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC17(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	-128(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -240(%rbp)
	leaq	-48(%rbp), %rcx
	movq	-240(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L64
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$66, %edx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC43(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L64:
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	pxor	%xmm0, %xmm0
	movss	%xmm0, -184(%rbp)
	movss	.LC44(%rip), %xmm0
	movss	%xmm0, -180(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, -176(%rbp)
	leaq	.LC23(%rip), %rax
	movq	%rax, -168(%rbp)
	leaq	-184(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	func0
	movq	%rax, -232(%rbp)
	leaq	-176(%rbp), %rcx
	movq	-232(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	issame
	testb	%al, %al
	jne	.L65
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax
	movq	%rax, %rcx
	movl	$72, %edx
	leaq	.LC30(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC45(%rip), %rax
	movq	%rax, %rdi
	call	__assert_fail@PLT
.L65:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L67
	call	__stack_chk_fail@PLT
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align 8
.LC0:
	.long	-1841681977
	.long	1074790347
	.align 8
.LC2:
	.long	123695058
	.long	1074633166
	.align 8
.LC4:
	.long	-735298401
	.long	1074423450
	.align 8
.LC6:
	.long	1841681977
	.long	1074266164
	.align 8
.LC8:
	.long	123695058
	.long	1074108878
	.align 8
.LC10:
	.long	-735298401
	.long	1073899162
	.align 8
.LC12:
	.long	1841681977
	.long	1073741876
	.align 8
.LC14:
	.long	247390116
	.long	1073427356
	.align 8
.LC16:
	.long	-1470596802
	.long	1073007925
	.align 8
.LC18:
	.long	-611603343
	.long	1072693352
	.align 8
.LC20:
	.long	494780232
	.long	1072064312
	.align 8
.LC22:
	.long	-350469331
	.long	1058682594
	.align 4
.LC25:
	.long	1082130432
	.align 4
.LC26:
	.long	1077936128
	.align 4
.LC27:
	.long	1071225242
	.align 4
.LC28:
	.long	1073741824
	.align 4
.LC29:
	.long	1080033280
	.align 4
.LC32:
	.long	1067030938
	.align 4
.LC34:
	.long	1056964608
	.align 4
.LC38:
	.long	1065353216
	.align 4
.LC39:
	.long	1050253722
	.align 4
.LC40:
	.long	1069547520
	.align 4
.LC41:
	.long	1077097267
	.align 4
.LC42:
	.long	1079194419
	.align 4
.LC44:
	.long	1060320051
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
