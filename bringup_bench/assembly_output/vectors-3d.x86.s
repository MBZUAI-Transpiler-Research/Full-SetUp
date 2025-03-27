	.file	"vectors-3d.c"
	.text
	.globl	vector_sub
	.type	vector_sub, @function
vector_sub:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm0
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm0
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	vector_sub, .-vector_sub
	.globl	vector_add
	.type	vector_add, @function
vector_add:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	vector_add, .-vector_add
	.globl	dot_prod
	.type	dot_prod, @function
dot_prod:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movq	-24(%rbp), %rax
	movsd	16(%rax), %xmm1
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	dot_prod, .-dot_prod
	.globl	vector_prod
	.type	vector_prod, @function
vector_prod:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC0(%rip), %xmm1
	xorpd	%xmm0, %xmm1
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-48(%rbp), %rax
	movsd	16(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	8(%rax), %xmm2
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	vector_prod, .-vector_prod
	.section	.rodata
	.align 8
.LC1:
	.string	"vec(%s) = (%.0lf)i + (%.0lf)j + (%.0lf)k\n"
	.text
	.globl	print_vector
	.type	print_vector, @function
print_vector:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movq	%rax, %rcx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdx
	movl	$99, %esi
	leaq	vec_str.0(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	libmin_snprintf@PLT
	leaq	vec_str.0(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	print_vector, .-print_vector
	.globl	vector_norm
	.type	vector_norm, @function
vector_norm:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dot_prod
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	vector_norm, .-vector_norm
	.globl	unit_vec
	.type	unit_vec, @function
unit_vec:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	pxor	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	movq	%xmm0, -16(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	vector_norm
	movq	%xmm0, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC2(%rip), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L22
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.L19
.L22:
	movsd	.LC3(%rip), %xmm0
	ucomisd	-40(%rbp), %xmm0
	jp	.L21
	movsd	.LC3(%rip), %xmm0
	ucomisd	-40(%rbp), %xmm0
	je	.L17
.L21:
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-64(%rbp), %rax
	movsd	8(%rax), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-64(%rbp), %rax
	movsd	16(%rax), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
.L17:
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, 16(%rcx)
.L19:
	movq	-56(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	unit_vec, .-unit_vec
	.globl	get_cross_matrix
	.type	get_cross_matrix, @function
get_cross_matrix:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-112(%rbp), %rax
	movsd	16(%rax), %xmm0
	movq	.LC0(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-112(%rbp), %rax
	movsd	8(%rax), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-112(%rbp), %rax
	movsd	16(%rax), %xmm0
	movsd	%xmm0, -72(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	.LC0(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-112(%rbp), %rax
	movsd	8(%rax), %xmm0
	movq	.LC0(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-112(%rbp), %rax
	movsd	(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	get_cross_matrix, .-get_cross_matrix
	.globl	get_angle
	.type	get_angle, @function
get_angle:
.LFB11:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	vector_norm
	movq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	vector_norm
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC2(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L27
	movq	-24(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC2(%rip), %xmm1
	comisd	%xmm0, %xmm1
	jbe	.L31
.L27:
	movsd	.LC5(%rip), %xmm0
	jmp	.L30
.L31:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dot_prod
	movq	%xmm0, %rax
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movq	%rax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_acos@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	get_angle, .-get_angle
	.section	.rodata
.LC8:
	.string	"a"
.LC9:
	.string	"%s"
.LC10:
	.string	"b"
.LC11:
	.string	"|a| = %.4lf\n"
.LC14:
	.string	"|b| = %.4lf\n"
.LC16:
	.string	"Dot product: %lf\n"
.LC18:
	.string	"Vector product "
.LC19:
	.string	"c"
.LC20:
	.string	"The angle is %lf\n"
.LC22:
	.string	"All tests passed!\n"
	.text
	.type	test, @function
test:
.LFB12:
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
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	leaq	-96(%rbp), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_vector
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	-64(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_vector
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	vector_norm
	movq	%xmm0, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	movsd	-112(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC13(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L33
	movl	$1, %edi
	call	libmin_fail@PLT
.L33:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	vector_norm
	movq	%xmm0, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	movsd	-112(%rbp), %xmm0
	movsd	.LC15(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC13(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L34
	movl	$1, %edi
	call	libmin_fail@PLT
.L34:
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dot_prod
	movq	%xmm0, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	movsd	-112(%rbp), %xmm0
	movsd	.LC17(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC13(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L35
	movl	$1, %edi
	call	libmin_fail@PLT
.L35:
	leaq	-32(%rbp), %rax
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vector_prod
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	-32(%rbp), %rax
	leaq	.LC19(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_vector
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movsd	-32(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC13(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L36
	movl	$1, %edi
	call	libmin_fail@PLT
.L36:
	movsd	-24(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC13(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L37
	movl	$1, %edi
	call	libmin_fail@PLT
.L37:
	movsd	-16(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC13(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L38
	movl	$1, %edi
	call	libmin_fail@PLT
.L38:
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_angle
	movq	%xmm0, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	movsd	-104(%rbp), %xmm0
	movsd	.LC21(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movsd	.LC13(%rip), %xmm1
	comisd	%xmm0, %xmm1
	ja	.L39
	movl	$1, %edi
	call	libmin_fail@PLT
.L39:
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	test, .-test
	.globl	main
	.type	main, @function
main:
.LFB13:
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
.LFE13:
	.size	main, .-main
	.local	vec_str.0
	.comm	vec_str.0,100,32
	.section	.rodata
	.align 16
.LC0:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC2:
	.long	-400107883
	.long	1041313291
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	2146959360
	.align 8
.LC6:
	.long	0
	.long	1073741824
	.align 8
.LC7:
	.long	0
	.long	1074266112
	.align 8
.LC12:
	.long	-1305670058
	.long	1074655133
	.align 8
.LC13:
	.long	1202590843
	.long	1065646817
	.align 8
.LC15:
	.long	-1580547965
	.long	1073460805
	.align 8
.LC17:
	.long	0
	.long	1075314688
	.align 8
.LC21:
	.long	-1514027511
	.long	1071173219
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
