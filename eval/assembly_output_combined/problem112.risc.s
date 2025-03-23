	.file	"problem112.c"
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
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sd	a0,-168(s0)
	sd	a1,-176(s0)
	sd	a2,-184(s0)
	sd	a3,-192(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sd	zero,-128(s0)
	sd	zero,-120(s0)
	sd	zero,-112(s0)
	sd	zero,-104(s0)
	sd	zero,-96(s0)
	sd	zero,-88(s0)
	sd	zero,-80(s0)
	sd	zero,-72(s0)
	sd	zero,-64(s0)
	sd	zero,-56(s0)
	sd	zero,-48(s0)
	sd	zero,-40(s0)
	sd	zero,-32(s0)
	sw	zero,-152(s0)
	ld	a5,-168(s0)
	sd	a5,-136(s0)
	sw	zero,-148(s0)
	j	.L2
.L4:
	ld	a5,-136(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,32
	beq	a4,a5,.L3
	ld	a5,-136(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-97
	sw	a5,-140(s0)
	lw	a5,-140(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-112(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-140(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a4,-112(a5)
	lw	a5,-140(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-112(a5)
	lw	a5,-152(s0)
	sext.w	a5,a5
	bge	a5,a4,.L3
	lw	a5,-140(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-112(a5)
	sw	a5,-152(s0)
.L3:
	ld	a5,-136(s0)
	addi	a5,a5,1
	sd	a5,-136(s0)
.L2:
	ld	a5,-136(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L4
	sw	zero,-144(s0)
	j	.L5
.L7:
	lw	a5,-144(s0)
	slli	a5,a5,2
	ld	a4,-176(s0)
	add	a4,a4,a5
	lw	a5,-144(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-112(a5)
	sw	a5,0(a4)
	lw	a5,-144(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-112(a5)
	lw	a5,-152(s0)
	sext.w	a5,a5
	bne	a5,a4,.L6
	lw	a5,-144(s0)
	andi	a4,a5,0xff
	lw	a5,-148(s0)
	addiw	a3,a5,1
	sw	a3,-148(s0)
	mv	a3,a5
	ld	a5,-192(s0)
	add	a5,a5,a3
	addiw	a4,a4,97
	andi	a4,a4,0xff
	sb	a4,0(a5)
.L6:
	lw	a5,-144(s0)
	addiw	a5,a5,1
	sw	a5,-144(s0)
.L5:
	lw	a5,-144(s0)
	sext.w	a4,a5
	li	a5,25
	ble	a4,a5,.L7
	ld	a5,-184(s0)
	lw	a4,-152(s0)
	sw	a4,0(a5)
	lw	a5,-148(s0)
	ld	a4,-192(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L8
	call	__stack_chk_fail@plt
.L8:
	ld	ra,184(sp)
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a3,-64(s0)
	sd	a4,-72(s0)
	mv	a4,a5
	mv	a5,a2
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-56(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L10
	li	a5,0
	j	.L11
.L10:
	sw	zero,-24(s0)
	j	.L12
.L14:
	lw	a5,-24(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a5,a5,2
	addi	a5,a5,-388
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-24(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a5,a5,2
	addi	a5,a5,-388
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L13
	li	a5,0
	j	.L11
.L13:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L12:
	lw	a5,-24(s0)
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L14
	sw	zero,-20(s0)
	j	.L15
.L17:
	lw	a5,-20(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a5,a5,2
	addi	a5,a5,-388
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a5,a5,2
	addi	a5,a5,-388
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L16
	li	a5,0
	j	.L11
.L16:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L15:
	lw	a5,-20(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L17
	li	a5,1
.L11:
	mv	a0,a5
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"a b b a"
	.align	3
.LC1:
	.string	"ab"
	.align	3
.LC2:
	.string	"problem112.c"
	.align	3
.LC3:
	.string	"issame(counts1, letters1, max_count1, counts2, \"ab\", 2)"
	.align	3
.LC4:
	.string	"a b c a b"
	.align	3
.LC5:
	.string	"a b c d g"
	.align	3
.LC6:
	.string	"abcdg"
	.align	3
.LC7:
	.string	"issame(counts1, letters1, max_count1, counts2, \"abcdg\", 1)"
	.align	3
.LC8:
	.string	"r t g"
	.align	3
.LC9:
	.string	"rtg"
	.align	3
.LC10:
	.string	"issame(counts1, letters1, max_count1, counts2, \"rtg\", 1)"
	.align	3
.LC11:
	.string	"b b b b a"
	.align	3
.LC12:
	.string	"b"
	.align	3
.LC13:
	.string	"issame(counts1, letters1, max_count1, counts2, \"b\", 4)"
	.align	3
.LC14:
	.string	"a"
	.align	3
.LC15:
	.string	"issame(counts1, letters1, max_count1, counts2, \"a\", 1)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-272
	.cfi_def_cfa_offset 272
	sd	ra,264(sp)
	sd	s0,256(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,272
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a3,s0,-56
	addi	a4,s0,-268
	addi	a5,s0,-264
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC0
	call	func0
	addi	a5,s0,-160
	li	a2,104
	li	a1,0
	mv	a0,a5
	call	memset@plt
	li	a5,2
	sw	a5,-160(s0)
	li	a5,2
	sw	a5,-156(s0)
	lw	a2,-268(s0)
	addi	a3,s0,-160
	addi	a1,s0,-56
	addi	a0,s0,-264
	li	a5,2
	lla	a4,.LC1
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,59
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L19:
	addi	a3,s0,-56
	addi	a4,s0,-268
	addi	a5,s0,-264
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC4
	call	func0
	addi	a5,s0,-160
	li	a2,104
	li	a1,0
	mv	a0,a5
	call	memset@plt
	li	a5,2
	sw	a5,-160(s0)
	li	a5,2
	sw	a5,-156(s0)
	lw	a2,-268(s0)
	addi	a3,s0,-160
	addi	a1,s0,-56
	addi	a0,s0,-264
	li	a5,2
	lla	a4,.LC1
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,65
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L20:
	addi	a3,s0,-56
	addi	a4,s0,-268
	addi	a5,s0,-264
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC5
	call	func0
	addi	a5,s0,-160
	li	a2,104
	li	a1,0
	mv	a0,a5
	call	memset@plt
	li	a5,1
	sw	a5,-136(s0)
	lw	a5,-136(s0)
	sw	a5,-148(s0)
	lw	a5,-148(s0)
	sw	a5,-152(s0)
	lw	a5,-152(s0)
	sw	a5,-156(s0)
	lw	a5,-156(s0)
	sw	a5,-160(s0)
	lw	a2,-268(s0)
	addi	a3,s0,-160
	addi	a1,s0,-56
	addi	a0,s0,-264
	li	a5,1
	lla	a4,.LC6
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,70
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L21:
	addi	a3,s0,-56
	addi	a4,s0,-268
	addi	a5,s0,-264
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC8
	call	func0
	addi	a5,s0,-160
	li	a2,104
	li	a1,0
	mv	a0,a5
	call	memset@plt
	li	a5,1
	sw	a5,-136(s0)
	lw	a5,-136(s0)
	sw	a5,-84(s0)
	lw	a5,-84(s0)
	sw	a5,-92(s0)
	lw	a2,-268(s0)
	addi	a3,s0,-160
	addi	a1,s0,-56
	addi	a0,s0,-264
	li	a5,1
	lla	a4,.LC9
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,75
	lla	a1,.LC2
	lla	a0,.LC10
	call	__assert_fail@plt
.L22:
	addi	a3,s0,-56
	addi	a4,s0,-268
	addi	a5,s0,-264
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC11
	call	func0
	addi	a5,s0,-160
	li	a2,104
	li	a1,0
	mv	a0,a5
	call	memset@plt
	li	a5,4
	sw	a5,-156(s0)
	lw	a2,-268(s0)
	addi	a3,s0,-160
	addi	a1,s0,-56
	addi	a0,s0,-264
	li	a5,4
	lla	a4,.LC12
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,80
	lla	a1,.LC2
	lla	a0,.LC13
	call	__assert_fail@plt
.L23:
	addi	a3,s0,-56
	addi	a4,s0,-268
	addi	a5,s0,-264
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC8
	call	func0
	addi	a5,s0,-160
	li	a2,104
	li	a1,0
	mv	a0,a5
	call	memset@plt
	li	a5,1
	sw	a5,-136(s0)
	lw	a5,-136(s0)
	sw	a5,-84(s0)
	lw	a5,-84(s0)
	sw	a5,-92(s0)
	lw	a2,-268(s0)
	addi	a3,s0,-160
	addi	a1,s0,-56
	addi	a0,s0,-264
	li	a5,1
	lla	a4,.LC9
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,85
	lla	a1,.LC2
	lla	a0,.LC10
	call	__assert_fail@plt
.L24:
	addi	a3,s0,-56
	addi	a4,s0,-268
	addi	a5,s0,-264
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC14
	call	func0
	addi	a5,s0,-160
	li	a2,104
	li	a1,0
	mv	a0,a5
	call	memset@plt
	li	a5,1
	sw	a5,-160(s0)
	lw	a2,-268(s0)
	addi	a3,s0,-160
	addi	a1,s0,-56
	addi	a0,s0,-264
	li	a5,1
	lla	a4,.LC14
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,90
	lla	a1,.LC2
	lla	a0,.LC15
	call	__assert_fail@plt
.L25:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L27
	call	__stack_chk_fail@plt
.L27:
	mv	a0,a4
	ld	ra,264(sp)
	.cfi_restore 1
	ld	s0,256(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	addi	sp,sp,272
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
