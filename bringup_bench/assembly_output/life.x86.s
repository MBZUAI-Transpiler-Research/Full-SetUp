	.file	"life.c"
	.text
	.globl	NUM_BLOCKS
	.data
	.align 4
	.type	NUM_BLOCKS, @object
	.size	NUM_BLOCKS, 4
NUM_BLOCKS:
	.long	2
	.globl	LIVE
	.type	LIVE, @object
	.size	LIVE, 1
LIVE:
	.byte	42
	.globl	DEAD
	.type	DEAD, @object
	.size	DEAD, 1
DEAD:
	.byte	32
	.globl	BLOCKS
	.type	BLOCKS, @object
	.size	BLOCKS, 2
BLOCKS:
	.ascii	" *"
	.globl	evolution
	.align 4
	.type	evolution, @object
	.size	evolution, 4
evolution:
	.long	1
	.globl	gridRoots
	.bss
	.align 32
	.type	gridRoots, @object
	.size	gridRoots, 560
gridRoots:
	.zero	560
	.globl	gridTmpRoots
	.align 32
	.type	gridTmpRoots, @object
	.size	gridTmpRoots, 560
gridTmpRoots:
	.zero	560
	.globl	grid
	.section	.data.rel.local,"aw"
	.align 8
	.type	grid, @object
	.size	grid, 8
grid:
	.quad	gridRoots
	.globl	gridTmp
	.align 8
	.type	gridTmp, @object
	.size	gridTmp, 8
gridTmp:
	.quad	gridTmpRoots
	.globl	gridVals
	.bss
	.align 32
	.type	gridVals, @object
	.size	gridVals, 1540
gridVals:
	.zero	1540
	.globl	gridTmpVals
	.align 32
	.type	gridTmpVals, @object
	.size	gridTmpVals, 1540
gridTmpVals:
	.zero	1540
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	call	init
	movl	$1, -4(%rbp)
	jmp	.L2
.L4:
	call	draw
	call	process
	addl	$1, -8(%rbp)
	cmpl	$80, -8(%rbp)
	jne	.L2
	movl	$0, -4(%rbp)
.L2:
	cmpl	$0, -4(%rbp)
	jne	.L4
	call	libmin_success@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
.LC0:
	.string	"\033[2J"
	.text
	.globl	init
	.type	init, @function
init:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1001, %edi
	call	libmin_srand@PLT
	movl	$0, -8(%rbp)
	jmp	.L7
.L10:
	movq	grid(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	gridVals(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, (%rcx)
	movq	gridTmp(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	gridTmpVals(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, (%rcx)
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	call	libmin_rand@PLT
	movl	NUM_BLOCKS(%rip), %edx
	movl	%edx, %ecx
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %ecx
	movq	grid(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movl	%ecx, %ecx
	leaq	BLOCKS(%rip), %rax
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdx)
	movq	gridTmp(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$32, (%rax)
	addl	$1, -4(%rbp)
.L8:
	cmpl	$21, -4(%rbp)
	jle	.L9
	addl	$1, -8(%rbp)
.L7:
	cmpl	$69, -8(%rbp)
	jle	.L10
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	init, .-init
	.section	.rodata
.LC1:
	.string	"\033[H"
	.align 8
.LC2:
	.string	"CONWAY'S Game of Life\n\nEvolution #%d\n\n"
.LC3:
	.string	"%c"
.LC4:
	.string	"\n"
	.text
	.globl	draw
	.type	draw, @function
draw:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	evolution(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, evolution(%rip)
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, -8(%rbp)
	jmp	.L12
.L15:
	movl	$0, -4(%rbp)
	jmp	.L13
.L14:
	movq	grid(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -4(%rbp)
.L13:
	cmpl	$69, -4(%rbp)
	jle	.L14
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	addl	$1, -8(%rbp)
.L12:
	cmpl	$21, -8(%rbp)
	jle	.L15
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	draw, .-draw
	.globl	process
	.type	process, @function
process:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	.L17
.L26:
	movl	$0, -8(%rbp)
	jmp	.L18
.L25:
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	getNumNeigbors
	movl	%eax, -4(%rbp)
	movq	grid(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movzbl	LIVE(%rip), %eax
	cmpb	%al, %dl
	jne	.L19
	cmpl	$1, -4(%rbp)
	jle	.L20
	cmpl	$3, -4(%rbp)
	jle	.L21
.L20:
	movq	gridTmp(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	DEAD(%rip), %eax
	movb	%al, (%rdx)
	jmp	.L23
.L21:
	movq	gridTmp(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	LIVE(%rip), %eax
	movb	%al, (%rdx)
	jmp	.L23
.L19:
	cmpl	$3, -4(%rbp)
	jne	.L24
	movq	gridTmp(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	LIVE(%rip), %eax
	movb	%al, (%rdx)
	jmp	.L23
.L24:
	movq	gridTmp(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movzbl	DEAD(%rip), %eax
	movb	%al, (%rdx)
.L23:
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	processMutate
	addl	$1, -8(%rbp)
.L18:
	cmpl	$69, -8(%rbp)
	jle	.L25
	addl	$1, -12(%rbp)
.L17:
	cmpl	$21, -12(%rbp)
	jle	.L26
	call	flip
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	process, .-process
	.globl	getNumNeigbors
	.type	getNumNeigbors, @function
getNumNeigbors:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	getLeft
	movzbl	LIVE(%rip), %edx
	cmpb	%dl, %al
	jne	.L28
	addl	$1, -4(%rbp)
.L28:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	getRight
	movzbl	LIVE(%rip), %edx
	cmpb	%dl, %al
	jne	.L29
	addl	$1, -4(%rbp)
.L29:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	getUp
	movzbl	LIVE(%rip), %edx
	cmpb	%dl, %al
	jne	.L30
	addl	$1, -4(%rbp)
.L30:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	getDown
	movzbl	LIVE(%rip), %edx
	cmpb	%dl, %al
	jne	.L31
	addl	$1, -4(%rbp)
.L31:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	getUpLeft
	movzbl	LIVE(%rip), %edx
	cmpb	%dl, %al
	jne	.L32
	addl	$1, -4(%rbp)
.L32:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	getUpRight
	movzbl	LIVE(%rip), %edx
	cmpb	%dl, %al
	jne	.L33
	addl	$1, -4(%rbp)
.L33:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	getDownLeft
	movzbl	LIVE(%rip), %edx
	cmpb	%dl, %al
	jne	.L34
	addl	$1, -4(%rbp)
.L34:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	getDownRight
	movzbl	LIVE(%rip), %edx
	cmpb	%dl, %al
	jne	.L35
	addl	$1, -4(%rbp)
.L35:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	getNumNeigbors, .-getNumNeigbors
	.globl	processMutate
	.type	processMutate, @function
processMutate:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	call	libmin_rand@PLT
	movl	%eax, %edx
	movl	%edx, %eax
	imulq	$91625969, %rax, %rax
	shrq	$32, %rax
	shrl	$6, %eax
	imull	$3000, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	cmpl	$2927, %eax
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	processMutate, .-processMutate
	.globl	flip
	.type	flip, @function
flip:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	grid(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	gridTmp(%rip), %rax
	movq	%rax, grid(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, gridTmp(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	flip, .-flip
	.globl	getLeft
	.type	getLeft, @function
getLeft:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L41
	movzbl	DEAD(%rip), %eax
	jmp	.L42
.L41:
	movq	grid(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
.L42:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	getLeft, .-getLeft
	.globl	getRight
	.type	getRight, @function
getRight:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$69, -20(%rbp)
	jne	.L44
	movzbl	DEAD(%rip), %eax
	jmp	.L45
.L44:
	movq	grid(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
.L45:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	getRight, .-getRight
	.globl	getUp
	.type	getUp, @function
getUp:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.L47
	movzbl	DEAD(%rip), %eax
	jmp	.L48
.L47:
	movq	grid(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
.L48:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	getUp, .-getUp
	.globl	getDown
	.type	getDown, @function
getDown:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$21, -24(%rbp)
	jne	.L50
	movzbl	DEAD(%rip), %eax
	jmp	.L51
.L50:
	movq	grid(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
.L51:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	getDown, .-getDown
	.globl	getUpLeft
	.type	getUpLeft, @function
getUpLeft:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L53
	cmpl	$0, -24(%rbp)
	jne	.L54
.L53:
	movzbl	DEAD(%rip), %eax
	jmp	.L55
.L54:
	movq	grid(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
.L55:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	getUpLeft, .-getUpLeft
	.globl	getUpRight
	.type	getUpRight, @function
getUpRight:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$69, -20(%rbp)
	je	.L57
	cmpl	$0, -24(%rbp)
	jne	.L58
.L57:
	movzbl	DEAD(%rip), %eax
	jmp	.L59
.L58:
	movq	grid(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
.L59:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	getUpRight, .-getUpRight
	.globl	getDownLeft
	.type	getDownLeft, @function
getDownLeft:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$21, -24(%rbp)
	je	.L61
	cmpl	$0, -20(%rbp)
	jne	.L62
.L61:
	movzbl	DEAD(%rip), %eax
	jmp	.L63
.L62:
	movq	grid(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	subq	$8, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
.L63:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	getDownLeft, .-getDownLeft
	.globl	getDownRight
	.type	getDownRight, @function
getDownRight:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$21, -24(%rbp)
	je	.L65
	cmpl	$69, -20(%rbp)
	jne	.L66
.L65:
	movzbl	DEAD(%rip), %eax
	jmp	.L67
.L66:
	movq	grid(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
.L67:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	getDownRight, .-getDownRight
	.globl	x
	.bss
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.zero	4
	.text
	.globl	sleep
	.type	sleep, @function
sleep:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$0, x(%rip)
	jmp	.L69
.L70:
	movl	x(%rip), %eax
	addl	$1, %eax
	movl	%eax, x(%rip)
.L69:
	movl	x(%rip), %eax
	testl	%eax, %eax
	jle	.L70
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	sleep, .-sleep
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
