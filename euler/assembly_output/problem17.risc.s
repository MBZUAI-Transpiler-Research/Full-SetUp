	.file	"problem17.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC3:
	.string	"%u\n"
	.align	3
.LC0:
	.word	0
	.word	3
	.word	3
	.word	5
	.word	4
	.word	4
	.word	3
	.word	5
	.word	5
	.word	4
	.align	3
.LC1:
	.word	3
	.word	6
	.word	6
	.word	8
	.word	8
	.word	7
	.word	7
	.word	9
	.word	8
	.word	8
	.align	3
.LC2:
	.word	0
	.word	0
	.word	6
	.word	6
	.word	5
	.word	5
	.word	5
	.word	7
	.word	6
	.word	6
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)
	sd	s0,160(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-144(s0)
	sd	a2,-136(s0)
	sd	a3,-128(s0)
	sd	a4,-120(s0)
	sd	a5,-112(s0)
	lla	a5,.LC1
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-104(s0)
	sd	a2,-96(s0)
	sd	a3,-88(s0)
	sd	a4,-80(s0)
	sd	a5,-72(s0)
	lla	a5,.LC2
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	li	a5,7
	sw	a5,-156(s0)
	li	a5,3
	sw	a5,-152(s0)
	li	a5,8
	sw	a5,-148(s0)
	sw	zero,-164(s0)
	li	a5,1
	sw	a5,-168(s0)
	j	.L2
.L3:
	lwu	a5,-168(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-128(a5)
	lw	a4,-164(s0)
	addw	a5,a4,a5
	sw	a5,-164(s0)
	lw	a5,-168(s0)
	addiw	a5,a5,1
	sw	a5,-168(s0)
.L2:
	lw	a5,-168(s0)
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L3
	sw	zero,-168(s0)
	j	.L4
.L5:
	lwu	a5,-168(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-88(a5)
	lw	a4,-164(s0)
	addw	a5,a4,a5
	sw	a5,-164(s0)
	lw	a5,-168(s0)
	addiw	a5,a5,1
	sw	a5,-168(s0)
.L4:
	lw	a5,-168(s0)
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L5
	li	a5,20
	sw	a5,-168(s0)
	j	.L6
.L7:
	lw	a5,-168(s0)
	mv	a4,a5
	li	a5,10
	divuw	a5,a4,a5
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-48(a5)
	lw	a5,-168(s0)
	mv	a3,a5
	li	a5,10
	remuw	a5,a3,a5
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-128(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-164(s0)
	addw	a5,a4,a5
	sw	a5,-164(s0)
	lw	a5,-168(s0)
	addiw	a5,a5,1
	sw	a5,-168(s0)
.L6:
	lw	a5,-168(s0)
	sext.w	a4,a5
	li	a5,99
	bleu	a4,a5,.L7
	li	a5,1
	sw	a5,-168(s0)
	j	.L8
.L15:
	lwu	a5,-168(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-128(a5)
	lw	a4,-156(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-164(s0)
	addw	a5,a4,a5
	sw	a5,-164(s0)
	li	a5,1
	sw	a5,-160(s0)
	j	.L9
.L10:
	lwu	a5,-168(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-128(a5)
	lw	a4,-156(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-152(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-160(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-128(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-164(s0)
	addw	a5,a4,a5
	sw	a5,-164(s0)
	lw	a5,-160(s0)
	addiw	a5,a5,1
	sw	a5,-160(s0)
.L9:
	lw	a5,-160(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L10
	sw	zero,-160(s0)
	j	.L11
.L12:
	lwu	a5,-168(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-128(a5)
	lw	a4,-156(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-152(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-160(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-88(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-164(s0)
	addw	a5,a4,a5
	sw	a5,-164(s0)
	lw	a5,-160(s0)
	addiw	a5,a5,1
	sw	a5,-160(s0)
.L11:
	lw	a5,-160(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L12
	li	a5,20
	sw	a5,-160(s0)
	j	.L13
.L14:
	lwu	a5,-168(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-128(a5)
	lw	a4,-156(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-152(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-160(s0)
	mv	a3,a5
	li	a5,10
	divw	a5,a3,a5
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-48(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-160(s0)
	mv	a3,a5
	li	a5,10
	remw	a5,a3,a5
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-128(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-164(s0)
	addw	a5,a4,a5
	sw	a5,-164(s0)
	lw	a5,-160(s0)
	addiw	a5,a5,1
	sw	a5,-160(s0)
.L13:
	lw	a5,-160(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L14
	lw	a5,-168(s0)
	addiw	a5,a5,1
	sw	a5,-168(s0)
.L8:
	lw	a5,-168(s0)
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L15
	lw	a5,-140(s0)
	lw	a4,-148(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-164(s0)
	addw	a5,a4,a5
	sw	a5,-164(s0)
	lw	a5,-164(s0)
	mv	a1,a5
	lla	a0,.LC3
	call	printf@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L17
	call	__stack_chk_fail@plt
.L17:
	mv	a0,a4
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s0,160(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
