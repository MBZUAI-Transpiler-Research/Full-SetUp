	.file	"quaternions.c"
	.text
	.section	.rodata
.LC1:
	.string	"%s: Invalid input."
	.text
	.globl	quat_from_euler
	.type	quat_from_euler, @function
quat_from_euler:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.L2
	leaq	__func__.2(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	jmp	.L4
.L2:
	movq	-128(%rbp), %rax
	movsd	16(%rax), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	libmin_cos@PLT
	movq	%xmm0, %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	movsd	16(%rax), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	libmin_sin@PLT
	movq	%xmm0, %rax
	movq	%rax, -104(%rbp)
	movq	-128(%rbp), %rax
	movsd	8(%rax), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	libmin_cos@PLT
	movq	%xmm0, %rax
	movq	%rax, -96(%rbp)
	movq	-128(%rbp), %rax
	movsd	8(%rax), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	libmin_sin@PLT
	movq	%xmm0, %rax
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	libmin_cos@PLT
	movq	%xmm0, %rax
	movq	%rax, -80(%rbp)
	movq	-128(%rbp), %rax
	movsd	(%rax), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	libmin_sin@PLT
	movq	%xmm0, %rax
	movq	%rax, -72(%rbp)
	movsd	-80(%rbp), %xmm0
	mulsd	-96(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-112(%rbp), %xmm1
	movsd	-72(%rbp), %xmm0
	mulsd	-88(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-72(%rbp), %xmm0
	mulsd	-96(%rbp), %xmm0
	mulsd	-112(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1
	mulsd	-88(%rbp), %xmm1
	mulsd	-104(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-80(%rbp), %xmm0
	mulsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-112(%rbp), %xmm1
	movsd	-72(%rbp), %xmm0
	mulsd	-96(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-80(%rbp), %xmm0
	mulsd	-96(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1
	mulsd	-88(%rbp), %xmm1
	mulsd	-112(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-120(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L4:
	movq	-120(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	quat_from_euler, .-quat_from_euler
	.globl	euler_from_quat
	.type	euler_from_quat, @function
euler_from_quat:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L6
	leaq	__func__.1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.L8
.L6:
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm2
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm0, %xmm3
	subsd	%xmm1, %xmm3
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm2
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movapd	%xmm3, %xmm1
	movq	%rax, %xmm0
	call	libmin_atan2@PLT
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm2
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_asin@PLT
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm1
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm2
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	movapd	%xmm0, %xmm3
	subsd	%xmm1, %xmm3
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm2
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movapd	%xmm3, %xmm1
	movq	%rax, %xmm0
	call	libmin_atan2@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
.L8:
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	euler_from_quat, .-euler_from_quat
	.globl	quaternion_multiply
	.type	quaternion_multiply, @function
quaternion_multiply:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L10
	cmpq	$0, -56(%rbp)
	jne	.L11
.L10:
	leaq	__func__.0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	jmp	.L13
.L11:
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	24(%rax), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	24(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	24(%rax), %xmm1
	mulsd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	24(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm1
	mulsd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movq	-48(%rbp), %rax
	movsd	24(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L13:
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	quaternion_multiply, .-quaternion_multiply
	.section	.rodata
.LC5:
	.string	"Euler: %.4lf, %.4lf, %.4lf\n"
	.align 8
.LC6:
	.string	"Quaternion: %.4lf %+.4lf %+.4lf %+.4lf\n"
.LC8:
	.string	"All tests passed!\n"
	.text
	.type	test, @function
test:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	leaq	-112(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	euler_from_quat
	movsd	-96(%rbp), %xmm1
	movsd	-112(%rbp), %xmm0
	movq	-104(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	libmin_printf@PLT
	leaq	-48(%rbp), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	quat_from_euler
	movsd	-24(%rbp), %xmm2
	movsd	-32(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movapd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$4, %eax
	call	libmin_printf@PLT
	movsd	-48(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC7(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L15
	movl	$1, %edi
	call	libmin_fail@PLT
.L15:
	movsd	-40(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC7(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L16
	movl	$1, %edi
	call	libmin_fail@PLT
.L16:
	movsd	-32(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC7(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L17
	movl	$1, %edi
	call	libmin_fail@PLT
.L17:
	movsd	-24(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC7(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L18
	movl	$1, %edi
	call	libmin_fail@PLT
.L18:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	test, .-test
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	test
	call	libmin_success@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	__func__.2, @object
	.size	__func__.2, 16
__func__.2:
	.string	"quat_from_euler"
	.align 16
	.type	__func__.1, @object
	.size	__func__.1, 16
__func__.1:
	.string	"euler_from_quat"
	.align 16
	.type	__func__.0, @object
	.size	__func__.0, 20
__func__.0:
	.string	"quaternion_multiply"
	.align 8
.LC2:
	.long	0
	.long	1071644672
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	769658139
	.long	1072078992
	.align 8
.LC7:
	.long	1202590843
	.long	1065646817
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
