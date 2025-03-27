	.file	"libmin_qsort.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	a_ctz_l, @function
a_ctz_l:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	neg	a4,a5
	ld	a5,-24(s0)
	and	a4,a4,a5
	li	a5,124510208
	addi	a5,a5,1577
	mul	a5,a4,a5
	srli	a5,a5,27
	lla	a4,debruijn32.0
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	a_ctz_l, .-a_ctz_l
	.align	1
	.type	pntz, @function
pntz:
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
	ld	a5,-40(s0)
	ld	a5,0(a5)
	addi	a5,a5,-1
	mv	a0,a5
	call	a_ctz_l
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	ld	a5,-40(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	mv	a0,a5
	call	a_ctz_l
	mv	a5,a0
	sext.w	a5,a5
	addiw	a5,a5,64
	sext.w	a5,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,64
	beq	a4,a5,.L5
.L4:
	lw	a5,-20(s0)
	j	.L6
.L5:
	li	a5,0
.L6:
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
	.size	pntz, .-pntz
	.align	1
	.type	cycle, @function
cycle:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
	sd	ra,328(sp)
	sd	s0,320(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,336
	.cfi_def_cfa 8, 0
	sd	a0,-312(s0)
	sd	a1,-320(s0)
	mv	a5,a2
	sw	a5,-324(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lw	a5,-324(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L16
	lw	a5,-324(s0)
	slli	a5,a5,3
	ld	a4,-320(s0)
	add	a5,a4,a5
	addi	a4,s0,-280
	sd	a4,0(a5)
	j	.L10
.L14:
	ld	a5,-312(s0)
	li	a4,256
	bleu	a5,a4,.L11
	li	a5,256
.L11:
	sd	a5,-288(s0)
	lw	a5,-324(s0)
	slli	a5,a5,3
	ld	a4,-320(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	ld	a5,-320(s0)
	ld	a5,0(a5)
	ld	a2,-288(s0)
	mv	a1,a5
	mv	a0,a4
	call	libmin_memcpy@plt
	sw	zero,-292(s0)
	j	.L12
.L13:
	lw	a5,-292(s0)
	slli	a5,a5,3
	ld	a4,-320(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-292(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	ld	a4,-320(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a2,-288(s0)
	mv	a1,a5
	mv	a0,a3
	call	libmin_memcpy@plt
	lw	a5,-292(s0)
	slli	a5,a5,3
	ld	a4,-320(s0)
	add	a5,a4,a5
	ld	a3,0(a5)
	lw	a5,-292(s0)
	slli	a5,a5,3
	ld	a4,-320(s0)
	add	a5,a4,a5
	ld	a4,-288(s0)
	add	a4,a3,a4
	sd	a4,0(a5)
	lw	a5,-292(s0)
	addiw	a5,a5,1
	sw	a5,-292(s0)
.L12:
	lw	a5,-292(s0)
	mv	a4,a5
	lw	a5,-324(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L13
	ld	a4,-312(s0)
	ld	a5,-288(s0)
	sub	a5,a4,a5
	sd	a5,-312(s0)
.L10:
	ld	a5,-312(s0)
	bne	a5,zero,.L14
	j	.L7
.L16:
	nop
.L7:
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L15
	call	__stack_chk_fail@plt
.L15:
	ld	ra,328(sp)
	.cfi_restore 1
	ld	s0,320(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 336
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	cycle, .-cycle
	.align	1
	.type	shl, @function
shl:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	li	a5,63
	bleu	a4,a5,.L18
	lw	a5,-28(s0)
	addiw	a5,a5,-64
	sext.w	a5,a5
	sw	a5,-28(s0)
	ld	a5,-24(s0)
	addi	a5,a5,8
	ld	a4,-24(s0)
	ld	a4,0(a4)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	sd	zero,0(a5)
.L18:
	ld	a5,-24(s0)
	addi	a5,a5,8
	ld	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,8
	lw	a3,-28(s0)
	sll	a4,a4,a3
	sd	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,8
	ld	a3,0(a5)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	lw	a4,-28(s0)
	li	a2,64
	subw	a4,a2,a4
	sext.w	a4,a4
	srl	a4,a5,a4
	ld	a5,-24(s0)
	addi	a5,a5,8
	or	a4,a3,a4
	sd	a4,0(a5)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	lw	a4,-28(s0)
	sll	a4,a5,a4
	ld	a5,-24(s0)
	sd	a4,0(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	shl, .-shl
	.align	1
	.type	shr, @function
shr:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	li	a5,63
	bleu	a4,a5,.L20
	lw	a5,-28(s0)
	addiw	a5,a5,-64
	sext.w	a5,a5
	sw	a5,-28(s0)
	ld	a5,-24(s0)
	ld	a4,8(a5)
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,8
	sd	zero,0(a5)
.L20:
	ld	a5,-24(s0)
	ld	a5,0(a5)
	lw	a4,-28(s0)
	srl	a4,a5,a4
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	lw	a3,-28(s0)
	li	a2,64
	subw	a3,a2,a3
	sext.w	a3,a3
	sll	a5,a5,a3
	or	a4,a4,a5
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,8
	ld	a4,0(a5)
	ld	a5,-24(s0)
	addi	a5,a5,8
	lw	a3,-28(s0)
	srl	a4,a4,a3
	sd	a4,0(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	shr, .-shr
	.align	1
	.type	sift, @function
sift:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-1008
	.cfi_def_cfa_offset 1008
	sd	ra,1000(sp)
	sd	s0,992(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1008
	.cfi_def_cfa 8, 0
	sd	a0,-968(s0)
	sd	a1,-976(s0)
	sd	a2,-984(s0)
	mv	a5,a3
	sd	a4,-1000(s0)
	sw	a5,-988(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,1
	sw	a5,-948(s0)
	ld	a5,-968(s0)
	sd	a5,-928(s0)
	j	.L22
.L27:
	ld	a5,-976(s0)
	neg	a5,a5
	ld	a4,-968(s0)
	add	a5,a4,a5
	sd	a5,-944(s0)
	ld	a5,-976(s0)
	neg	a4,a5
	lw	a5,-988(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	ld	a3,-1000(s0)
	add	a5,a3,a5
	ld	a5,0(a5)
	sub	a5,a4,a5
	ld	a4,-968(s0)
	add	a5,a4,a5
	sd	a5,-936(s0)
	ld	a4,-928(s0)
	ld	a5,-984(s0)
	ld	a1,-936(s0)
	mv	a0,a4
	jalr	a5
	mv	a5,a0
	blt	a5,zero,.L23
	ld	a4,-928(s0)
	ld	a5,-984(s0)
	ld	a1,-944(s0)
	mv	a0,a4
	jalr	a5
	mv	a5,a0
	bge	a5,zero,.L29
.L23:
	ld	a5,-984(s0)
	ld	a1,-944(s0)
	ld	a0,-936(s0)
	jalr	a5
	mv	a5,a0
	blt	a5,zero,.L25
	lw	a5,-948(s0)
	addiw	a4,a5,1
	sw	a4,-948(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a4,-936(s0)
	sd	a4,-912(a5)
	ld	a5,-936(s0)
	sd	a5,-968(s0)
	lw	a5,-988(s0)
	addiw	a5,a5,-1
	sw	a5,-988(s0)
	j	.L22
.L25:
	lw	a5,-948(s0)
	addiw	a4,a5,1
	sw	a4,-948(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a4,-944(s0)
	sd	a4,-912(a5)
	ld	a5,-944(s0)
	sd	a5,-968(s0)
	lw	a5,-988(s0)
	addiw	a5,a5,-2
	sw	a5,-988(s0)
.L22:
	lw	a5,-988(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L27
	j	.L24
.L29:
	nop
.L24:
	lw	a4,-948(s0)
	addi	a5,s0,-928
	mv	a2,a4
	mv	a1,a5
	ld	a0,-976(s0)
	call	cycle
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L28
	call	__stack_chk_fail@plt
.L28:
	ld	ra,1000(sp)
	.cfi_restore 1
	ld	s0,992(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1008
	addi	sp,sp,1008
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	sift, .-sift
	.align	1
	.type	trinkle, @function
trinkle:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-1024
	.cfi_def_cfa_offset 1024
	sd	ra,1016(sp)
	sd	s0,1008(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1024
	.cfi_def_cfa 8, 0
	sd	a0,-984(s0)
	sd	a1,-992(s0)
	sd	a2,-1000(s0)
	sd	a3,-1008(s0)
	mv	a3,a4
	mv	a4,a5
	sd	a6,-1024(s0)
	mv	a5,a3
	sw	a5,-1012(s0)
	mv	a5,a4
	sw	a5,-1016(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,1
	sw	a5,-976(s0)
	ld	a5,-1008(s0)
	ld	a5,0(a5)
	sd	a5,-944(s0)
	ld	a5,-1008(s0)
	ld	a5,8(a5)
	sd	a5,-936(s0)
	ld	a5,-984(s0)
	sd	a5,-928(s0)
	j	.L31
.L35:
	lw	a5,-1012(s0)
	slli	a5,a5,3
	ld	a4,-1024(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	neg	a5,a5
	ld	a4,-984(s0)
	add	a5,a4,a5
	sd	a5,-968(s0)
	ld	a4,-928(s0)
	ld	a5,-1000(s0)
	mv	a1,a4
	ld	a0,-968(s0)
	jalr	a5
	mv	a5,a0
	ble	a5,zero,.L38
	lw	a5,-1016(s0)
	sext.w	a5,a5
	bne	a5,zero,.L34
	lw	a5,-1012(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L34
	ld	a5,-992(s0)
	neg	a5,a5
	ld	a4,-984(s0)
	add	a5,a4,a5
	sd	a5,-960(s0)
	ld	a5,-992(s0)
	neg	a4,a5
	lw	a5,-1012(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	ld	a3,-1024(s0)
	add	a5,a3,a5
	ld	a5,0(a5)
	sub	a5,a4,a5
	ld	a4,-984(s0)
	add	a5,a4,a5
	sd	a5,-952(s0)
	ld	a5,-1000(s0)
	ld	a1,-968(s0)
	ld	a0,-960(s0)
	jalr	a5
	mv	a5,a0
	bge	a5,zero,.L33
	ld	a5,-1000(s0)
	ld	a1,-968(s0)
	ld	a0,-952(s0)
	jalr	a5
	mv	a5,a0
	bge	a5,zero,.L33
.L34:
	lw	a5,-976(s0)
	addiw	a4,a5,1
	sw	a4,-976(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a4,-968(s0)
	sd	a4,-912(a5)
	ld	a5,-968(s0)
	sd	a5,-984(s0)
	addi	a5,s0,-944
	mv	a0,a5
	call	pntz
	mv	a5,a0
	sw	a5,-972(s0)
	lw	a4,-972(s0)
	addi	a5,s0,-944
	mv	a1,a4
	mv	a0,a5
	call	shr
	lw	a5,-1012(s0)
	mv	a4,a5
	lw	a5,-972(s0)
	addw	a5,a4,a5
	sw	a5,-1012(s0)
	sw	zero,-1016(s0)
.L31:
	ld	a4,-944(s0)
	li	a5,1
	bne	a4,a5,.L35
	ld	a5,-936(s0)
	bne	a5,zero,.L35
	j	.L33
.L38:
	nop
.L33:
	lw	a5,-1016(s0)
	sext.w	a5,a5
	bne	a5,zero,.L39
	lw	a4,-976(s0)
	addi	a5,s0,-928
	mv	a2,a4
	mv	a1,a5
	ld	a0,-992(s0)
	call	cycle
	lw	a5,-1012(s0)
	ld	a4,-1024(s0)
	mv	a3,a5
	ld	a2,-1000(s0)
	ld	a1,-992(s0)
	ld	a0,-984(s0)
	call	sift
.L39:
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L37
	call	__stack_chk_fail@plt
.L37:
	ld	ra,1016(sp)
	.cfi_restore 1
	ld	s0,1008(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1024
	addi	sp,sp,1024
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	trinkle, .-trinkle
	.align	1
	.globl	libmin_qsort
	.type	libmin_qsort, @function
libmin_qsort:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-880
	.cfi_def_cfa_offset 880
	sd	ra,872(sp)
	sd	s0,864(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,880
	.cfi_def_cfa 8, 0
	sd	a0,-856(s0)
	sd	a1,-864(s0)
	sd	a2,-872(s0)
	sd	a3,-880(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a4,-872(s0)
	ld	a5,-864(s0)
	mul	a5,a4,a5
	sd	a5,-824(s0)
	li	a5,1
	sd	a5,-808(s0)
	sd	zero,-800(s0)
	li	a5,1
	sw	a5,-848(s0)
	ld	a5,-824(s0)
	beq	a5,zero,.L58
	ld	a5,-856(s0)
	sd	a5,-832(s0)
	ld	a4,-824(s0)
	ld	a5,-872(s0)
	sub	a5,a4,a5
	ld	a4,-832(s0)
	add	a5,a4,a5
	sd	a5,-816(s0)
	ld	a5,-872(s0)
	sd	a5,-784(s0)
	ld	a5,-784(s0)
	sd	a5,-792(s0)
	li	a5,2
	sd	a5,-840(s0)
	j	.L43
.L44:
	ld	a5,-840(s0)
	addi	a5,a5,1
	sd	a5,-840(s0)
.L43:
	ld	a5,-840(s0)
	addi	a5,a5,-2
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a4,-776(a5)
	ld	a5,-840(s0)
	addi	a5,a5,-1
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-776(a5)
	add	a4,a4,a5
	ld	a5,-872(s0)
	add	a4,a4,a5
	ld	a5,-840(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a4,-776(a5)
	ld	a5,-840(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-776(a5)
	ld	a4,-824(s0)
	bgtu	a4,a5,.L44
	j	.L45
.L51:
	ld	a5,-808(s0)
	andi	a4,a5,3
	li	a5,3
	bne	a4,a5,.L46
	addi	a4,s0,-792
	lw	a5,-848(s0)
	mv	a3,a5
	ld	a2,-880(s0)
	ld	a1,-872(s0)
	ld	a0,-832(s0)
	call	sift
	addi	a5,s0,-808
	li	a1,2
	mv	a0,a5
	call	shr
	lw	a5,-848(s0)
	addiw	a5,a5,2
	sw	a5,-848(s0)
	j	.L47
.L46:
	lw	a5,-848(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-776(a5)
	ld	a3,-816(s0)
	ld	a4,-832(s0)
	sub	a4,a3,a4
	bltu	a5,a4,.L48
	addi	a5,s0,-792
	lw	a4,-848(s0)
	addi	a3,s0,-808
	mv	a6,a5
	li	a5,0
	ld	a2,-880(s0)
	ld	a1,-872(s0)
	ld	a0,-832(s0)
	call	trinkle
	j	.L49
.L48:
	addi	a4,s0,-792
	lw	a5,-848(s0)
	mv	a3,a5
	ld	a2,-880(s0)
	ld	a1,-872(s0)
	ld	a0,-832(s0)
	call	sift
.L49:
	lw	a5,-848(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L50
	addi	a5,s0,-808
	li	a1,1
	mv	a0,a5
	call	shl
	sw	zero,-848(s0)
	j	.L47
.L50:
	lw	a5,-848(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	addi	a5,s0,-808
	mv	a1,a4
	mv	a0,a5
	call	shl
	li	a5,1
	sw	a5,-848(s0)
.L47:
	ld	a5,-808(s0)
	ori	a5,a5,1
	sd	a5,-808(s0)
	ld	a4,-832(s0)
	ld	a5,-872(s0)
	add	a5,a4,a5
	sd	a5,-832(s0)
.L45:
	ld	a4,-832(s0)
	ld	a5,-816(s0)
	bltu	a4,a5,.L51
	addi	a5,s0,-792
	lw	a4,-848(s0)
	addi	a3,s0,-808
	mv	a6,a5
	li	a5,0
	ld	a2,-880(s0)
	ld	a1,-872(s0)
	ld	a0,-832(s0)
	call	trinkle
	j	.L52
.L55:
	lw	a5,-848(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L53
	addi	a5,s0,-808
	mv	a0,a5
	call	pntz
	mv	a5,a0
	sw	a5,-844(s0)
	lw	a4,-844(s0)
	addi	a5,s0,-808
	mv	a1,a4
	mv	a0,a5
	call	shr
	lw	a5,-848(s0)
	mv	a4,a5
	lw	a5,-844(s0)
	addw	a5,a4,a5
	sw	a5,-848(s0)
	j	.L54
.L53:
	addi	a5,s0,-808
	li	a1,2
	mv	a0,a5
	call	shl
	lw	a5,-848(s0)
	addiw	a5,a5,-2
	sw	a5,-848(s0)
	ld	a5,-808(s0)
	xori	a5,a5,7
	sd	a5,-808(s0)
	addi	a5,s0,-808
	li	a1,1
	mv	a0,a5
	call	shr
	lw	a5,-848(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-776(a5)
	neg	a4,a5
	ld	a5,-872(s0)
	sub	a5,a4,a5
	ld	a4,-832(s0)
	add	a0,a4,a5
	lw	a5,-848(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	addi	a5,s0,-792
	addi	a3,s0,-808
	mv	a6,a5
	li	a5,1
	ld	a2,-880(s0)
	ld	a1,-872(s0)
	call	trinkle
	addi	a5,s0,-808
	li	a1,1
	mv	a0,a5
	call	shl
	ld	a5,-808(s0)
	ori	a5,a5,1
	sd	a5,-808(s0)
	ld	a5,-872(s0)
	neg	a5,a5
	ld	a4,-832(s0)
	add	a0,a4,a5
	addi	a5,s0,-792
	lw	a4,-848(s0)
	addi	a3,s0,-808
	mv	a6,a5
	li	a5,1
	ld	a2,-880(s0)
	ld	a1,-872(s0)
	call	trinkle
.L54:
	ld	a5,-872(s0)
	neg	a5,a5
	ld	a4,-832(s0)
	add	a5,a4,a5
	sd	a5,-832(s0)
.L52:
	lw	a5,-848(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L55
	ld	a4,-808(s0)
	li	a5,1
	bne	a4,a5,.L55
	ld	a5,-800(s0)
	bne	a5,zero,.L55
	j	.L40
.L58:
	nop
.L40:
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L57
	call	__stack_chk_fail@plt
.L57:
	ld	ra,872(sp)
	.cfi_restore 1
	ld	s0,864(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 880
	addi	sp,sp,880
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	libmin_qsort, .-libmin_qsort
	.section	.rodata
	.align	3
	.type	debruijn32.0, @object
	.size	debruijn32.0, 32
debruijn32.0:
	.string	""
	.ascii	"\001\027\002\035\030\023\003\036\033\031\013\024\b\004\r\037"
	.ascii	"\026\034\022\032\n\007\f\025\021\t\006\020\005\017\016"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
