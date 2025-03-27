	.file	"strange.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%d "
	.align	3
.LC1:
	.string	"\n| %d |"
	.align	3
.LC2:
	.string	"\n %d"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-68(s0)
	j	.L2
.L3:
	lw	a5,-68(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-68(s0)
	sw	a4,-48(a5)
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-68(s0)
.L2:
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,9
	ble	a4,a5,.L3
	j	.L4
.L5:
	lw	a5,-64(s0)
	lw	a4,-68(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
.L4:
	lw	a5,-68(s0)
	addiw	a4,a5,-1
	sw	a4,-68(s0)
	bgt	a5,zero,.L5
	nop
.L6:
	li	a5,8
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
	sw	zero,-68(s0)
	lw	a5,-68(s0)
	mv	a1,a5
	lla	a0,.LC2
	call	libmin_printf@plt
	call	libmin_success@plt
	nop
	j	.L6
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
