	.file	"problem23.c"
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
	sd	a1,-64(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-48(s0)
	ld	a5,-56(s0)
	sd	a5,-32(s0)
	j	.L2
.L5:
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L3:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L4
	call	__ctype_b_loc@plt
	mv	a5,a0
	ld	a4,0(a5)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a4,a5
	li	a5,4096
	addi	a5,a5,-2048
	and	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	bne	a4,a5,.L5
.L4:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L16
	addi	a5,s0,-40
	li	a2,10
	mv	a1,a5
	ld	a0,-32(s0)
	call	strtol@plt
	mv	a5,a0
	sw	a5,-44(s0)
	ld	a5,-40(s0)
	ld	a4,-32(s0)
	beq	a4,a5,.L11
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,44
	beq	a4,a5,.L9
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L11
.L9:
	lw	a5,-48(s0)
	addiw	a4,a5,1
	sw	a4,-48(s0)
	lla	a4,out.1
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,0(a5)
	j	.L10
.L12:
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L11:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L10
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,44
	bne	a4,a5,.L12
.L10:
	ld	a5,-40(s0)
	sd	a5,-32(s0)
.L2:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L3
	j	.L7
.L16:
	nop
.L7:
	ld	a5,-64(s0)
	lw	a4,-48(s0)
	sw	a4,0(a5)
	lla	a5,out.1
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L15
	call	__stack_chk_fail@plt
.L15:
	mv	a0,a4
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
	beq	a4,a5,.L18
	li	a5,0
	j	.L19
.L18:
	sw	zero,-20(s0)
	j	.L20
.L22:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L21
	li	a5,0
	j	.L19
.L21:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L20:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L22
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
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem23.c"
	.align	3
.LC2:
	.string	"issame(result1, size, (int[]){}, 0)"
	.align	3
.LC3:
	.string	"4,,23.2,9,adasd"
	.align	3
.LC4:
	.string	"issame(result2, size, (int[]){4, 9}, 2)"
	.align	3
.LC5:
	.string	"3,c,3,3,a,b"
	.align	3
.LC6:
	.string	"issame(result3, size, (int[]){3, 3, 3}, 3)"
	.align	3
.LC7:
	.string	"All tests passed."
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-68
	mv	a1,a5
	lla	a0,.LC0
	call	func0
	sd	a0,-64(s0)
	lw	a5,-68(s0)
	addi	a4,s0,-40
	li	a3,0
	mv	a2,a4
	mv	a1,a5
	ld	a0,-64(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC1
	lla	a0,.LC2
	call	__assert_fail@plt
.L24:
	addi	a5,s0,-68
	mv	a1,a5
	lla	a0,.LC3
	call	func0
	sd	a0,-56(s0)
	lw	a4,-68(s0)
	li	a5,4
	sw	a5,-40(s0)
	li	a5,9
	sw	a5,-36(s0)
	addi	a5,s0,-40
	li	a3,2
	mv	a2,a5
	mv	a1,a4
	ld	a0,-56(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,57
	lla	a1,.LC1
	lla	a0,.LC4
	call	__assert_fail@plt
.L25:
	addi	a5,s0,-68
	mv	a1,a5
	lla	a0,.LC5
	call	func0
	sd	a0,-48(s0)
	lw	a4,-68(s0)
	li	a5,3
	sw	a5,-40(s0)
	li	a5,3
	sw	a5,-36(s0)
	li	a5,3
	sw	a5,-32(s0)
	addi	a5,s0,-40
	li	a3,3
	mv	a2,a5
	mv	a1,a4
	ld	a0,-48(s0)
	call	issame
	mv	a5,a0
	bne	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,61
	lla	a1,.LC1
	lla	a0,.LC6
	call	__assert_fail@plt
.L26:
	lla	a0,.LC7
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
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.local	out.1
	.comm	out.1,1024,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
