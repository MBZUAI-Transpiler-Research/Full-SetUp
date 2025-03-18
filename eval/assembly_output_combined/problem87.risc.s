	.file	"problem87.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a0,-136(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-92(s0)
	lw	a5,-92(s0)
	addiw	a5,a5,2
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-88(s0)
	sw	zero,-116(s0)
	sw	zero,-112(s0)
	sw	zero,-108(s0)
	j	.L2
.L14:
	lw	a5,-108(s0)
	ld	a4,-136(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,32
	beq	a4,a5,.L3
	lw	a5,-108(s0)
	ld	a4,-136(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L4
.L3:
	sw	zero,-104(s0)
	j	.L5
.L9:
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-100(s0)
	j	.L6
.L8:
	lw	a5,-104(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-64(a5)
	lw	a5,-100(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-64(a5)
	bleu	a4,a5,.L7
	lw	a5,-104(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-64(a5)
	sb	a5,-117(s0)
	lw	a5,-100(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-64(a5)
	lw	a5,-104(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-64(a5)
	lw	a5,-100(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a4,-117(s0)
	sb	a4,-64(a5)
.L7:
	lw	a5,-100(s0)
	addiw	a5,a5,1
	sw	a5,-100(s0)
.L6:
	lw	a5,-100(s0)
	mv	a4,a5
	lw	a5,-112(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
.L5:
	lw	a5,-112(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-104(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
	lw	a5,-116(s0)
	sext.w	a5,a5
	ble	a5,zero,.L10
	lw	a5,-116(s0)
	addiw	a4,a5,1
	sw	a4,-116(s0)
	mv	a4,a5
	ld	a5,-88(s0)
	add	a5,a5,a4
	li	a4,32
	sb	a4,0(a5)
.L10:
	sw	zero,-96(s0)
	j	.L11
.L12:
	lw	a5,-116(s0)
	addiw	a4,a5,1
	sw	a4,-116(s0)
	mv	a4,a5
	ld	a5,-88(s0)
	add	a5,a5,a4
	lw	a4,-96(s0)
	addi	a4,a4,-16
	add	a4,a4,s0
	lbu	a4,-64(a4)
	sb	a4,0(a5)
	lw	a5,-96(s0)
	addiw	a5,a5,1
	sw	a5,-96(s0)
.L11:
	lw	a5,-96(s0)
	mv	a4,a5
	lw	a5,-112(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	sw	zero,-112(s0)
	j	.L13
.L4:
	lw	a5,-108(s0)
	ld	a4,-136(s0)
	add	a4,a4,a5
	lw	a5,-112(s0)
	addiw	a3,a5,1
	sw	a3,-112(s0)
	lbu	a4,0(a4)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-64(a5)
.L13:
	lw	a5,-108(s0)
	addiw	a5,a5,1
	sw	a5,-108(s0)
.L2:
	lw	a5,-108(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L14
	lw	a5,-116(s0)
	ld	a4,-88(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a5,-88(s0)
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
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Hi"
	.align	3
.LC1:
	.string	"problem87.c"
	.align	3
.LC2:
	.string	"strcmp(result, \"Hi\") == 0"
	.align	3
.LC3:
	.string	"hello"
	.align	3
.LC4:
	.string	"ehllo"
	.align	3
.LC5:
	.string	"strcmp(result, \"ehllo\") == 0"
	.align	3
.LC6:
	.string	"number"
	.align	3
.LC7:
	.string	"bemnru"
	.align	3
.LC8:
	.string	"strcmp(result, \"bemnru\") == 0"
	.align	3
.LC9:
	.string	"abcd"
	.align	3
.LC10:
	.string	"strcmp(result, \"abcd\") == 0"
	.align	3
.LC11:
	.string	"Hello World!!!"
	.align	3
.LC12:
	.string	"Hello !!!Wdlor"
	.align	3
.LC13:
	.string	"strcmp(result, \"Hello !!!Wdlor\") == 0"
	.align	3
.LC14:
	.string	""
	.align	3
.LC15:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC16:
	.string	"Hi. My name is Mister Robot. How are you?"
	.align	3
.LC17:
	.string	".Hi My aemn is Meirst .Rboot How aer ?ouy"
	.align	3
.LC18:
	.string	"strcmp(result, \".Hi My aemn is Meirst .Rboot How aer ?ouy\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lla	a0,.LC0
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC0
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L18:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC3
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC4
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC1
	lla	a0,.LC5
	call	__assert_fail@plt
.L19:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC6
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC7
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,54
	lla	a1,.LC1
	lla	a0,.LC8
	call	__assert_fail@plt
.L20:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC9
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC9
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC1
	lla	a0,.LC10
	call	__assert_fail@plt
.L21:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC11
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC12
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,62
	lla	a1,.LC1
	lla	a0,.LC13
	call	__assert_fail@plt
.L22:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC14
	call	func0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	beq	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,66
	lla	a1,.LC1
	lla	a0,.LC15
	call	__assert_fail@plt
.L23:
	ld	a0,-24(s0)
	call	free@plt
	lla	a0,.LC16
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC17
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,70
	lla	a1,.LC1
	lla	a0,.LC18
	call	__assert_fail@plt
.L24:
	ld	a0,-24(s0)
	call	free@plt
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
