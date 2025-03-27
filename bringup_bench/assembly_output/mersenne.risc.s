	.file	"mersenne.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	mt
	.comm	mt,2496,8
	.data
	.align	2
	.type	mti, @object
	.size	mti, 4
mti:
	.word	625
	.text
	.align	1
	.globl	sgenrand
	.type	sgenrand, @function
sgenrand:
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
	sw	zero,-20(s0)
	j	.L2
.L3:
	lw	a5,-36(s0)
	mv	a4,a5
	li	a5,-65536
	and	a5,a4,a5
	sext.w	a4,a5
	lla	a3,mt
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-36(s0)
	mv	a4,a5
	li	a5,69632
	addiw	a5,a5,-563
	mulw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,1
	sw	a5,-36(s0)
	lla	a4,mt
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-36(s0)
	srliw	a5,a5,16
	sext.w	a5,a5
	or	a5,a4,a5
	sext.w	a4,a5
	lla	a3,mt
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-36(s0)
	mv	a4,a5
	li	a5,69632
	addiw	a5,a5,-563
	mulw	a5,a4,a5
	sext.w	a5,a5
	addiw	a5,a5,1
	sw	a5,-36(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,623
	ble	a4,a5,.L3
	lla	a5,mti
	li	a4,624
	sw	a4,0(a5)
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	sgenrand, .-sgenrand
	.align	1
	.globl	lsgenrand
	.type	lsgenrand, @function
lsgenrand:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sw	zero,-20(s0)
	j	.L5
.L6:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lla	a3,mt
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L5:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,623
	ble	a4,a5,.L6
	lla	a5,mti
	li	a4,624
	sw	a4,0(a5)
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	lsgenrand, .-lsgenrand
	.align	1
	.globl	genrand
	.type	genrand, @function
genrand:
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
	lla	a5,mti
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,623
	ble	a4,a5,.L8
	lla	a5,mti
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,625
	bne	a4,a5,.L9
	li	a5,4096
	addi	a0,a5,261
	call	sgenrand
.L9:
	sw	zero,-24(s0)
	j	.L10
.L11:
	lla	a4,mt
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,mt
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,397
	sext.w	a5,a5
	lla	a4,mt
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	srliw	a5,a5,1
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-20(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	lla	a4,mag01.0
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a4,a5
	lla	a3,mt
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L10:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,226
	ble	a4,a5,.L11
	j	.L12
.L13:
	lla	a4,mt
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,mt
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a3
	or	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,-227
	sext.w	a5,a5
	lla	a4,mt
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	srliw	a5,a5,1
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-20(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	lla	a4,mag01.0
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a4,a5
	lla	a3,mt
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L12:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,622
	ble	a4,a5,.L13
	lla	a4,mt
	li	a5,4096
	add	a5,a4,a5
	lw	a5,-1604(a5)
	mv	a4,a5
	li	a5,-2147483648
	and	a5,a4,a5
	sext.w	a4,a5
	lla	a5,mt
	lw	a5,0(a5)
	mv	a3,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	and	a5,a3,a5
	sext.w	a5,a5
	or	a5,a4,a5
	sw	a5,-20(s0)
	lla	a5,mt
	lw	a4,1584(a5)
	lw	a5,-20(s0)
	srliw	a5,a5,1
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a3,a5
	lw	a5,-20(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	lla	a4,mag01.0
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	xor	a5,a4,a5
	sext.w	a4,a5
	lla	a3,mt
	li	a5,4096
	add	a5,a3,a5
	sw	a4,-1604(a5)
	lla	a5,mti
	sw	zero,0(a5)
.L8:
	lla	a5,mti
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	lla	a4,mti
	sw	a3,0(a4)
	lla	a4,mt
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,11
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slliw	a5,a5,7
	sext.w	a5,a5
	mv	a4,a5
	li	a5,-1658040320
	addi	a5,a5,1664
	and	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slliw	a5,a5,15
	sext.w	a5,a5
	mv	a4,a5
	li	a5,-272236544
	and	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	srliw	a5,a5,18
	sext.w	a5,a5
	lw	a4,-20(s0)
	xor	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
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
	.size	genrand, .-genrand
	.section	.rodata
	.align	3
.LC0:
	.string	"%10u "
	.align	3
.LC1:
	.string	"\n"
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
	li	a5,8192
	addi	a5,a5,1808
	sw	a5,-20(s0)
	li	a5,4096
	addi	a0,a5,261
	call	sgenrand
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	j	.L16
.L18:
	lw	a5,-28(s0)
	mv	a4,a5
	li	a5,100
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L17
	call	genrand
	mv	a5,a0
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	li	a5,5
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L17
	lla	a0,.LC1
	call	libmin_printf@plt
.L17:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L16:
	lw	a5,-28(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L18
	lla	a0,.LC1
	call	libmin_printf@plt
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
	.data
	.align	3
	.type	mag01.0, @object
	.size	mag01.0, 8
mag01.0:
	.word	0
	.word	-1727483681
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
