	.file	"knapsack.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	val
	.data
	.align	3
	.type	val, @object
	.size	val, 200
val:
	.word	27
	.word	34
	.word	9
	.word	22
	.word	8
	.word	17
	.word	22
	.word	21
	.word	23
	.word	19
	.word	7
	.word	36
	.word	11
	.word	42
	.word	37
	.word	16
	.word	10
	.word	26
	.word	10
	.word	50
	.word	23
	.word	46
	.word	37
	.word	3
	.word	14
	.word	16
	.word	35
	.word	14
	.word	15
	.word	44
	.word	49
	.word	2
	.word	45
	.word	3
	.word	15
	.word	1
	.word	34
	.word	44
	.word	19
	.word	25
	.word	43
	.word	28
	.word	26
	.word	4
	.word	30
	.word	24
	.word	49
	.word	11
	.word	48
	.word	13
	.globl	wt
	.align	3
	.type	wt, @object
	.size	wt, 200
wt:
	.word	23
	.word	47
	.word	22
	.word	15
	.word	42
	.word	30
	.word	15
	.word	32
	.word	47
	.word	33
	.word	15
	.word	38
	.word	44
	.word	7
	.word	16
	.word	34
	.word	30
	.word	33
	.word	3
	.word	2
	.word	43
	.word	31
	.word	46
	.word	17
	.word	30
	.word	1
	.word	34
	.word	21
	.word	30
	.word	21
	.word	29
	.word	21
	.word	36
	.word	14
	.word	18
	.word	21
	.word	13
	.word	3
	.word	27
	.word	44
	.word	33
	.word	11
	.word	9
	.word	31
	.word	40
	.word	40
	.word	30
	.word	9
	.word	41
	.word	31
	.text
	.align	1
	.globl	max
	.type	max, @function
max:
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
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L2
	lw	a5,-20(s0)
	j	.L3
.L2:
	lw	a5,-24(s0)
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
	.size	max, .-max
	.align	1
	.globl	knapSack
	.type	knapSack, @function
knapSack:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sw	zero,-40(s0)
	j	.L5
.L12:
	sw	zero,-36(s0)
	j	.L6
.L11:
	lw	a5,-40(s0)
	sext.w	a5,a5
	beq	a5,zero,.L7
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L8
.L7:
	lw	a4,-40(s0)
	li	a5,1004
	mul	a5,a4,a5
	ld	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	j	.L9
.L8:
	lw	a5,-40(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-36(s0)
	sext.w	a5,a5
	blt	a5,a4,.L10
	lw	a5,-40(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-40(s0)
	li	a5,1004
	mul	a5,a3,a5
	addi	a5,a5,-1004
	ld	a3,-72(s0)
	add	a3,a3,a5
	lw	a5,-40(s0)
	slli	a5,a5,2
	addi	a5,a5,-4
	ld	a2,-56(s0)
	add	a5,a2,a5
	lw	a5,0(a5)
	lw	a2,-36(s0)
	subw	a5,a2,a5
	sext.w	a5,a5
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a3,a5
	lw	a4,-40(s0)
	li	a5,1004
	mul	a5,a4,a5
	addi	a5,a5,-1004
	ld	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	lw	a4,-40(s0)
	li	a5,1004
	mul	a5,a4,a5
	ld	a4,-72(s0)
	add	s1,a4,a5
	mv	a1,a2
	mv	a0,a3
	call	max
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,s1,a5
	sw	a4,0(a5)
	j	.L9
.L10:
	lw	a4,-40(s0)
	li	a5,1004
	mul	a5,a4,a5
	addi	a5,a5,-1004
	ld	a4,-72(s0)
	add	a4,a4,a5
	lw	a3,-40(s0)
	li	a5,1004
	mul	a5,a3,a5
	ld	a3,-72(s0)
	add	a3,a3,a5
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L9:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L6:
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,250
	ble	a4,a5,.L11
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L5:
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,50
	ble	a4,a5,.L12
	nop
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	knapSack, .-knapSack
	.section	.rodata
	.align	3
.LC0:
	.string	"Max value: %d\n"
	.align	3
.LC1:
	.string	"Selected packs:\n"
	.align	3
.LC2:
	.string	"  Package %d with wt=%d and val=%d\n"
	.align	3
.LC3:
	.string	"Total weight: %d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	li	t0,-53248
	addi	t0,t0,2016
	add	sp,sp,t0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,50
	sw	a4,2024(a5)
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,250
	sw	a4,2028(a5)
	li	a5,-53248
	addi	a5,a5,2032
	addi	a5,a5,-16
	add	a5,a5,s0
	mv	a2,a5
	lla	a1,val
	lla	a0,wt
	call	knapSack
	li	a5,-53248
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a3,2024(a5)
	li	a5,1004
	mul	a5,a3,a5
	add	a5,a4,a5
	li	a4,4096
	add	a5,a4,a5
	lw	a5,-1064(a5)
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
	lla	a0,.LC1
	call	libmin_printf@plt
	j	.L14
.L16:
	li	a5,-53248
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a2,2028(a5)
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,2024(a5)
	mv	a5,a4
	slli	a5,a5,6
	sub	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a1,2032(a5)
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2024(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	li	a5,-53248
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a2,2028(a5)
	mv	a5,a4
	slli	a5,a5,6
	sub	a5,a5,a4
	slli	a5,a5,2
	sub	a5,a5,a4
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,2032(a5)
	mv	a4,a1
	beq	a4,a5,.L15
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2024(a5)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a4,wt
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2024(a5)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a4,val
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2024(a5)
	mv	a3,a4
	mv	a1,a5
	lla	a0,.LC2
	call	libmin_printf@plt
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2024(a5)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a4,wt
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a3,-53248
	addi	a3,a3,-16
	add	a3,a3,s0
	lw	a3,2028(a3)
	subw	a4,a3,a4
	sw	a4,2028(a5)
.L15:
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-53248
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a4,2024(a4)
	addiw	a4,a4,-1
	sw	a4,2024(a5)
.L14:
	li	a5,-53248
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2024(a5)
	sext.w	a5,a5
	bne	a5,zero,.L16
	li	a5,-53248
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,250
	lw	a4,2028(a4)
	subw	a5,a5,a4
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
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
	li	t0,53248
	addi	t0,t0,-2016
	add	sp,sp,t0
	.cfi_def_cfa 2, 16
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
