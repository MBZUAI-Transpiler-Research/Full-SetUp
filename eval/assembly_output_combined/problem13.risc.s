	.file	"problem13.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC7:
	.string	""
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
	lla	a5,.LC7
	sd	a5,-24(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	j	.L2
.L4:
	lw	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L3
	lw	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-24(s0)
	lw	a5,-28(s0)
	sw	a5,-36(s0)
.L3:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L2:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC8:
	.string	"y"
	.align	3
.LC9:
	.string	"z"
	.align	3
.LC11:
	.string	"problem13.c"
	.align	3
.LC12:
	.string	"strcmp(func0(empty_array, 0), \"\") == 0"
	.align	3
.LC13:
	.string	"strcmp(func0(array1, 3), \"x\") == 0"
	.align	3
.LC2:
	.string	"zzzz"
	.align	3
.LC14:
	.string	"strcmp(func0(array2, 6), \"zzzz\") == 0"
	.align	3
.LC1:
	.string	"yyy"
	.align	3
.LC3:
	.string	"www"
	.align	3
.LC4:
	.string	"kkkk"
	.align	3
.LC5:
	.string	"abc"
	.data
	.align	3
.LC10:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
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
	lla	a5,.LC7
	sd	a5,-104(s0)
	lla	a5,.LC0
	sd	a5,-96(s0)
	lla	a5,.LC8
	sd	a5,-88(s0)
	lla	a5,.LC9
	sd	a5,-80(s0)
	lla	a5,.LC10
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
	addi	a5,s0,-104
	li	a1,0
	mv	a0,a5
	call	func0
	mv	a5,a0
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC11
	lla	a0,.LC12
	call	__assert_fail@plt
.L7:
	addi	a5,s0,-96
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC11
	lla	a0,.LC13
	call	__assert_fail@plt
.L8:
	addi	a5,s0,-72
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC2
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC11
	lla	a0,.LC14
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
