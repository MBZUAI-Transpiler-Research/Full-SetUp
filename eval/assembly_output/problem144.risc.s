	.file	"problem144.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sw	zero,-20(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	j	.L2
.L13:
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,32
	beq	a4,a5,.L3
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	j	.L4
.L3:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L5
	li	a5,1
	sb	a5,-37(s0)
	li	a5,2
	sw	a5,-24(s0)
	j	.L6
.L9:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L7
	sb	zero,-37(s0)
	j	.L10
.L7:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L6:
	lw	a5,-24(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L9
	j	.L10
.L5:
	sb	zero,-37(s0)
.L10:
	lbu	a5,-37(s0)
	andi	a5,a5,0xff
	beq	a5,zero,.L11
	lw	a5,-32(s0)
	sext.w	a5,a5
	ble	a5,zero,.L12
	lw	a5,-32(s0)
	addiw	a4,a5,1
	sw	a4,-32(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,32
	sb	a4,0(a5)
.L12:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a3,a4,a5
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	memcpy@plt
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sw	a5,-32(s0)
.L11:
	sw	zero,-36(s0)
.L4:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L13
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L14
	li	a5,1
	sb	a5,-37(s0)
	li	a5,2
	sw	a5,-24(s0)
	j	.L15
.L18:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L16
	sb	zero,-37(s0)
	j	.L19
.L16:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L15:
	lw	a5,-24(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L18
	j	.L19
.L14:
	sb	zero,-37(s0)
.L19:
	lbu	a5,-37(s0)
	andi	a5,a5,0xff
	beq	a5,zero,.L20
	lw	a5,-32(s0)
	sext.w	a5,a5
	ble	a5,zero,.L21
	lw	a5,-32(s0)
	addiw	a4,a5,1
	sw	a4,-32(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	add	a5,a5,a4
	li	a4,32
	sb	a4,0(a5)
.L21:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a3,a4,a5
	lw	a4,-28(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	mv	a2,a4
	mv	a1,a5
	mv	a0,a3
	call	memcpy@plt
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sw	a5,-32(s0)
.L20:
	lw	a5,-32(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"This is a test"
	.align	3
.LC1:
	.string	"is"
	.align	3
.LC2:
	.string	"problem144.c"
	.align	3
.LC3:
	.string	"strcmp(output, \"is\") == 0"
	.align	3
.LC4:
	.string	"lets go for swimming"
	.align	3
.LC5:
	.string	"go for"
	.align	3
.LC6:
	.string	"strcmp(output, \"go for\") == 0"
	.align	3
.LC7:
	.string	"there is no place available here"
	.align	3
.LC8:
	.string	"there is no place"
	.align	3
.LC9:
	.string	"strcmp(output, \"there is no place\") == 0"
	.align	3
.LC10:
	.string	"Hi I am Hussein"
	.align	3
.LC11:
	.string	"Hi am Hussein"
	.align	3
.LC12:
	.string	"strcmp(output, \"Hi am Hussein\") == 0"
	.align	3
.LC13:
	.string	"go for it"
	.align	3
.LC14:
	.string	"strcmp(output, \"go for it\") == 0"
	.align	3
.LC15:
	.string	"here"
	.align	3
.LC16:
	.string	"strcmp(output, \"\") == 0"
	.align	3
.LC17:
	.string	"here is"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
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
	beq	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,70
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L23:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC4
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,73
	lla	a1,.LC2
	lla	a0,.LC6
	call	__assert_fail@plt
.L24:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC7
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC8
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,76
	lla	a1,.LC2
	lla	a0,.LC9
	call	__assert_fail@plt
.L25:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC10
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC11
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,79
	lla	a1,.LC2
	lla	a0,.LC12
	call	__assert_fail@plt
.L26:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC13
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC13
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,82
	lla	a1,.LC2
	lla	a0,.LC14
	call	__assert_fail@plt
.L27:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC15
	call	func0
	lbu	a5,-128(s0)
	sext.w	a5,a5
	beq	a5,zero,.L28
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,85
	lla	a1,.LC2
	lla	a0,.LC16
	call	__assert_fail@plt
.L28:
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC17
	call	func0
	addi	a5,s0,-128
	lla	a1,.LC1
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L29
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,88
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L29:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L31
	call	__stack_chk_fail@plt
.L31:
	mv	a0,a4
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
