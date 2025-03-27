	.file	"flood-fill.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	mat
	.data
	.align	3
	.type	mat, @object
	.size	mat, 100
mat:
	.ascii	"YYYGGGGGGG"
	.ascii	"YYYYYYGXXX"
	.ascii	"GXGGGGGXXX"
	.ascii	"WXXWWGGGGX"
	.ascii	"WRRRRRGXXX"
	.ascii	"WWWRRGGXXX"
	.ascii	"WBWRRRRRRX"
	.ascii	"WBBBBRRXXX"
	.ascii	"WBBXBBBBXX"
	.ascii	"WBBXXXXXXX"
	.globl	row
	.align	3
	.type	row, @object
	.size	row, 32
row:
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.globl	col
	.align	3
	.type	col, @object
	.size	col, 32
col:
	.word	-1
	.word	0
	.word	1
	.word	-1
	.word	1
	.word	-1
	.word	0
	.word	1
	.text
	.align	1
	.globl	floodfill
	.type	floodfill, @function
floodfill:
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
	sd	a0,-40(s0)
	mv	a5,a1
	mv	a4,a3
	sb	a5,-41(s0)
	mv	a5,a2
	sb	a5,-42(s0)
	mv	a5,a4
	sb	a5,-43(s0)
	lbu	a4,-41(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	ld	a5,-40(s0)
	add	a4,a5,a4
	lbu	a5,-42(s0)
	sext.w	a5,a5
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	lbu	a4,-41(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	ld	a5,-40(s0)
	add	a4,a5,a4
	lbu	a5,-42(s0)
	sext.w	a5,a5
	add	a5,a4,a5
	lbu	a4,-43(s0)
	sb	a4,0(a5)
	sw	zero,-20(s0)
	j	.L2
.L4:
	lbu	a5,-41(s0)
	sext.w	a4,a5
	lla	a3,row
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	blt	a5,zero,.L3
	lbu	a5,-41(s0)
	sext.w	a4,a5
	lla	a3,row
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,9
	bgt	a4,a5,.L3
	lbu	a5,-42(s0)
	sext.w	a4,a5
	lla	a3,col
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	blt	a5,zero,.L3
	lbu	a5,-42(s0)
	sext.w	a4,a5
	lla	a3,col
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,9
	bgt	a4,a5,.L3
	lbu	a5,-41(s0)
	sext.w	a4,a5
	lla	a3,row
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	ld	a5,-40(s0)
	add	a4,a5,a4
	lbu	a5,-42(s0)
	sext.w	a3,a5
	lla	a2,col
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a2,a5
	lw	a5,0(a5)
	addw	a5,a3,a5
	sext.w	a5,a5
	add	a5,a4,a5
	lbu	a4,0(a5)
	lbu	a5,-21(s0)
	andi	a5,a5,0xff
	bne	a5,a4,.L3
	lla	a4,row
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	andi	a5,a5,0xff
	lbu	a4,-41(s0)
	addw	a5,a4,a5
	andi	a1,a5,0xff
	lla	a4,col
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	andi	a5,a5,0xff
	lbu	a4,-42(s0)
	addw	a5,a4,a5
	andi	a5,a5,0xff
	lbu	a4,-43(s0)
	mv	a3,a4
	mv	a2,a5
	ld	a0,-40(s0)
	call	floodfill
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L4
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
.LFE3:
	.size	floodfill, .-floodfill
	.section	.rodata
	.align	3
.LC0:
	.string	"  %c"
	.align	3
.LC1:
	.string	"\n"
	.text
	.align	1
	.globl	printMatrix
	.type	printMatrix, @function
printMatrix:
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
	slli	a5,a5,1
	mv	a4,a5
	ld	a5,-40(s0)
	add	a4,a5,a4
	lw	a5,-20(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L7:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L8
	lla	a0,.LC1
	call	libmin_printf@plt
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L6:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,9
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
	.size	printMatrix, .-printMatrix
	.section	.rodata
	.align	3
.LC2:
	.string	"\nBEFORE flooding `%c' @ (%d,%d):\n"
	.align	3
.LC3:
	.string	"\nAFTER:\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	li	a5,3
	sw	a5,-24(s0)
	li	a5,9
	sw	a5,-20(s0)
	li	a5,67
	sb	a5,-25(s0)
	lbu	a5,-25(s0)
	sext.w	a5,a5
	lw	a3,-20(s0)
	lw	a4,-24(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC2
	call	libmin_printf@plt
	lla	a0,mat
	call	printMatrix
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	lw	a4,-20(s0)
	andi	a4,a4,0xff
	lbu	a3,-25(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,mat
	call	floodfill
	lla	a0,.LC3
	call	libmin_printf@plt
	lla	a0,mat
	call	printMatrix
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
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
