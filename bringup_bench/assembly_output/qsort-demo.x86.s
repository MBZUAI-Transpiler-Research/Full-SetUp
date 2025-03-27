	.file	"qsort-demo.c"
	.text
	.globl	int_cmp
	.type	int_cmp, @function
int_cmp:
.LFB3:
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
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	int_cmp, .-int_cmp
	.section	.rodata
.LC0:
	.string	"%d | "
	.text
	.globl	print_int_array
	.type	print_int_array, @function
print_int_array:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L4
.L5:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addq	$1, -8(%rbp)
.L4:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L5
	movl	$10, %edi
	call	libmin_putc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	print_int_array, .-print_int_array
	.section	.rodata
.LC1:
	.string	"*** Integer sorting..."
	.text
	.globl	sort_integers_example
	.type	sort_integers_example, @function
sort_integers_example:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$7, -64(%rbp)
	movl	$3, -60(%rbp)
	movl	$4, -56(%rbp)
	movl	$1, -52(%rbp)
	movl	$-1, -48(%rbp)
	movl	$23, -44(%rbp)
	movl	$12, -40(%rbp)
	movl	$43, -36(%rbp)
	movl	$2, -32(%rbp)
	movl	$-4, -28(%rbp)
	movl	$5, -24(%rbp)
	movq	$11, -72(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	libmin_puts@PLT
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_int_array
	movq	-72(%rbp), %rsi
	leaq	-64(%rbp), %rax
	leaq	int_cmp(%rip), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	libmin_qsort@PLT
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_int_array
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sort_integers_example, .-sort_integers_example
	.globl	cstring_cmp
	.type	cstring_cmp, @function
cstring_cmp:
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
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cstring_cmp, .-cstring_cmp
	.section	.rodata
.LC2:
	.string	"%s | "
	.text
	.globl	print_cstring_array
	.type	print_cstring_array, @function
print_cstring_array:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L11
.L12:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addq	$1, -8(%rbp)
.L11:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L12
	movl	$10, %edi
	call	libmin_putc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	print_cstring_array, .-print_cstring_array
	.section	.rodata
.LC3:
	.string	"Zorro"
.LC4:
	.string	"Alex"
.LC5:
	.string	"Celine"
.LC6:
	.string	"Bill"
.LC7:
	.string	"Forest"
.LC8:
	.string	"Dexter"
.LC9:
	.string	"*** String sorting..."
	.text
	.globl	sort_cstrings_example
	.type	sort_cstrings_example, @function
sort_cstrings_example:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC3(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	$6, -72(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	libmin_puts@PLT
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_cstring_array
	movq	-72(%rbp), %rsi
	leaq	-64(%rbp), %rax
	leaq	cstring_cmp(%rip), %rdx
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	libmin_qsort@PLT
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_cstring_array
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sort_cstrings_example, .-sort_cstrings_example
	.globl	struct_cmp_by_price
	.type	struct_cmp_by_price, @function
struct_cmp_by_price:
.LFB9:
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
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movss	16(%rax), %xmm1
	movss	.LC10(%rip), %xmm0
	mulss	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movss	16(%rax), %xmm2
	movss	.LC10(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	cvttss2sil	%xmm0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	struct_cmp_by_price, .-struct_cmp_by_price
	.globl	struct_cmp_by_product
	.type	struct_cmp_by_product, @function
struct_cmp_by_product:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	struct_cmp_by_product, .-struct_cmp_by_product
	.section	.rodata
	.align 8
.LC11:
	.string	"[ product: %s \t price: $%.2f ]\n"
.LC12:
	.string	"--"
	.text
	.globl	print_struct_array
	.type	print_struct_array, @function
print_struct_array:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L20
.L21:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movss	16(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rcx
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %xmm0
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	addq	$1, -8(%rbp)
.L20:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L21
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	libmin_puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	print_struct_array, .-print_struct_array
	.section	.rodata
.LC19:
	.string	"*** Struct sorting (price)..."
	.align 8
.LC20:
	.string	"*** Struct sorting (product)..."
	.text
	.globl	sort_structs_example
	.type	sort_structs_example, @function
sort_structs_example:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$8746391180162592877, %rax
	movl	$29285, %edx
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movss	.LC13(%rip), %xmm0
	movss	%xmm0, -112(%rbp)
	movabsq	$8367795230369475696, %rax
	movl	$118, %edx
	movq	%rax, -108(%rbp)
	movq	%rdx, -100(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, -92(%rbp)
	movabsq	$7741528752872779630, %rax
	movl	$0, %edx
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, -72(%rbp)
	movabsq	$8027789981225414003, %rax
	movl	$25966, %edx
	movq	%rax, -68(%rbp)
	movq	%rdx, -60(%rbp)
	movss	.LC16(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movabsq	$8746391180165805668, %rax
	movl	$29285, %edx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movss	.LC17(%rip), %xmm0
	movss	%xmm0, -32(%rbp)
	movabsq	$32481121341301101, %rax
	movl	$0, %edx
	movq	%rax, -28(%rbp)
	movq	%rdx, -20(%rbp)
	movss	.LC18(%rip), %xmm0
	movss	%xmm0, -12(%rbp)
	movq	$6, -136(%rbp)
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	libmin_puts@PLT
	movq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_struct_array
	movq	-136(%rbp), %rsi
	leaq	-128(%rbp), %rax
	leaq	struct_cmp_by_price(%rip), %rdx
	movq	%rdx, %rcx
	movl	$20, %edx
	movq	%rax, %rdi
	call	libmin_qsort@PLT
	movq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_struct_array
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	libmin_puts@PLT
	movq	-136(%rbp), %rsi
	leaq	-128(%rbp), %rax
	leaq	struct_cmp_by_product(%rip), %rdx
	movq	%rdx, %rcx
	movl	$20, %edx
	movq	%rax, %rdi
	call	libmin_qsort@PLT
	movq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	print_struct_array
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	sort_structs_example, .-sort_structs_example
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
	call	sort_integers_example
	call	sort_cstrings_example
	call	sort_structs_example
	call	libmin_success@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC10:
	.long	1120403456
	.align 4
.LC13:
	.long	1133871104
	.align 4
.LC14:
	.long	1158250496
	.align 4
.LC15:
	.long	1151500288
	.align 4
.LC16:
	.long	1140457144
	.align 4
.LC17:
	.long	1125515264
	.align 4
.LC18:
	.long	1045220557
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
