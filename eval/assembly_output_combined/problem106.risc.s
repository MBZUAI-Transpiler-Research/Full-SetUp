	.file	"problem106.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"One"
	.align	3
.LC2:
	.string	"Two"
	.align	3
.LC3:
	.string	"Three"
	.align	3
.LC4:
	.string	"Four"
	.align	3
.LC5:
	.string	"Five"
	.align	3
.LC6:
	.string	"Six"
	.align	3
.LC7:
	.string	"Seven"
	.align	3
.LC8:
	.string	"Eight"
	.align	3
.LC9:
	.string	"Nine"
	.data
	.align	3
.LC14:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	mv	a5,a1
	sd	a2,-152(s0)
	sd	a3,-160(s0)
	sw	a5,-140(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC14
	ld	t3,0(a5)
	ld	t1,8(a5)
	ld	a7,16(a5)
	ld	a6,24(a5)
	ld	a0,32(a5)
	ld	a1,40(a5)
	ld	a2,48(a5)
	ld	a3,56(a5)
	ld	a4,64(a5)
	ld	a5,72(a5)
	sd	t3,-104(s0)
	sd	t1,-96(s0)
	sd	a7,-88(s0)
	sd	a6,-80(s0)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	sw	zero,-116(s0)
	j	.L2
.L6:
	sw	zero,-112(s0)
	j	.L3
.L5:
	lw	a5,-112(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-112(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L4
	lw	a5,-112(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-108(s0)
	lw	a5,-112(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a4,a4,a5
	lw	a5,-112(s0)
	slli	a5,a5,2
	ld	a3,-136(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-112(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a4,-108(s0)
	sw	a4,0(a5)
.L4:
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sw	a5,-112(s0)
.L3:
	lw	a5,-140(s0)
	mv	a4,a5
	lw	a5,-116(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-112(s0)
	sext.w	a5,a5
	blt	a5,a4,.L5
	lw	a5,-116(s0)
	addiw	a5,a5,1
	sw	a5,-116(s0)
.L2:
	lw	a5,-140(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-116(s0)
	sext.w	a5,a5
	blt	a5,a4,.L6
	ld	a5,-160(s0)
	sw	zero,0(a5)
	lw	a5,-140(s0)
	addiw	a5,a5,-1
	sw	a5,-116(s0)
	j	.L7
.L9:
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L8
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,9
	bgt	a4,a5,.L8
	ld	a5,-160(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-160(s0)
	sw	a4,0(a5)
.L8:
	lw	a5,-116(s0)
	addiw	a5,a5,-1
	sw	a5,-116(s0)
.L7:
	lw	a5,-116(s0)
	sext.w	a5,a5
	bge	a5,zero,.L9
	ld	a5,-160(s0)
	lw	a5,0(a5)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-152(s0)
	sd	a4,0(a5)
	lw	a5,-140(s0)
	addiw	a5,a5,-1
	sw	a5,-116(s0)
	sw	zero,-112(s0)
	j	.L10
.L13:
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	ble	a5,zero,.L11
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,9
	bgt	a4,a5,.L11
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-136(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	ld	a5,-152(s0)
	ld	a4,0(a5)
	lw	a5,-112(s0)
	addiw	a2,a5,1
	sw	a2,-112(s0)
	slli	a5,a5,3
	add	a4,a4,a5
	slli	a5,a3,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-88(a5)
	sd	a5,0(a4)
.L11:
	lw	a5,-116(s0)
	addiw	a5,a5,-1
	sw	a5,-116(s0)
.L10:
	lw	a5,-116(s0)
	sext.w	a5,a5
	blt	a5,zero,.L15
	ld	a5,-160(s0)
	lw	a4,0(a5)
	lw	a5,-112(s0)
	sext.w	a5,a5
	blt	a5,a4,.L13
.L15:
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
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
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	mv	a4,a3
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L17
	li	a5,0
	j	.L18
.L17:
	sw	zero,-20(s0)
	j	.L19
.L21:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L20
	li	a5,0
	j	.L18
.L20:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L19:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L21
	li	a5,1
.L18:
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
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC16:
	.string	"problem106.c"
	.align	3
.LC17:
	.string	"issame(out, out_size, expected1, 8)"
	.align	3
.LC18:
	.string	"issame(out, out_size, NULL, 0)"
	.align	3
.LC19:
	.string	"issame(out, out_size, expected3, 1)"
	.align	3
.LC20:
	.string	"issame(out, out_size, expected4, 3)"
	.align	3
.LC21:
	.string	"issame(out, out_size, expected5, 3)"
	.align	3
.LC11:
	.word	2
	.word	1
	.word	1
	.word	4
	.word	5
	.word	8
	.word	2
	.word	3
	.data
	.align	3
.LC15:
	.dword	.LC8
	.dword	.LC5
	.dword	.LC4
	.dword	.LC3
	.dword	.LC2
	.dword	.LC2
	.dword	.LC1
	.dword	.LC1
	.section	.rodata
	.align	3
.LC13:
	.word	1
	.word	-1
	.word	3
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	ra,248(sp)
	sd	s0,240(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,256
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC11
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-120(s0)
	sd	a3,-112(s0)
	sd	a4,-104(s0)
	sd	a5,-96(s0)
	lla	a5,.LC15
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
	addi	a3,s0,-244
	addi	a4,s0,-240
	addi	a5,s0,-120
	mv	a2,a4
	li	a1,8
	mv	a0,a5
	call	func0
	ld	a5,-240(s0)
	lw	a4,-244(s0)
	addi	a2,s0,-88
	li	a3,8
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC16
	lla	a0,.LC17
	call	__assert_fail@plt
.L23:
	ld	a5,-240(s0)
	mv	a0,a5
	call	free@plt
	addi	a3,s0,-244
	addi	a4,s0,-240
	addi	a5,s0,-232
	mv	a2,a4
	li	a1,0
	mv	a0,a5
	call	func0
	ld	a5,-240(s0)
	lw	a4,-244(s0)
	li	a3,0
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,62
	lla	a1,.LC16
	lla	a0,.LC18
	call	__assert_fail@plt
.L24:
	ld	a5,-240(s0)
	mv	a0,a5
	call	free@plt
	li	a5,1
	sw	a5,-216(s0)
	li	a5,-1
	sw	a5,-212(s0)
	li	a5,55
	sw	a5,-208(s0)
	lla	a5,.LC1
	sd	a5,-224(s0)
	addi	a3,s0,-244
	addi	a4,s0,-240
	addi	a5,s0,-216
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	ld	a5,-240(s0)
	lw	a4,-244(s0)
	addi	a2,s0,-224
	li	a3,1
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,68
	lla	a1,.LC16
	lla	a0,.LC19
	call	__assert_fail@plt
.L25:
	ld	a5,-240(s0)
	mv	a0,a5
	call	free@plt
	lla	a5,.LC13
	ld	a4,0(a5)
	sd	a4,-184(s0)
	ld	a5,8(a5)
	sd	a5,-176(s0)
	lla	a5,.LC3
	sd	a5,-168(s0)
	lla	a5,.LC2
	sd	a5,-160(s0)
	lla	a5,.LC1
	sd	a5,-152(s0)
	addi	a3,s0,-244
	addi	a4,s0,-240
	addi	a5,s0,-184
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	ld	a5,-240(s0)
	lw	a4,-244(s0)
	addi	a2,s0,-168
	li	a3,3
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,74
	lla	a1,.LC16
	lla	a0,.LC20
	call	__assert_fail@plt
.L26:
	ld	a5,-240(s0)
	mv	a0,a5
	call	free@plt
	li	a5,9
	sw	a5,-200(s0)
	li	a5,4
	sw	a5,-196(s0)
	li	a5,8
	sw	a5,-192(s0)
	lla	a5,.LC9
	sd	a5,-144(s0)
	lla	a5,.LC8
	sd	a5,-136(s0)
	lla	a5,.LC4
	sd	a5,-128(s0)
	addi	a3,s0,-244
	addi	a4,s0,-240
	addi	a5,s0,-200
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	ld	a5,-240(s0)
	lw	a4,-244(s0)
	addi	a2,s0,-144
	li	a3,3
	mv	a1,a4
	mv	a0,a5
	call	issame
	mv	a5,a0
	bne	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,80
	lla	a1,.LC16
	lla	a0,.LC21
	call	__assert_fail@plt
.L27:
	ld	a5,-240(s0)
	mv	a0,a5
	call	free@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L29
	call	__stack_chk_fail@plt
.L29:
	mv	a0,a4
	ld	ra,248(sp)
	.cfi_restore 1
	ld	s0,240(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256
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
