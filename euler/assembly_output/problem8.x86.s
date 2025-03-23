	.file	"problem8.c"
	.text
	.section	.rodata
.LC1:
	.string	"%u\n"
	.align 8
.LC0:
	.ascii	"731671765313306249192251196744265747423553491949349698352031"
	.ascii	"277450632623957831801698480186947885184385861560789112949495"
	.ascii	"459501737958331952853208805511125406987471585238630507156932"
	.ascii	"909632952274430435576689664895044524452316173185640309871112"
	.ascii	"172238311362229893423380308135336276614282806444486645238749"
	.ascii	"303589072962904915604407723907138105158593079608667017242712"
	.ascii	"188399879790879227492190169972088809377665727333001053367881"
	.ascii	"220235421809751254540594752243525849077116705560136048395864"
	.ascii	"467063244157221553975369781797784617406495514929086256932197"
	.ascii	"846862248283972241375657056057490261407972968652414535100474"
	.ascii	"821663704844031998900088952434506585412275886668811642717147"
	.ascii	"992444292823086346567481391912316282458617866458359124566529"
	.ascii	"476545682848912883142607"
	.string	"6900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-1024(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$125, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movzbl	(%rdx), %ecx
	movb	%cl, (%rax)
	movq	$1000, -1032(%rbp)
	movl	$0, -1056(%rbp)
	movq	$0, -1048(%rbp)
	jmp	.L2
.L6:
	movl	$1, -1052(%rbp)
	movq	$0, -1040(%rbp)
	jmp	.L3
.L4:
	movq	-1048(%rbp), %rdx
	movq	-1040(%rbp), %rax
	addq	%rdx, %rax
	movzbl	-1024(%rbp,%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, %edx
	movl	-1052(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -1052(%rbp)
	addq	$1, -1040(%rbp)
.L3:
	cmpq	$4, -1040(%rbp)
	jbe	.L4
	movl	-1052(%rbp), %eax
	cmpl	-1056(%rbp), %eax
	jbe	.L5
	movl	-1052(%rbp), %eax
	movl	%eax, -1056(%rbp)
.L5:
	addq	$1, -1048(%rbp)
.L2:
	movq	-1032(%rbp), %rax
	subq	$4, %rax
	cmpq	%rax, -1048(%rbp)
	jb	.L6
	movl	-1056(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
