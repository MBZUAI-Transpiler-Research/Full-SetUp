	.file	"problem111.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC5:
	.string	"YES"
	.align	3
.LC6:
	.string	"NO"
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
	sd	a2,-56(s0)
	mv	a4,a3
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	j	.L2
.L4:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L3:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L4
	sw	zero,-20(s0)
	j	.L5
.L7:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L6
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L6:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L5:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	lla	a5,.LC5
	j	.L9
.L8:
	lla	a5,.LC6
.L9:
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
	.string	"problem111.c"
	.align	3
.LC8:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 2, 3, 4}, 4), \"YES\") == 0"
	.align	3
.LC9:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){1, 5, 3, 4}, 4), \"NO\") == 0"
	.align	3
.LC10:
	.string	"strcmp(func0((int[]){1, 2, 3, 4}, 4, (int[]){2, 1, 4, 3}, 4), \"YES\") == 0"
	.align	3
.LC11:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 4}, 3), \"YES\") == 0"
	.align	3
.LC12:
	.string	"strcmp(func0((int[]){5, 7, 3}, 3, (int[]){2, 6, 3}, 3), \"NO\") == 0"
	.align	3
.LC13:
	.string	"strcmp(func0((int[]){3, 2, 6, 1, 8, 9}, 6, (int[]){3, 5, 5, 1, 1, 1}, 6), \"NO\") == 0"
	.align	3
.LC14:
	.string	"strcmp(func0((int[]){100, 200}, 2, (int[]){200, 200}, 2), \"YES\") == 0"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	5
	.word	3
	.word	4
	.align	3
.LC2:
	.word	2
	.word	1
	.word	4
	.word	3
	.align	3
.LC3:
	.word	3
	.word	2
	.word	6
	.word	1
	.word	8
	.word	9
	.align	3
.LC4:
	.word	3
	.word	5
	.word	5
	.word	1
	.word	1
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
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
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a5,8(a5)
	sd	a5,-64(s0)
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a4,s0,-48
	addi	a5,s0,-72
	li	a3,4
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,19
	lla	a1,.LC7
	lla	a0,.LC8
	call	__assert_fail@plt
.L11:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a5,8(a5)
	sd	a5,-64(s0)
	lla	a5,.LC1
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a4,s0,-48
	addi	a5,s0,-72
	li	a3,4
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC6
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,20
	lla	a1,.LC7
	lla	a0,.LC9
	call	__assert_fail@plt
.L12:
	lla	a5,.LC0
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a5,8(a5)
	sd	a5,-64(s0)
	lla	a5,.LC2
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	addi	a4,s0,-48
	addi	a5,s0,-72
	li	a3,4
	mv	a2,a4
	li	a1,4
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,21
	lla	a1,.LC7
	lla	a0,.LC10
	call	__assert_fail@plt
.L13:
	li	a5,5
	sw	a5,-72(s0)
	li	a5,7
	sw	a5,-68(s0)
	li	a5,3
	sw	a5,-64(s0)
	li	a5,2
	sw	a5,-48(s0)
	li	a5,6
	sw	a5,-44(s0)
	li	a5,4
	sw	a5,-40(s0)
	addi	a4,s0,-48
	addi	a5,s0,-72
	li	a3,3
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,22
	lla	a1,.LC7
	lla	a0,.LC11
	call	__assert_fail@plt
.L14:
	li	a5,5
	sw	a5,-72(s0)
	li	a5,7
	sw	a5,-68(s0)
	li	a5,3
	sw	a5,-64(s0)
	li	a5,2
	sw	a5,-48(s0)
	li	a5,6
	sw	a5,-44(s0)
	li	a5,3
	sw	a5,-40(s0)
	addi	a4,s0,-48
	addi	a5,s0,-72
	li	a3,3
	mv	a2,a4
	li	a1,3
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC6
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,23
	lla	a1,.LC7
	lla	a0,.LC12
	call	__assert_fail@plt
.L15:
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-72(s0)
	ld	a4,8(a5)
	sd	a4,-64(s0)
	ld	a5,16(a5)
	sd	a5,-56(s0)
	lla	a5,.LC4
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a4,8(a5)
	sd	a4,-40(s0)
	ld	a5,16(a5)
	sd	a5,-32(s0)
	addi	a4,s0,-48
	addi	a5,s0,-72
	li	a3,6
	mv	a2,a4
	li	a1,6
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC6
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,24
	lla	a1,.LC7
	lla	a0,.LC13
	call	__assert_fail@plt
.L16:
	li	a5,100
	sw	a5,-72(s0)
	li	a5,200
	sw	a5,-68(s0)
	li	a5,200
	sw	a5,-48(s0)
	li	a5,200
	sw	a5,-44(s0)
	addi	a4,s0,-48
	addi	a5,s0,-72
	li	a3,2
	mv	a2,a4
	li	a1,2
	mv	a0,a5
	call	func0
	mv	a5,a0
	lla	a1,.LC5
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,25
	lla	a1,.LC7
	lla	a0,.LC14
	call	__assert_fail@plt
.L17:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
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
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
