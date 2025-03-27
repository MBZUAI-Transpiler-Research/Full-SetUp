	.file	"primal-test.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	powm, @function
powm:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	sw	a5,-52(s0)
	li	a5,1
	sd	a5,-24(s0)
	j	.L2
.L4:
	ld	a5,-48(s0)
	andi	a5,a5,1
	beq	a5,zero,.L3
	ld	a4,-24(s0)
	ld	a5,-40(s0)
	mul	a4,a4,a5
	lwu	a5,-52(s0)
	remu	a5,a4,a5
	sd	a5,-24(s0)
.L3:
	ld	a5,-40(s0)
	mul	a4,a5,a5
	lwu	a5,-52(s0)
	remu	a5,a4,a5
	sd	a5,-40(s0)
	ld	a5,-48(s0)
	srli	a5,a5,1
	sd	a5,-48(s0)
.L2:
	ld	a5,-48(s0)
	bne	a5,zero,.L4
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	powm, .-powm
	.align	1
	.globl	get_random_int
	.type	get_random_int, @function
get_random_int:
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
	sd	a1,-32(s0)
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a5,a5
	slli	a4,a5,32
	srli	a4,a4,32
	ld	a3,-32(s0)
	ld	a5,-24(s0)
	sub	a5,a3,a5
	addi	a5,a5,1
	remu	a4,a4,a5
	ld	a5,-24(s0)
	add	a5,a4,a5
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
	.size	get_random_int, .-get_random_int
	.align	1
	.globl	split_int
	.type	split_int, @function
split_int:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	ld	a5,-24(s0)
	sd	zero,0(a5)
	ld	a5,-40(s0)
	addi	a4,a5,-1
	ld	a5,-32(s0)
	sd	a4,0(a5)
	j	.L9
.L10:
	ld	a5,-24(s0)
	ld	a5,0(a5)
	addi	a4,a5,1
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-32(s0)
	ld	a5,0(a5)
	srli	a4,a5,1
	ld	a5,-32(s0)
	sd	a4,0(a5)
.L9:
	ld	a5,-32(s0)
	ld	a5,0(a5)
	andi	a5,a5,1
	beq	a5,zero,.L10
	nop
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	split_int, .-split_int
	.align	1
	.globl	miller_rabin_int
	.type	miller_rabin_int, @function
miller_rabin_int:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-84(s0)
	mv	a5,a4
	sw	a5,-88(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sd	zero,-40(s0)
	lw	a5,-84(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L12
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,2
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L26
.L12:
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L14
	li	a5,1
	j	.L26
.L14:
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,2
	bgtu	a4,a5,.L15
	li	a5,0
	j	.L26
.L15:
	lw	a5,-84(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-32(s0)
	lwu	a3,-84(s0)
	addi	a4,s0,-64
	addi	a5,s0,-72
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	split_int
	sw	zero,-76(s0)
	j	.L16
.L25:
	lw	a5,-84(s0)
	addiw	a5,a5,-2
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	mv	a1,a5
	li	a0,2
	call	get_random_int
	sd	a0,-40(s0)
	ld	a5,-64(s0)
	lw	a4,-84(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-40(s0)
	call	powm
	sd	a0,-56(s0)
	ld	a4,-56(s0)
	li	a5,1
	beq	a4,a5,.L28
	ld	a4,-56(s0)
	ld	a5,-32(s0)
	beq	a4,a5,.L28
	li	a5,1
	sd	a5,-48(s0)
	j	.L20
.L24:
	ld	a5,-56(s0)
	mul	a4,a5,a5
	lwu	a5,-84(s0)
	remu	a5,a4,a5
	sd	a5,-56(s0)
	ld	a4,-56(s0)
	li	a5,1
	bne	a4,a5,.L21
	li	a5,0
	j	.L26
.L21:
	ld	a4,-56(s0)
	ld	a5,-32(s0)
	beq	a4,a5,.L29
	ld	a5,-48(s0)
	addi	a5,a5,1
	sd	a5,-48(s0)
.L20:
	ld	a5,-72(s0)
	ld	a4,-48(s0)
	bleu	a4,a5,.L24
	j	.L23
.L29:
	nop
.L23:
	ld	a4,-56(s0)
	ld	a5,-32(s0)
	beq	a4,a5,.L19
	li	a5,0
	j	.L26
.L28:
	nop
.L19:
	lw	a5,-76(s0)
	addiw	a5,a5,1
	sw	a5,-76(s0)
.L16:
	lw	a5,-76(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L25
	li	a5,2
.L26:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L27
	call	__stack_chk_fail@plt
.L27:
	mv	a0,a4
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	miller_rabin_int, .-miller_rabin_int
	.globl	q
	.bss
	.align	3
	.type	q, @object
	.size	q, 512
q:
	.zero	512
	.globl	q_head
	.align	2
	.type	q_head, @object
	.size	q_head, 4
q_head:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"Primality tests found %d primes...\n"
	.align	3
.LC1:
	.string	"Value %u is `prime' with failure probability (0)\n"
	.align	3
.LC4:
	.string	"Value %u is `likely prime' with failure probability (1 in %.0lf)\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
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
	li	a0,42
	call	libmin_srand@plt
	li	a5,3
	sw	a5,-52(s0)
	sw	zero,-48(s0)
	j	.L31
.L33:
	lw	a5,-52(s0)
	li	a1,16
	mv	a0,a5
	call	miller_rabin_int
	mv	a5,a0
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sext.w	a5,a5
	snez	a5,a5
	andi	a5,a5,0xff
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	beq	a5,zero,.L32
	lla	a5,q_head
	lw	a5,0(a5)
	lla	a4,q
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-52(s0)
	sw	a4,0(a5)
	lla	a5,q_head
	lw	a5,0(a5)
	lla	a4,q
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,-40(s0)
	sw	a4,4(a5)
	lla	a5,q_head
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,62
	bgt	a4,a5,.L32
	lla	a5,q_head
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,q_head
	sw	a4,0(a5)
.L32:
	call	libmin_rand@plt
	mv	a5,a0
	sw	a5,-52(s0)
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L31:
	lw	a5,-48(s0)
	sext.w	a4,a5
	li	a5,199
	ble	a4,a5,.L33
	lla	a5,q_head
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
	sw	zero,-44(s0)
	j	.L34
.L37:
	lla	a4,q
	lw	a5,-44(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L35
	lla	a4,q
	lw	a5,-44(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
	j	.L36
.L35:
	lla	a4,q
	lw	a5,-44(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a5,4(a5)
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L36
	lla	a4,q
	lw	a5,-44(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	s1,0(a5)
	lla	a5,.LC2
	fld	fa4,0(a5)
	lla	a5,.LC3
	fld	fa5,0(a5)
	fmv.d	fa1,fa4
	fmv.d	fa0,fa5
	call	libmin_pow@plt
	fmv.x.d	a5,fa0
	mv	a2,a5
	mv	a1,s1
	lla	a0,.LC4
	call	libmin_printf@plt
.L36:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L34:
	lla	a5,q_head
	lw	a4,0(a5)
	lw	a5,-44(s0)
	sext.w	a5,a5
	blt	a5,a4,.L37
	call	libmin_success@plt
	li	a5,0
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
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.word	0
	.word	1076887552
	.align	3
.LC3:
	.word	0
	.word	1074790400
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
