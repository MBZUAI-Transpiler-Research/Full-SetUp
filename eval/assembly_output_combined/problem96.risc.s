	.file	"problem96.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	sext.w	a5,a5
	bne	a5,zero,.L2
	li	a5,0
	j	.L3
.L2:
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	j	.L4
.L11:
	lw	a5,-32(s0)
	slli	a5,a5,4
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-24(s0)
	sw	zero,-28(s0)
	j	.L5
.L10:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-28(s0)
	ld	a3,-24(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1024
	sext.w	a5,a5
	bne	a5,zero,.L6
	li	a5,0
	j	.L3
.L6:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-28(s0)
	ld	a3,-24(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,256
	sext.w	a5,a5
	beq	a5,zero,.L7
	li	a5,1
	sw	a5,-36(s0)
.L7:
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	lw	a5,-28(s0)
	ld	a3,-24(s0)
	add	a5,a3,a5
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,512
	sext.w	a5,a5
	beq	a5,zero,.L8
	li	a5,1
	sw	a5,-40(s0)
.L8:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L9
	li	a5,0
	j	.L3
.L9:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L5:
	lw	a5,-28(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L10
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L4:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	li	a5,1
.L3:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC30:
	.string	"problem96.c"
	.align	3
.LC31:
	.string	"func0(test1, 2) == 1"
	.align	3
.LC33:
	.string	"func0(test2, 3) == 0"
	.align	3
.LC35:
	.string	"func0(test3, 3) == 0"
	.align	3
.LC37:
	.string	"func0(test4, 3) == 0"
	.align	3
.LC39:
	.string	"func0(test5, 2) == 1"
	.align	3
.LC41:
	.string	"func0(test6, 2) == 1"
	.align	3
.LC42:
	.string	"func0(NULL, 0) == 0"
	.align	3
.LC0:
	.string	"p"
	.align	3
.LC1:
	.string	"pineapple"
	.align	3
.LC2:
	.string	"b"
	.align	3
.LC3:
	.string	"banana"
	.data
	.align	3
.LC29:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.section	.rodata
	.align	3
.LC5:
	.string	"A"
	.align	3
.LC6:
	.string	"B"
	.data
	.align	3
.LC32:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC5
	.dword	.LC3
	.dword	.LC6
	.dword	.LC3
	.section	.rodata
	.align	3
.LC8:
	.string	"5"
	.align	3
.LC9:
	.string	"a"
	.align	3
.LC10:
	.string	"apple"
	.data
	.align	3
.LC34:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC8
	.dword	.LC3
	.dword	.LC9
	.dword	.LC10
	.section	.rodata
	.align	3
.LC12:
	.string	"Name"
	.align	3
.LC13:
	.string	"John"
	.align	3
.LC14:
	.string	"Age"
	.align	3
.LC15:
	.string	"36"
	.align	3
.LC16:
	.string	"City"
	.align	3
.LC17:
	.string	"Houston"
	.data
	.align	3
.LC36:
	.dword	.LC12
	.dword	.LC13
	.dword	.LC14
	.dword	.LC15
	.dword	.LC16
	.dword	.LC17
	.section	.rodata
	.align	3
.LC19:
	.string	"STATE"
	.align	3
.LC20:
	.string	"NC"
	.align	3
.LC21:
	.string	"ZIP"
	.align	3
.LC22:
	.string	"12345"
	.data
	.align	3
.LC38:
	.dword	.LC19
	.dword	.LC20
	.dword	.LC21
	.dword	.LC22
	.section	.rodata
	.align	3
.LC24:
	.string	"fruit"
	.align	3
.LC25:
	.string	"Orange"
	.align	3
.LC26:
	.string	"taste"
	.align	3
.LC27:
	.string	"Sweet"
	.data
	.align	3
.LC40:
	.dword	.LC24
	.dword	.LC25
	.dword	.LC26
	.dword	.LC27
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-272
	sd	ra,264(sp)
	sd	s0,256(sp)
	addi	s0,sp,272
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC29
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-264(s0)
	sd	a3,-256(s0)
	sd	a4,-248(s0)
	sd	a5,-240(s0)
	addi	a5,s0,-264
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC30
	lla	a0,.LC31
	call	__assert_fail@plt
.L13:
	lla	a5,.LC32
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-168(s0)
	sd	a1,-160(s0)
	sd	a2,-152(s0)
	sd	a3,-144(s0)
	sd	a4,-136(s0)
	sd	a5,-128(s0)
	addi	a5,s0,-168
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC30
	lla	a0,.LC33
	call	__assert_fail@plt
.L14:
	lla	a5,.LC34
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-120(s0)
	sd	a1,-112(s0)
	sd	a2,-104(s0)
	sd	a3,-96(s0)
	sd	a4,-88(s0)
	sd	a5,-80(s0)
	addi	a5,s0,-120
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC30
	lla	a0,.LC35
	call	__assert_fail@plt
.L15:
	lla	a5,.LC36
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-72
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC30
	lla	a0,.LC37
	call	__assert_fail@plt
.L16:
	lla	a5,.LC38
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-232(s0)
	sd	a3,-224(s0)
	sd	a4,-216(s0)
	sd	a5,-208(s0)
	addi	a5,s0,-232
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC30
	lla	a0,.LC39
	call	__assert_fail@plt
.L17:
	lla	a5,.LC40
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-200(s0)
	sd	a3,-192(s0)
	sd	a4,-184(s0)
	sd	a5,-176(s0)
	addi	a5,s0,-200
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,43
	lla	a1,.LC30
	lla	a0,.LC41
	call	__assert_fail@plt
.L18:
	li	a1,0
	li	a0,0
	call	func0
	mv	a5,a0
	beq	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC30
	lla	a0,.LC42
	call	__assert_fail@plt
.L19:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L21
	call	__stack_chk_fail@plt
.L21:
	mv	a0,a4
	ld	ra,264(sp)
	ld	s0,256(sp)
	addi	sp,sp,272
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
