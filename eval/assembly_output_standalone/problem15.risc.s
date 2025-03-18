	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	ld	a0,-72(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	slli	a5,a5,3
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-48(s0)
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	sb	zero,0(a5)
	sw	zero,-64(s0)
	j	.L2
.L3:
	ld	a0,-56(s0)
	call	strlen@plt
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	addi	a5,a5,2
	mv	a1,a5
	ld	a0,-56(s0)
	call	realloc@plt
	sd	a0,-56(s0)
	lw	a5,-64(s0)
	ld	a4,-72(s0)
	add	a4,a4,a5
	ld	a3,-56(s0)
	ld	a5,-40(s0)
	add	a5,a3,a5
	lbu	a4,0(a4)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	addi	a3,a5,1
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	s1,a4,a5
	mv	a0,a3
	call	malloc@plt
	mv	a5,a0
	sd	a5,0(s1)
	lw	a5,-64(s0)
	slli	a5,a5,3
	ld	a4,-48(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a1,-56(s0)
	mv	a0,a5
	call	strcpy@plt
	lw	a5,-64(s0)
	addiw	a5,a5,1
	sw	a5,-64(s0)
.L2:
	lw	a5,-64(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	ld	a0,-56(s0)
	call	free@plt
	ld	a5,-80(s0)
	lw	a4,-60(s0)
	sw	a4,0(a5)
	ld	a5,-48(s0)
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
