	.file	"xargs.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"a+"
	.align	3
.LC1:
	.string	"lm.txt"
	.align	3
.LC2:
	.string	"%s\n"
	.align	3
.LC3:
	.string	"r"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-288
	sd	ra,280(sp)
	sd	s0,272(sp)
	addi	s0,sp,288
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	j	.L2
.L3:
	lla	a1,.LC0
	lla	a0,.LC1
	call	fopen@plt
	mv	a5,a0
	sd	a5,-272(s0)
	addi	a5,s0,-264
	mv	a2,a5
	lla	a1,.LC2
	ld	a0,-272(s0)
	call	fprintf@plt
	ld	a0,-272(s0)
	call	fclose@plt
.L2:
	la	a5,stdin
	ld	a4,0(a5)
	addi	a5,s0,-264
	mv	a2,a4
	li	a1,100
	mv	a0,a5
	call	fgets@plt
	mv	a5,a0
	bne	a5,zero,.L3
	lla	a1,.LC3
	lla	a0,.LC1
	call	fopen@plt
	mv	a5,a0
	sd	a5,-272(s0)
	j	.L4
.L7:
	lbu	a5,-273(s0)
	sext.w	a5,a5
	mv	a0,a5
	call	putchar@plt
.L4:
	ld	a0,-272(s0)
	call	fgetc@plt
	mv	a5,a0
	sb	a5,-273(s0)
	j	.L7
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
