	.file	"problem150.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-96
	sd	ra,88(sp)
	sd	s0,80(sp)
	addi	s0,sp,96
	sd	a0,-72(s0)
	mv	a5,a1
	sd	a2,-88(s0)
	sw	a5,-76(s0)
	ld	a5,-88(s0)
	sw	zero,0(a5)
	sw	zero,-56(s0)
	j	.L2
.L4:
	lw	a5,-56(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	mv	a5,a0
	andi	a5,a5,1
	bne	a5,zero,.L3
	lw	a5,-56(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a4,a4,a5
	ld	a5,-88(s0)
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a3,-72(s0)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	ld	a5,-88(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-88(s0)
	sw	a4,0(a5)
.L3:
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L2:
	lw	a5,-56(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	sw	zero,-56(s0)
	j	.L5
.L10:
	sw	zero,-52(s0)
	j	.L6
.L9:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	sd	a0,-40(s0)
	lw	a5,-52(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	strlen@plt
	sd	a0,-32(s0)
	ld	a4,-40(s0)
	ld	a5,-32(s0)
	bgtu	a4,a5,.L7
	ld	a4,-40(s0)
	ld	a5,-32(s0)
	bne	a4,a5,.L8
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-52(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	strcmp@plt
	mv	a5,a0
	ble	a5,zero,.L8
.L7:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-24(s0)
	lw	a5,-52(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a3,-72(s0)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	lw	a5,-52(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a4,-24(s0)
	sd	a4,0(a5)
.L8:
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L6:
	ld	a5,-88(s0)
	lw	a5,0(a5)
	lw	a4,-56(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-52(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L5:
	ld	a5,-88(s0)
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-56(s0)
	sext.w	a5,a5
	blt	a5,a4,.L10
	ld	a5,-88(s0)
	lw	a5,0(a5)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-48(s0)
	sw	zero,-56(s0)
	j	.L11
.L12:
	lw	a5,-56(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-56(s0)
	slli	a5,a5,3
	ld	a3,-48(s0)
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sw	a5,-56(s0)
.L11:
	ld	a5,-88(s0)
	lw	a4,0(a5)
	lw	a5,-56(s0)
	sext.w	a5,a5
	blt	a5,a4,.L12
	ld	a5,-48(s0)
	mv	a0,a5
	ld	ra,88(sp)
	ld	s0,80(sp)
	addi	sp,sp,96
	jr	ra
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	mv	a4,a3
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-56(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L15
	li	a5,0
	j	.L16
.L15:
	sw	zero,-20(s0)
	j	.L17
.L19:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L18
	li	a5,0
	j	.L16
.L18:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L17:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L19
	li	a5,1
.L16:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC19:
	.string	"aa"
	.align	3
.LC7:
	.string	"a"
	.align	3
.LC20:
	.string	"aaa"
	.align	3
.LC21:
	.string	"problem150.c"
	.align	3
.LC22:
	.string	"issame(result, expected1, size, 1)"
	.align	3
.LC1:
	.string	"AI"
	.align	3
.LC2:
	.string	"asdf"
	.align	3
.LC0:
	.string	"school"
	.align	3
.LC24:
	.string	"issame(result, expected2, size, 3)"
	.align	3
.LC26:
	.string	"size == 0"
	.align	3
.LC10:
	.string	"abcd"
	.align	3
.LC9:
	.string	"dcba"
	.align	3
.LC28:
	.string	"issame(result, expected4, size, 2)"
	.align	3
.LC29:
	.string	"ai"
	.align	3
.LC30:
	.string	"au"
	.align	3
.LC31:
	.string	"issame(result, expected5, size, 3)"
	.align	3
.LC35:
	.string	"issame(result, expected7, size, 4)"
	.align	3
.LC36:
	.string	"All tests passed!"
	.align	3
.LC3:
	.string	"b"
	.data
	.align	3
.LC23:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.section	.rodata
	.align	3
.LC5:
	.string	"d"
	.align	3
.LC6:
	.string	"c"
	.data
	.align	3
.LC25:
	.dword	.LC5
	.dword	.LC3
	.dword	.LC6
	.dword	.LC7
	.align	3
.LC27:
	.dword	.LC5
	.dword	.LC9
	.dword	.LC10
	.dword	.LC7
	.align	3
.LC32:
	.dword	.LC7
	.dword	.LC3
	.dword	.LC3
	.dword	.LC6
	.dword	.LC6
	.dword	.LC7
	.section	.rodata
	.align	3
.LC13:
	.string	"aaaa"
	.align	3
.LC14:
	.string	"bbbb"
	.align	3
.LC15:
	.string	"dd"
	.align	3
.LC16:
	.string	"cc"
	.data
	.align	3
.LC33:
	.dword	.LC13
	.dword	.LC14
	.dword	.LC15
	.dword	.LC16
	.align	3
.LC34:
	.dword	.LC16
	.dword	.LC15
	.dword	.LC13
	.dword	.LC14
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-368
	sd	ra,360(sp)
	sd	s0,352(sp)
	addi	s0,sp,368
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC19
	sd	a5,-328(s0)
	lla	a5,.LC7
	sd	a5,-320(s0)
	lla	a5,.LC20
	sd	a5,-312(s0)
	lla	a5,.LC19
	sd	a5,-352(s0)
	addi	a4,s0,-364
	addi	a5,s0,-328
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	sd	a0,-360(s0)
	lw	a4,-364(s0)
	addi	a5,s0,-352
	li	a3,1
	mv	a2,a4
	mv	a1,a5
	ld	a0,-360(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,59
	lla	a1,.LC21
	lla	a0,.LC22
	call	__assert_fail@plt
.L21:
	ld	a0,-360(s0)
	call	free@plt
	lla	a5,.LC23
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-232(s0)
	sd	a3,-224(s0)
	sd	a4,-216(s0)
	sd	a5,-208(s0)
	lla	a5,.LC1
	sd	a5,-304(s0)
	lla	a5,.LC2
	sd	a5,-296(s0)
	lla	a5,.LC0
	sd	a5,-288(s0)
	addi	a4,s0,-364
	addi	a5,s0,-232
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-360(s0)
	lw	a4,-364(s0)
	addi	a5,s0,-304
	li	a3,3
	mv	a2,a4
	mv	a1,a5
	ld	a0,-360(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,65
	lla	a1,.LC21
	lla	a0,.LC24
	call	__assert_fail@plt
.L22:
	ld	a0,-360(s0)
	call	free@plt
	lla	a5,.LC25
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-200(s0)
	sd	a3,-192(s0)
	sd	a4,-184(s0)
	sd	a5,-176(s0)
	addi	a4,s0,-364
	addi	a5,s0,-200
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-360(s0)
	lw	a5,-364(s0)
	beq	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,70
	lla	a1,.LC21
	lla	a0,.LC26
	call	__assert_fail@plt
.L23:
	ld	a0,-360(s0)
	call	free@plt
	lla	a5,.LC27
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-168(s0)
	sd	a3,-160(s0)
	sd	a4,-152(s0)
	sd	a5,-144(s0)
	lla	a5,.LC10
	sd	a5,-344(s0)
	lla	a5,.LC9
	sd	a5,-336(s0)
	addi	a4,s0,-364
	addi	a5,s0,-168
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-360(s0)
	lw	a4,-364(s0)
	addi	a5,s0,-344
	li	a3,2
	mv	a2,a4
	mv	a1,a5
	ld	a0,-360(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,76
	lla	a1,.LC21
	lla	a0,.LC28
	call	__assert_fail@plt
.L24:
	ld	a0,-360(s0)
	call	free@plt
	lla	a5,.LC1
	sd	a5,-280(s0)
	lla	a5,.LC29
	sd	a5,-272(s0)
	lla	a5,.LC30
	sd	a5,-264(s0)
	lla	a5,.LC1
	sd	a5,-256(s0)
	lla	a5,.LC29
	sd	a5,-248(s0)
	lla	a5,.LC30
	sd	a5,-240(s0)
	addi	a4,s0,-364
	addi	a5,s0,-280
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	sd	a0,-360(s0)
	lw	a4,-364(s0)
	addi	a5,s0,-256
	li	a3,3
	mv	a2,a4
	mv	a1,a5
	ld	a0,-360(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,82
	lla	a1,.LC21
	lla	a0,.LC31
	call	__assert_fail@plt
.L25:
	ld	a0,-360(s0)
	call	free@plt
	lla	a5,.LC32
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
	addi	a4,s0,-364
	addi	a5,s0,-72
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	sd	a0,-360(s0)
	lw	a5,-364(s0)
	beq	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,87
	lla	a1,.LC21
	lla	a0,.LC26
	call	__assert_fail@plt
.L26:
	ld	a0,-360(s0)
	call	free@plt
	lla	a5,.LC33
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-136(s0)
	sd	a3,-128(s0)
	sd	a4,-120(s0)
	sd	a5,-112(s0)
	lla	a5,.LC34
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-104(s0)
	sd	a3,-96(s0)
	sd	a4,-88(s0)
	sd	a5,-80(s0)
	addi	a4,s0,-364
	addi	a5,s0,-136
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-360(s0)
	lw	a4,-364(s0)
	addi	a5,s0,-104
	li	a3,4
	mv	a2,a4
	mv	a1,a5
	ld	a0,-360(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,93
	lla	a1,.LC21
	lla	a0,.LC35
	call	__assert_fail@plt
.L27:
	ld	a0,-360(s0)
	call	free@plt
	lla	a0,.LC36
	call	puts@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L29
	call	__stack_chk_fail@plt
.L29:
	mv	a0,a4
	ld	ra,360(sp)
	ld	s0,352(sp)
	addi	sp,sp,368
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
