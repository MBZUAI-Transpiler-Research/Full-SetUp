	.file	"problem116.c"
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
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	mv	a4,a3
	sw	a5,-44(s0)
	mv	a5,a2
	sw	a5,-48(s0)
	mv	a5,a4
	sw	a5,-52(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	j	.L2
.L6:
	sw	zero,-24(s0)
	sw	zero,-20(s0)
	j	.L3
.L4:
	lw	a5,-28(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L3:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	lw	a5,-24(s0)
	sext.w	a5,a5
	ble	a5,zero,.L5
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a4,-52(s0)
	divw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-32(s0)
	addw	a5,a4,a5
	sw	a5,-32(s0)
.L5:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-32(s0)
	mv	a0,a5
	ld	s0,56(sp)
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
.LC3:
	.string	"problem116.c"
	.align	3
.LC4:
	.string	"func0(grid, rows, cols, capacity) == 6"
	.align	3
.LC5:
	.string	"func0(grid, rows, cols, capacity) == 5"
	.align	3
.LC6:
	.string	"func0(grid, rows, cols, capacity) == 0"
	.align	3
.LC7:
	.string	"func0(grid, rows, cols, capacity) == 4"
	.align	3
.LC8:
	.string	"func0(grid, rows, cols, capacity) == 2"
	.align	3
.LC9:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.align	3
.LC1:
	.word	0
	.word	0
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	1
	.word	1
	.word	1
	.align	3
.LC2:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-320
	.cfi_def_cfa_offset 320
	sd	ra,312(sp)
	sd	s0,304(sp)
	sd	s1,296(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,320
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	li	a5,3
	sw	a5,-260(s0)
	li	a5,4
	sw	a5,-256(s0)
	li	a5,1
	sw	a5,-252(s0)
	lw	a5,-260(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-248(s0)
	lla	a5,.LC0
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-152(s0)
	sd	a1,-144(s0)
	sd	a2,-136(s0)
	sd	a3,-128(s0)
	sd	a4,-120(s0)
	sd	a5,-112(s0)
	sw	zero,-320(s0)
	j	.L9
.L12:
	lw	a5,-256(s0)
	slli	a3,a5,2
	lw	a5,-320(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	s1,a4,a5
	mv	a0,a3
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	sw	zero,-316(s0)
	j	.L10
.L11:
	lw	a5,-320(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-316(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	lw	a5,-316(s0)
	lw	a3,-320(s0)
	slli	a3,a3,2
	add	a5,a3,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-120(a5)
	sw	a5,0(a4)
	lw	a5,-316(s0)
	addiw	a5,a5,1
	sw	a5,-316(s0)
.L10:
	lw	a5,-316(s0)
	mv	a4,a5
	lw	a5,-256(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-320(s0)
	addiw	a5,a5,1
	sw	a5,-320(s0)
.L9:
	lw	a5,-320(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	lw	a3,-252(s0)
	lw	a4,-256(s0)
	lw	a5,-260(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-248(s0)
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,6
	beq	a4,a5,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC3
	lla	a0,.LC4
	call	__assert_fail@plt
.L13:
	sw	zero,-312(s0)
	j	.L14
.L15:
	lw	a5,-312(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-312(s0)
	addiw	a5,a5,1
	sw	a5,-312(s0)
.L14:
	lw	a5,-312(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L15
	ld	a0,-248(s0)
	call	free@plt
	li	a5,4
	sw	a5,-260(s0)
	li	a5,4
	sw	a5,-256(s0)
	li	a5,2
	sw	a5,-252(s0)
	lw	a5,-260(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-248(s0)
	lla	a5,.LC1
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	ld	a5,56(a5)
	sd	a7,-104(s0)
	sd	a6,-96(s0)
	sd	a0,-88(s0)
	sd	a1,-80(s0)
	sd	a2,-72(s0)
	sd	a3,-64(s0)
	sd	a4,-56(s0)
	sd	a5,-48(s0)
	sw	zero,-308(s0)
	j	.L16
.L19:
	lw	a5,-256(s0)
	slli	a3,a5,2
	lw	a5,-308(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	s1,a4,a5
	mv	a0,a3
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	sw	zero,-304(s0)
	j	.L17
.L18:
	lw	a5,-308(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-304(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	lw	a5,-304(s0)
	lw	a3,-308(s0)
	slli	a3,a3,2
	add	a5,a3,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-72(a5)
	sw	a5,0(a4)
	lw	a5,-304(s0)
	addiw	a5,a5,1
	sw	a5,-304(s0)
.L17:
	lw	a5,-304(s0)
	mv	a4,a5
	lw	a5,-256(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L18
	lw	a5,-308(s0)
	addiw	a5,a5,1
	sw	a5,-308(s0)
.L16:
	lw	a5,-308(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L19
	lw	a3,-252(s0)
	lw	a4,-256(s0)
	lw	a5,-260(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-248(s0)
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,5
	beq	a4,a5,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC3
	lla	a0,.LC5
	call	__assert_fail@plt
.L20:
	sw	zero,-300(s0)
	j	.L21
.L22:
	lw	a5,-300(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-300(s0)
	addiw	a5,a5,1
	sw	a5,-300(s0)
.L21:
	lw	a5,-300(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L22
	ld	a0,-248(s0)
	call	free@plt
	li	a5,2
	sw	a5,-260(s0)
	li	a5,3
	sw	a5,-256(s0)
	li	a5,5
	sw	a5,-252(s0)
	lw	a5,-260(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-248(s0)
	sw	zero,-240(s0)
	sw	zero,-236(s0)
	sw	zero,-232(s0)
	sw	zero,-228(s0)
	sw	zero,-224(s0)
	sw	zero,-220(s0)
	sw	zero,-296(s0)
	j	.L23
.L26:
	lw	a5,-256(s0)
	slli	a3,a5,2
	lw	a5,-296(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	s1,a4,a5
	mv	a0,a3
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	sw	zero,-292(s0)
	j	.L24
.L25:
	lw	a5,-296(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-292(s0)
	slli	a5,a5,2
	add	a3,a4,a5
	lw	a2,-292(s0)
	lw	a4,-296(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	add	a5,a5,a2
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-208(a5)
	sw	a5,0(a3)
	lw	a5,-292(s0)
	addiw	a5,a5,1
	sw	a5,-292(s0)
.L24:
	lw	a5,-292(s0)
	mv	a4,a5
	lw	a5,-256(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L25
	lw	a5,-296(s0)
	addiw	a5,a5,1
	sw	a5,-296(s0)
.L23:
	lw	a5,-296(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L26
	lw	a3,-252(s0)
	lw	a4,-256(s0)
	lw	a5,-260(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-248(s0)
	call	func0
	mv	a5,a0
	beq	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,61
	lla	a1,.LC3
	lla	a0,.LC6
	call	__assert_fail@plt
.L27:
	sw	zero,-288(s0)
	j	.L28
.L29:
	lw	a5,-288(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-288(s0)
	addiw	a5,a5,1
	sw	a5,-288(s0)
.L28:
	lw	a5,-288(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L29
	ld	a0,-248(s0)
	call	free@plt
	li	a5,2
	sw	a5,-260(s0)
	li	a5,4
	sw	a5,-256(s0)
	li	a5,2
	sw	a5,-252(s0)
	lw	a5,-260(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-248(s0)
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-216(s0)
	sd	a3,-208(s0)
	sd	a4,-200(s0)
	sd	a5,-192(s0)
	sw	zero,-284(s0)
	j	.L30
.L33:
	lw	a5,-256(s0)
	slli	a3,a5,2
	lw	a5,-284(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	s1,a4,a5
	mv	a0,a3
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	sw	zero,-280(s0)
	j	.L31
.L32:
	lw	a5,-284(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-280(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	lw	a5,-280(s0)
	lw	a3,-284(s0)
	slli	a3,a3,2
	add	a5,a3,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-184(a5)
	sw	a5,0(a4)
	lw	a5,-280(s0)
	addiw	a5,a5,1
	sw	a5,-280(s0)
.L31:
	lw	a5,-280(s0)
	mv	a4,a5
	lw	a5,-256(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L32
	lw	a5,-284(s0)
	addiw	a5,a5,1
	sw	a5,-284(s0)
.L30:
	lw	a5,-284(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L33
	lw	a3,-252(s0)
	lw	a4,-256(s0)
	lw	a5,-260(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-248(s0)
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L34
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,75
	lla	a1,.LC3
	lla	a0,.LC7
	call	__assert_fail@plt
.L34:
	sw	zero,-276(s0)
	j	.L35
.L36:
	lw	a5,-276(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-276(s0)
	addiw	a5,a5,1
	sw	a5,-276(s0)
.L35:
	lw	a5,-276(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L36
	ld	a0,-248(s0)
	call	free@plt
	li	a5,2
	sw	a5,-260(s0)
	li	a5,4
	sw	a5,-256(s0)
	li	a5,9
	sw	a5,-252(s0)
	lw	a5,-260(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-248(s0)
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	sd	a5,-160(s0)
	sw	zero,-272(s0)
	j	.L37
.L40:
	lw	a5,-256(s0)
	slli	a3,a5,2
	lw	a5,-272(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	s1,a4,a5
	mv	a0,a3
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	sw	zero,-268(s0)
	j	.L38
.L39:
	lw	a5,-272(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-268(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	lw	a5,-268(s0)
	lw	a3,-272(s0)
	slli	a3,a3,2
	add	a5,a3,a5
	slli	a5,a5,2
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-152(a5)
	sw	a5,0(a4)
	lw	a5,-268(s0)
	addiw	a5,a5,1
	sw	a5,-268(s0)
.L38:
	lw	a5,-268(s0)
	mv	a4,a5
	lw	a5,-256(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L39
	lw	a5,-272(s0)
	addiw	a5,a5,1
	sw	a5,-272(s0)
.L37:
	lw	a5,-272(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L40
	lw	a3,-252(s0)
	lw	a4,-256(s0)
	lw	a5,-260(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-248(s0)
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L41
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,89
	lla	a1,.LC3
	lla	a0,.LC8
	call	__assert_fail@plt
.L41:
	sw	zero,-264(s0)
	j	.L42
.L43:
	lw	a5,-264(s0)
	slli	a5,a5,3
	ld	a4,-248(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-264(s0)
	addiw	a5,a5,1
	sw	a5,-264(s0)
.L42:
	lw	a5,-264(s0)
	mv	a4,a5
	lw	a5,-260(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L43
	ld	a0,-248(s0)
	call	free@plt
	lla	a0,.LC9
	call	puts@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L45
	call	__stack_chk_fail@plt
.L45:
	mv	a0,a4
	ld	ra,312(sp)
	.cfi_restore 1
	ld	s0,304(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 320
	ld	s1,296(sp)
	.cfi_restore 9
	addi	sp,sp,320
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
