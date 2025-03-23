	.file	"problem39.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	addi	s0,sp,80
	sd	a0,-72(s0)
	mv	a5,a1
	sw	a5,-76(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a0,-72(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,2
	sext.w	a5,a5
	mv	a4,a5
	li	a5,3
	divw	a5,a4,a5
	sw	a5,-40(s0)
	sw	zero,-48(s0)
	j	.L2
.L7:
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	bge	a5,a4,.L3
	lw	a5,-48(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a4,a4,2
	subw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-44(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	j	.L4
.L3:
	li	a5,3
.L4:
	sw	a5,-36(s0)
	lw	a5,-48(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-72(s0)
	add	a4,a5,a4
	lw	a3,-36(s0)
	addi	a5,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	strncpy@plt
	lw	a5,-36(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-16(a5)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L5
	lw	a5,-76(s0)
	sext.w	a5,a5
	beq	a5,zero,.L6
	lbu	a5,-30(s0)
	sb	a5,-49(s0)
	lbu	a5,-31(s0)
	sb	a5,-30(s0)
	lbu	a5,-32(s0)
	sb	a5,-31(s0)
	lbu	a5,-49(s0)
	sb	a5,-32(s0)
	j	.L5
.L6:
	lbu	a5,-32(s0)
	sb	a5,-50(s0)
	lbu	a5,-31(s0)
	sb	a5,-32(s0)
	lbu	a5,-30(s0)
	sb	a5,-31(s0)
	lbu	a5,-50(s0)
	sb	a5,-30(s0)
.L5:
	lw	a5,-48(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-72(s0)
	add	a5,a5,a4
	lw	a3,-36(s0)
	addi	a4,s0,-32
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	strncpy@plt
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L2:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L8
	call	__stack_chk_fail@plt
.L8:
	ld	ra,72(sp)
	ld	s0,64(sp)
	addi	sp,sp,80
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem39.c"
	.align	3
.LC1:
	.string	"strcmp(decoded_str, str) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112
	sd	ra,104(sp)
	sd	s0,96(sp)
	addi	s0,sp,112
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a0,0
	call	time@plt
	mv	a5,a0
	sext.w	a5,a5
	mv	a0,a5
	call	srand@plt
	sw	zero,-108(s0)
	j	.L10
.L14:
	call	rand@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,11
	remw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,10
	sw	a5,-100(s0)
	sw	zero,-104(s0)
	j	.L11
.L12:
	call	rand@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,26
	remw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,0xff
	addiw	a5,a5,97
	andi	a4,a5,0xff
	lw	a5,-104(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-80(a5)
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
.L11:
	lw	a5,-104(s0)
	mv	a4,a5
	lw	a5,-100(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	lw	a5,-100(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-80(a5)
	addi	a4,s0,-96
	addi	a5,s0,-72
	mv	a1,a4
	mv	a0,a5
	call	strcpy@plt
	addi	a5,s0,-72
	li	a1,1
	mv	a0,a5
	call	func0
	addi	a4,s0,-72
	addi	a5,s0,-48
	mv	a1,a4
	mv	a0,a5
	call	strcpy@plt
	addi	a5,s0,-48
	li	a1,0
	mv	a0,a5
	call	func0
	addi	a4,s0,-96
	addi	a5,s0,-48
	mv	a1,a4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,55
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L13:
	lw	a5,-108(s0)
	addiw	a5,a5,1
	sw	a5,-108(s0)
.L10:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L14
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L16
	call	__stack_chk_fail@plt
.L16:
	mv	a0,a4
	ld	ra,104(sp)
	ld	s0,96(sp)
	addi	sp,sp,112
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
