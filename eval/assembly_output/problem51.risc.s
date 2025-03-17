	.file	"problem51.c"
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
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	sext.w	a5,a5
	beq	a5,zero,.L2
	li	a5,5
	j	.L3
.L2:
	li	a5,21
.L3:
	sw	a5,-40(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	sd	a0,-24(s0)
	sd	zero,-32(s0)
	j	.L4
.L5:
	ld	a4,-56(s0)
	ld	a5,-32(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-97
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,26
	remw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,97
	sw	a5,-36(s0)
	ld	a4,-56(s0)
	ld	a5,-32(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L4:
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	bltu	a4,a5,.L5
	nop
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
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem51.c"
	.align	3
.LC1:
	.string	"strcmp(encoded_str, str) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	li	a0,0
	call	time@plt
	mv	a5,a0
	sext.w	a5,a5
	mv	a0,a5
	call	srand@plt
	sw	zero,-44(s0)
	j	.L7
.L11:
	call	rand@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,11
	remw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,10
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-32(s0)
	sw	zero,-40(s0)
	j	.L8
.L9:
	call	rand@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,26
	remw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,0xff
	addiw	a5,a5,97
	sb	a5,-45(s0)
	lw	a5,-40(s0)
	ld	a4,-32(s0)
	add	a5,a4,a5
	lbu	a4,-45(s0)
	sb	a4,0(a5)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L8:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	lw	a5,-36(s0)
	ld	a4,-32(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	strcpy@plt
	li	a1,1
	ld	a0,-24(s0)
	call	func0
	li	a1,0
	ld	a0,-24(s0)
	call	func0
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L10:
	ld	a0,-32(s0)
	call	free@plt
	ld	a0,-24(s0)
	call	free@plt
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L7:
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L11
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
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
