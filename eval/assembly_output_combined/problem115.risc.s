	.file	"problem115.c"
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
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	ld	a5,-56(s0)
	ld	a5,0(a5)
	sd	a5,-32(s0)
	ld	a5,-56(s0)
	ld	a5,0(a5)
	sd	a5,-24(s0)
	li	a5,1
	sw	a5,-36(s0)
	j	.L2
.L6:
	ld	a5,-32(s0)
	bge	a5,zero,.L3
	lw	a5,-36(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	ld	a5,-32(s0)
	add	a5,a4,a5
	j	.L4
.L3:
	lw	a5,-36(s0)
	slli	a5,a5,3
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
.L4:
	sd	a5,-32(s0)
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	bge	a4,a5,.L5
	ld	a5,-32(s0)
	sd	a5,-24(s0)
.L5:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L6
	ld	a5,-24(s0)
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
.LC7:
	.string	"problem115.c"
	.align	3
.LC8:
	.string	"func0(nums1, 6) == 1"
	.align	3
.LC9:
	.string	"func0(nums2, 3) == -6"
	.align	3
.LC10:
	.string	"func0(nums3, 5) == -14"
	.align	3
.LC12:
	.string	"func0(nums4, 1) == -9999999999999999"
	.align	3
.LC13:
	.string	"func0(nums5, 4) == 0"
	.align	3
.LC14:
	.string	"func0(nums6, 5) == -6"
	.align	3
.LC15:
	.string	"func0(nums7, 6) == -6"
	.align	3
.LC16:
	.string	"func0(nums8, 6) == 3"
	.align	3
.LC17:
	.string	"func0(nums9, 6) == -33"
	.align	3
.LC18:
	.string	"func0(nums10, 1) == -10"
	.align	3
.LC19:
	.string	"func0(nums11, 1) == 7"
	.align	3
.LC20:
	.string	"func0(nums12, 2) == -1"
	.align	3
.LC0:
	.dword	2
	.dword	3
	.dword	4
	.dword	1
	.dword	2
	.dword	4
	.align	3
.LC1:
	.dword	-1
	.dword	-2
	.dword	-3
	.dword	2
	.dword	-10
	.align	3
.LC2:
	.dword	0
	.dword	10
	.dword	20
	.dword	1000000
	.align	3
.LC3:
	.dword	-1
	.dword	-2
	.dword	-3
	.dword	10
	.dword	-5
	.align	3
.LC4:
	.dword	100
	.dword	-1
	.dword	-2
	.dword	-3
	.dword	10
	.dword	-5
	.align	3
.LC5:
	.dword	10
	.dword	11
	.dword	13
	.dword	8
	.dword	3
	.dword	4
	.align	3
.LC6:
	.dword	100
	.dword	-33
	.dword	32
	.dword	-1
	.dword	0
	.dword	-2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-400
	.cfi_def_cfa_offset 400
	sd	ra,392(sp)
	sd	s0,384(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,400
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-216(s0)
	sd	a1,-208(s0)
	sd	a2,-200(s0)
	sd	a3,-192(s0)
	sd	a4,-184(s0)
	sd	a5,-176(s0)
	addi	a5,s0,-216
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,1
	beq	a4,a5,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC7
	lla	a0,.LC8
	call	__assert_fail@plt
.L9:
	li	a5,-1
	sd	a5,-352(s0)
	li	a5,-2
	sd	a5,-344(s0)
	li	a5,-3
	sd	a5,-336(s0)
	addi	a5,s0,-352
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,-6
	beq	a4,a5,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC7
	lla	a0,.LC9
	call	__assert_fail@plt
.L10:
	lla	a5,.LC1
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-296(s0)
	sd	a2,-288(s0)
	sd	a3,-280(s0)
	sd	a4,-272(s0)
	sd	a5,-264(s0)
	addi	a5,s0,-296
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,-14
	beq	a4,a5,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC7
	lla	a0,.LC10
	call	__assert_fail@plt
.L11:
	lla	a5,.LC11
	ld	a5,0(a5)
	sd	a5,-392(s0)
	addi	a5,s0,-392
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a4,a0
	lla	a5,.LC11
	ld	a5,0(a5)
	beq	a4,a5,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC7
	lla	a0,.LC12
	call	__assert_fail@plt
.L12:
	lla	a5,.LC2
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-328(s0)
	sd	a3,-320(s0)
	sd	a4,-312(s0)
	sd	a5,-304(s0)
	addi	a5,s0,-328
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC7
	lla	a0,.LC13
	call	__assert_fail@plt
.L13:
	lla	a5,.LC3
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-256(s0)
	sd	a2,-248(s0)
	sd	a3,-240(s0)
	sd	a4,-232(s0)
	sd	a5,-224(s0)
	addi	a5,s0,-256
	li	a1,5
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,-6
	beq	a4,a5,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC7
	lla	a0,.LC14
	call	__assert_fail@plt
.L14:
	lla	a5,.LC4
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-168(s0)
	sd	a1,-160(s0)
	sd	a2,-152(s0)
	sd	a3,-144(s0)
	sd	a4,-136(s0)
	sd	a5,-128(s0)
	addi	a5,s0,-168
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,-6
	beq	a4,a5,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC7
	lla	a0,.LC15
	call	__assert_fail@plt
.L15:
	lla	a5,.LC5
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-120(s0)
	sd	a1,-112(s0)
	sd	a2,-104(s0)
	sd	a3,-96(s0)
	sd	a4,-88(s0)
	sd	a5,-80(s0)
	addi	a5,s0,-120
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,3
	beq	a4,a5,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC7
	lla	a0,.LC16
	call	__assert_fail@plt
.L16:
	lla	a5,.LC6
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	addi	a5,s0,-72
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,-33
	beq	a4,a5,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,43
	lla	a1,.LC7
	lla	a0,.LC17
	call	__assert_fail@plt
.L17:
	li	a5,-10
	sd	a5,-384(s0)
	addi	a5,s0,-384
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,-10
	beq	a4,a5,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC7
	lla	a0,.LC18
	call	__assert_fail@plt
.L18:
	li	a5,7
	sd	a5,-376(s0)
	addi	a5,s0,-376
	li	a1,1
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,7
	beq	a4,a5,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC7
	lla	a0,.LC19
	call	__assert_fail@plt
.L19:
	li	a5,1
	sd	a5,-368(s0)
	li	a5,-1
	sd	a5,-360(s0)
	addi	a5,s0,-368
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a4,a0
	li	a5,-1
	beq	a4,a5,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,52
	lla	a1,.LC7
	lla	a0,.LC20
	call	__assert_fail@plt
.L20:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L22
	call	__stack_chk_fail@plt
.L22:
	mv	a0,a4
	ld	ra,392(sp)
	.cfi_restore 1
	ld	s0,384(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 400
	addi	sp,sp,400
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.align	3
.LC11:
	.dword	-9999999999999999
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
