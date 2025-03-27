	.file	"parrondo.c"
	.text
	.globl	cointoss
	.type	cointoss, @function
cointoss:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movsd	%xmm0, -24(%rbp)
	call	libmin_rand@PLT
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L2
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L3
.L2:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L3:
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	comisd	-24(%rbp), %xmm0
	jb	.L9
	movl	$-1, %eax
	jmp	.L7
.L9:
	movl	$1, %eax
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	cointoss, .-cointoss
	.globl	play_s
	.type	play_s, @function
play_s:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	.LC1(%rip), %rax
	movq	%rax, %xmm0
	call	cointoss
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	play_s, .-play_s
	.globl	play_c
	.type	play_c, @function
play_c:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movq	%rax, %rdx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	je	.L13
	movq	.LC2(%rip), %rax
	movq	%rax, %xmm0
	call	cointoss
	jmp	.L14
.L13:
	movq	.LC3(%rip), %rax
	movq	%rax, %xmm0
	call	cointoss
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	play_c, .-play_c
	.globl	argc
	.data
	.align 4
	.type	argc, @object
	.size	argc, 4
argc:
	.long	6
	.globl	argv
	.section	.rodata
.LC4:
	.string	"parrondo"
.LC5:
	.string	"-2"
.LC6:
	.string	"-t"
.LC7:
	.string	"10"
.LC8:
	.string	"-S"
.LC9:
	.string	"1"
	.section	.data.rel.local,"aw"
	.align 32
	.type	argv, @object
	.size	argv, 48
argv:
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.section	.rodata
	.align 8
.LC12:
	.string	"parrondo [ -s number -t number -m number -1 -2 -h -v]"
.LC13:
	.string	"%s\n"
.LC14:
	.string	"1.1"
	.align 8
.LC15:
	.ascii	"parrondo [ -s number -t number -m number -1 -2 ]\n\nPrint in"
	.ascii	"formation on simulations of Parrondo's paradoxical game.\n\n"
	.ascii	"-s: Use next argument as RNG seed. (otherwise use system tim"
	.ascii	"e as seed.)\n-t: Use next argument"
	.string	" as number of trials. Default 10000.\n-m: Use number as max fortune (win), -number as min fortune(loss). Default 50. \n-v: Print version number and exit. \n-h: Print this helpful information. \n-1: Simulate simple game alone.\n-2: Simulate complex game alone.\n\n"
.LC17:
	.string	"parrondo: unkown option %s\n"
.LC18:
	.string	"Using seed = %d\n"
.LC19:
	.string	"Simulating %d trials ...\n"
.LC20:
	.string	"%d wins, %d losses, %d draws\n"
	.align 8
.LC21:
	.string	"(Win/loss = %d/-%d, draw = no win/loss in %ld plays.)\n"
.LC22:
	.string	"Average trial length = %lf\n"
	.align 8
.LC24:
	.string	"Site occupancy: 0 mod 3: %lf%%, 1 mod 3: %lf%%, 2 mod 3: %lf%%\n"
	.text
	.globl	main
	.type	main, @function
main:
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
	movq	$0, -72(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	$1000, -104(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
	movl	$50, -80(%rbp)
	movsd	.LC11(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	$0, -48(%rbp)
	jmp	.L16
.L32:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L17
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$49, %eax
	cmpl	$69, %eax
	ja	.L18
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L20(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L20(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L20:
	.long	.L26-.L20
	.long	.L25-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L24-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L24-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L23-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L22-.L20
	.long	.L21-.L20
	.long	.L18-.L20
	.long	.L19-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L24-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L23-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L18-.L20
	.long	.L22-.L20
	.long	.L21-.L20
	.long	.L18-.L20
	.long	.L19-.L20
	.text
.L22:
	movl	-96(%rbp), %eax
	leal	1(%rax), %edx
	movl	argc(%rip), %eax
	cmpl	%eax, %edx
	jl	.L27
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L27:
	movl	-96(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	libmin_atol@PLT
	movq	%rax, -48(%rbp)
	addl	$1, -96(%rbp)
	jmp	.L16
.L21:
	movl	-96(%rbp), %eax
	leal	1(%rax), %edx
	movl	argc(%rip), %eax
	cmpl	%eax, %edx
	jl	.L29
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L29:
	movl	-96(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	libmin_atoi@PLT
	movl	%eax, -104(%rbp)
	addl	$1, -96(%rbp)
	jmp	.L16
.L23:
	movl	-96(%rbp), %eax
	leal	1(%rax), %edx
	movl	argc(%rip), %eax
	cmpl	%eax, %edx
	jl	.L30
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L30:
	movl	-96(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	call	libmin_atoi@PLT
	movl	%eax, -80(%rbp)
	addl	$1, -96(%rbp)
	jmp	.L16
.L19:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
.L24:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
.L26:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.L16
.L25:
	movsd	.LC16(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)
	jmp	.L16
.L18:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	argv(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
	jmp	.L16
.L17:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %edi
	call	libmin_fail@PLT
.L16:
	addl	$1, -96(%rbp)
	movl	argc(%rip), %eax
	cmpl	%eax, -96(%rbp)
	jl	.L32
	cmpq	$0, -48(%rbp)
	jne	.L33
	movq	$3445, -48(%rbp)
	movl	$3445, %esi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L33:
	movq	-48(%rbp), %rax
	movl	%eax, %edi
	call	libmin_srand@PLT
	movl	$0, -100(%rbp)
	jmp	.L34
.L35:
	movl	-100(%rbp), %eax
	cltq
	movq	$0, -32(%rbp,%rax,8)
	addl	$1, -100(%rbp)
.L34:
	cmpl	$2, -100(%rbp)
	jle	.L35
	movl	$0, -100(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L36
.L44:
	call	libmin_rand@PLT
	movl	%eax, %eax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %edi
	call	libmin_srand@PLT
	movl	$0, -84(%rbp)
	jmp	.L37
.L41:
	movq	-56(%rbp), %rax
	movq	%rax, %xmm0
	call	cointoss
	cmpl	$1, %eax
	jne	.L38
	movl	-84(%rbp), %eax
	movl	%eax, %edi
	call	play_c
	addl	%eax, -84(%rbp)
	jmp	.L39
.L38:
	call	play_s
	addl	%eax, -84(%rbp)
.L39:
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.L40
	movl	-80(%rbp), %eax
	negl	%eax
	cmpl	%eax, -84(%rbp)
	jle	.L40
	movl	-84(%rbp), %eax
	movl	%eax, %edx
	negl	%edx
	cmovns	%edx, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %edx
	sarl	$31, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp,%rdx,8), %rdx
	addq	$1, %rdx
	cltq
	movq	%rdx, -32(%rbp,%rax,8)
.L37:
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	cmpq	$999999, %rax
	jle	.L41
.L40:
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jne	.L42
	addl	$1, -92(%rbp)
	jmp	.L43
.L42:
	movl	-80(%rbp), %eax
	negl	%eax
	cmpl	%eax, -84(%rbp)
	jne	.L43
	addl	$1, -88(%rbp)
.L43:
	addl	$1, -100(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-72(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	$0, -72(%rbp)
.L36:
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jl	.L44
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-100(%rbp), %xmm1
	movsd	-64(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	-92(%rbp), %edx
	movl	-88(%rbp), %eax
	addl	%edx, %eax
	movl	-100(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-80(%rbp), %edx
	movl	-80(%rbp), %eax
	movl	$1000000, %ecx
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	libmin_printf@PLT
	movq	-16(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	.LC23(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	divsd	-64(%rbp), %xmm2
	movq	-24(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	.LC23(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm3
	divsd	-64(%rbp), %xmm3
	movq	-32(%rbp), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	movsd	.LC23(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	divsd	-64(%rbp), %xmm0
	movq	%xmm0, %rax
	movapd	%xmm3, %xmm1
	movq	%rax, %xmm0
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$3, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	-4194304
	.long	1105199103
	.align 8
.LC1:
	.long	2061584302
	.long	1071623700
	.align 8
.LC2:
	.long	1030792151
	.long	1072158474
	.align 8
.LC3:
	.long	-2061584302
	.long	1069044203
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC16:
	.long	0
	.long	1072693248
	.align 8
.LC23:
	.long	0
	.long	1079574528
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
