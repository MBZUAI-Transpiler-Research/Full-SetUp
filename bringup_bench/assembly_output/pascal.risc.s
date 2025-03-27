	.file	"pascal.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	triangle
	.comm	triangle,3720,8
	.align	1
	.globl	num_digits
	.type	num_digits, @function
num_digits:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	li	a5,1
	sw	a5,-20(s0)
	j	.L2
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	li	a5,10
	divw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L3
	lw	a5,-20(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	num_digits, .-num_digits
	.section	.rodata
	.align	3
.LC0:
	.string	" "
	.align	3
.LC1:
	.string	"%d"
	.text
	.align	1
	.globl	print_centered
	.type	print_centered, @function
print_centered:
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
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	mv	a0,a5
	call	num_digits
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L6
	li	a5,1
	j	.L7
.L6:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sw	a5,-20(s0)
	sw	zero,-28(s0)
	j	.L8
.L9:
	lla	a0,.LC0
	call	libmin_printf@plt
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L8:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L9
	lw	a5,-36(s0)
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
	sw	zero,-28(s0)
	j	.L10
.L11:
	lla	a0,.LC0
	call	libmin_printf@plt
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L10:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-20(s0)
	subw	a5,a5,a4
	sext.w	a4,a5
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L11
	li	a5,0
.L7:
	mv	a0,a5
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
	.size	print_centered, .-print_centered
	.section	.rodata
	.align	3
.LC2:
	.string	"\n\npascal [-h -v] [-c n] n \nprint the first n rows of pascal's triangle to stdout.\n-h: print this helpful information\n-v: print version number and exit\n-c: print the number of columns required for display only \n\n"
	.align	3
.LC3:
	.string	"1.0"
	.align	3
.LC4:
	.string	"%s\n"
	.align	3
.LC5:
	.string	"usage: pascal [ -h -v] [-c rows] rows\n"
	.align	3
.LC6:
	.string	"0\n"
	.align	3
.LC7:
	.string	"pascal"
	.align	3
.LC8:
	.string	"%s: %d is an invalid number of rows\n"
	.align	3
.LC9:
	.string	"%s: %d > %d rows maximum\n"
	.align	3
.LC10:
	.string	"%d\n"
	.align	3
.LC11:
	.string	"%s: error printing element %d,%d\n"
	.align	3
.LC12:
	.string	"\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	li	a5,1
	sw	a5,-32(s0)
	sd	zero,-24(s0)
	li	a5,1
	sw	a5,-52(s0)
	sw	zero,-44(s0)
	j	.L13
.L20:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,104
	bne	a4,a5,.L14
	lla	a0,.LC2
	call	libmin_printf@plt
	li	a5,0
	j	.L15
.L14:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,118
	bne	a4,a5,.L16
	lla	a1,.LC3
	lla	a0,.LC4
	call	libmin_printf@plt
	li	a5,0
	j	.L15
.L16:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,99
	bne	a4,a5,.L17
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-32(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L18
	lla	a0,.LC5
	call	libmin_printf@plt
	li	a5,1
	j	.L15
.L18:
	li	a5,1
	sw	a5,-44(s0)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
	j	.L13
.L17:
	lla	a0,.LC5
	call	libmin_printf@plt
	li	a5,1
	j	.L15
.L13:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-32(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L19
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	beq	a4,a5,.L20
.L19:
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,a4,.L21
	li	a5,20
	sw	a5,-40(s0)
	j	.L22
.L21:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	libmin_atoi@plt
	mv	a5,a0
	sw	a5,-40(s0)
.L22:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L23
	lw	a5,-44(s0)
	sext.w	a5,a5
	beq	a5,zero,.L24
	lla	a0,.LC6
	call	libmin_printf@plt
.L24:
	call	libmin_success@plt
.L23:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bge	a5,zero,.L25
	lw	a5,-40(s0)
	mv	a2,a5
	lla	a1,.LC7
	lla	a0,.LC8
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L25:
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,30
	ble	a4,a5,.L26
	lw	a5,-40(s0)
	li	a3,30
	mv	a2,a5
	lla	a1,.LC7
	lla	a0,.LC9
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L26:
	lla	a5,triangle
	li	a4,1
	sw	a4,0(a5)
	li	a5,1
	sw	a5,-52(s0)
	j	.L27
.L30:
	lla	a3,triangle
	lw	a4,-52(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,3
	add	a5,a3,a5
	li	a4,1
	sw	a4,0(a5)
	li	a5,1
	sw	a5,-48(s0)
	j	.L28
.L29:
	lw	a5,-52(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-48(s0)
	addiw	a5,a5,-1
	sext.w	a2,a5
	lla	a3,triangle
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a3,0(a5)
	lw	a5,-52(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lla	a2,triangle
	lw	a1,-48(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a1
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a5,0(a5)
	addw	a5,a3,a5
	sext.w	a3,a5
	lla	a2,triangle
	lw	a1,-48(s0)
	lw	a4,-52(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a1
	slli	a5,a5,2
	add	a5,a2,a5
	sw	a3,0(a5)
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L28:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L29
	lla	a3,triangle
	lw	a4,-52(s0)
	mv	a5,a4
	slli	a5,a5,5
	sub	a5,a5,a4
	slli	a5,a5,2
	add	a5,a3,a5
	li	a4,1
	sw	a4,0(a5)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L27:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L30
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-40(s0)
	srliw	a3,a5,31
	addw	a5,a3,a5
	sraiw	a5,a5,1
	sext.w	a2,a5
	lla	a3,triangle
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	num_digits
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L31
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L31:
	lw	a5,-44(s0)
	sext.w	a5,a5
	beq	a5,zero,.L32
	lw	a5,-36(s0)
	addiw	a5,a5,2
	sext.w	a5,a5
	lw	a4,-40(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC10
	call	libmin_printf@plt
	call	libmin_success@plt
.L32:
	sw	zero,-52(s0)
	j	.L33
.L39:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-36(s0)
	srliw	a3,a5,31
	addw	a5,a3,a5
	sraiw	a5,a5,1
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a5,a5
	mulw	a5,a4,a5
	sw	a5,-28(s0)
	sw	zero,-48(s0)
	j	.L34
.L35:
	lla	a0,.LC0
	call	libmin_printf@plt
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L34:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L35
	sw	zero,-48(s0)
	j	.L36
.L38:
	lla	a3,triangle
	lw	a2,-48(s0)
	lw	a4,-52(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	slli	a5,a5,1
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	lw	a4,-36(s0)
	addiw	a4,a4,2
	sext.w	a4,a4
	mv	a1,a4
	mv	a0,a5
	call	print_centered
	mv	a5,a0
	beq	a5,zero,.L37
	lw	a4,-48(s0)
	lw	a5,-52(s0)
	mv	a3,a4
	mv	a2,a5
	lla	a1,.LC7
	lla	a0,.LC11
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L37:
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L36:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L38
	lla	a0,.LC12
	call	libmin_printf@plt
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L33:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L39
	call	libmin_success@plt
	li	a5,0
.L15:
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
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
