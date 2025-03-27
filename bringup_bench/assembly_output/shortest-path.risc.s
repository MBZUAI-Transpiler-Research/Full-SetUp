	.file	"shortest-path.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	dist
	.bss
	.align	3
	.type	dist, @object
	.size	dist, 256
dist:
	.zero	256
	.text
	.align	1
	.globl	floydWarshall
	.type	floydWarshall, @function
floydWarshall:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sw	zero,-28(s0)
	j	.L2
.L5:
	sw	zero,-24(s0)
	j	.L3
.L4:
	lw	a5,-28(s0)
	slli	a5,a5,5
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a3,dist
	lw	a5,-24(s0)
	lw	a2,-28(s0)
	slli	a2,a2,3
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L4
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L2:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L5
	sw	zero,-20(s0)
	j	.L6
.L12:
	sw	zero,-28(s0)
	j	.L7
.L11:
	sw	zero,-24(s0)
	j	.L8
.L10:
	lla	a4,dist
	lw	a5,-20(s0)
	lw	a3,-28(s0)
	slli	a3,a3,3
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a3,dist
	lw	a5,-24(s0)
	lw	a2,-20(s0)
	slli	a2,a2,3
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a2,a5
	lla	a4,dist
	lw	a5,-24(s0)
	lw	a3,-28(s0)
	slli	a3,a3,3
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a2
	bge	a4,a5,.L9
	lla	a4,dist
	lw	a5,-20(s0)
	lw	a3,-28(s0)
	slli	a3,a3,3
	add	a5,a3,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a3,dist
	lw	a5,-24(s0)
	lw	a2,-20(s0)
	slli	a2,a2,3
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a3,dist
	lw	a5,-24(s0)
	lw	a2,-28(s0)
	slli	a2,a2,3
	add	a5,a2,a5
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L9:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L8:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L10
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L7:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L11
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L6:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L12
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	floydWarshall, .-floydWarshall
	.section	.rodata
	.align	3
.LC1:
	.string	"Following matrix shows the shortest distances between every pair of vertices \n"
	.align	3
.LC2:
	.string	"INF"
	.align	3
.LC3:
	.string	"%7s"
	.align	3
.LC4:
	.string	"%7d"
	.align	3
.LC5:
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
	lla	a0,.LC1
	call	libmin_printf@plt
	sw	zero,-24(s0)
	j	.L14
.L19:
	sw	zero,-20(s0)
	j	.L15
.L18:
	lw	a5,-24(s0)
	slli	a5,a5,5
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,98304
	addi	a5,a5,1695
	bne	a4,a5,.L16
	lla	a1,.LC2
	lla	a0,.LC3
	call	libmin_printf@plt
	j	.L17
.L16:
	lw	a5,-24(s0)
	slli	a5,a5,5
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC4
	call	libmin_printf@plt
.L17:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L15:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L18
	lla	a0,.LC5
	call	libmin_printf@plt
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L14:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,7
	ble	a4,a5,.L19
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
.LC0:
	.word	0
	.word	99999
	.word	4
	.word	99999
	.word	99999
	.word	7
	.word	99999
	.word	99999
	.word	99999
	.word	0
	.word	99999
	.word	99999
	.word	9
	.word	99999
	.word	99999
	.word	3
	.word	4
	.word	99999
	.word	0
	.word	3
	.word	99999
	.word	2
	.word	9
	.word	99999
	.word	99999
	.word	99999
	.word	3
	.word	0
	.word	3
	.word	99999
	.word	7
	.word	99999
	.word	99999
	.word	9
	.word	99999
	.word	3
	.word	0
	.word	99999
	.word	2
	.word	7
	.word	7
	.word	99999
	.word	2
	.word	99999
	.word	99999
	.word	0
	.word	8
	.word	99999
	.word	99999
	.word	99999
	.word	9
	.word	7
	.word	2
	.word	8
	.word	0
	.word	3
	.word	99999
	.word	3
	.word	99999
	.word	99999
	.word	7
	.word	99999
	.word	3
	.word	0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	sd	ra,280(sp)
	sd	s0,272(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,288
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a4,.LC0
	addi	a5,s0,-280
	mv	a3,a4
	li	a4,256
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy@plt
	addi	a5,s0,-280
	mv	a0,a5
	call	floydWarshall
	lla	a0,dist
	call	printSolution
	call	libmin_success@plt
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
	ld	ra,280(sp)
	.cfi_restore 1
	ld	s0,272(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 288
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
