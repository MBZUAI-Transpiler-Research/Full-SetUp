	.file	"ls.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"."
	.align	3
.LC1:
	.string	"-R"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-64(s0)
	sw	a5,-52(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lw	a5,-52(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L2
	addi	a5,s0,-32
	la	a3,alphasort
	li	a2,0
	mv	a1,a5
	lla	a0,.LC0
	call	scandir@plt
	mv	a5,a0
	sw	a5,-36(s0)
	j	.L3
.L4:
	ld	a4,-32(s0)
	lw	a5,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,19
	mv	a0,a5
	call	puts@plt
	ld	a4,-32(s0)
	lw	a5,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	free@plt
.L3:
	lw	a5,-36(s0)
	addiw	a4,a5,-1
	sw	a4,-36(s0)
	bne	a5,zero,.L4
	ld	a5,-32(s0)
	mv	a0,a5
	call	free@plt
	j	.L5
.L2:
	lw	a5,-52(s0)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L6
	ld	a5,-64(s0)
	addi	a5,a5,8
	ld	a4,0(a5)
	lla	a5,.LC1
	bne	a4,a5,.L5
.L6:
	li	a1,0
	lla	a0,.LC0
	call	recursive
.L5:
	li	a0,0
	call	exit@plt
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	".."
	.align	3
.LC3:
	.string	"%s"
	.align	3
.LC4:
	.string	""
	.align	3
.LC5:
	.string	"%*s[[%s]]\n"
	.align	3
.LC6:
	.string	"%*s-> %s\n"
	.text
	.align	1
	.globl	recursive
	.type	recursive, @function
recursive:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-1088
	.cfi_def_cfa_offset 1088
	sd	ra,1080(sp)
	sd	s0,1072(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1088
	.cfi_def_cfa 8, 0
	sd	a0,-1080(s0)
	mv	a5,a1
	sw	a5,-1084(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a0,-1080(s0)
	call	opendir@plt
	mv	a5,a0
	sd	a5,-1064(s0)
	ld	a5,-1064(s0)
	beq	a5,zero,.L18
	j	.L11
.L16:
	ld	a5,-1056(s0)
	lbu	a5,18(a5)
	mv	a4,a5
	li	a5,4
	bne	a4,a5,.L12
	ld	a5,-1056(s0)
	addi	a5,a5,19
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	ld	a5,-1056(s0)
	addi	a5,a5,19
	lla	a1,.LC2
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	ld	a5,-1056(s0)
	addi	a4,a5,19
	addi	a5,s0,-1048
	mv	a2,a4
	lla	a1,.LC3
	mv	a0,a5
	call	sprintf@plt
	ld	a5,-1056(s0)
	addi	a4,a5,19
	lw	a5,-1084(s0)
	mv	a3,a4
	lla	a2,.LC4
	mv	a1,a5
	lla	a0,.LC5
	call	printf@plt
	lw	a5,-1084(s0)
	addiw	a5,a5,3
	sext.w	a4,a5
	addi	a5,s0,-1048
	mv	a1,a4
	mv	a0,a5
	call	recursive
	j	.L11
.L12:
	ld	a5,-1056(s0)
	addi	a4,a5,19
	lw	a5,-1084(s0)
	mv	a3,a4
	lla	a2,.LC4
	mv	a1,a5
	lla	a0,.LC6
	call	printf@plt
	j	.L11
.L19:
	nop
.L11:
	ld	a0,-1064(s0)
	call	readdir@plt
	sd	a0,-1056(s0)
	ld	a5,-1056(s0)
	bne	a5,zero,.L16
	ld	a0,-1064(s0)
	call	closedir@plt
	j	.L8
.L18:
	nop
.L8:
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L17
	call	__stack_chk_fail@plt
.L17:
	ld	ra,1080(sp)
	.cfi_restore 1
	ld	s0,1072(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1088
	addi	sp,sp,1088
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	recursive, .-recursive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
