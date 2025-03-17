	.file	"xargs.c"
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
	.string	"lm.txt"
	.align	3
.LC2:
	.string	"%s\n"
	.align	3
.LC3:
	.string	"r"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	sd	ra,280(sp)
	sd	s0,272(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,288
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	j	.L2
.L3:
	lla	a1,.LC0
	lla	a0,.LC1
	call	fopen@plt
	mv	a5,a0
	sd	a5,-272(s0)
	addi	a5,s0,-264
	mv	a2,a5
	lla	a1,.LC2
	ld	a0,-272(s0)
	call	fprintf@plt
	ld	a0,-272(s0)
	call	fclose@plt
.L2:
	la	a5,stdin
	ld	a4,0(a5)
	addi	a5,s0,-264
	mv	a2,a4
	li	a1,100
	mv	a0,a5
	call	fgets@plt
	mv	a5,a0
	bne	a5,zero,.L3
	lla	a1,.LC3
	lla	a0,.LC1
	call	fopen@plt
	mv	a5,a0
	sd	a5,-272(s0)
	j	.L4
.L7:
	lbu	a5,-273(s0)
	sext.w	a5,a5
	mv	a0,a5
	call	putchar@plt
.L4:
	ld	a0,-272(s0)
	call	fgetc@plt
	mv	a5,a0
	sb	a5,-273(s0)
	j	.L7
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
