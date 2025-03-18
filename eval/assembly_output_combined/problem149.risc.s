	.file	"problem149.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Mercury"
	.align	3
.LC1:
	.string	"Venus"
	.align	3
.LC2:
	.string	"Earth"
	.align	3
.LC3:
	.string	"Mars"
	.align	3
.LC4:
	.string	"Jupiter"
	.align	3
.LC5:
	.string	"Saturn"
	.align	3
.LC6:
	.string	"Uranus"
	.align	3
.LC7:
	.string	"Neptune"
	.data
	.align	3
.LC11:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
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
	sd	a0,-120(s0)
	sd	a1,-128(s0)
	sd	a2,-136(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC11
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
	li	a5,-1
	sw	a5,-112(s0)
	li	a5,-1
	sw	a5,-108(s0)
	sw	zero,-104(s0)
	j	.L2
.L5:
	lw	a5,-104(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-72(a5)
	ld	a1,-120(s0)
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L3
	lw	a5,-104(s0)
	sw	a5,-112(s0)
.L3:
	lw	a5,-104(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-72(a5)
	ld	a1,-128(s0)
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L4
	lw	a5,-104(s0)
	sw	a5,-108(s0)
.L4:
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
.L2:
	lw	a5,-104(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L5
	lw	a5,-112(s0)
	sext.w	a4,a5
	li	a5,-1
	beq	a4,a5,.L6
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,-1
	beq	a4,a5,.L6
	lw	a5,-112(s0)
	mv	a4,a5
	lw	a5,-108(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L7
.L6:
	ld	a5,-136(s0)
	sw	zero,0(a5)
	li	a5,0
	j	.L13
.L7:
	lw	a5,-112(s0)
	mv	a4,a5
	lw	a5,-108(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L9
	lw	a5,-112(s0)
	sw	a5,-100(s0)
	lw	a5,-108(s0)
	sw	a5,-112(s0)
	lw	a5,-100(s0)
	sw	a5,-108(s0)
.L9:
	lw	a5,-108(s0)
	mv	a4,a5
	lw	a5,-112(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	ld	a5,-136(s0)
	sw	a4,0(a5)
	ld	a5,-136(s0)
	lw	a5,0(a5)
	bgt	a5,zero,.L10
	ld	a5,-136(s0)
	sw	zero,0(a5)
	li	a5,0
	j	.L13
.L10:
	ld	a5,-136(s0)
	lw	a5,0(a5)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-96(s0)
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
	j	.L11
.L12:
	lw	a5,-104(s0)
	mv	a4,a5
	lw	a5,-112(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a5,a5,-8
	ld	a4,-96(s0)
	add	a4,a4,a5
	lw	a5,-104(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-72(a5)
	sd	a5,0(a4)
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
.L11:
	lw	a5,-104(s0)
	mv	a4,a5
	lw	a5,-108(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L12
	ld	a5,-96(s0)
.L13:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
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
	sd	a1,-48(s0)
	mv	a5,a2
	mv	a4,a3
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-56(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L16
	li	a5,0
	j	.L17
.L16:
	sw	zero,-20(s0)
	j	.L18
.L20:
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	li	a5,0
	j	.L17
.L19:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L18:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L20
	li	a5,1
.L17:
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
.LC12:
	.string	"problem149.c"
	.align	3
.LC13:
	.string	"issame(result, test1, size, 2)"
	.align	3
.LC14:
	.string	"issame(result, test2, size, 1)"
	.align	3
.LC16:
	.string	"issame(result, test3, size, 5)"
	.align	3
.LC18:
	.string	"issame(result, test4, size, 5)"
	.align	3
.LC19:
	.string	"size == 0 && result == NULL"
	.align	3
.LC20:
	.string	"Makemake"
	.data
	.align	3
.LC15:
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.align	3
.LC17:
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC5
	sd	a5,-120(s0)
	lla	a5,.LC6
	sd	a5,-112(s0)
	addi	a5,s0,-140
	mv	a2,a5
	lla	a1,.LC7
	lla	a0,.LC4
	call	func0
	sd	a0,-136(s0)
	lw	a4,-140(s0)
	addi	a5,s0,-120
	li	a3,2
	mv	a2,a4
	mv	a1,a5
	ld	a0,-136(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC12
	lla	a0,.LC13
	call	__assert_fail@plt
.L22:
	ld	a0,-136(s0)
	call	free@plt
	lla	a5,.LC1
	sd	a5,-128(s0)
	addi	a5,s0,-140
	mv	a2,a5
	lla	a1,.LC0
	lla	a0,.LC2
	call	func0
	sd	a0,-136(s0)
	lw	a4,-140(s0)
	addi	a5,s0,-128
	li	a3,1
	mv	a2,a4
	mv	a1,a5
	ld	a0,-136(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,55
	lla	a1,.LC12
	lla	a0,.LC14
	call	__assert_fail@plt
.L23:
	ld	a0,-136(s0)
	call	free@plt
	lla	a5,.LC15
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-104(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	sd	a4,-80(s0)
	sd	a5,-72(s0)
	addi	a5,s0,-140
	mv	a2,a5
	lla	a1,.LC6
	lla	a0,.LC0
	call	func0
	sd	a0,-136(s0)
	lw	a4,-140(s0)
	addi	a5,s0,-104
	li	a3,5
	mv	a2,a4
	mv	a1,a5
	ld	a0,-136(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,60
	lla	a1,.LC12
	lla	a0,.LC16
	call	__assert_fail@plt
.L24:
	ld	a0,-136(s0)
	call	free@plt
	lla	a5,.LC17
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-140
	mv	a2,a5
	lla	a1,.LC1
	lla	a0,.LC7
	call	func0
	sd	a0,-136(s0)
	lw	a4,-140(s0)
	addi	a5,s0,-64
	li	a3,5
	mv	a2,a4
	mv	a1,a5
	ld	a0,-136(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,65
	lla	a1,.LC12
	lla	a0,.LC18
	call	__assert_fail@plt
.L25:
	ld	a0,-136(s0)
	call	free@plt
	addi	a5,s0,-140
	mv	a2,a5
	lla	a1,.LC2
	lla	a0,.LC2
	call	func0
	sd	a0,-136(s0)
	lw	a5,-140(s0)
	bne	a5,zero,.L26
	ld	a5,-136(s0)
	beq	a5,zero,.L34
.L26:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,69
	lla	a1,.LC12
	lla	a0,.LC19
	call	__assert_fail@plt
.L34:
	addi	a5,s0,-140
	mv	a2,a5
	lla	a1,.LC2
	lla	a0,.LC3
	call	func0
	sd	a0,-136(s0)
	lw	a5,-140(s0)
	bne	a5,zero,.L28
	ld	a5,-136(s0)
	beq	a5,zero,.L35
.L28:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,72
	lla	a1,.LC12
	lla	a0,.LC19
	call	__assert_fail@plt
.L35:
	addi	a5,s0,-140
	mv	a2,a5
	lla	a1,.LC20
	lla	a0,.LC4
	call	func0
	sd	a0,-136(s0)
	lw	a5,-140(s0)
	bne	a5,zero,.L30
	ld	a5,-136(s0)
	beq	a5,zero,.L36
.L30:
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,75
	lla	a1,.LC12
	lla	a0,.LC19
	call	__assert_fail@plt
.L36:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L33
	call	__stack_chk_fail@plt
.L33:
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
