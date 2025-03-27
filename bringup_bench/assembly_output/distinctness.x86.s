	.file	"distinctness.c"
	.text
	.globl	elements1
	.data
	.align 32
	.type	elements1, @object
	.size	elements1, 512
elements1:
	.long	25
	.long	97
	.long	1
	.long	0
	.long	36
	.long	22
	.long	74
	.long	3
	.long	9
	.long	12
	.long	30
	.long	81
	.long	63
	.long	148
	.long	99
	.long	13
	.long	64
	.long	49
	.long	80
	.long	15
	.long	125
	.long	197
	.long	101
	.long	100
	.long	136
	.long	122
	.long	174
	.long	103
	.long	109
	.long	112
	.long	130
	.long	181
	.long	163
	.long	1148
	.long	199
	.long	113
	.long	164
	.long	149
	.long	180
	.long	115
	.long	225
	.long	297
	.long	201
	.long	200
	.long	236
	.long	222
	.long	274
	.long	203
	.long	209
	.long	212
	.long	230
	.long	281
	.long	263
	.long	2148
	.long	299
	.long	213
	.long	264
	.long	249
	.long	280
	.long	215
	.long	325
	.long	397
	.long	301
	.long	300
	.long	336
	.long	322
	.long	374
	.long	303
	.long	309
	.long	312
	.long	330
	.long	381
	.long	363
	.long	3148
	.long	399
	.long	313
	.long	364
	.long	349
	.long	380
	.long	315
	.long	425
	.long	497
	.long	401
	.long	400
	.long	436
	.long	422
	.long	474
	.long	403
	.long	409
	.long	412
	.long	430
	.long	481
	.long	463
	.long	4148
	.long	499
	.long	413
	.long	464
	.long	449
	.long	480
	.long	415
	.long	525
	.long	597
	.long	501
	.long	500
	.long	536
	.long	522
	.long	574
	.long	503
	.long	509
	.long	512
	.long	530
	.long	581
	.long	563
	.long	5148
	.long	599
	.long	513
	.long	564
	.long	549
	.long	580
	.long	515
	.long	625
	.long	697
	.long	601
	.long	600
	.long	636
	.long	622
	.long	674
	.long	603
	.globl	elements2
	.align 32
	.type	elements2, @object
	.size	elements2, 512
elements2:
	.long	25
	.long	97
	.long	1
	.long	0
	.long	36
	.long	22
	.long	74
	.long	3
	.long	99
	.long	12
	.long	30
	.long	81
	.long	63
	.long	148
	.long	99
	.long	13
	.long	64
	.long	49
	.long	99
	.long	15
	.long	125
	.long	197
	.long	101
	.long	100
	.long	136
	.long	122
	.long	174
	.long	103
	.long	199
	.long	112
	.long	130
	.long	181
	.long	163
	.long	1148
	.long	119
	.long	113
	.long	164
	.long	149
	.long	199
	.long	115
	.long	225
	.long	297
	.long	201
	.long	200
	.long	236
	.long	222
	.long	274
	.long	203
	.long	299
	.long	212
	.long	230
	.long	281
	.long	263
	.long	2148
	.long	229
	.long	213
	.long	264
	.long	249
	.long	299
	.long	215
	.long	325
	.long	397
	.long	301
	.long	300
	.long	336
	.long	322
	.long	374
	.long	303
	.long	399
	.long	312
	.long	330
	.long	381
	.long	363
	.long	3148
	.long	339
	.long	313
	.long	364
	.long	349
	.long	399
	.long	315
	.long	425
	.long	497
	.long	401
	.long	400
	.long	436
	.long	422
	.long	474
	.long	403
	.long	409
	.long	412
	.long	430
	.long	481
	.long	463
	.long	4148
	.long	499
	.long	413
	.long	464
	.long	449
	.long	480
	.long	415
	.long	525
	.long	597
	.long	501
	.long	500
	.long	536
	.long	522
	.long	574
	.long	503
	.long	509
	.long	512
	.long	530
	.long	581
	.long	563
	.long	5148
	.long	599
	.long	513
	.long	564
	.long	549
	.long	580
	.long	515
	.long	625
	.long	697
	.long	601
	.long	600
	.long	636
	.long	622
	.long	674
	.long	603
	.text
	.globl	isDistinct
	.type	isDistinct, @function
isDistinct:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1600, %rsp
	movq	%rdi, -1592(%rbp)
	movq	%rsi, -1600(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-1600(%rbp), %rax
	movl	$2147483647, (%rax)
	movl	$0, -1580(%rbp)
	jmp	.L2
.L3:
	movl	-1580(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1552, %rax
	movl	$2147483647, (%rax)
	movl	-1580(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1548, %rax
	movl	$2147483647, (%rax)
	movl	-1580(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1544, %rax
	movl	$2147483647, (%rax)
	addl	$1, -1580(%rbp)
.L2:
	cmpl	$127, -1580(%rbp)
	jle	.L3
	movq	-1592(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -1552(%rbp)
	movl	$0, -1576(%rbp)
	movl	$1, -1572(%rbp)
	jmp	.L4
.L14:
	movl	$0, -1568(%rbp)
	movl	-1552(%rbp), %eax
	movl	%eax, -1564(%rbp)
	movl	-1548(%rbp), %eax
	movl	%eax, -1560(%rbp)
	movl	-1544(%rbp), %eax
	movl	%eax, -1556(%rbp)
	jmp	.L5
.L13:
	movl	-1572(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1592(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -1564(%rbp)
	jge	.L6
	cmpl	$2147483647, -1556(%rbp)
	je	.L7
	movl	-1556(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1552, %rax
	movl	(%rax), %eax
	movl	%eax, -1564(%rbp)
	movl	-1556(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1548, %rax
	movl	(%rax), %eax
	movl	%eax, -1560(%rbp)
	movl	-1556(%rbp), %eax
	movl	%eax, -1568(%rbp)
	movl	-1556(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1544, %rax
	movl	(%rax), %eax
	movl	%eax, -1556(%rbp)
	jmp	.L5
.L7:
	movl	-1572(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1592(%rbp), %rax
	addq	%rdx, %rax
	movl	-1576(%rbp), %edx
	addl	$1, %edx
	movl	(%rax), %ecx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1552, %rax
	movl	%ecx, (%rax)
	movl	-1576(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-1568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1544, %rax
	movl	%ecx, (%rax)
	addl	$1, -1576(%rbp)
	jmp	.L9
.L6:
	movl	-1572(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1592(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -1564(%rbp)
	jle	.L10
	cmpl	$2147483647, -1560(%rbp)
	je	.L11
	movl	-1560(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1552, %rax
	movl	(%rax), %eax
	movl	%eax, -1564(%rbp)
	movl	-1560(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1544, %rax
	movl	(%rax), %eax
	movl	%eax, -1556(%rbp)
	movl	-1560(%rbp), %eax
	movl	%eax, -1568(%rbp)
	movl	-1560(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1548, %rax
	movl	(%rax), %eax
	movl	%eax, -1560(%rbp)
	jmp	.L5
.L11:
	movl	-1576(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-1568(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1548, %rax
	movl	%ecx, (%rax)
	movl	-1572(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1592(%rbp), %rax
	addq	%rdx, %rax
	movl	-1576(%rbp), %edx
	addl	$1, %edx
	movl	(%rax), %ecx
	movslq	%edx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rbp, %rax
	subq	$1552, %rax
	movl	%ecx, (%rax)
	addl	$1, -1576(%rbp)
	jmp	.L9
.L10:
	movl	-1572(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1592(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-1600(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L15
.L5:
	cmpl	$2147483647, -1564(%rbp)
	jne	.L13
.L9:
	addl	$1, -1572(%rbp)
.L4:
	cmpl	$127, -1572(%rbp)
	jle	.L14
	movl	$1, %eax
.L15:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	isDistinct, .-isDistinct
	.section	.rodata
	.align 8
.LC0:
	.string	"The elements of `elements1' are distinct\n"
	.align 8
.LC1:
	.string	"The elements of `elements1' are not distinct (e.g., %d is duplicated)\n"
	.align 8
.LC2:
	.string	"The elements of `elements2' are distinct\n"
	.align 8
.LC3:
	.string	"The elements of `elements2' are not distinct (e.g., %d is duplicated)\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
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
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	elements1(%rip), %rax
	movq	%rax, %rdi
	call	isDistinct
	movl	%eax, -16(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	elements2(%rip), %rax
	movq	%rax, %rdi
	call	isDistinct
	movl	%eax, -12(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L18
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L19
.L18:
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L19:
	cmpl	$0, -12(%rbp)
	je	.L20
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	jmp	.L21
.L20:
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L21:
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
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
