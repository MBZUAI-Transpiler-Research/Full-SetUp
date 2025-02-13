	.file	"tee.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"a+"
	.align	3
.LC1:
	.string	"%s"
	.align	3
.LC2:
	.string	"%s\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-160(s0)
	sw	a5,-148(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
.L2:
	ld	a5,-160(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	lla	a1,.LC0
	mv	a0,a5
	call	fopen@plt
	mv	a5,a0
	sd	a5,-136(s0)
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC1
	call	__isoc99_scanf@plt
	addi	a5,s0,-128
	mv	a1,a5
	lla	a0,.LC1
	call	printf@plt
	addi	a5,s0,-128
	mv	a2,a5
	lla	a1,.LC2
	ld	a0,-136(s0)
	call	fprintf@plt
	ld	a0,-136(s0)
	call	fclose@plt
	nop
	j	.L2
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
