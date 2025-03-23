	.file	"problem90.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sw	zero,-24(s0)
	j	.L2
.L3:
	lw	a5,-24(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-93
	sext.w	a5,a5
	mv	a4,a5
	li	a5,26
	remw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,97
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L3
	lw	a5,-24(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"hi"
	.align	3
.LC1:
	.string	"lm"
	.align	3
.LC2:
	.string	"problem90.c"
	.align	3
.LC3:
	.string	"strcmp(encrypted, \"lm\") == 0"
	.align	3
.LC4:
	.string	"asdfghjkl"
	.align	3
.LC5:
	.string	"ewhjklnop"
	.align	3
.LC6:
	.string	"strcmp(encrypted, \"ewhjklnop\") == 0"
	.align	3
.LC7:
	.string	"gf"
	.align	3
.LC8:
	.string	"kj"
	.align	3
.LC9:
	.string	"strcmp(encrypted, \"kj\") == 0"
	.align	3
.LC10:
	.string	"et"
	.align	3
.LC11:
	.string	"ix"
	.align	3
.LC12:
	.string	"strcmp(encrypted, \"ix\") == 0"
	.align	3
.LC13:
	.string	"faewfawefaewg"
	.align	3
.LC14:
	.string	"jeiajeaijeiak"
	.align	3
.LC15:
	.string	"strcmp(encrypted, \"jeiajeaijeiak\") == 0"
	.align	3
.LC16:
	.string	"hellomyfriend"
	.align	3
.LC17:
	.string	"lippsqcjvmirh"
	.align	3
.LC18:
	.string	"strcmp(encrypted, \"lippsqcjvmirh\") == 0"
	.align	3
.LC19:
	.string	"dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh"
	.align	3
.LC20:
	.string	"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"
	.align	3
.LC21:
	.string	"strcmp(encrypted, \"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl\") == 0"
	.align	3
.LC22:
	.string	"a"
	.align	3
.LC23:
	.string	"e"
	.align	3
.LC24:
	.string	"strcmp(encrypted, \"e\") == 0"
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
	addi	a5,s0,-128
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L5
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L5:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC4
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L6
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC2
	lla	a0,.LC6
	call	__assert_fail@plt
.L6:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC7
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC8
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L7:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC10
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC11
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC2
	lla	a0,.LC12
	call	__assert_fail@plt
.L8:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC13
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC14
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC2
	lla	a0,.LC15
	call	__assert_fail@plt
.L9:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC16
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC17
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC2
	lla	a0,.LC18
	call	__assert_fail@plt
.L10:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC19
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC20
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC2
	lla	a0,.LC21
	call	__assert_fail@plt
.L11:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC22
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC23
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC2
	lla	a0,.LC24
	call	__assert_fail@plt
.L12:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
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
