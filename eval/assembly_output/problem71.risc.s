	.file	"problem71.c"
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
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	mv	a5,a1
	sd	a2,-72(s0)
	sw	a5,-60(s0)
	sw	zero,-40(s0)
	j	.L2
.L6:
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	j	.L3
.L5:
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L4
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-40(s0)
	slli	a5,a5,2
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L4:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L2:
	lw	a5,-60(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-40(s0)
	sext.w	a5,a5
	blt	a5,a4,.L6
	sw	zero,-32(s0)
	lw	a5,-60(s0)
	addiw	a5,a5,-1
	sw	a5,-28(s0)
	sw	zero,-24(s0)
	j	.L7
.L10:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L8
	lw	a5,-32(s0)
	addiw	a4,a5,1
	sw	a4,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addiw	a3,a5,1
	sw	a3,-24(s0)
	slli	a5,a5,2
	ld	a3,-72(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	j	.L7
.L8:
	lw	a5,-32(s0)
	addiw	a4,a5,1
	sw	a4,-32(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addiw	a3,a5,1
	sw	a3,-24(s0)
	slli	a5,a5,2
	ld	a3,-72(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a4,a5,-1
	sw	a4,-28(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	addiw	a3,a5,1
	sw	a3,-24(s0)
	slli	a5,a5,2
	ld	a3,-72(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
.L7:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L10
	nop
	nop
	ld	s0,72(sp)
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
	j	.L12
.L15:
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
	beq	a4,a5,.L13
	li	a5,0
	j	.L14
.L13:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L12:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L15
	li	a5,1
.L14:
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
.LC13:
	.string	"problem71.c"
	.align	3
.LC14:
	.string	"issame(e1, out1, 4)"
	.align	3
.LC15:
	.string	"issame(e2, out2, 5)"
	.align	3
.LC16:
	.string	"issame(e3, out3, 5)"
	.align	3
.LC17:
	.string	"issame(e4, out4, 6)"
	.align	3
.LC18:
	.string	"issame(e5, out5, 4)"
	.align	3
.LC19:
	.string	"issame(e6, out6, 0)"
	.align	3
.LC20:
	.string	"issame(e7, out7, 8)"
	.align	3
.LC21:
	.string	"issame(e8, out8, 8)"
	.align	3
.LC22:
	.string	"issame(e9, out9, 1)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	4
	.word	2
	.word	3
	.align	3
.LC2:
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.align	3
.LC3:
	.word	5
	.word	9
	.word	6
	.word	8
	.word	7
	.align	3
.LC4:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.align	3
.LC5:
	.word	1
	.word	5
	.word	2
	.word	4
	.word	3
	.align	3
.LC6:
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	1
	.align	3
.LC7:
	.word	1
	.word	9
	.word	5
	.word	8
	.word	6
	.word	7
	.align	3
.LC8:
	.word	5
	.word	5
	.word	5
	.word	5
	.align	3
.LC9:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.align	3
.LC10:
	.word	1
	.word	8
	.word	2
	.word	7
	.word	3
	.word	6
	.word	4
	.word	5
	.align	3
.LC11:
	.word	0
	.word	2
	.word	2
	.word	2
	.word	5
	.word	5
	.word	-5
	.word	-5
	.align	3
.LC12:
	.word	-5
	.word	5
	.word	-5
	.word	5
	.word	0
	.word	2
	.word	2
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-576
	.cfi_def_cfa_offset 576
	sd	ra,568(sp)
	sd	s0,560(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,576
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-528(s0)
	ld	a5,8(a5)
	sd	a5,-520(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-512(s0)
	ld	a5,8(a5)
	sd	a5,-504(s0)
	addi	a4,s0,-496
	addi	a5,s0,-528
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	addi	a4,s0,-496
	addi	a5,s0,-512
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC13
	lla	a0,.LC14
	call	__assert_fail@plt
.L17:
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-432(s0)
	ld	a4,8(a5)
	sd	a4,-424(s0)
	lw	a5,16(a5)
	sw	a5,-416(s0)
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-408(s0)
	ld	a4,8(a5)
	sd	a4,-400(s0)
	lw	a5,16(a5)
	sw	a5,-392(s0)
	addi	a4,s0,-384
	addi	a5,s0,-432
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-384
	addi	a5,s0,-408
	li	a2,5
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC13
	lla	a0,.LC15
	call	__assert_fail@plt
.L18:
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-360(s0)
	ld	a4,8(a5)
	sd	a4,-352(s0)
	lw	a5,16(a5)
	sw	a5,-344(s0)
	lla	a5,.LC5
	ld	a4,0(a5)
	sd	a4,-336(s0)
	ld	a4,8(a5)
	sd	a4,-328(s0)
	lw	a5,16(a5)
	sw	a5,-320(s0)
	addi	a4,s0,-312
	addi	a5,s0,-360
	mv	a2,a4
	li	a1,5
	mv	a0,a5
	call	func0
	addi	a4,s0,-312
	addi	a5,s0,-336
	li	a2,5
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC13
	lla	a0,.LC16
	call	__assert_fail@plt
.L19:
	lla	a5,.LC6
	ld	a4,0(a5)
	sd	a4,-288(s0)
	ld	a4,8(a5)
	sd	a4,-280(s0)
	ld	a5,16(a5)
	sd	a5,-272(s0)
	lla	a5,.LC7
	ld	a4,0(a5)
	sd	a4,-264(s0)
	ld	a4,8(a5)
	sd	a4,-256(s0)
	ld	a5,16(a5)
	sd	a5,-248(s0)
	addi	a4,s0,-240
	addi	a5,s0,-288
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	addi	a4,s0,-240
	addi	a5,s0,-264
	li	a2,6
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,63
	lla	a1,.LC13
	lla	a0,.LC17
	call	__assert_fail@plt
.L20:
	lla	a5,.LC8
	ld	a4,0(a5)
	sd	a4,-480(s0)
	ld	a5,8(a5)
	sd	a5,-472(s0)
	lla	a5,.LC8
	ld	a4,0(a5)
	sd	a4,-464(s0)
	ld	a5,8(a5)
	sd	a5,-456(s0)
	addi	a4,s0,-448
	addi	a5,s0,-480
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	addi	a4,s0,-448
	addi	a5,s0,-464
	li	a2,4
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,69
	lla	a1,.LC13
	lla	a0,.LC18
	call	__assert_fail@plt
.L21:
	addi	a4,s0,-560
	addi	a5,s0,-576
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	func0
	addi	a4,s0,-560
	addi	a5,s0,-568
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,75
	lla	a1,.LC13
	lla	a0,.LC19
	call	__assert_fail@plt
.L22:
	lla	a5,.LC9
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-216(s0)
	sd	a3,-208(s0)
	sd	a4,-200(s0)
	sd	a5,-192(s0)
	lla	a5,.LC10
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-184(s0)
	sd	a3,-176(s0)
	sd	a4,-168(s0)
	sd	a5,-160(s0)
	addi	a4,s0,-152
	addi	a5,s0,-216
	mv	a2,a4
	li	a1,8
	mv	a0,a5
	call	func0
	addi	a4,s0,-152
	addi	a5,s0,-184
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,81
	lla	a1,.LC13
	lla	a0,.LC20
	call	__assert_fail@plt
.L23:
	lla	a5,.LC11
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-120(s0)
	sd	a3,-112(s0)
	sd	a4,-104(s0)
	sd	a5,-96(s0)
	lla	a5,.LC12
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-88(s0)
	sd	a3,-80(s0)
	sd	a4,-72(s0)
	sd	a5,-64(s0)
	addi	a4,s0,-56
	addi	a5,s0,-120
	mv	a2,a4
	li	a1,8
	mv	a0,a5
	call	func0
	addi	a4,s0,-56
	addi	a5,s0,-88
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,87
	lla	a1,.LC13
	lla	a0,.LC21
	call	__assert_fail@plt
.L24:
	li	a5,110592
	addi	a5,a5,519
	sw	a5,-552(s0)
	li	a5,110592
	addi	a5,a5,519
	sw	a5,-544(s0)
	addi	a4,s0,-536
	addi	a5,s0,-552
	mv	a2,a4
	li	a1,1
	mv	a0,a5
	call	func0
	addi	a4,s0,-536
	addi	a5,s0,-544
	li	a2,1
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,93
	lla	a1,.LC13
	lla	a0,.LC22
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
	ld	ra,568(sp)
	.cfi_restore 1
	ld	s0,560(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 576
	addi	sp,sp,576
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
