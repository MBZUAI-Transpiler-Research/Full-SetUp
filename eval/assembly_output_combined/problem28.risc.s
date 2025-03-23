	.file	"problem28.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a0,-40(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L2
.L5:
	lw	a5,-24(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	lbu	a5,-25(s0)
	andi	a4,a5,0xff
	li	a5,96
	bleu	a4,a5,.L3
	lbu	a5,-25(s0)
	andi	a4,a5,0xff
	li	a5,122
	bgtu	a4,a5,.L3
	lbu	a5,-25(s0)
	addiw	a5,a5,-32
	sb	a5,-25(s0)
	j	.L4
.L3:
	lbu	a5,-25(s0)
	andi	a4,a5,0xff
	li	a5,64
	bleu	a4,a5,.L4
	lbu	a5,-25(s0)
	andi	a4,a5,0xff
	li	a5,90
	bgtu	a4,a5,.L4
	lbu	a5,-25(s0)
	addiw	a5,a5,32
	sb	a5,-25(s0)
.L4:
	lw	a5,-24(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a4,-25(s0)
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	lw	a5,-20(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem28.c"
	.align	3
.LC2:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC3:
	.string	"Hello!"
	.align	3
.LC4:
	.string	"hELLO!"
	.align	3
.LC5:
	.string	"strcmp(result, \"hELLO!\") == 0"
	.align	3
.LC6:
	.string	"These violent delights have violent ends"
	.align	3
.LC7:
	.string	"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"
	.align	3
.LC8:
	.string	"strcmp(result, \"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128
	sd	ra,120(sp)
	sd	s0,112(sp)
	addi	s0,sp,128
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC0
	call	func0
	lbu	a5,-128(s0)
	sext.w	a5,a5
	beq	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L7:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC3
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC1
	lla	a0,.LC5
	call	__assert_fail@plt
.L8:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC6
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC7
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L9:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L11
	call	__stack_chk_fail@plt
.L11:
	mv	a0,a4
	ld	ra,120(sp)
	ld	s0,112(sp)
	addi	sp,sp,128
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
