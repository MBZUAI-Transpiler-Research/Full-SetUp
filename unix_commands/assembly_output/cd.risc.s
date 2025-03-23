	.file	"cd.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Usage:: cd Directory"
	.align	3
.LC1:
	.string	"chdir"
	.align	3
.LC2:
	.string	"Current working dir: %s\n"
	.align	3
.LC3:
	.string	"getcwd() error"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-1072
	sd	ra,1064(sp)
	sd	s0,1056(sp)
	addi	s0,sp,1072
	mv	a5,a0
	sd	a1,-1072(s0)
	sw	a5,-1060(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lw	a5,-1060(s0)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L2
	lla	a0,.LC0
	call	puts@plt
.L2:
	ld	a5,-1072(s0)
	ld	a5,8(a5)
	sd	a5,-1056(s0)
	ld	a0,-1056(s0)
	call	chdir@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	bne	a4,a5,.L3
	lla	a0,.LC1
	call	perror@plt
	li	a0,1
	call	exit@plt
.L3:
	addi	a5,s0,-1048
	li	a1,1024
	mv	a0,a5
	call	getcwd@plt
	mv	a5,a0
	beq	a5,zero,.L4
	la	a5,stdout
	ld	a5,0(a5)
	addi	a4,s0,-1048
	mv	a2,a4
	lla	a1,.LC2
	mv	a0,a5
	call	fprintf@plt
	j	.L5
.L4:
	lla	a0,.LC3
	call	perror@plt
.L5:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L7
	call	__stack_chk_fail@plt
.L7:
	mv	a0,a4
	ld	ra,1064(sp)
	ld	s0,1056(sp)
	addi	sp,sp,1072
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
