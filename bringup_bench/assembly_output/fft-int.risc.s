	.file	"fft-int.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	fix_fft
	.type	fix_fft, @function
fix_fft:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	sd	s1,104(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sd	a0,-104(s0)
	sd	a1,-112(s0)
	mv	a5,a2
	mv	a4,a3
	sw	a5,-116(s0)
	mv	a5,a4
	sw	a5,-120(s0)
	lw	a5,-116(s0)
	mv	a4,a5
	li	a5,1
	sllw	a5,a5,a4
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	sext.w	a4,a5
	li	a5,1024
	ble	a4,a5,.L2
	li	a5,-1
	j	.L3
.L2:
	sw	zero,-96(s0)
	lw	a5,-52(s0)
	addiw	a5,a5,-1
	sw	a5,-48(s0)
	sw	zero,-76(s0)
	li	a5,1
	sw	a5,-116(s0)
	j	.L4
.L8:
	lw	a5,-52(s0)
	sw	a5,-84(s0)
.L5:
	lw	a5,-84(s0)
	sraiw	a5,a5,1
	sw	a5,-84(s0)
	lw	a5,-96(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-48(s0)
	sext.w	a5,a5
	blt	a5,a4,.L5
	lw	a5,-84(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lw	a4,-96(s0)
	and	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-84(s0)
	addw	a5,a4,a5
	sw	a5,-96(s0)
	lw	a5,-96(s0)
	mv	a4,a5
	lw	a5,-116(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L27
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-40(s0)
	lw	a5,-96(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a4,a4,a5
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a3,-104(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-96(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a4,-112(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-36(s0)
	lw	a5,-96(s0)
	slli	a5,a5,2
	ld	a4,-112(s0)
	add	a4,a4,a5
	lw	a5,-116(s0)
	slli	a5,a5,2
	ld	a3,-112(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-96(s0)
	slli	a5,a5,2
	ld	a4,-112(s0)
	add	a5,a4,a5
	lw	a4,-36(s0)
	sw	a4,0(a5)
	j	.L7
.L27:
	nop
.L7:
	lw	a5,-116(s0)
	addiw	a5,a5,1
	sw	a5,-116(s0)
.L4:
	lw	a5,-116(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L8
	li	a5,1
	sw	a5,-84(s0)
	li	a5,9
	sw	a5,-80(s0)
	j	.L9
.L26:
	lw	a5,-120(s0)
	sext.w	a5,a5
	beq	a5,zero,.L10
	sw	zero,-72(s0)
	sw	zero,-92(s0)
	j	.L11
.L17:
	lw	a5,-92(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-88(s0)
	lw	a5,-88(s0)
	sext.w	a5,a5
	bge	a5,zero,.L12
	lw	a5,-88(s0)
	negw	a5,a5
	sw	a5,-88(s0)
.L12:
	lw	a5,-92(s0)
	slli	a5,a5,2
	ld	a4,-112(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-116(s0)
	lw	a5,-116(s0)
	sext.w	a5,a5
	bge	a5,zero,.L13
	lw	a5,-116(s0)
	negw	a5,a5
	sw	a5,-116(s0)
.L13:
	lw	a5,-88(s0)
	sext.w	a4,a5
	li	a5,16384
	bge	a4,a5,.L14
	lw	a5,-116(s0)
	sext.w	a4,a5
	li	a5,16384
	blt	a4,a5,.L15
.L14:
	li	a5,1
	sw	a5,-72(s0)
	j	.L16
.L15:
	lw	a5,-92(s0)
	addiw	a5,a5,1
	sw	a5,-92(s0)
.L11:
	lw	a5,-92(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L17
.L16:
	lw	a5,-72(s0)
	sext.w	a5,a5
	beq	a5,zero,.L18
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sw	a5,-76(s0)
	j	.L18
.L10:
	li	a5,1
	sw	a5,-72(s0)
.L18:
	lw	a5,-84(s0)
	slliw	a5,a5,1
	sw	a5,-44(s0)
	sw	zero,-116(s0)
	j	.L19
.L25:
	lw	a5,-80(s0)
	lw	a4,-116(s0)
	sllw	a5,a4,a5
	sw	a5,-88(s0)
	lw	a5,-88(s0)
	addiw	a5,a5,256
	sext.w	a5,a5
	lla	a4,Sinewave
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-60(s0)
	lla	a4,Sinewave
	lw	a5,-88(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	negw	a5,a5
	sw	a5,-56(s0)
	lw	a5,-120(s0)
	sext.w	a5,a5
	beq	a5,zero,.L20
	lw	a5,-56(s0)
	negw	a5,a5
	sw	a5,-56(s0)
.L20:
	lw	a5,-72(s0)
	sext.w	a5,a5
	beq	a5,zero,.L21
	lw	a5,-60(s0)
	sraiw	a5,a5,1
	sw	a5,-60(s0)
	lw	a5,-56(s0)
	sraiw	a5,a5,1
	sw	a5,-56(s0)
.L21:
	lw	a5,-116(s0)
	sw	a5,-92(s0)
	j	.L22
.L24:
	lw	a5,-92(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	addw	a5,a4,a5
	sw	a5,-88(s0)
	lw	a5,-88(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	fix_mpy
	mv	a5,a0
	mv	s1,a5
	lw	a5,-88(s0)
	slli	a5,a5,2
	ld	a4,-112(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	fix_mpy
	mv	a5,a0
	subw	a5,s1,a5
	sw	a5,-40(s0)
	lw	a5,-88(s0)
	slli	a5,a5,2
	ld	a4,-112(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	fix_mpy
	mv	a5,a0
	mv	s1,a5
	lw	a5,-88(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	fix_mpy
	mv	a5,a0
	addw	a5,s1,a5
	sw	a5,-36(s0)
	lw	a5,-92(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-68(s0)
	lw	a5,-92(s0)
	slli	a5,a5,2
	ld	a4,-112(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-64(s0)
	lw	a5,-72(s0)
	sext.w	a5,a5
	beq	a5,zero,.L23
	lw	a5,-68(s0)
	sraiw	a5,a5,1
	sw	a5,-68(s0)
	lw	a5,-64(s0)
	sraiw	a5,a5,1
	sw	a5,-64(s0)
.L23:
	lw	a5,-88(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a4,-68(s0)
	mv	a3,a4
	lw	a4,-40(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-88(s0)
	slli	a5,a5,2
	ld	a4,-112(s0)
	add	a5,a4,a5
	lw	a4,-64(s0)
	mv	a3,a4
	lw	a4,-36(s0)
	subw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-92(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a5,a4,a5
	lw	a4,-68(s0)
	mv	a3,a4
	lw	a4,-40(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-92(s0)
	slli	a5,a5,2
	ld	a4,-112(s0)
	add	a5,a4,a5
	lw	a4,-64(s0)
	mv	a3,a4
	lw	a4,-36(s0)
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-92(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	addw	a5,a4,a5
	sw	a5,-92(s0)
.L22:
	lw	a5,-92(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L24
	lw	a5,-116(s0)
	addiw	a5,a5,1
	sw	a5,-116(s0)
.L19:
	lw	a5,-116(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L25
	lw	a5,-80(s0)
	addiw	a5,a5,-1
	sw	a5,-80(s0)
	lw	a5,-44(s0)
	sw	a5,-84(s0)
.L9:
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L26
	lw	a5,-76(s0)
.L3:
	mv	a0,a5
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	ld	s1,104(sp)
	.cfi_restore 9
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	fix_fft, .-fix_fft
	.align	1
	.globl	window
	.type	window, @function
window:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	li	a5,1024
	lw	a4,-44(s0)
	divw	a5,a5,a4
	sw	a5,-20(s0)
	lw	a5,-44(s0)
	sraiw	a5,a5,1
	sw	a5,-44(s0)
	sw	zero,-28(s0)
	li	a5,256
	sw	a5,-24(s0)
	j	.L29
.L30:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a3,Sinewave
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	sraiw	a5,a5,1
	sext.w	a5,a5
	li	a3,16384
	subw	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	sraiw	a4,a4,15
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
.L29:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L30
	lw	a5,-44(s0)
	slliw	a5,a5,1
	sw	a5,-44(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	subw	a5,a4,a5
	sw	a5,-24(s0)
	j	.L31
.L32:
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a3,Sinewave
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	sraiw	a5,a5,1
	sext.w	a5,a5
	li	a3,16384
	subw	a5,a3,a5
	sext.w	a5,a5
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	sraiw	a4,a4,15
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	subw	a5,a4,a5
	sw	a5,-24(s0)
.L31:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L32
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	window, .-window
	.align	1
	.globl	fix_loud
	.type	fix_loud, @function
fix_loud:
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
	mv	a5,a3
	sw	a5,-60(s0)
	mv	a5,a4
	sw	a5,-64(s0)
	sw	zero,-20(s0)
	lw	a5,-64(s0)
	sext.w	a5,a5
	ble	a5,zero,.L34
	li	a5,10
	sw	a5,-20(s0)
.L34:
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,1
	addw	a5,a5,a4
	slliw	a5,a5,1
	sw	a5,-64(s0)
	sw	zero,-24(s0)
	j	.L35
.L37:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	db_from_ampl
	mv	a5,a0
	mv	a3,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-64(s0)
	addw	a4,a4,a3
	sext.w	a4,a4
	sw	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,a4,.L36
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L36:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L35:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L37
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
	.size	fix_loud, .-fix_loud
	.align	1
	.globl	db_from_ampl
	.type	db_from_ampl, @function
db_from_ampl:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lla	a5,loud2.0
	lw	a5,0(a5)
	bne	a5,zero,.L39
	lla	a5,Loudampl
	lw	a4,0(a5)
	lla	a5,Loudampl
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,loud2.0
	sw	a4,0(a5)
	li	a5,1
	sw	a5,-24(s0)
	j	.L40
.L41:
	lla	a4,Loudampl
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a3,Loudampl
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sw	a5,-20(s0)
	lla	a4,loud2.0
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a4,loud2.0
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-20(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-24(s0)
	addiw	a4,a4,-1
	sext.w	a2,a4
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lla	a3,loud2.0
	slli	a5,a2,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L40:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L41
.L39:
	lw	a5,-36(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-40(s0)
	mulw	a5,a5,a5
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,-20(s0)
	sw	zero,-24(s0)
	j	.L42
.L45:
	lla	a4,loud2.0
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,a4,.L47
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L42:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L45
	j	.L44
.L47:
	nop
.L44:
	lw	a5,-24(s0)
	negw	a5,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	db_from_ampl, .-db_from_ampl
	.align	1
	.globl	fix_mpy
	.type	fix_mpy, @function
fix_mpy:
.LFB7:
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
	mulw	a5,a4,a5
	sext.w	a5,a5
	sraiw	a5,a5,15
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	fix_mpy, .-fix_mpy
	.align	1
	.globl	iscale
	.type	iscale, @function
iscale:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a3,a1
	mv	a4,a2
	sw	a5,-20(s0)
	mv	a5,a3
	sw	a5,-24(s0)
	mv	a5,a4
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-28(s0)
	divw	a5,a5,a4
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	iscale, .-iscale
	.globl	Sinewave
	.data
	.align	3
	.type	Sinewave, @object
	.size	Sinewave, 4096
Sinewave:
	.word	0
	.word	201
	.word	402
	.word	603
	.word	804
	.word	1005
	.word	1206
	.word	1406
	.word	1607
	.word	1808
	.word	2009
	.word	2209
	.word	2410
	.word	2610
	.word	2811
	.word	3011
	.word	3211
	.word	3411
	.word	3611
	.word	3811
	.word	4011
	.word	4210
	.word	4409
	.word	4608
	.word	4807
	.word	5006
	.word	5205
	.word	5403
	.word	5601
	.word	5799
	.word	5997
	.word	6195
	.word	6392
	.word	6589
	.word	6786
	.word	6982
	.word	7179
	.word	7375
	.word	7571
	.word	7766
	.word	7961
	.word	8156
	.word	8351
	.word	8545
	.word	8739
	.word	8932
	.word	9126
	.word	9319
	.word	9511
	.word	9703
	.word	9895
	.word	10087
	.word	10278
	.word	10469
	.word	10659
	.word	10849
	.word	11038
	.word	11227
	.word	11416
	.word	11604
	.word	11792
	.word	11980
	.word	12166
	.word	12353
	.word	12539
	.word	12724
	.word	12909
	.word	13094
	.word	13278
	.word	13462
	.word	13645
	.word	13827
	.word	14009
	.word	14191
	.word	14372
	.word	14552
	.word	14732
	.word	14911
	.word	15090
	.word	15268
	.word	15446
	.word	15623
	.word	15799
	.word	15975
	.word	16150
	.word	16325
	.word	16499
	.word	16672
	.word	16845
	.word	17017
	.word	17189
	.word	17360
	.word	17530
	.word	17699
	.word	17868
	.word	18036
	.word	18204
	.word	18371
	.word	18537
	.word	18702
	.word	18867
	.word	19031
	.word	19194
	.word	19357
	.word	19519
	.word	19680
	.word	19840
	.word	20000
	.word	20159
	.word	20317
	.word	20474
	.word	20631
	.word	20787
	.word	20942
	.word	21096
	.word	21249
	.word	21402
	.word	21554
	.word	21705
	.word	21855
	.word	22004
	.word	22153
	.word	22301
	.word	22448
	.word	22594
	.word	22739
	.word	22883
	.word	23027
	.word	23169
	.word	23311
	.word	23452
	.word	23592
	.word	23731
	.word	23869
	.word	24006
	.word	24143
	.word	24278
	.word	24413
	.word	24546
	.word	24679
	.word	24811
	.word	24942
	.word	25072
	.word	25201
	.word	25329
	.word	25456
	.word	25582
	.word	25707
	.word	25831
	.word	25954
	.word	26077
	.word	26198
	.word	26318
	.word	26437
	.word	26556
	.word	26673
	.word	26789
	.word	26905
	.word	27019
	.word	27132
	.word	27244
	.word	27355
	.word	27466
	.word	27575
	.word	27683
	.word	27790
	.word	27896
	.word	28001
	.word	28105
	.word	28208
	.word	28309
	.word	28410
	.word	28510
	.word	28608
	.word	28706
	.word	28802
	.word	28897
	.word	28992
	.word	29085
	.word	29177
	.word	29268
	.word	29358
	.word	29446
	.word	29534
	.word	29621
	.word	29706
	.word	29790
	.word	29873
	.word	29955
	.word	30036
	.word	30116
	.word	30195
	.word	30272
	.word	30349
	.word	30424
	.word	30498
	.word	30571
	.word	30643
	.word	30713
	.word	30783
	.word	30851
	.word	30918
	.word	30984
	.word	31049
	.word	31113
	.word	31175
	.word	31236
	.word	31297
	.word	31356
	.word	31413
	.word	31470
	.word	31525
	.word	31580
	.word	31633
	.word	31684
	.word	31735
	.word	31785
	.word	31833
	.word	31880
	.word	31926
	.word	31970
	.word	32014
	.word	32056
	.word	32097
	.word	32137
	.word	32176
	.word	32213
	.word	32249
	.word	32284
	.word	32318
	.word	32350
	.word	32382
	.word	32412
	.word	32441
	.word	32468
	.word	32495
	.word	32520
	.word	32544
	.word	32567
	.word	32588
	.word	32609
	.word	32628
	.word	32646
	.word	32662
	.word	32678
	.word	32692
	.word	32705
	.word	32717
	.word	32727
	.word	32736
	.word	32744
	.word	32751
	.word	32757
	.word	32761
	.word	32764
	.word	32766
	.word	32767
	.word	32766
	.word	32764
	.word	32761
	.word	32757
	.word	32751
	.word	32744
	.word	32736
	.word	32727
	.word	32717
	.word	32705
	.word	32692
	.word	32678
	.word	32662
	.word	32646
	.word	32628
	.word	32609
	.word	32588
	.word	32567
	.word	32544
	.word	32520
	.word	32495
	.word	32468
	.word	32441
	.word	32412
	.word	32382
	.word	32350
	.word	32318
	.word	32284
	.word	32249
	.word	32213
	.word	32176
	.word	32137
	.word	32097
	.word	32056
	.word	32014
	.word	31970
	.word	31926
	.word	31880
	.word	31833
	.word	31785
	.word	31735
	.word	31684
	.word	31633
	.word	31580
	.word	31525
	.word	31470
	.word	31413
	.word	31356
	.word	31297
	.word	31236
	.word	31175
	.word	31113
	.word	31049
	.word	30984
	.word	30918
	.word	30851
	.word	30783
	.word	30713
	.word	30643
	.word	30571
	.word	30498
	.word	30424
	.word	30349
	.word	30272
	.word	30195
	.word	30116
	.word	30036
	.word	29955
	.word	29873
	.word	29790
	.word	29706
	.word	29621
	.word	29534
	.word	29446
	.word	29358
	.word	29268
	.word	29177
	.word	29085
	.word	28992
	.word	28897
	.word	28802
	.word	28706
	.word	28608
	.word	28510
	.word	28410
	.word	28309
	.word	28208
	.word	28105
	.word	28001
	.word	27896
	.word	27790
	.word	27683
	.word	27575
	.word	27466
	.word	27355
	.word	27244
	.word	27132
	.word	27019
	.word	26905
	.word	26789
	.word	26673
	.word	26556
	.word	26437
	.word	26318
	.word	26198
	.word	26077
	.word	25954
	.word	25831
	.word	25707
	.word	25582
	.word	25456
	.word	25329
	.word	25201
	.word	25072
	.word	24942
	.word	24811
	.word	24679
	.word	24546
	.word	24413
	.word	24278
	.word	24143
	.word	24006
	.word	23869
	.word	23731
	.word	23592
	.word	23452
	.word	23311
	.word	23169
	.word	23027
	.word	22883
	.word	22739
	.word	22594
	.word	22448
	.word	22301
	.word	22153
	.word	22004
	.word	21855
	.word	21705
	.word	21554
	.word	21402
	.word	21249
	.word	21096
	.word	20942
	.word	20787
	.word	20631
	.word	20474
	.word	20317
	.word	20159
	.word	20000
	.word	19840
	.word	19680
	.word	19519
	.word	19357
	.word	19194
	.word	19031
	.word	18867
	.word	18702
	.word	18537
	.word	18371
	.word	18204
	.word	18036
	.word	17868
	.word	17699
	.word	17530
	.word	17360
	.word	17189
	.word	17017
	.word	16845
	.word	16672
	.word	16499
	.word	16325
	.word	16150
	.word	15975
	.word	15799
	.word	15623
	.word	15446
	.word	15268
	.word	15090
	.word	14911
	.word	14732
	.word	14552
	.word	14372
	.word	14191
	.word	14009
	.word	13827
	.word	13645
	.word	13462
	.word	13278
	.word	13094
	.word	12909
	.word	12724
	.word	12539
	.word	12353
	.word	12166
	.word	11980
	.word	11792
	.word	11604
	.word	11416
	.word	11227
	.word	11038
	.word	10849
	.word	10659
	.word	10469
	.word	10278
	.word	10087
	.word	9895
	.word	9703
	.word	9511
	.word	9319
	.word	9126
	.word	8932
	.word	8739
	.word	8545
	.word	8351
	.word	8156
	.word	7961
	.word	7766
	.word	7571
	.word	7375
	.word	7179
	.word	6982
	.word	6786
	.word	6589
	.word	6392
	.word	6195
	.word	5997
	.word	5799
	.word	5601
	.word	5403
	.word	5205
	.word	5006
	.word	4807
	.word	4608
	.word	4409
	.word	4210
	.word	4011
	.word	3811
	.word	3611
	.word	3411
	.word	3211
	.word	3011
	.word	2811
	.word	2610
	.word	2410
	.word	2209
	.word	2009
	.word	1808
	.word	1607
	.word	1406
	.word	1206
	.word	1005
	.word	804
	.word	603
	.word	402
	.word	201
	.word	0
	.word	-201
	.word	-402
	.word	-603
	.word	-804
	.word	-1005
	.word	-1206
	.word	-1406
	.word	-1607
	.word	-1808
	.word	-2009
	.word	-2209
	.word	-2410
	.word	-2610
	.word	-2811
	.word	-3011
	.word	-3211
	.word	-3411
	.word	-3611
	.word	-3811
	.word	-4011
	.word	-4210
	.word	-4409
	.word	-4608
	.word	-4807
	.word	-5006
	.word	-5205
	.word	-5403
	.word	-5601
	.word	-5799
	.word	-5997
	.word	-6195
	.word	-6392
	.word	-6589
	.word	-6786
	.word	-6982
	.word	-7179
	.word	-7375
	.word	-7571
	.word	-7766
	.word	-7961
	.word	-8156
	.word	-8351
	.word	-8545
	.word	-8739
	.word	-8932
	.word	-9126
	.word	-9319
	.word	-9511
	.word	-9703
	.word	-9895
	.word	-10087
	.word	-10278
	.word	-10469
	.word	-10659
	.word	-10849
	.word	-11038
	.word	-11227
	.word	-11416
	.word	-11604
	.word	-11792
	.word	-11980
	.word	-12166
	.word	-12353
	.word	-12539
	.word	-12724
	.word	-12909
	.word	-13094
	.word	-13278
	.word	-13462
	.word	-13645
	.word	-13827
	.word	-14009
	.word	-14191
	.word	-14372
	.word	-14552
	.word	-14732
	.word	-14911
	.word	-15090
	.word	-15268
	.word	-15446
	.word	-15623
	.word	-15799
	.word	-15975
	.word	-16150
	.word	-16325
	.word	-16499
	.word	-16672
	.word	-16845
	.word	-17017
	.word	-17189
	.word	-17360
	.word	-17530
	.word	-17699
	.word	-17868
	.word	-18036
	.word	-18204
	.word	-18371
	.word	-18537
	.word	-18702
	.word	-18867
	.word	-19031
	.word	-19194
	.word	-19357
	.word	-19519
	.word	-19680
	.word	-19840
	.word	-20000
	.word	-20159
	.word	-20317
	.word	-20474
	.word	-20631
	.word	-20787
	.word	-20942
	.word	-21096
	.word	-21249
	.word	-21402
	.word	-21554
	.word	-21705
	.word	-21855
	.word	-22004
	.word	-22153
	.word	-22301
	.word	-22448
	.word	-22594
	.word	-22739
	.word	-22883
	.word	-23027
	.word	-23169
	.word	-23311
	.word	-23452
	.word	-23592
	.word	-23731
	.word	-23869
	.word	-24006
	.word	-24143
	.word	-24278
	.word	-24413
	.word	-24546
	.word	-24679
	.word	-24811
	.word	-24942
	.word	-25072
	.word	-25201
	.word	-25329
	.word	-25456
	.word	-25582
	.word	-25707
	.word	-25831
	.word	-25954
	.word	-26077
	.word	-26198
	.word	-26318
	.word	-26437
	.word	-26556
	.word	-26673
	.word	-26789
	.word	-26905
	.word	-27019
	.word	-27132
	.word	-27244
	.word	-27355
	.word	-27466
	.word	-27575
	.word	-27683
	.word	-27790
	.word	-27896
	.word	-28001
	.word	-28105
	.word	-28208
	.word	-28309
	.word	-28410
	.word	-28510
	.word	-28608
	.word	-28706
	.word	-28802
	.word	-28897
	.word	-28992
	.word	-29085
	.word	-29177
	.word	-29268
	.word	-29358
	.word	-29446
	.word	-29534
	.word	-29621
	.word	-29706
	.word	-29790
	.word	-29873
	.word	-29955
	.word	-30036
	.word	-30116
	.word	-30195
	.word	-30272
	.word	-30349
	.word	-30424
	.word	-30498
	.word	-30571
	.word	-30643
	.word	-30713
	.word	-30783
	.word	-30851
	.word	-30918
	.word	-30984
	.word	-31049
	.word	-31113
	.word	-31175
	.word	-31236
	.word	-31297
	.word	-31356
	.word	-31413
	.word	-31470
	.word	-31525
	.word	-31580
	.word	-31633
	.word	-31684
	.word	-31735
	.word	-31785
	.word	-31833
	.word	-31880
	.word	-31926
	.word	-31970
	.word	-32014
	.word	-32056
	.word	-32097
	.word	-32137
	.word	-32176
	.word	-32213
	.word	-32249
	.word	-32284
	.word	-32318
	.word	-32350
	.word	-32382
	.word	-32412
	.word	-32441
	.word	-32468
	.word	-32495
	.word	-32520
	.word	-32544
	.word	-32567
	.word	-32588
	.word	-32609
	.word	-32628
	.word	-32646
	.word	-32662
	.word	-32678
	.word	-32692
	.word	-32705
	.word	-32717
	.word	-32727
	.word	-32736
	.word	-32744
	.word	-32751
	.word	-32757
	.word	-32761
	.word	-32764
	.word	-32766
	.word	-32767
	.word	-32766
	.word	-32764
	.word	-32761
	.word	-32757
	.word	-32751
	.word	-32744
	.word	-32736
	.word	-32727
	.word	-32717
	.word	-32705
	.word	-32692
	.word	-32678
	.word	-32662
	.word	-32646
	.word	-32628
	.word	-32609
	.word	-32588
	.word	-32567
	.word	-32544
	.word	-32520
	.word	-32495
	.word	-32468
	.word	-32441
	.word	-32412
	.word	-32382
	.word	-32350
	.word	-32318
	.word	-32284
	.word	-32249
	.word	-32213
	.word	-32176
	.word	-32137
	.word	-32097
	.word	-32056
	.word	-32014
	.word	-31970
	.word	-31926
	.word	-31880
	.word	-31833
	.word	-31785
	.word	-31735
	.word	-31684
	.word	-31633
	.word	-31580
	.word	-31525
	.word	-31470
	.word	-31413
	.word	-31356
	.word	-31297
	.word	-31236
	.word	-31175
	.word	-31113
	.word	-31049
	.word	-30984
	.word	-30918
	.word	-30851
	.word	-30783
	.word	-30713
	.word	-30643
	.word	-30571
	.word	-30498
	.word	-30424
	.word	-30349
	.word	-30272
	.word	-30195
	.word	-30116
	.word	-30036
	.word	-29955
	.word	-29873
	.word	-29790
	.word	-29706
	.word	-29621
	.word	-29534
	.word	-29446
	.word	-29358
	.word	-29268
	.word	-29177
	.word	-29085
	.word	-28992
	.word	-28897
	.word	-28802
	.word	-28706
	.word	-28608
	.word	-28510
	.word	-28410
	.word	-28309
	.word	-28208
	.word	-28105
	.word	-28001
	.word	-27896
	.word	-27790
	.word	-27683
	.word	-27575
	.word	-27466
	.word	-27355
	.word	-27244
	.word	-27132
	.word	-27019
	.word	-26905
	.word	-26789
	.word	-26673
	.word	-26556
	.word	-26437
	.word	-26318
	.word	-26198
	.word	-26077
	.word	-25954
	.word	-25831
	.word	-25707
	.word	-25582
	.word	-25456
	.word	-25329
	.word	-25201
	.word	-25072
	.word	-24942
	.word	-24811
	.word	-24679
	.word	-24546
	.word	-24413
	.word	-24278
	.word	-24143
	.word	-24006
	.word	-23869
	.word	-23731
	.word	-23592
	.word	-23452
	.word	-23311
	.word	-23169
	.word	-23027
	.word	-22883
	.word	-22739
	.word	-22594
	.word	-22448
	.word	-22301
	.word	-22153
	.word	-22004
	.word	-21855
	.word	-21705
	.word	-21554
	.word	-21402
	.word	-21249
	.word	-21096
	.word	-20942
	.word	-20787
	.word	-20631
	.word	-20474
	.word	-20317
	.word	-20159
	.word	-20000
	.word	-19840
	.word	-19680
	.word	-19519
	.word	-19357
	.word	-19194
	.word	-19031
	.word	-18867
	.word	-18702
	.word	-18537
	.word	-18371
	.word	-18204
	.word	-18036
	.word	-17868
	.word	-17699
	.word	-17530
	.word	-17360
	.word	-17189
	.word	-17017
	.word	-16845
	.word	-16672
	.word	-16499
	.word	-16325
	.word	-16150
	.word	-15975
	.word	-15799
	.word	-15623
	.word	-15446
	.word	-15268
	.word	-15090
	.word	-14911
	.word	-14732
	.word	-14552
	.word	-14372
	.word	-14191
	.word	-14009
	.word	-13827
	.word	-13645
	.word	-13462
	.word	-13278
	.word	-13094
	.word	-12909
	.word	-12724
	.word	-12539
	.word	-12353
	.word	-12166
	.word	-11980
	.word	-11792
	.word	-11604
	.word	-11416
	.word	-11227
	.word	-11038
	.word	-10849
	.word	-10659
	.word	-10469
	.word	-10278
	.word	-10087
	.word	-9895
	.word	-9703
	.word	-9511
	.word	-9319
	.word	-9126
	.word	-8932
	.word	-8739
	.word	-8545
	.word	-8351
	.word	-8156
	.word	-7961
	.word	-7766
	.word	-7571
	.word	-7375
	.word	-7179
	.word	-6982
	.word	-6786
	.word	-6589
	.word	-6392
	.word	-6195
	.word	-5997
	.word	-5799
	.word	-5601
	.word	-5403
	.word	-5205
	.word	-5006
	.word	-4807
	.word	-4608
	.word	-4409
	.word	-4210
	.word	-4011
	.word	-3811
	.word	-3611
	.word	-3411
	.word	-3211
	.word	-3011
	.word	-2811
	.word	-2610
	.word	-2410
	.word	-2209
	.word	-2009
	.word	-1808
	.word	-1607
	.word	-1406
	.word	-1206
	.word	-1005
	.word	-804
	.word	-603
	.word	-402
	.word	-201
	.globl	Loudampl
	.align	3
	.type	Loudampl, @object
	.size	Loudampl, 400
Loudampl:
	.word	32767
	.word	29203
	.word	26027
	.word	23197
	.word	20674
	.word	18426
	.word	16422
	.word	14636
	.word	13044
	.word	11626
	.word	10361
	.word	9234
	.word	8230
	.word	7335
	.word	6537
	.word	5826
	.word	5193
	.word	4628
	.word	4125
	.word	3676
	.word	3276
	.word	2920
	.word	2602
	.word	2319
	.word	2067
	.word	1842
	.word	1642
	.word	1463
	.word	1304
	.word	1162
	.word	1036
	.word	923
	.word	823
	.word	733
	.word	653
	.word	582
	.word	519
	.word	462
	.word	412
	.word	367
	.word	327
	.word	292
	.word	260
	.word	231
	.word	206
	.word	184
	.word	164
	.word	146
	.word	130
	.word	116
	.word	103
	.word	92
	.word	82
	.word	73
	.word	65
	.word	58
	.word	51
	.word	46
	.word	41
	.word	36
	.word	32
	.word	29
	.word	26
	.word	23
	.word	20
	.word	18
	.word	16
	.word	14
	.word	13
	.word	11
	.word	10
	.word	9
	.word	8
	.word	7
	.word	6
	.word	5
	.word	5
	.word	4
	.word	4
	.word	3
	.word	3
	.word	2
	.word	2
	.word	2
	.word	2
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	3
.LC3:
	.string	"%d: %d, %d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	addi	sp,sp,-2032
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,2036(a5)
	j	.L53
.L54:
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	slliw	a5,a5,1
	sext.w	a5,a5
	fcvt.d.w	fa4,a5
	lla	a5,.LC0
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	lla	a5,.LC1
	fld	fa5,0(a5)
	fdiv.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_cos@plt
	fmv.d	fa4,fa0
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fcvt.w.d a5,fa5,rtz
	sext.w	a4,a5
	li	a5,-4096
	addi	a5,a5,-16
	add	a3,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,2040(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,-1032(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a4,2036(a4)
	addiw	a4,a4,1
	sw	a4,2036(a5)
.L53:
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	sext.w	a4,a5
	li	a5,255
	ble	a4,a5,.L54
	addi	a4,s0,-1048
	li	a5,-4096
	addi	a5,a5,2040
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a3,0
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	fix_fft
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,2036(a5)
	j	.L55
.L56:
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,2040(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a3,-1032(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a4,2036(a4)
	addiw	a4,a4,1
	sw	a4,2036(a5)
.L55:
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	sext.w	a4,a5
	li	a5,255
	ble	a4,a5,.L56
	addi	a4,s0,-1048
	li	a5,-4096
	addi	a5,a5,2040
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a3,1
	li	a2,8
	mv	a1,a4
	mv	a0,a5
	call	fix_fft
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	zero,2036(a5)
	j	.L57
.L58:
	li	a5,-4096
	addi	a5,a5,-16
	add	a4,a5,s0
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,2040(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a3,-1032(a5)
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-4096
	addi	a4,a4,-16
	add	a4,a4,s0
	lw	a4,2036(a4)
	addiw	a4,a4,1
	sw	a4,2036(a5)
.L57:
	li	a5,-4096
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,2036(a5)
	sext.w	a4,a5
	li	a5,255
	ble	a4,a5,.L58
	call	libmin_success@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L60
	call	__stack_chk_fail@plt
.L60:
	mv	a0,a4
	addi	sp,sp,2032
	.cfi_def_cfa 2, 48
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.local	loud2.0
	.comm	loud2.0,400,8
	.section	.rodata
	.align	3
.LC0:
	.word	1413551940
	.word	1074340347
	.align	3
.LC1:
	.word	0
	.word	1081081856
	.align	3
.LC2:
	.word	0
	.word	1083129856
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
