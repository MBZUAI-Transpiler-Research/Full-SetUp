	.file	"libmin_malloc.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	head
	.comm	head,8,8
	.local	tail
	.comm	tail,8,8
	.align	1
	.type	__get_free_block, @function
__get_free_block:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	lla	a5,head
	ld	a5,0(a5)
	sd	a5,-24(s0)
	j	.L2
.L5:
	ld	a5,-24(s0)
	lw	a5,8(a5)
	beq	a5,zero,.L3
	ld	a5,-24(s0)
	ld	a5,0(a5)
	ld	a4,-40(s0)
	bgtu	a4,a5,.L3
	ld	a5,-24(s0)
	j	.L4
.L3:
	ld	a5,-24(s0)
	ld	a5,16(a5)
	sd	a5,-24(s0)
.L2:
	ld	a5,-24(s0)
	bne	a5,zero,.L5
	li	a5,0
.L4:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	__get_free_block, .-__get_free_block
	.align	1
	.globl	libmin_malloc
	.type	libmin_malloc, @function
libmin_malloc:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	ld	a5,-56(s0)
	bne	a5,zero,.L7
	li	a5,0
	j	.L8
.L7:
	ld	a0,-56(s0)
	call	__get_free_block
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	beq	a5,zero,.L9
	ld	a5,-40(s0)
	sw	zero,8(a5)
	ld	a5,-40(s0)
	addi	a5,a5,24
	j	.L8
.L9:
	ld	a5,-56(s0)
	addi	a5,a5,24
	sd	a5,-32(s0)
	ld	a0,-32(s0)
	call	libtarg_sbrk@plt
	sd	a0,-24(s0)
	ld	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L10
	li	a5,0
	j	.L8
.L10:
	ld	a5,-24(s0)
	sd	a5,-40(s0)
	ld	a5,-40(s0)
	ld	a4,-56(s0)
	sd	a4,0(a5)
	ld	a5,-40(s0)
	sw	zero,8(a5)
	ld	a5,-40(s0)
	sd	zero,16(a5)
	lla	a5,head
	ld	a5,0(a5)
	bne	a5,zero,.L11
	lla	a5,head
	ld	a4,-40(s0)
	sd	a4,0(a5)
.L11:
	lla	a5,tail
	ld	a5,0(a5)
	beq	a5,zero,.L12
	lla	a5,tail
	ld	a5,0(a5)
	ld	a4,-40(s0)
	sd	a4,16(a5)
.L12:
	lla	a5,tail
	ld	a4,-40(s0)
	sd	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,24
.L8:
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	libmin_malloc, .-libmin_malloc
	.align	1
	.globl	libmin_free
	.type	libmin_free, @function
libmin_free:
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
	sd	a0,-56(s0)
	ld	a5,-56(s0)
	beq	a5,zero,.L22
	ld	a5,-56(s0)
	addi	a5,a5,-24
	sd	a5,-32(s0)
	li	a0,0
	call	libtarg_sbrk@plt
	sd	a0,-24(s0)
	ld	a5,-32(s0)
	ld	a5,0(a5)
	ld	a4,-56(s0)
	add	a5,a4,a5
	ld	a4,-24(s0)
	bne	a4,a5,.L16
	lla	a5,head
	ld	a4,0(a5)
	lla	a5,tail
	ld	a5,0(a5)
	bne	a4,a5,.L17
	lla	a5,tail
	sd	zero,0(a5)
	lla	a5,tail
	ld	a4,0(a5)
	lla	a5,head
	sd	a4,0(a5)
	j	.L18
.L17:
	lla	a5,head
	ld	a5,0(a5)
	sd	a5,-40(s0)
	j	.L19
.L21:
	ld	a5,-40(s0)
	ld	a4,16(a5)
	lla	a5,tail
	ld	a5,0(a5)
	bne	a4,a5,.L20
	ld	a5,-40(s0)
	sd	zero,16(a5)
	lla	a5,tail
	ld	a4,-40(s0)
	sd	a4,0(a5)
.L20:
	ld	a5,-40(s0)
	ld	a5,16(a5)
	sd	a5,-40(s0)
.L19:
	ld	a5,-40(s0)
	bne	a5,zero,.L21
.L18:
	ld	a5,-32(s0)
	ld	a5,0(a5)
	li	a4,-24
	sub	a5,a4,a5
	mv	a0,a5
	call	libtarg_sbrk@plt
	j	.L13
.L16:
	ld	a5,-32(s0)
	li	a4,1
	sw	a4,8(a5)
	j	.L13
.L22:
	nop
.L13:
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
	.size	libmin_free, .-libmin_free
	.align	1
	.globl	libmin_calloc
	.type	libmin_calloc, @function
libmin_calloc:
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
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	beq	a5,zero,.L24
	ld	a5,-48(s0)
	bne	a5,zero,.L25
.L24:
	li	a5,0
	j	.L26
.L25:
	ld	a4,-40(s0)
	ld	a5,-48(s0)
	mul	a5,a4,a5
	sd	a5,-32(s0)
	ld	a4,-32(s0)
	ld	a5,-40(s0)
	divu	a5,a4,a5
	ld	a4,-48(s0)
	beq	a4,a5,.L27
	li	a5,0
	j	.L26
.L27:
	ld	a0,-32(s0)
	call	libmin_malloc
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L28
	li	a5,0
	j	.L26
.L28:
	ld	a2,-32(s0)
	li	a1,0
	ld	a0,-24(s0)
	call	libmin_memset@plt
	ld	a5,-24(s0)
.L26:
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
	.size	libmin_calloc, .-libmin_calloc
	.align	1
	.globl	libmin_realloc
	.type	libmin_realloc, @function
libmin_realloc:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	beq	a5,zero,.L30
	ld	a5,-48(s0)
	bne	a5,zero,.L31
.L30:
	ld	a0,-48(s0)
	call	libmin_malloc
	mv	a5,a0
	j	.L32
.L31:
	ld	a5,-40(s0)
	addi	a5,a5,-24
	sd	a5,-32(s0)
	ld	a5,-32(s0)
	ld	a5,0(a5)
	ld	a4,-48(s0)
	bgtu	a4,a5,.L33
	ld	a5,-40(s0)
	j	.L32
.L33:
	ld	a0,-48(s0)
	call	libmin_malloc
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	beq	a5,zero,.L34
	ld	a5,-32(s0)
	ld	a5,0(a5)
	mv	a2,a5
	ld	a1,-40(s0)
	ld	a0,-24(s0)
	call	libmin_memcpy@plt
	ld	a0,-40(s0)
	call	libmin_free
.L34:
	ld	a5,-24(s0)
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
.LFE7:
	.size	libmin_realloc, .-libmin_realloc
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
