	.file	"libmin_strtol.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	libmin_strtol
	.type	libmin_strtol, @function
libmin_strtol:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	mv	a5,a2
	sw	a5,-84(s0)
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L2
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,36
	ble	a4,a5,.L6
.L2:
	lw	a5,-84(s0)
	sext.w	a5,a5
	beq	a5,zero,.L6
	ld	a5,-72(s0)
	bne	a5,zero,.L6
	ld	a5,-80(s0)
	beq	a5,zero,.L4
	ld	a5,-80(s0)
	ld	a4,-72(s0)
	sd	a4,0(a5)
.L4:
	li	a5,0
	j	.L5
.L7:
	ld	a5,-72(s0)
	addi	a5,a5,1
	sd	a5,-72(s0)
.L6:
	la	a5,_pctype
	ld	a4,0(a5)
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,8
	sext.w	a5,a5
	bne	a5,zero,.L7
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	sext.w	a4,a5
	mv	a3,a4
	li	a5,43
	beq	a3,a5,.L8
	li	a5,45
	bne	a4,a5,.L9
	li	a5,1
	sw	a5,-48(s0)
	ld	a5,-72(s0)
	addi	a5,a5,1
	sd	a5,-72(s0)
	j	.L10
.L8:
	sw	zero,-48(s0)
	ld	a5,-72(s0)
	addi	a5,a5,1
	sd	a5,-72(s0)
	j	.L10
.L9:
	sw	zero,-48(s0)
	nop
.L10:
	ld	a5,-72(s0)
	sd	a5,-32(s0)
	lw	a5,-84(s0)
	sext.w	a5,a5
	bne	a5,zero,.L11
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,48
	bne	a4,a5,.L12
	ld	a5,-32(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,120
	beq	a4,a5,.L13
	ld	a5,-32(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,88
	bne	a4,a5,.L14
.L13:
	li	a5,16
	j	.L15
.L14:
	li	a5,8
.L15:
	sw	a5,-84(s0)
	j	.L11
.L12:
	li	a5,10
	sw	a5,-84(s0)
.L11:
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,16
	bne	a4,a5,.L16
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,48
	bne	a4,a5,.L16
	ld	a5,-32(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,120
	beq	a4,a5,.L17
	ld	a5,-32(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,88
	bne	a4,a5,.L16
.L17:
	ld	a5,-32(s0)
	addi	a5,a5,2
	sd	a5,-32(s0)
.L16:
	sd	zero,-40(s0)
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,16
	beq	a4,a5,.L18
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,16
	bgt	a4,a5,.L45
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,8
	beq	a4,a5,.L30
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,8
	bgt	a4,a5,.L45
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,2
	beq	a4,a5,.L23
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,4
	beq	a4,a5,.L27
	j	.L45
.L25:
	ld	a5,-40(s0)
	slli	a5,a5,1
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-40(s0)
	or	a5,a5,a4
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L23:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bleu	a4,a5,.L50
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,49
	bleu	a4,a5,.L25
	j	.L50
.L29:
	ld	a5,-40(s0)
	slli	a5,a5,2
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-40(s0)
	or	a5,a5,a4
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L27:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bleu	a4,a5,.L51
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,51
	bleu	a4,a5,.L29
	j	.L51
.L32:
	ld	a5,-40(s0)
	slli	a5,a5,3
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-40(s0)
	or	a5,a5,a4
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L30:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bleu	a4,a5,.L52
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,55
	bleu	a4,a5,.L32
	j	.L52
.L18:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L53
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sw	a5,-52(s0)
	la	a5,_pctype
	ld	a4,0(a5)
	lw	a5,-52(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L35
	la	a5,_pctype
	ld	a4,0(a5)
	lw	a5,-52(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L36
	lw	a5,-52(s0)
	addiw	a5,a5,32
	sext.w	a5,a5
	j	.L37
.L36:
	lw	a5,-52(s0)
.L37:
	sw	a5,-52(s0)
.L35:
	lla	a5,digits.0
	ld	a5,0(a5)
	lw	a4,-52(s0)
	andi	a4,a4,0xff
	mv	a1,a4
	mv	a0,a5
	call	libmin_strchr@plt
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	beq	a5,zero,.L54
	lla	a5,digits.0
	ld	a5,0(a5)
	ld	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	blt	a5,zero,.L55
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,15
	bgt	a4,a5,.L55
	ld	a5,-40(s0)
	slli	a5,a5,4
	sd	a5,-40(s0)
	lw	a5,-44(s0)
	ld	a4,-40(s0)
	or	a5,a4,a5
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	j	.L18
.L53:
	nop
	j	.L55
.L54:
	nop
	j	.L55
.L45:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L56
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sw	a5,-52(s0)
	la	a5,_pctype
	ld	a4,0(a5)
	lw	a5,-52(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L41
	la	a5,_pctype
	ld	a4,0(a5)
	lw	a5,-52(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L42
	lw	a5,-52(s0)
	addiw	a5,a5,32
	sext.w	a5,a5
	j	.L43
.L42:
	lw	a5,-52(s0)
.L43:
	sw	a5,-52(s0)
.L41:
	lla	a5,digits.0
	ld	a5,0(a5)
	lw	a4,-52(s0)
	andi	a4,a4,0xff
	mv	a1,a4
	mv	a0,a5
	call	libmin_strchr@plt
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	beq	a5,zero,.L57
	lla	a5,digits.0
	ld	a5,0(a5)
	ld	a4,-24(s0)
	sub	a5,a4,a5
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	sext.w	a5,a5
	blt	a5,zero,.L40
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L40
	lw	a5,-84(s0)
	ld	a4,-40(s0)
	mul	a5,a4,a5
	sd	a5,-40(s0)
	lw	a5,-44(s0)
	ld	a4,-40(s0)
	sub	a5,a4,a5
	sd	a5,-40(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	j	.L45
.L56:
	nop
	j	.L40
.L57:
	nop
.L40:
	ld	a5,-80(s0)
	beq	a5,zero,.L46
	ld	a5,-80(s0)
	ld	a4,-32(s0)
	sd	a4,0(a5)
.L46:
	lw	a5,-48(s0)
	sext.w	a5,a5
	beq	a5,zero,.L47
	ld	a5,-40(s0)
	j	.L5
.L47:
	ld	a5,-40(s0)
	neg	a5,a5
	sd	a5,-40(s0)
	j	.L26
.L50:
	nop
	j	.L26
.L51:
	nop
	j	.L26
.L52:
	nop
	j	.L26
.L55:
	nop
.L26:
	lw	a5,-48(s0)
	sext.w	a5,a5
	beq	a5,zero,.L48
	ld	a5,-40(s0)
	neg	a5,a5
	sd	a5,-40(s0)
.L48:
	ld	a5,-80(s0)
	beq	a5,zero,.L49
	ld	a5,-80(s0)
	ld	a4,-32(s0)
	sd	a4,0(a5)
.L49:
	ld	a5,-40(s0)
.L5:
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_strtol, .-libmin_strtol
	.section	.rodata
	.align	3
.LC0:
	.string	"0123456789abcdefghijklmnopqrstuvxwyz"
	.section	.data.rel.local,"aw"
	.align	3
	.type	digits.0, @object
	.size	digits.0, 8
digits.0:
	.dword	.LC0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
