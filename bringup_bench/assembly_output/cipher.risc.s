	.file	"cipher.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	encipher
	.type	encipher, @function
encipher:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s0,88(sp)
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	ld	a5,-72(s0)
	lw	a5,0(a5)
	sw	a5,-52(s0)
	ld	a5,-72(s0)
	lw	a5,4(a5)
	sw	a5,-48(s0)
	sw	zero,-44(s0)
	li	a5,-1640529920
	addi	a5,a5,-1607
	sw	a5,-36(s0)
	ld	a5,-88(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	ld	a5,-88(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	sw	a5,-28(s0)
	ld	a5,-88(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	sw	a5,-24(s0)
	ld	a5,-88(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	li	a5,32
	sw	a5,-40(s0)
	j	.L2
.L3:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
	lw	a5,-48(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,-32(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-48(s0)
	mv	a3,a5
	lw	a5,-44(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-48(s0)
	srliw	a5,a5,5
	sext.w	a5,a5
	lw	a3,-28(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-52(s0)
	addw	a5,a4,a5
	sw	a5,-52(s0)
	lw	a5,-52(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	mv	a3,a5
	lw	a5,-44(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	srliw	a5,a5,5
	sext.w	a5,a5
	lw	a3,-20(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-48(s0)
	addw	a5,a4,a5
	sw	a5,-48(s0)
.L2:
	lw	a5,-40(s0)
	addiw	a4,a5,-1
	sw	a4,-40(s0)
	bne	a5,zero,.L3
	ld	a5,-80(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	ld	a5,-80(s0)
	addi	a5,a5,4
	lw	a4,-48(s0)
	sw	a4,0(a5)
	nop
	ld	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	encipher, .-encipher
	.align	1
	.globl	decipher
	.type	decipher, @function
decipher:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s0,88(sp)
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	ld	a5,-72(s0)
	lw	a5,0(a5)
	sw	a5,-52(s0)
	ld	a5,-72(s0)
	lw	a5,4(a5)
	sw	a5,-48(s0)
	li	a5,-957403136
	addi	a5,a5,1824
	sw	a5,-44(s0)
	li	a5,-1640529920
	addi	a5,a5,-1607
	sw	a5,-36(s0)
	ld	a5,-88(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	ld	a5,-88(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	sw	a5,-28(s0)
	ld	a5,-88(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	sw	a5,-24(s0)
	ld	a5,-88(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	li	a5,32
	sw	a5,-40(s0)
	j	.L5
.L6:
	lw	a5,-52(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,-24(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	mv	a3,a5
	lw	a5,-44(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	srliw	a5,a5,5
	sext.w	a5,a5
	lw	a3,-20(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-48(s0)
	subw	a5,a4,a5
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	slliw	a5,a5,4
	sext.w	a5,a5
	lw	a4,-32(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-48(s0)
	mv	a3,a5
	lw	a5,-44(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-48(s0)
	srliw	a5,a5,5
	sext.w	a5,a5
	lw	a3,-28(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	xor	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-52(s0)
	subw	a5,a4,a5
	sw	a5,-52(s0)
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-36(s0)
	subw	a5,a4,a5
	sw	a5,-44(s0)
.L5:
	lw	a5,-40(s0)
	addiw	a4,a5,-1
	sw	a4,-40(s0)
	bne	a5,zero,.L6
	ld	a5,-80(s0)
	lw	a4,-52(s0)
	sw	a4,0(a5)
	ld	a5,-80(s0)
	addi	a5,a5,4
	lw	a4,-48(s0)
	sw	a4,0(a5)
	nop
	ld	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	decipher, .-decipher
	.globl	keytext
	.data
	.align	3
	.type	keytext, @object
	.size	keytext, 16
keytext:
	.word	358852050
	.word	311606025
	.word	739108171
	.word	861449956
	.globl	plaintext
	.align	3
	.type	plaintext, @object
	.size	plaintext, 8
plaintext:
	.word	765625614
	.word	14247501
	.globl	cipherref
	.align	3
	.type	cipherref, @object
	.size	cipherref, 8
cipherref:
	.word	-1612527516
	.word	-673559132
	.globl	ciphertext
	.bss
	.align	3
	.type	ciphertext, @object
	.size	ciphertext, 8
ciphertext:
	.zero	8
	.globl	newplain
	.align	3
	.type	newplain, @object
	.size	newplain, 8
newplain:
	.zero	8
	.section	.rodata
	.align	3
.LC0:
	.string	"TEA Cipher results:\n"
	.align	3
.LC1:
	.string	"  plaintext:  0x%08lx 0x%08lx\n"
	.align	3
.LC2:
	.string	"  ciphertext: 0x%08lx 0x%08lx\n"
	.align	3
.LC3:
	.string	"  newplain:   0x%08lx 0x%08lx\n"
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
	lla	a2,keytext
	lla	a1,ciphertext
	lla	a0,plaintext
	call	encipher
	lla	a5,ciphertext
	lw	a4,0(a5)
	lla	a5,cipherref
	lw	a5,0(a5)
	bne	a4,a5,.L8
	lla	a5,ciphertext
	lw	a4,4(a5)
	lla	a5,cipherref
	lw	a5,4(a5)
	beq	a4,a5,.L9
.L8:
	li	a0,1
	call	libmin_fail@plt
.L9:
	lla	a2,keytext
	lla	a1,newplain
	lla	a0,ciphertext
	call	decipher
	lla	a5,newplain
	lw	a4,0(a5)
	lla	a5,plaintext
	lw	a5,0(a5)
	bne	a4,a5,.L10
	lla	a5,newplain
	lw	a4,4(a5)
	lla	a5,plaintext
	lw	a5,4(a5)
	beq	a4,a5,.L11
.L10:
	li	a0,2
	call	libmin_fail@plt
.L11:
	lla	a0,.LC0
	call	libmin_printf@plt
	lla	a5,plaintext
	lw	a4,0(a5)
	lla	a5,plaintext
	lw	a5,4(a5)
	mv	a2,a5
	mv	a1,a4
	lla	a0,.LC1
	call	libmin_printf@plt
	lla	a5,ciphertext
	lw	a4,0(a5)
	lla	a5,ciphertext
	lw	a5,4(a5)
	mv	a2,a5
	mv	a1,a4
	lla	a0,.LC2
	call	libmin_printf@plt
	lla	a5,newplain
	lw	a4,0(a5)
	lla	a5,newplain
	lw	a5,4(a5)
	mv	a2,a5
	mv	a1,a4
	lla	a0,.LC3
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
