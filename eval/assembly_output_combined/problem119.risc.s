	.file	"problem119.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
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
	lla	a5,.LC0
	sd	a5,-32(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	sext.w	a5,a5
	addiw	a5,a5,-2
	sext.w	a5,a5
	sw	a5,-36(s0)
	j	.L2
.L5:
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-32(s0)
	call	strchr@plt
	mv	a5,a0
	beq	a5,zero,.L3
	lw	a5,-36(s0)
	addi	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-32(s0)
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L3
	lw	a5,-36(s0)
	addi	a5,a5,-1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	ld	a0,-32(s0)
	call	strchr@plt
	mv	a5,a0
	bne	a5,zero,.L3
	lw	a5,-36(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lla	a5,out.1
	sb	a4,0(a5)
	lla	a5,out.1
	j	.L4
.L3:
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L5
	lla	a5,out.1
	sb	zero,0(a5)
	lla	a5,out.1
.L4:
	mv	a0,a5
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
.LC1:
	.string	"yogurt"
	.align	3
.LC2:
	.string	"u"
	.align	3
.LC3:
	.string	"problem119.c"
	.align	3
.LC4:
	.string	"strcmp(func0(\"yogurt\"), \"u\") == 0"
	.align	3
.LC5:
	.string	"full"
	.align	3
.LC6:
	.string	"strcmp(func0(\"full\"), \"u\") == 0"
	.align	3
.LC7:
	.string	"easy"
	.align	3
.LC8:
	.string	"strcmp(func0(\"easy\"), \"\") == 0"
	.align	3
.LC9:
	.string	"eAsy"
	.align	3
.LC10:
	.string	"strcmp(func0(\"eAsy\"), \"\") == 0"
	.align	3
.LC11:
	.string	"ali"
	.align	3
.LC12:
	.string	"strcmp(func0(\"ali\"), \"\") == 0"
	.align	3
.LC13:
	.string	"bad"
	.align	3
.LC14:
	.string	"a"
	.align	3
.LC15:
	.string	"strcmp(func0(\"bad\"), \"a\") == 0"
	.align	3
.LC16:
	.string	"most"
	.align	3
.LC17:
	.string	"o"
	.align	3
.LC18:
	.string	"strcmp(func0(\"most\"), \"o\") == 0"
	.align	3
.LC19:
	.string	"ab"
	.align	3
.LC20:
	.string	"strcmp(func0(\"ab\"), \"\") == 0"
	.align	3
.LC21:
	.string	"ba"
	.align	3
.LC22:
	.string	"strcmp(func0(\"ba\"), \"\") == 0"
	.align	3
.LC23:
	.string	"quick"
	.align	3
.LC24:
	.string	"strcmp(func0(\"quick\"), \"\") == 0"
	.align	3
.LC25:
	.string	"anime"
	.align	3
.LC26:
	.string	"i"
	.align	3
.LC27:
	.string	"strcmp(func0(\"anime\"), \"i\") == 0"
	.align	3
.LC28:
	.string	"Asia"
	.align	3
.LC29:
	.string	"strcmp(func0(\"Asia\"), \"\") == 0"
	.align	3
.LC30:
	.string	"Above"
	.align	3
.LC31:
	.string	"strcmp(func0(\"Above\"), \"o\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	lla	a1,.LC2
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L7:
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	lla	a1,.LC2
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L8
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC3
	lla	a0,.LC6
	call	__assert_fail@plt
.L8:
	lla	a0,.LC7
	call	func0
	mv	a5,a0
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC3
	lla	a0,.LC8
	call	__assert_fail@plt
.L9:
	lla	a0,.LC9
	call	func0
	mv	a5,a0
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC3
	lla	a0,.LC10
	call	__assert_fail@plt
.L10:
	lla	a0,.LC11
	call	func0
	mv	a5,a0
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC3
	lla	a0,.LC12
	call	__assert_fail@plt
.L11:
	lla	a0,.LC13
	call	func0
	mv	a5,a0
	lla	a1,.LC14
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC3
	lla	a0,.LC15
	call	__assert_fail@plt
.L12:
	lla	a0,.LC16
	call	func0
	mv	a5,a0
	lla	a1,.LC17
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC3
	lla	a0,.LC18
	call	__assert_fail@plt
.L13:
	lla	a0,.LC19
	call	func0
	mv	a5,a0
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC3
	lla	a0,.LC20
	call	__assert_fail@plt
.L14:
	lla	a0,.LC21
	call	func0
	mv	a5,a0
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC3
	lla	a0,.LC22
	call	__assert_fail@plt
.L15:
	lla	a0,.LC23
	call	func0
	mv	a5,a0
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC3
	lla	a0,.LC24
	call	__assert_fail@plt
.L16:
	lla	a0,.LC25
	call	func0
	mv	a5,a0
	lla	a1,.LC26
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC3
	lla	a0,.LC27
	call	__assert_fail@plt
.L17:
	lla	a0,.LC28
	call	func0
	mv	a5,a0
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC3
	lla	a0,.LC29
	call	__assert_fail@plt
.L18:
	lla	a0,.LC30
	call	func0
	mv	a5,a0
	lla	a1,.LC17
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC3
	lla	a0,.LC31
	call	__assert_fail@plt
.L19:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	out.1
	.comm	out.1,2,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
