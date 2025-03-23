	.file	"ps.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"ps"
	.align	3
.LC1:
	.string	"ax"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	sd	a5,-56(s0)
	lla	a5,.LC0
	sd	a5,-48(s0)
	lla	a5,.LC1
	sd	a5,-40(s0)
	sd	zero,-32(s0)
	addi	a5,s0,-48
	mv	a1,a5
	ld	a0,-56(s0)
	call	execvp@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L3
	call	__stack_chk_fail@plt
.L3:
	mv	a0,a4
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
