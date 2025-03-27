	.file	"fy-shuffle.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	rand_int, @function
rand_int:
.LFB3:
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
	sw	a5,-36(s0)
	li	a5,-2147483648
	addiw	a5,a5,-1
	lw	a4,-36(s0)
	remw	a5,a5,a4
	sext.w	a5,a5
	li	a4,-2147483648
	addiw	a4,a4,-1
	subw	a5,a4,a5
	sw	a5,-24(s0)
.L2:
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a5,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L2
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
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
.LFE3:
	.size	rand_int, .-rand_int
	.align	1
	.globl	fy_shuffle
	.type	fy_shuffle, @function
fy_shuffle:
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
	mv	a5,a1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sw	a5,-28(s0)
	j	.L5
.L8:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	rand_int
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,zero,.L6
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L6
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,zero,.L6
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L7
.L6:
	li	a0,1
	call	libmin_fail@plt
.L7:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,-1
	sw	a5,-28(s0)
.L5:
	lw	a5,-28(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L8
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
	.size	fy_shuffle, .-fy_shuffle
	.section	.rodata
	.align	3
.LC0:
	.string	"%s"
	.align	3
.LC1:
	.string	"%2d "
	.align	3
.LC2:
	.string	"\n"
	.text
	.align	1
	.globl	print
	.type	print, @function
print:
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
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	ld	a1,-40(s0)
	lla	a0,.LC0
	call	libmin_printf@plt
	sw	zero,-20(s0)
	j	.L10
.L11:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L10:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lla	a0,.LC2
	call	libmin_printf@plt
	nop
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
	.size	print, .-print
	.globl	a
	.data
	.align	3
	.type	a, @object
	.size	a, 44
a:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.globl	b
	.align	3
	.type	b, @object
	.size	b, 76
b:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.word	17
	.word	18
	.section	.rodata
	.align	3
.LC3:
	.string	"A (before): "
	.align	3
.LC4:
	.string	"A (after):  "
	.align	3
.LC5:
	.string	"B (before): "
	.align	3
.LC6:
	.string	"B (after):  "
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	li	a0,42
	call	libmin_srand@plt
	sw	zero,-20(s0)
	j	.L13
.L14:
	li	a2,11
	lla	a1,a
	lla	a0,.LC3
	call	print
	li	a1,11
	lla	a0,a
	call	fy_shuffle
	li	a2,11
	lla	a1,a
	lla	a0,.LC4
	call	print
	li	a2,19
	lla	a1,b
	lla	a0,.LC5
	call	print
	li	a1,19
	lla	a0,b
	call	fy_shuffle
	li	a2,19
	lla	a1,b
	lla	a0,.LC6
	call	print
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L13:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L14
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
