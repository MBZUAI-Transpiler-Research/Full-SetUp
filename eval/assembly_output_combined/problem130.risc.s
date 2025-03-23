	.file	"problem130.c"
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
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	mv	a4,a2
	sd	a3,-72(s0)
	sw	a5,-60(s0)
	mv	a5,a4
	sw	a5,-64(s0)
	sw	zero,-44(s0)
	j	.L2
.L6:
	sw	zero,-40(s0)
	j	.L3
.L5:
	lw	a5,-44(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L4
	lw	a5,-44(s0)
	sw	a5,-36(s0)
	lw	a5,-40(s0)
	sw	a5,-32(s0)
.L4:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L3:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L2:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	lw	a5,-60(s0)
	mulw	a5,a5,a5
	sw	a5,-28(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	ble	a5,zero,.L7
	lw	a5,-36(s0)
	slli	a5,a5,3
	addi	a5,a5,-8
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,a4,.L7
	lw	a5,-36(s0)
	slli	a5,a5,3
	addi	a5,a5,-8
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
.L7:
	lw	a5,-60(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L8
	lw	a5,-36(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,a4,.L8
	lw	a5,-36(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
.L8:
	lw	a5,-32(s0)
	sext.w	a5,a5
	ble	a5,zero,.L9
	lw	a5,-36(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,a4,.L9
	lw	a5,-36(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
.L9:
	lw	a5,-60(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-32(s0)
	sext.w	a5,a5
	bge	a5,a4,.L10
	lw	a5,-36(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-32(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,a4,.L10
	lw	a5,-36(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-32(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
.L10:
	ld	a5,-72(s0)
	lw	a4,-64(s0)
	sw	a4,0(a5)
	lw	a5,-64(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-44(s0)
	j	.L11
.L14:
	lw	a5,-44(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L12
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	li	a4,1
	sw	a4,0(a5)
	j	.L13
.L12:
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L13:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L11:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-64(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
	ld	a5,-24(s0)
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	sw	zero,-20(s0)
	j	.L17
.L20:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L18
	li	a5,0
	j	.L19
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
	blt	a4,a5,.L20
	li	a5,1
.L19:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC8:
	.string	"problem130.c"
	.align	3
.LC9:
	.string	"issame(out1, result1, size)"
	.align	3
.LC10:
	.string	"issame(out2, result2, size)"
	.align	3
.LC11:
	.string	"issame(out3, result3, size)"
	.align	3
.LC12:
	.string	"issame(out4, result4, size)"
	.align	3
.LC13:
	.string	"issame(out5, result5, size)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC1:
	.word	5
	.word	9
	.word	3
	.word	4
	.word	1
	.word	6
	.word	7
	.word	8
	.word	2
	.align	3
.LC2:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.align	3
.LC3:
	.word	1
	.word	2
	.word	1
	.word	2
	.align	3
.LC4:
	.word	6
	.word	4
	.word	13
	.word	10
	.word	5
	.word	7
	.word	12
	.word	1
	.word	3
	.word	16
	.word	11
	.word	15
	.word	8
	.word	14
	.word	9
	.word	2
	.align	3
.LC5:
	.word	1
	.word	10
	.word	1
	.word	10
	.word	1
	.word	10
	.word	1
	.align	3
.LC6:
	.word	8
	.word	14
	.word	9
	.word	2
	.word	6
	.word	4
	.word	13
	.word	15
	.word	5
	.word	7
	.word	1
	.word	12
	.word	3
	.word	10
	.word	11
	.word	16
	.align	3
.LC7:
	.word	1
	.word	7
	.word	1
	.word	7
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-592
	.cfi_def_cfa_offset 592
	sd	ra,584(sp)
	sd	s0,576(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,592
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-296(s0)
	sd	a2,-288(s0)
	sd	a3,-280(s0)
	sd	a4,-272(s0)
	lw	a5,32(a5)
	sw	a5,-264(s0)
	addi	a5,s0,-296
	sd	a5,-472(s0)
	addi	a5,s0,-296
	addi	a5,a5,12
	sd	a5,-464(s0)
	addi	a5,s0,-296
	addi	a5,a5,24
	sd	a5,-456(s0)
	li	a5,1
	sw	a5,-528(s0)
	li	a5,2
	sw	a5,-524(s0)
	li	a5,1
	sw	a5,-520(s0)
	addi	a4,s0,-580
	addi	a5,s0,-472
	mv	a3,a4
	li	a2,3
	li	a1,3
	mv	a0,a5
	call	func0
	sd	a0,-576(s0)
	lw	a4,-580(s0)
	addi	a5,s0,-528
	mv	a2,a4
	mv	a1,a5
	ld	a0,-576(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC8
	lla	a0,.LC9
	call	__assert_fail@plt
.L22:
	ld	a0,-576(s0)
	call	free@plt
	lla	a5,.LC1
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-256(s0)
	sd	a2,-248(s0)
	sd	a3,-240(s0)
	sd	a4,-232(s0)
	lw	a5,32(a5)
	sw	a5,-224(s0)
	addi	a5,s0,-256
	sd	a5,-448(s0)
	addi	a5,s0,-256
	addi	a5,a5,12
	sd	a5,-440(s0)
	addi	a5,s0,-256
	addi	a5,a5,24
	sd	a5,-432(s0)
	li	a5,1
	sw	a5,-536(s0)
	addi	a4,s0,-580
	addi	a5,s0,-448
	mv	a3,a4
	li	a2,1
	li	a1,3
	mv	a0,a5
	call	func0
	sd	a0,-568(s0)
	lw	a4,-580(s0)
	addi	a5,s0,-536
	mv	a2,a4
	mv	a1,a5
	ld	a0,-568(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,55
	lla	a1,.LC8
	lla	a0,.LC10
	call	__assert_fail@plt
.L23:
	ld	a0,-568(s0)
	call	free@plt
	lla	a5,.LC2
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	ld	a5,56(a5)
	sd	a7,-216(s0)
	sd	a6,-208(s0)
	sd	a0,-200(s0)
	sd	a1,-192(s0)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	sd	a5,-160(s0)
	addi	a5,s0,-216
	sd	a5,-392(s0)
	addi	a5,s0,-216
	addi	a5,a5,16
	sd	a5,-384(s0)
	addi	a5,s0,-216
	addi	a5,a5,32
	sd	a5,-376(s0)
	addi	a5,s0,-216
	addi	a5,a5,48
	sd	a5,-368(s0)
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-512(s0)
	ld	a5,8(a5)
	sd	a5,-504(s0)
	addi	a4,s0,-580
	addi	a5,s0,-392
	mv	a3,a4
	li	a2,4
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-560(s0)
	lw	a4,-580(s0)
	addi	a5,s0,-512
	mv	a2,a4
	mv	a1,a5
	ld	a0,-560(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,63
	lla	a1,.LC8
	lla	a0,.LC11
	call	__assert_fail@plt
.L24:
	ld	a0,-560(s0)
	call	free@plt
	lla	a5,.LC4
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	ld	a5,56(a5)
	sd	a7,-152(s0)
	sd	a6,-144(s0)
	sd	a0,-136(s0)
	sd	a1,-128(s0)
	sd	a2,-120(s0)
	sd	a3,-112(s0)
	sd	a4,-104(s0)
	sd	a5,-96(s0)
	addi	a5,s0,-152
	sd	a5,-360(s0)
	addi	a5,s0,-152
	addi	a5,a5,16
	sd	a5,-352(s0)
	addi	a5,s0,-152
	addi	a5,a5,32
	sd	a5,-344(s0)
	addi	a5,s0,-152
	addi	a5,a5,48
	sd	a5,-336(s0)
	lla	a5,.LC5
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-424(s0)
	sd	a3,-416(s0)
	sd	a4,-408(s0)
	lw	a5,24(a5)
	sw	a5,-400(s0)
	addi	a4,s0,-580
	addi	a5,s0,-360
	mv	a3,a4
	li	a2,7
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-552(s0)
	lw	a4,-580(s0)
	addi	a5,s0,-424
	mv	a2,a4
	mv	a1,a5
	ld	a0,-552(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,71
	lla	a1,.LC8
	lla	a0,.LC12
	call	__assert_fail@plt
.L25:
	ld	a0,-552(s0)
	call	free@plt
	lla	a5,.LC6
	ld	a7,0(a5)
	ld	a6,8(a5)
	ld	a0,16(a5)
	ld	a1,24(a5)
	ld	a2,32(a5)
	ld	a3,40(a5)
	ld	a4,48(a5)
	ld	a5,56(a5)
	sd	a7,-88(s0)
	sd	a6,-80(s0)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-88
	sd	a5,-328(s0)
	addi	a5,s0,-88
	addi	a5,a5,16
	sd	a5,-320(s0)
	addi	a5,s0,-88
	addi	a5,a5,32
	sd	a5,-312(s0)
	addi	a5,s0,-88
	addi	a5,a5,48
	sd	a5,-304(s0)
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-496(s0)
	ld	a4,8(a5)
	sd	a4,-488(s0)
	lw	a5,16(a5)
	sw	a5,-480(s0)
	addi	a4,s0,-580
	addi	a5,s0,-328
	mv	a3,a4
	li	a2,5
	li	a1,4
	mv	a0,a5
	call	func0
	sd	a0,-544(s0)
	lw	a4,-580(s0)
	addi	a5,s0,-496
	mv	a2,a4
	mv	a1,a5
	ld	a0,-544(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,79
	lla	a1,.LC8
	lla	a0,.LC13
	call	__assert_fail@plt
.L26:
	ld	a0,-544(s0)
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L28
	call	__stack_chk_fail@plt
.L28:
	mv	a0,a4
	ld	ra,584(sp)
	.cfi_restore 1
	ld	s0,576(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 592
	addi	sp,sp,592
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
