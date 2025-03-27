	.file	"nr-solver.c"
	.text
	.globl	sqrt_value
	.bss
	.align 8
	.type	sqrt_value, @object
	.size	sqrt_value, 8
sqrt_value:
	.zero	8
	.text
	.globl	f
	.type	f, @function
f:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	sqrt_value(%rip), %xmm1
	subsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	f, .-f
	.globl	df
	.type	df, @function
df:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	df, .-df
	.globl	myfabs
	.type	myfabs, @function
myfabs:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-8(%rbp), %xmm0
	jbe	.L10
	movsd	-8(%rbp), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L8
.L10:
	movsd	-8(%rbp), %xmm0
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	myfabs, .-myfabs
	.globl	rn_solver
	.type	rn_solver, @function
rn_solver:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -28(%rbp)
	jmp	.L12
.L15:
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %xmm0
	call	*%rdx
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	myfabs
	movsd	-48(%rbp), %xmm1
	comisd	%xmm0, %xmm1
	setnb	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L17
	movq	-24(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rax, %xmm0
	call	*%rdx
	movq	%xmm0, %rbx
	movq	-24(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, %xmm0
	call	*%rdx
	movq	%rbx, %xmm1
	divsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	addl	$1, -28(%rbp)
.L12:
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jb	.L15
	jmp	.L14
.L17:
	nop
.L14:
	movsd	-24(%rbp), %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	rn_solver, .-rn_solver
	.globl	testdata
	.data
	.align 32
	.type	testdata, @object
	.size	testdata, 400
testdata:
	.long	209675665
	.long	1092102467
	.long	957656417
	.long	1091600267
	.long	2133207778
	.long	1093432535
	.long	-1550516265
	.long	1093329661
	.long	1954909959
	.long	1089549456
	.long	-1645708632
	.long	1092731823
	.long	920418638
	.long	1088563460
	.long	1071258130
	.long	1092783493
	.long	-1885879595
	.long	1091835367
	.long	-1717080921
	.long	1089678384
	.long	-816451465
	.long	1091819332
	.long	101956768
	.long	1092865000
	.long	1081351647
	.long	1093057580
	.long	-642368709
	.long	1091361977
	.long	-1885233632
	.long	1086121405
	.long	1362190281
	.long	1093514052
	.long	1359636837
	.long	1093260645
	.long	-1181063092
	.long	1093176673
	.long	-381427284
	.long	1093176801
	.long	174325851
	.long	1091787049
	.long	1768303233
	.long	1092645872
	.long	754660114
	.long	1091722262
	.long	391010
	.long	1093185069
	.long	785946545
	.long	1092113599
	.long	-1788507533
	.long	1093061350
	.long	723810652
	.long	1093021589
	.long	-1175427546
	.long	1089860449
	.long	732492928
	.long	1090690051
	.long	-2033905643
	.long	1093509683
	.long	-455531103
	.long	1093266868
	.long	-645727717
	.long	1093235676
	.long	-1046502111
	.long	1091448312
	.long	-1256665426
	.long	1093293895
	.long	392593512
	.long	1092588015
	.long	1990223077
	.long	1093164717
	.long	-778638401
	.long	1091939842
	.long	788367979
	.long	1086598534
	.long	1564709328
	.long	1091742256
	.long	-1427592669
	.long	1093483859
	.long	1727482576
	.long	1090032528
	.long	892468177
	.long	1092648412
	.long	-980049689
	.long	1091965029
	.long	177634178
	.long	1092710260
	.long	-1990958891
	.long	1091226727
	.long	-27505383
	.long	1084876728
	.long	1345512905
	.long	1102139309
	.long	-421678687
	.long	1092438309
	.long	839500321
	.long	1091748373
	.long	-1732829363
	.long	1089570653
	.long	-1304263456
	.long	1093307777
	.section	.rodata
	.align 8
.LC4:
	.string	"sqrt(%lf) == %lf (converged:%c)\n"
	.text
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
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -20(%rbp)
	jmp	.L19
.L22:
	movl	-20(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	testdata(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	%xmm0, sqrt_value(%rip)
	movq	.LC3(%rip), %rdi
	leaq	-24(%rbp), %rax
	leaq	df(%rip), %rdx
	movq	%rdx, %rcx
	leaq	f(%rip), %rdx
	movl	$20, %esi
	movq	%rdi, %xmm0
	movq	%rax, %rdi
	call	rn_solver
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	.L20
	movl	$116, %edx
	jmp	.L21
.L20:
	movl	$102, %edx
.L21:
	movq	sqrt_value(%rip), %rax
	movsd	-16(%rbp), %xmm0
	movl	%edx, %esi
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	libmin_printf@PLT
	addl	$1, -20(%rbp)
.L19:
	cmpl	$49, -20(%rbp)
	jbe	.L22
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	-1998362383
	.long	1055193269
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
