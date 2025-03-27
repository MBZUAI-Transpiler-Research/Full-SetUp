	.file	"knights-tour.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	isSafe
	.type	isSafe, @function
isSafe:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sd	a2,-32(s0)
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	blt	a5,zero,.L2
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,4
	bgt	a4,a5,.L2
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,zero,.L2
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,4
	bgt	a4,a5,.L2
	lw	a4,-20(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	ld	a5,-32(s0)
	add	a4,a5,a4
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,-1
	bne	a4,a5,.L2
	li	a5,1
	j	.L3
.L2:
	li	a5,0
.L3:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	isSafe, .-isSafe
	.section	.rodata
	.align	3
.LC2:
	.string	" %2d "
	.align	3
.LC3:
	.string	"\n"
	.text
	.align	1
	.globl	printSolution
	.type	printSolution, @function
printSolution:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sw	zero,-24(s0)
	j	.L6
.L9:
	sw	zero,-20(s0)
	j	.L7
.L8:
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	ld	a5,-40(s0)
	add	a4,a5,a4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC2
	call	libmin_printf@plt
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L7:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,4
	ble	a4,a5,.L8
	lla	a0,.LC3
	call	libmin_printf@plt
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L6:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,4
	ble	a4,a5,.L9
	nop
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	printSolution, .-printSolution
	.section	.rodata
	.align	3
.LC4:
	.string	"Solution does not exist"
	.align	3
.LC0:
	.word	2
	.word	1
	.word	-1
	.word	-2
	.word	-2
	.word	-1
	.word	1
	.word	2
	.align	3
.LC1:
	.word	1
	.word	2
	.word	2
	.word	1
	.word	-1
	.word	-2
	.word	-2
	.word	-1
	.text
	.align	1
	.globl	solveKT
	.type	solveKT, @function
solveKT:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-208
	.cfi_def_cfa_offset 208
	sd	ra,200(sp)
	sd	s0,192(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,208
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-200(s0)
	j	.L11
.L14:
	sw	zero,-196(s0)
	j	.L12
.L13:
	lw	a3,-196(s0)
	lw	a4,-200(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	add	a5,a5,a3
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-1
	sw	a4,-112(a5)
	lw	a5,-196(s0)
	addiw	a5,a5,1
	sw	a5,-196(s0)
.L12:
	lw	a5,-196(s0)
	sext.w	a4,a5
	li	a5,4
	ble	a4,a5,.L13
	lw	a5,-200(s0)
	addiw	a5,a5,1
	sw	a5,-200(s0)
.L11:
	lw	a5,-200(s0)
	sext.w	a4,a5
	li	a5,4
	ble	a4,a5,.L14
	lla	a5,.LC0
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-192(s0)
	sd	a3,-184(s0)
	sd	a4,-176(s0)
	sd	a5,-168(s0)
	lla	a5,.LC1
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-160(s0)
	sd	a3,-152(s0)
	sd	a4,-144(s0)
	sd	a5,-136(s0)
	sw	zero,-128(s0)
	addi	a5,s0,-160
	addi	a4,s0,-192
	addi	a3,s0,-128
	li	a2,1
	li	a1,0
	li	a0,0
	call	solveKTUtil
	mv	a5,a0
	bne	a5,zero,.L15
	lla	a0,.LC4
	call	libmin_printf@plt
	li	a5,0
	j	.L17
.L15:
	addi	a5,s0,-128
	mv	a0,a5
	call	printSolution
	li	a5,1
.L17:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L18
	call	__stack_chk_fail@plt
.L18:
	mv	a0,a4
	ld	ra,200(sp)
	.cfi_restore 1
	ld	s0,192(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	addi	sp,sp,208
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	solveKT, .-solveKT
	.align	1
	.globl	solveKTUtil
	.type	solveKTUtil, @function
solveKTUtil:
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
	sd	a3,-56(s0)
	sd	a4,-64(s0)
	sd	a5,-72(s0)
	mv	a5,a0
	sw	a5,-36(s0)
	mv	a5,a1
	sw	a5,-40(s0)
	mv	a5,a2
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,25
	bne	a4,a5,.L20
	li	a5,1
	j	.L21
.L20:
	sw	zero,-28(s0)
	j	.L22
.L25:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-36(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-72(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	ld	a2,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	isSafe
	mv	a5,a0
	beq	a5,zero,.L23
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	ld	a5,-56(s0)
	add	a4,a5,a4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-44(s0)
	sw	a4,0(a5)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sext.w	a2,a5
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	ld	a5,-72(s0)
	ld	a4,-64(s0)
	ld	a3,-56(s0)
	call	solveKTUtil
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L24
	li	a5,1
	j	.L21
.L24:
	lw	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	ld	a5,-56(s0)
	add	a4,a5,a4
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,-1
	sw	a4,0(a5)
.L23:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L22:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L25
	li	a5,0
.L21:
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
	.size	solveKTUtil, .-solveKTUtil
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
	call	solveKT
	call	libmin_success@plt
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
