	.file	"problem148.c"
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
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-116(s0)
	lw	a5,-116(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-56(s0)
	lw	a5,-116(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-48(s0)
	lw	a5,-116(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-40(s0)
	sw	zero,-100(s0)
	j	.L2
.L3:
	lw	a5,-100(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	s1,a4,a5
	li	a1,4
	li	a0,3
	call	calloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-100(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	s1,a4,a5
	li	a1,4
	li	a0,3
	call	calloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-100(s0)
	addiw	a5,a5,1
	sw	a5,-100(s0)
.L2:
	lw	a5,-100(s0)
	mv	a4,a5
	lw	a5,-116(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L3
	ld	a5,-48(s0)
	ld	a5,0(a5)
	addi	a4,a5,8
	sw	zero,0(a4)
	ld	a5,-48(s0)
	ld	a5,0(a5)
	addi	a5,a5,4
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a4,-48(s0)
	ld	a4,0(a4)
	lw	a5,0(a5)
	sw	a5,0(a4)
	ld	a5,-40(s0)
	ld	a5,0(a5)
	addi	a4,a5,8
	sw	zero,0(a4)
	ld	a5,-40(s0)
	ld	a5,0(a5)
	addi	a5,a5,4
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a4,-40(s0)
	ld	a4,0(a4)
	lw	a5,0(a5)
	sw	a5,0(a4)
	li	a5,1
	sw	a5,-96(s0)
	j	.L4
.L7:
	lw	a5,-96(s0)
	mulw	a5,a5,a5
	sext.w	a5,a5
	lw	a4,-96(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a3,a5
	lw	a5,-96(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-56(s0)
	add	a5,a4,a5
	li	a4,3
	remw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	sw	zero,-92(s0)
	j	.L5
.L6:
	lw	a5,-96(s0)
	slli	a5,a5,3
	addi	a5,a5,-8
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-92(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	lw	a5,-96(s0)
	slli	a5,a5,3
	ld	a3,-48(s0)
	add	a5,a3,a5
	ld	a3,0(a5)
	lw	a5,-92(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-92(s0)
	addiw	a5,a5,1
	sw	a5,-92(s0)
.L5:
	lw	a5,-92(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L6
	lw	a5,-96(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-96(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-96(s0)
	slli	a5,a5,3
	ld	a3,-48(s0)
	add	a5,a3,a5
	ld	a3,0(a5)
	lw	a5,-96(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a2,-56(s0)
	add	a5,a2,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a3,a5
	addiw	a4,a4,1
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-96(s0)
	addiw	a5,a5,1
	sw	a5,-96(s0)
.L4:
	lw	a5,-96(s0)
	mv	a4,a5
	lw	a5,-116(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L7
	li	a5,1
	sw	a5,-88(s0)
	j	.L8
.L20:
	li	a5,1
	sw	a5,-84(s0)
	j	.L9
.L15:
	sw	zero,-80(s0)
	j	.L10
.L11:
	lw	a5,-84(s0)
	slli	a5,a5,3
	addi	a5,a5,-8
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-80(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	lw	a5,-84(s0)
	slli	a5,a5,3
	ld	a3,-40(s0)
	add	a5,a3,a5
	ld	a3,0(a5)
	lw	a5,-80(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-80(s0)
	addiw	a5,a5,1
	sw	a5,-80(s0)
.L10:
	lw	a5,-80(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L11
	lw	a5,-84(s0)
	sext.w	a5,a5
	ble	a5,zero,.L12
	sw	zero,-76(s0)
	j	.L13
.L14:
	lw	a5,-84(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-84(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a3,-56(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a3,-76(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	li	a5,3
	remw	a5,a3,a5
	sext.w	a1,a5
	mv	a5,a1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-84(s0)
	slli	a5,a5,3
	addi	a5,a5,-8
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-76(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-84(s0)
	slli	a5,a5,3
	ld	a2,-40(s0)
	add	a5,a2,a5
	ld	a2,0(a5)
	mv	a5,a1
	slli	a5,a5,2
	add	a5,a2,a5
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sw	a5,-76(s0)
.L13:
	lw	a5,-76(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L14
.L12:
	lw	a5,-84(s0)
	addiw	a5,a5,1
	sw	a5,-84(s0)
.L9:
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-116(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L15
	sw	zero,-72(s0)
	j	.L16
.L19:
	sw	zero,-68(s0)
	j	.L17
.L18:
	lw	a5,-72(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-68(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	lw	a5,-72(s0)
	slli	a5,a5,3
	ld	a3,-48(s0)
	add	a5,a3,a5
	ld	a3,0(a5)
	lw	a5,-68(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-72(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-68(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-68(s0)
.L17:
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L18
	lw	a5,-72(s0)
	addiw	a5,a5,1
	sw	a5,-72(s0)
.L16:
	lw	a5,-72(s0)
	mv	a4,a5
	lw	a5,-116(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L19
	lw	a5,-88(s0)
	addiw	a5,a5,1
	sw	a5,-88(s0)
.L8:
	lw	a5,-88(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L20
	lw	a5,-116(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lw	a5,0(a5)
	sw	a5,-60(s0)
	sw	zero,-64(s0)
	j	.L21
.L22:
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L21:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-116(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L22
	ld	a0,-48(s0)
	call	free@plt
	ld	a0,-40(s0)
	call	free@plt
	ld	a0,-56(s0)
	call	free@plt
	lw	a5,-60(s0)
	mv	a0,a5
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	ld	s1,104(sp)
	.cfi_restore 9
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem148.c"
	.align	3
.LC1:
	.string	"func0(5) == 1"
	.align	3
.LC2:
	.string	"func0(6) == 4"
	.align	3
.LC3:
	.string	"func0(10) == 36"
	.align	3
.LC4:
	.string	"func0(100) == 53361"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	a0,5
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	beq	a4,a5,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,56
	lla	a1,.LC0
	lla	a0,.LC1
	call	__assert_fail@plt
.L25:
	li	a0,6
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,4
	beq	a4,a5,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC0
	lla	a0,.LC2
	call	__assert_fail@plt
.L26:
	li	a0,10
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,36
	beq	a4,a5,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,58
	lla	a1,.LC0
	lla	a0,.LC3
	call	__assert_fail@plt
.L27:
	li	a0,100
	call	func0
	mv	a5,a0
	mv	a4,a5
	li	a5,53248
	addi	a5,a5,113
	beq	a4,a5,.L28
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,59
	lla	a1,.LC0
	lla	a0,.LC4
	call	__assert_fail@plt
.L28:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
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
