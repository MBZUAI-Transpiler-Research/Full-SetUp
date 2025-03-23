	.file	"rmdir.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nusage: rm FileTodelete"
	.align	3
.LC2:
	.string	"rmdir"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	mv	a5,a0
	sd	a1,-80(s0)
	sw	a5,-68(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L2
	ld	a5,-80(s0)
	addi	a5,a5,8
	ld	a4,0(a5)
	lla	a5,.LC0
	bne	a4,a5,.L3
.L2:
	lla	a0,.LC1
	call	puts@plt
.L3:
	lla	a5,.LC2
	sd	a5,-56(s0)
	lla	a5,.LC2
	sd	a5,-48(s0)
	ld	a5,-80(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	sd	zero,-32(s0)
	ld	a1,-80(s0)
	ld	a0,-56(s0)
	call	execvp@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L5
	call	__stack_chk_fail@plt
.L5:
	mv	a0,a4
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
