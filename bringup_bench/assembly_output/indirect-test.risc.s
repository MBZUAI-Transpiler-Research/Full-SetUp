	.file	"indirect-test.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	aglobal
	.data
	.align	2
	.type	aglobal, @object
	.size	aglobal, 4
aglobal:
	.word	56
	.text
	.align	1
	.globl	foo
	.type	foo, @function
foo:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mulw	a5,a5,a5
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
	.size	foo, .-foo
	.align	1
	.globl	bar
	.type	bar, @function
bar:
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
	sd	a0,-24(s0)
	lla	a5,aglobal
	lw	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a4
	jalr	a5
	mv	a5,a0
	mv	a4,a5
	lla	a5,aglobal
	sw	a4,0(a5)
	lla	a5,aglobal
	lw	a5,0(a5)
	andi	a5,a5,7
	sext.w	a5,a5
	mv	a3,a5
	li	a4,4
	bgtu	a3,a4,.L4
	slli	a4,a5,2
	lla	a5,.L6
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L6
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L6:
	.word	.L10-.L6
	.word	.L9-.L6
	.word	.L8-.L6
	.word	.L7-.L6
	.word	.L5-.L6
	.text
.L10:
	lla	a5,aglobal
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,aglobal
	sw	a4,0(a5)
	j	.L11
.L9:
	lla	a5,aglobal
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lla	a5,aglobal
	sw	a4,0(a5)
	j	.L11
.L8:
	lla	a5,aglobal
	lw	a5,0(a5)
	slliw	a5,a5,1
	sext.w	a4,a5
	lla	a5,aglobal
	sw	a4,0(a5)
	j	.L11
.L7:
	lla	a5,aglobal
	lw	a5,0(a5)
	srliw	a4,a5,31
	addw	a5,a4,a5
	sraiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,aglobal
	sw	a4,0(a5)
	j	.L11
.L5:
	lla	a5,aglobal
	lw	a5,0(a5)
	mv	a4,a5
	sraiw	a5,a4,31
	srliw	a5,a5,31
	addw	a4,a4,a5
	andi	a4,a4,1
	subw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,aglobal
	sw	a4,0(a5)
	j	.L11
.L4:
	lla	a5,aglobal
	lw	a5,0(a5)
	negw	a5,a5
	sext.w	a4,a5
	lla	a5,aglobal
	sw	a4,0(a5)
	nop
.L11:
	nop
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
	.size	bar, .-bar
	.globl	pbar
	.section	.data.rel.local,"aw"
	.align	3
	.type	pbar, @object
	.size	pbar, 8
pbar:
	.dword	bar
	.section	.rodata
	.align	3
.LC0:
	.string	"aglobal = %d\n"
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
	lla	a5,foo
	sd	a5,-24(s0)
	lla	a5,pbar
	ld	a5,0(a5)
	ld	a0,-24(s0)
	jalr	a5
	lla	a5,pbar
	ld	a5,0(a5)
	ld	a0,-24(s0)
	jalr	a5
	lla	a5,pbar
	ld	a5,0(a5)
	ld	a0,-24(s0)
	jalr	a5
	lla	a5,aglobal
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC0
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
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
