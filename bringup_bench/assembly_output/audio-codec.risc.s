	.file	"audio-codec.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	pcm
	.data
	.align	3
	.type	pcm, @object
	.size	pcm, 16
pcm:
	.half	1000
	.half	-1000
	.half	1234
	.half	3200
	.half	-1314
	.half	0
	.half	32767
	.half	-32768
	.globl	r_coded
	.align	3
	.type	r_coded, @object
	.size	r_coded, 8
r_coded:
	.ascii	"\372z\346\234a\325\252*"
	.globl	r_decoded
	.align	3
	.type	r_decoded, @object
	.size	r_decoded, 16
r_decoded:
	.half	1008
	.half	-1008
	.half	1248
	.half	3264
	.half	-1312
	.half	8
	.half	32256
	.half	-32256
	.text
	.align	1
	.globl	encode
	.type	encode, @function
encode:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sb	zero,-43(s0)
	sh	zero,-42(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	sd	zero,-24(s0)
	j	.L2
.L10:
	ld	a5,-64(s0)
	addi	a4,a5,2
	sd	a4,-64(s0)
	lhu	a5,0(a5)
	sh	a5,-42(s0)
	li	a5,7
	sw	a5,-40(s0)
	li	a5,16384
	sw	a5,-36(s0)
	lh	a5,-42(s0)
	sext.w	a5,a5
	sraiw	a5,a5,8
	sext.w	a5,a5
	andi	a5,a5,128
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,zero,.L3
	lhu	a5,-42(s0)
	not	a5,a5
	slliw	a5,a5,16
	sraiw	a5,a5,16
	j	.L4
.L3:
	lh	a5,-42(s0)
.L4:
	sh	a5,-42(s0)
	j	.L5
.L7:
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sraiw	a5,a5,1
	sw	a5,-36(s0)
.L5:
	lh	a5,-42(s0)
	sext.w	a5,a5
	lw	a4,-36(s0)
	and	a5,a5,a4
	sext.w	a5,a5
	bne	a5,zero,.L6
	lw	a5,-40(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L7
.L6:
	lh	a5,-42(s0)
	sext.w	a4,a5
	lw	a5,-40(s0)
	sext.w	a5,a5
	beq	a5,zero,.L8
	lw	a5,-40(s0)
	addiw	a5,a5,3
	sext.w	a5,a5
	j	.L9
.L8:
	li	a5,4
.L9:
	sraw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,15
	sw	a5,-28(s0)
	lw	a5,-40(s0)
	slliw	a5,a5,4
	sw	a5,-40(s0)
	lw	a5,-32(s0)
	slliw	a4,a5,24
	sraiw	a4,a4,24
	lw	a5,-40(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	or	a5,a4,a5
	slliw	a4,a5,24
	sraiw	a4,a4,24
	lw	a5,-28(s0)
	slliw	a5,a5,24
	sraiw	a5,a5,24
	or	a5,a4,a5
	slliw	a5,a5,24
	sraiw	a5,a5,24
	sb	a5,-43(s0)
	ld	a5,-56(s0)
	addi	a4,a5,1
	sd	a4,-56(s0)
	lbu	a4,-43(s0)
	xori	a4,a4,-43
	andi	a4,a4,0xff
	sb	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L2:
	ld	a4,-24(s0)
	ld	a5,-72(s0)
	bltu	a4,a5,.L10
	nop
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	encode, .-encode
	.align	1
	.globl	decode
	.type	decode, @function
decode:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sb	zero,-37(s0)
	sw	zero,-36(s0)
	sw	zero,-32(s0)
	sw	zero,-28(s0)
	sd	zero,-24(s0)
	j	.L12
.L18:
	ld	a5,-64(s0)
	addi	a4,a5,1
	sd	a4,-64(s0)
	lbu	a5,0(a5)
	sb	a5,-37(s0)
	lbu	a5,-37(s0)
	xori	a5,a5,-43
	sb	a5,-37(s0)
	lbu	a5,-37(s0)
	sext.w	a5,a5
	andi	a5,a5,128
	sw	a5,-32(s0)
	lbu	a5,-37(s0)
	sext.w	a5,a5
	sraiw	a5,a5,4
	sext.w	a5,a5
	andi	a5,a5,7
	sw	a5,-28(s0)
	lbu	a5,-37(s0)
	sext.w	a5,a5
	slliw	a5,a5,4
	sext.w	a5,a5
	andi	a5,a5,255
	sext.w	a5,a5
	ori	a5,a5,8
	sw	a5,-36(s0)
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L13
	li	a5,256
	j	.L14
.L13:
	li	a5,0
.L14:
	lw	a4,-36(s0)
	addw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-28(s0)
	sext.w	a4,a5
	bgt	a4,zero,.L15
	li	a5,1
.L15:
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a4,-36(s0)
	sllw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,zero,.L16
	lw	a5,-36(s0)
	slli	a5,a5,48
	srli	a5,a5,48
	negw	a5,a5
	slli	a5,a5,48
	srli	a5,a5,48
	slliw	a4,a5,16
	sraiw	a4,a4,16
	j	.L17
.L16:
	lw	a5,-36(s0)
	slliw	a4,a5,16
	sraiw	a4,a4,16
.L17:
	ld	a5,-56(s0)
	addi	a3,a5,2
	sd	a3,-56(s0)
	sh	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L12:
	ld	a4,-24(s0)
	ld	a5,-72(s0)
	bltu	a4,a5,.L18
	nop
	nop
	ld	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	decode, .-decode
	.align	1
	.type	test, @function
test:
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
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	ld	a2,-64(s0)
	ld	a1,-40(s0)
	ld	a0,-48(s0)
	call	encode
	sd	zero,-32(s0)
	j	.L20
.L22:
	ld	a4,-48(s0)
	ld	a5,-32(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lla	a4,r_coded
	ld	a5,-32(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L21
	li	a0,1
	call	libmin_fail@plt
.L21:
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L20:
	ld	a4,-32(s0)
	ld	a5,-64(s0)
	bltu	a4,a5,.L22
	ld	a2,-64(s0)
	ld	a1,-48(s0)
	ld	a0,-56(s0)
	call	decode
	sd	zero,-24(s0)
	j	.L23
.L25:
	ld	a5,-24(s0)
	slli	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lh	a3,0(a5)
	lla	a4,r_decoded
	ld	a5,-24(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	mv	a4,a3
	beq	a4,a5,.L24
	li	a0,1
	call	libmin_fail@plt
.L24:
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L23:
	ld	a4,-24(s0)
	ld	a5,-64(s0)
	bltu	a4,a5,.L25
	nop
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
	.size	test, .-test
	.section	.rodata
	.align	3
.LC0:
	.string	"inputs: "
	.align	3
.LC1:
	.string	"%d "
	.align	3
.LC2:
	.string	"\n"
	.align	3
.LC3:
	.string	"encode: "
	.align	3
.LC4:
	.string	"%u "
	.align	3
.LC5:
	.string	"decode: "
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-96(s0)
	sw	a5,-84(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a4,s0,-48
	addi	a5,s0,-32
	li	a3,8
	mv	a2,a4
	mv	a1,a5
	lla	a0,pcm
	call	test
	lla	a0,.LC0
	call	libmin_printf@plt
	sd	zero,-72(s0)
	j	.L27
.L28:
	lla	a4,pcm
	ld	a5,-72(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lh	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
	ld	a5,-72(s0)
	addi	a5,a5,1
	sd	a5,-72(s0)
.L27:
	ld	a4,-72(s0)
	li	a5,7
	bleu	a4,a5,.L28
	lla	a0,.LC2
	call	libmin_printf@plt
	lla	a0,.LC3
	call	libmin_printf@plt
	sd	zero,-64(s0)
	j	.L29
.L30:
	ld	a5,-64(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-16(a5)
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC4
	call	libmin_printf@plt
	ld	a5,-64(s0)
	addi	a5,a5,1
	sd	a5,-64(s0)
.L29:
	ld	a4,-64(s0)
	li	a5,7
	bleu	a4,a5,.L30
	lla	a0,.LC2
	call	libmin_printf@plt
	lla	a0,.LC5
	call	libmin_printf@plt
	sd	zero,-56(s0)
	j	.L31
.L32:
	ld	a5,-56(s0)
	slli	a5,a5,1
	addi	a5,a5,-16
	add	a5,a5,s0
	lh	a5,-32(a5)
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
	ld	a5,-56(s0)
	addi	a5,a5,1
	sd	a5,-56(s0)
.L31:
	ld	a4,-56(s0)
	li	a5,7
	bleu	a4,a5,.L32
	lla	a0,.LC2
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L34
	call	__stack_chk_fail@plt
.L34:
	mv	a0,a4
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
