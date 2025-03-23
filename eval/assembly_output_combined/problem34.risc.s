	.file	"problem34.c"
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
	sd	a2,-72(s0)
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	mv	a4,a5
	li	a5,3
	divw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sw	zero,-44(s0)
	j	.L2
.L3:
	lw	a5,-44(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L2:
	lw	a5,-44(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	sext.w	a4,a5
	lw	a5,-60(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L3
	sw	zero,-44(s0)
	j	.L4
.L9:
	lw	a5,-44(s0)
	sw	a5,-32(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
	j	.L5
.L7:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bge	a4,a5,.L6
	lw	a5,-40(s0)
	sw	a5,-32(s0)
.L6:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L5:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L8
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a3,-24(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L8:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L4:
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-44(s0)
	sext.w	a5,a5
	blt	a5,a4,.L9
	sw	zero,-44(s0)
	j	.L10
.L13:
	lw	a5,-44(s0)
	mv	a4,a5
	li	a5,3
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L11
	lw	a5,-44(s0)
	mv	a4,a5
	li	a5,3
	divw	a5,a4,a5
	sext.w	a5,a5
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a3,-72(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	j	.L12
.L11:
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	slli	a5,a5,2
	ld	a3,-72(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L12:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L10:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L13
	ld	a0,-24(s0)
	call	free@plt
	nop
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
	j	.L15
.L18:
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
	beq	a4,a5,.L16
	li	a5,0
	j	.L17
.L16:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L15:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L18
	li	a5,1
.L17:
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
.LC10:
	.string	"problem34.c"
	.align	3
.LC11:
	.string	"issame(result1, result1, 3)"
	.align	3
.LC12:
	.string	"issame(result2, result2, 11)"
	.align	3
.LC13:
	.string	"issame(result3, result3, 10)"
	.align	3
.LC14:
	.string	"issame(result4, correct4, 7)"
	.align	3
.LC15:
	.string	"issame(result5, correct5, 7)"
	.align	3
.LC16:
	.string	"issame(result6, correct6, 7)"
	.align	3
.LC17:
	.string	"issame(result7, correct7, 8)"
	.align	3
.LC18:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	5
	.word	3
	.word	-5
	.word	2
	.word	-3
	.word	3
	.word	9
	.word	0
	.word	123
	.word	1
	.word	-10
	.align	3
.LC1:
	.word	5
	.word	8
	.word	-12
	.word	4
	.word	23
	.word	2
	.word	3
	.word	11
	.word	12
	.word	-10
	.align	3
.LC2:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.align	3
.LC3:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.align	3
.LC4:
	.word	5
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	2
	.align	3
.LC5:
	.word	2
	.word	8
	.word	3
	.word	4
	.word	6
	.word	9
	.word	5
	.align	3
.LC6:
	.word	5
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	2
	.align	3
.LC7:
	.word	2
	.word	6
	.word	9
	.word	4
	.word	8
	.word	3
	.word	5
	.align	3
.LC8:
	.word	5
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	2
	.word	1
	.align	3
.LC9:
	.word	2
	.word	6
	.word	3
	.word	4
	.word	8
	.word	9
	.word	5
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-624
	.cfi_def_cfa_offset 624
	sd	ra,616(sp)
	sd	s0,608(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,624
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,1
	sw	a5,-616(s0)
	li	a5,2
	sw	a5,-612(s0)
	li	a5,3
	sw	a5,-608(s0)
	addi	a4,s0,-600
	addi	a5,s0,-616
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	addi	a4,s0,-600
	addi	a5,s0,-600
	li	a2,3
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC10
	lla	a0,.LC11
	call	__assert_fail@plt
.L20:
	lla	a5,.LC0
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-120(s0)
	sd	a1,-112(s0)
	sd	a2,-104(s0)
	sd	a3,-96(s0)
	sd	a4,-88(s0)
	lw	a5,40(a5)
	sw	a5,-80(s0)
	addi	a4,s0,-72
	addi	a5,s0,-120
	mv	a2,a4
	li	a1,11
	mv	a0,a5
	call	func0
	addi	a4,s0,-72
	addi	a5,s0,-72
	li	a2,11
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC10
	lla	a0,.LC12
	call	__assert_fail@plt
.L21:
	lla	a5,.LC1
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-200(s0)
	sd	a2,-192(s0)
	sd	a3,-184(s0)
	sd	a4,-176(s0)
	sd	a5,-168(s0)
	addi	a4,s0,-160
	addi	a5,s0,-200
	mv	a2,a4
	li	a1,10
	mv	a0,a5
	call	func0
	addi	a4,s0,-160
	addi	a5,s0,-160
	li	a2,10
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,63
	lla	a1,.LC10
	lla	a0,.LC13
	call	__assert_fail@plt
.L22:
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-584(s0)
	sd	a3,-576(s0)
	sd	a4,-568(s0)
	lw	a5,24(a5)
	sw	a5,-560(s0)
	lla	a5,.LC3
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-552(s0)
	sd	a3,-544(s0)
	sd	a4,-536(s0)
	lw	a5,24(a5)
	sw	a5,-528(s0)
	addi	a4,s0,-520
	addi	a5,s0,-584
	mv	a2,a4
	li	a1,7
	mv	a0,a5
	call	func0
	addi	a4,s0,-552
	addi	a5,s0,-520
	li	a2,7
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,69
	lla	a1,.LC10
	lla	a0,.LC14
	call	__assert_fail@plt
.L23:
	lla	a5,.LC4
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-488(s0)
	sd	a3,-480(s0)
	sd	a4,-472(s0)
	lw	a5,24(a5)
	sw	a5,-464(s0)
	lla	a5,.LC5
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-456(s0)
	sd	a3,-448(s0)
	sd	a4,-440(s0)
	lw	a5,24(a5)
	sw	a5,-432(s0)
	addi	a4,s0,-424
	addi	a5,s0,-488
	mv	a2,a4
	li	a1,7
	mv	a0,a5
	call	func0
	addi	a4,s0,-456
	addi	a5,s0,-424
	li	a2,7
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,75
	lla	a1,.LC10
	lla	a0,.LC15
	call	__assert_fail@plt
.L24:
	lla	a5,.LC6
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-392(s0)
	sd	a3,-384(s0)
	sd	a4,-376(s0)
	lw	a5,24(a5)
	sw	a5,-368(s0)
	lla	a5,.LC7
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	sd	a2,-360(s0)
	sd	a3,-352(s0)
	sd	a4,-344(s0)
	lw	a5,24(a5)
	sw	a5,-336(s0)
	addi	a4,s0,-328
	addi	a5,s0,-392
	mv	a2,a4
	li	a1,7
	mv	a0,a5
	call	func0
	addi	a4,s0,-360
	addi	a5,s0,-328
	li	a2,7
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,81
	lla	a1,.LC10
	lla	a0,.LC16
	call	__assert_fail@plt
.L25:
	lla	a5,.LC8
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-296(s0)
	sd	a3,-288(s0)
	sd	a4,-280(s0)
	sd	a5,-272(s0)
	lla	a5,.LC9
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-264(s0)
	sd	a3,-256(s0)
	sd	a4,-248(s0)
	sd	a5,-240(s0)
	addi	a4,s0,-232
	addi	a5,s0,-296
	mv	a2,a4
	li	a1,8
	mv	a0,a5
	call	func0
	addi	a4,s0,-264
	addi	a5,s0,-232
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,87
	lla	a1,.LC10
	lla	a0,.LC17
	call	__assert_fail@plt
.L26:
	lla	a0,.LC18
	call	puts@plt
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
	ld	ra,616(sp)
	.cfi_restore 1
	ld	s0,608(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 624
	addi	sp,sp,624
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
