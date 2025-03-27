	.file	"totient.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	my_gcd, @function
my_gcd:
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
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	beq	a5,zero,.L2
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L3
.L2:
	li	a5,-1
	j	.L4
.L3:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,zero,.L5
	lw	a5,-36(s0)
	negw	a5,a5
	sw	a5,-36(s0)
.L5:
	lw	a5,-40(s0)
	sext.w	a5,a5
	bge	a5,zero,.L6
	lw	a5,-40(s0)
	negw	a5,a5
	sw	a5,-40(s0)
.L6:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L7
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	lw	a5,-36(s0)
	sw	a5,-40(s0)
	lw	a5,-28(s0)
	sw	a5,-36(s0)
.L7:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	divw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	subw	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L8
	lw	a5,-36(s0)
	j	.L4
.L8:
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	my_gcd
	mv	a5,a0
.L4:
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
	.size	my_gcd, .-my_gcd
	.align	1
	.type	phi, @function
phi:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a5,a5
	bge	a5,zero,.L10
	lw	a5,-20(s0)
	negw	a5,a5
	sw	a5,-20(s0)
.L10:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L11
	li	a5,0
	j	.L12
.L11:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L13
	li	a5,1
	j	.L12
.L13:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L14
	li	a5,2
	j	.L12
.L14:
	lw	a5,-20(s0)
	li	a1,2
	mv	a0,a5
	call	phiphi
	mv	a5,a0
.L12:
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
.LFE4:
	.size	phi, .-phi
	.align	1
	.type	phiphi, @function
phiphi:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-52(s0)
	sext.w	a5,a5
	bne	a5,a4,.L16
	lw	a5,-56(s0)
	j	.L17
.L16:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-56(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L18
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-56(s0)
	divw	a5,a4,a5
	sw	a5,-36(s0)
	lw	a4,-36(s0)
	lw	a5,-56(s0)
	mv	a1,a4
	mv	a0,a5
	call	my_gcd
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L19
	lw	a5,-56(s0)
	mv	a0,a5
	call	phi
	mv	a5,a0
	mv	s1,a5
	lw	a5,-36(s0)
	mv	a0,a5
	call	phi
	mv	a5,a0
	mulw	a5,s1,a5
	sext.w	a5,a5
	j	.L17
.L19:
	lw	a5,-36(s0)
	mv	a0,a5
	call	phi
	mv	a5,a0
	lw	a4,-56(s0)
	mulw	a5,a4,a5
	sext.w	a5,a5
	j	.L17
.L18:
	lw	a5,-56(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-52(s0)
	mv	a1,a4
	mv	a0,a5
	call	phiphi
	mv	a5,a0
.L17:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	phiphi, .-phiphi
	.section	.rodata
	.align	3
.LC0:
	.string	"1.0"
	.align	3
.LC1:
	.string	"%s\n"
	.align	3
.LC2:
	.ascii	"\ntotient [ -h -v --] n\n\nFind the Euler totient function o"
	.ascii	"f n, the number of k <= n such that\nk"
	.string	" and n are relatively prime. (1 is relatively prime to everything.)\n\n--: Signal end of options so that negative n can be input. (Silly, since\n    we merely define phi(-n) = phi(n).)\n-v: Print version number and exit. \n-h: Print this helpful information. \n\n"
	.align	3
.LC3:
	.string	"totient: unkown option %s\n"
	.align	3
.LC4:
	.string	"totient [ -h -v -- ] n"
	.align	3
.LC5:
	.string	"totient: not defined for n = 0.\n"
	.align	3
.LC6:
	.string	"phi(%d) = %d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	li	a5,1
	sw	a5,-28(s0)
	sd	zero,-24(s0)
	sw	zero,-32(s0)
	nop
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L27
	lw	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	bne	a4,a5,.L33
	lw	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,1
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a3,a5
	li	a4,45
	beq	a3,a4,.L23
	mv	a3,a5
	li	a4,45
	blt	a3,a4,.L24
	mv	a3,a5
	li	a4,118
	bgt	a3,a4,.L24
	mv	a3,a5
	li	a4,63
	blt	a3,a4,.L24
	sext.w	a5,a5
	addiw	a5,a5,-63
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	sll	a5,a5,a4
	li	a4,1
	slli	a4,a4,41
	addi	a4,a4,513
	and	a4,a5,a4
	snez	a4,a4
	andi	a4,a4,0xff
	bne	a4,zero,.L25
	li	a3,8388608
	li	a4,8388608
	slli	a3,a3,32
	add	a4,a3,a4
	and	a5,a5,a4
	snez	a5,a5
	andi	a5,a5,0xff
	bne	a5,zero,.L26
	j	.L24
.L23:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
	nop
	j	.L33
.L26:
	lla	a1,.LC0
	lla	a0,.LC1
	call	libmin_printf@plt
	call	libmin_success@plt
.L25:
	lla	a1,.LC2
	lla	a0,.LC1
	call	libmin_printf@plt
	call	libmin_success@plt
.L24:
	lw	a5,-32(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
	lla	a1,.LC4
	lla	a0,.LC1
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L33:
	nop
.L27:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L29
	li	a5,45056
	addi	a5,a5,401
	sw	a5,-36(s0)
	j	.L30
.L29:
	lw	a5,-32(s0)
	addiw	a4,a5,1
	sw	a4,-32(s0)
	slli	a5,a5,3
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	libmin_atoi@plt
	mv	a5,a0
	sw	a5,-36(s0)
.L30:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L31
	lla	a0,.LC5
	call	libmin_printf@plt
	li	a5,1
	j	.L32
.L31:
	lw	a5,-36(s0)
	mv	a0,a5
	call	phi
	mv	a5,a0
	mv	a4,a5
	lw	a5,-36(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC6
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
.L32:
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
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
