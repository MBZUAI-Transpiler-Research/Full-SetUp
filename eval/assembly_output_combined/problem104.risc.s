	.file	"problem104.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"-1"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L2
	lla	a5,.LC0
	j	.L3
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-32(s0)
	li	a0,33
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	sb	zero,0(a5)
	li	a5,32
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	addiw	a4,a5,-1
	sw	a4,-28(s0)
	mv	a4,a5
	ld	a5,-24(s0)
	add	a5,a5,a4
	sb	zero,0(a5)
.L4:
	lw	a5,-32(s0)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a5,a5
	andi	a4,a5,0xff
	lw	a5,-28(s0)
	addiw	a3,a5,-1
	sw	a3,-28(s0)
	mv	a3,a5
	ld	a5,-24(s0)
	add	a5,a5,a3
	addiw	a4,a4,48
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-32(s0)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L4
	lw	a5,-28(s0)
	addi	a5,a5,1
	ld	a4,-24(s0)
	add	a5,a4,a5
.L3:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"11"
	.align	3
.LC2:
	.string	"problem104.c"
	.align	3
.LC3:
	.string	"strcmp(func0(1, 5), \"11\") == 0"
	.align	3
.LC4:
	.string	"1010"
	.align	3
.LC5:
	.string	"strcmp(func0(7, 13), \"1010\") == 0"
	.align	3
.LC6:
	.string	"1111001010"
	.align	3
.LC7:
	.string	"strcmp(func0(964, 977), \"1111001010\") == 0"
	.align	3
.LC8:
	.string	"1111100100"
	.align	3
.LC9:
	.string	"strcmp(func0(996, 997), \"1111100100\") == 0"
	.align	3
.LC10:
	.string	"1011000001"
	.align	3
.LC11:
	.string	"strcmp(func0(560, 851), \"1011000001\") == 0"
	.align	3
.LC12:
	.string	"101101101"
	.align	3
.LC13:
	.string	"strcmp(func0(185, 546), \"101101101\") == 0"
	.align	3
.LC14:
	.string	"110101101"
	.align	3
.LC15:
	.string	"strcmp(func0(362, 496), \"110101101\") == 0"
	.align	3
.LC16:
	.string	"1001110010"
	.align	3
.LC17:
	.string	"strcmp(func0(350, 902), \"1001110010\") == 0"
	.align	3
.LC18:
	.string	"11010111"
	.align	3
.LC19:
	.string	"strcmp(func0(197, 233), \"11010111\") == 0"
	.align	3
.LC20:
	.string	"strcmp(func0(7, 5), \"-1\") == 0"
	.align	3
.LC21:
	.string	"strcmp(func0(5, 1), \"-1\") == 0"
	.align	3
.LC22:
	.string	"101"
	.align	3
.LC23:
	.string	"strcmp(func0(5, 5), \"101\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16
	sd	ra,8(sp)
	sd	s0,0(sp)
	addi	s0,sp,16
	li	a1,5
	li	a0,1
	call	func0
	mv	a5,a0
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L6:
	li	a1,13
	li	a0,7
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L7:
	li	a1,977
	li	a0,964
	call	func0
	mv	a5,a0
	lla	a1,.LC6
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L8:
	li	a1,997
	li	a0,996
	call	func0
	mv	a5,a0
	lla	a1,.LC8
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L9:
	li	a1,851
	li	a0,560
	call	func0
	mv	a5,a0
	lla	a1,.LC10
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC2
	lla	a0,.LC11
	call	__assert_fail@plt
.L10:
	li	a1,546
	li	a0,185
	call	func0
	mv	a5,a0
	lla	a1,.LC12
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC2
	lla	a0,.LC13
	call	__assert_fail@plt
.L11:
	li	a1,496
	li	a0,362
	call	func0
	mv	a5,a0
	lla	a1,.LC14
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC2
	lla	a0,.LC15
	call	__assert_fail@plt
.L12:
	li	a1,902
	li	a0,350
	call	func0
	mv	a5,a0
	lla	a1,.LC16
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC2
	lla	a0,.LC17
	call	__assert_fail@plt
.L13:
	li	a1,233
	li	a0,197
	call	func0
	mv	a5,a0
	lla	a1,.LC18
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC2
	lla	a0,.LC19
	call	__assert_fail@plt
.L14:
	li	a1,5
	li	a0,7
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC2
	lla	a0,.LC20
	call	__assert_fail@plt
.L15:
	li	a1,1
	li	a0,5
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC2
	lla	a0,.LC21
	call	__assert_fail@plt
.L16:
	li	a1,5
	li	a0,5
	call	func0
	mv	a5,a0
	lla	a1,.LC22
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC2
	lla	a0,.LC23
	call	__assert_fail@plt
.L17:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	ld	s0,0(sp)
	addi	sp,sp,16
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
