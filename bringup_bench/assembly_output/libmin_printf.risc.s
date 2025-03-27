	.file	"libmin_printf.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__extenddftf2
	.align	1
	.type	dopr, @function
dopr:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	sd	a1,-144(s0)
	sd	a2,-152(s0)
	sd	a3,-160(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-116(s0)
	sw	zero,-124(s0)
	lw	a5,-124(s0)
	sw	a5,-108(s0)
	lw	a5,-108(s0)
	sw	a5,-112(s0)
	lw	a5,-112(s0)
	sd	a5,-104(s0)
	li	a5,-1
	sw	a5,-120(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L2
.L86:
	lbu	a5,-125(s0)
	andi	a5,a5,0xff
	bne	a5,zero,.L3
	li	a5,7
	sw	a5,-116(s0)
.L3:
	lw	a5,-116(s0)
	sext.w	a4,a5
	li	a5,7
	bgtu	a4,a5,.L91
	lwu	a5,-116(s0)
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
	.word	.L13-.L6
	.word	.L12-.L6
	.word	.L11-.L6
	.word	.L10-.L6
	.word	.L9-.L6
	.word	.L8-.L6
	.word	.L7-.L6
	.word	.L92-.L6
	.text
.L13:
	lbu	a5,-125(s0)
	andi	a4,a5,0xff
	li	a5,37
	bne	a4,a5,.L14
	li	a5,1
	sw	a5,-116(s0)
	j	.L15
.L14:
	lbu	a4,-125(s0)
	addi	a5,s0,-104
	mv	a3,a4
	ld	a2,-144(s0)
	mv	a1,a5
	ld	a0,-136(s0)
	call	dopr_outch
.L15:
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L2
.L12:
	lbu	a5,-125(s0)
	sext.w	a5,a5
	addiw	a3,a5,-32
	sext.w	a4,a3
	li	a5,16
	bgtu	a4,a5,.L17
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a4,a5,2
	lla	a5,.L19
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L19
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L19:
	.word	.L23-.L19
	.word	.L17-.L19
	.word	.L17-.L19
	.word	.L22-.L19
	.word	.L17-.L19
	.word	.L17-.L19
	.word	.L17-.L19
	.word	.L17-.L19
	.word	.L17-.L19
	.word	.L17-.L19
	.word	.L17-.L19
	.word	.L21-.L19
	.word	.L17-.L19
	.word	.L20-.L19
	.word	.L17-.L19
	.word	.L17-.L19
	.word	.L18-.L19
	.text
.L20:
	lw	a5,-112(s0)
	ori	a5,a5,1
	sw	a5,-112(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L24
.L21:
	lw	a5,-112(s0)
	ori	a5,a5,2
	sw	a5,-112(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L24
.L23:
	lw	a5,-112(s0)
	ori	a5,a5,4
	sw	a5,-112(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L24
.L22:
	lw	a5,-112(s0)
	ori	a5,a5,8
	sw	a5,-112(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L24
.L18:
	lw	a5,-112(s0)
	ori	a5,a5,16
	sw	a5,-112(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L24
.L17:
	li	a5,2
	sw	a5,-116(s0)
	nop
.L24:
	j	.L2
.L11:
	la	a5,_pctype
	ld	a4,0(a5)
	lbu	a5,-125(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,4
	sext.w	a5,a5
	beq	a5,zero,.L25
	lw	a5,-124(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a4,a5
	lbu	a5,-125(s0)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,-124(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L2
.L25:
	lbu	a5,-125(s0)
	andi	a4,a5,0xff
	li	a5,42
	bne	a4,a5,.L27
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	sw	a5,-124(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	li	a5,3
	sw	a5,-116(s0)
	j	.L2
.L27:
	li	a5,3
	sw	a5,-116(s0)
	j	.L2
.L10:
	lbu	a5,-125(s0)
	andi	a4,a5,0xff
	li	a5,46
	bne	a4,a5,.L28
	li	a5,4
	sw	a5,-116(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L2
.L28:
	li	a5,5
	sw	a5,-116(s0)
	j	.L2
.L9:
	la	a5,_pctype
	ld	a4,0(a5)
	lbu	a5,-125(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,4
	sext.w	a5,a5
	beq	a5,zero,.L30
	lw	a5,-120(s0)
	sext.w	a5,a5
	bge	a5,zero,.L31
	sw	zero,-120(s0)
.L31:
	lw	a5,-120(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a4,a5
	lbu	a5,-125(s0)
	sext.w	a5,a5
	addiw	a5,a5,-48
	sext.w	a5,a5
	addw	a5,a4,a5
	sw	a5,-120(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L2
.L30:
	lbu	a5,-125(s0)
	andi	a4,a5,0xff
	li	a5,42
	bne	a4,a5,.L33
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	sw	a5,-120(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	li	a5,5
	sw	a5,-116(s0)
	j	.L2
.L33:
	li	a5,5
	sw	a5,-116(s0)
	j	.L2
.L8:
	lbu	a5,-125(s0)
	sext.w	a5,a5
	mv	a3,a5
	li	a4,108
	beq	a3,a4,.L34
	mv	a3,a5
	li	a4,108
	bgt	a3,a4,.L93
	mv	a3,a5
	li	a4,76
	beq	a3,a4,.L36
	mv	a4,a5
	li	a5,104
	bne	a4,a5,.L93
	li	a5,1
	sw	a5,-108(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L37
.L34:
	li	a5,2
	sw	a5,-108(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	lbu	a5,-125(s0)
	andi	a4,a5,0xff
	li	a5,108
	bne	a4,a5,.L94
	li	a5,4
	sw	a5,-108(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L94
.L36:
	li	a5,3
	sw	a5,-108(s0)
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L37
.L93:
	nop
	j	.L37
.L94:
	nop
.L37:
	li	a5,6
	sw	a5,-116(s0)
	j	.L2
.L7:
	lbu	a5,-125(s0)
	sext.w	a5,a5
	addiw	a3,a5,-37
	sext.w	a4,a3
	li	a5,83
	bgtu	a4,a5,.L95
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a4,a5,2
	lla	a5,.L41
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L41
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L41:
	.word	.L56-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L55-.L41
	.word	.L95-.L41
	.word	.L54-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L53-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L52-.L41
	.word	.L48-.L41
	.word	.L51-.L41
	.word	.L50-.L41
	.word	.L49-.L41
	.word	.L95-.L41
	.word	.L48-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L47-.L41
	.word	.L46-.L41
	.word	.L45-.L41
	.word	.L95-.L41
	.word	.L95-.L41
	.word	.L44-.L41
	.word	.L95-.L41
	.word	.L43-.L41
	.word	.L95-.L41
	.word	.L42-.L41
	.word	.L40-.L41
	.text
.L48:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L57
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	sd	a5,-96(s0)
	j	.L58
.L57:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L59
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-96(s0)
	j	.L58
.L59:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,4
	bne	a4,a5,.L60
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-96(s0)
	j	.L58
.L60:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	sd	a5,-96(s0)
.L58:
	lw	a3,-112(s0)
	lw	a4,-120(s0)
	lw	a5,-124(s0)
	addi	a1,s0,-104
	mv	a7,a3
	mv	a6,a4
	li	a4,10
	ld	a3,-96(s0)
	ld	a2,-144(s0)
	ld	a0,-136(s0)
	call	fmtint
	j	.L61
.L46:
	lw	a5,-112(s0)
	ori	a5,a5,64
	sw	a5,-112(s0)
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L62
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-96(s0)
	j	.L63
.L62:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L64
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-96(s0)
	j	.L63
.L64:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,4
	bne	a4,a5,.L65
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-96(s0)
	j	.L63
.L65:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-96(s0)
.L63:
	lw	a3,-112(s0)
	lw	a4,-120(s0)
	lw	a5,-124(s0)
	addi	a1,s0,-104
	mv	a7,a3
	mv	a6,a4
	li	a4,8
	ld	a3,-96(s0)
	ld	a2,-144(s0)
	ld	a0,-136(s0)
	call	fmtint
	j	.L61
.L43:
	lw	a5,-112(s0)
	ori	a5,a5,64
	sw	a5,-112(s0)
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L66
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-96(s0)
	j	.L67
.L66:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L68
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-96(s0)
	j	.L67
.L68:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,4
	bne	a4,a5,.L69
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-96(s0)
	j	.L67
.L69:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-96(s0)
.L67:
	lw	a3,-112(s0)
	lw	a4,-120(s0)
	lw	a5,-124(s0)
	addi	a1,s0,-104
	mv	a7,a3
	mv	a6,a4
	li	a4,10
	ld	a3,-96(s0)
	ld	a2,-144(s0)
	ld	a0,-136(s0)
	call	fmtint
	j	.L61
.L53:
	lw	a5,-112(s0)
	ori	a5,a5,32
	sw	a5,-112(s0)
.L40:
	lw	a5,-112(s0)
	ori	a5,a5,64
	sw	a5,-112(s0)
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L70
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-96(s0)
	j	.L71
.L70:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L72
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-96(s0)
	j	.L71
.L72:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,4
	bne	a4,a5,.L73
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-96(s0)
	j	.L71
.L73:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-96(s0)
.L71:
	lw	a3,-112(s0)
	lw	a4,-120(s0)
	lw	a5,-124(s0)
	addi	a1,s0,-104
	mv	a7,a3
	mv	a6,a4
	li	a4,16
	ld	a3,-96(s0)
	ld	a2,-144(s0)
	ld	a0,-136(s0)
	call	fmtint
	j	.L61
.L50:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L74
	ld	a5,-160(s0)
	addi	a5,a5,15
	andi	a5,a5,-16
	addi	a4,a5,16
	sd	a4,-160(s0)
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	j	.L75
.L74:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	fld	fa5,0(a5)
	fmv.d	fa0,fa5
	call	__extenddftf2@plt
	mv	a4,a0
	mv	a5,a1
	sd	a4,-48(s0)
	sd	a5,-40(s0)
.L75:
	lw	a3,-112(s0)
	lw	a4,-120(s0)
	lw	a5,-124(s0)
	addi	a1,s0,-104
	mv	a7,a3
	mv	a6,a4
	ld	a3,-48(s0)
	ld	a4,-40(s0)
	ld	a2,-144(s0)
	ld	a0,-136(s0)
	call	fmtfp
	j	.L61
.L55:
	lw	a5,-112(s0)
	ori	a5,a5,32
	sw	a5,-112(s0)
.L51:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L76
	ld	a5,-160(s0)
	addi	a5,a5,15
	andi	a5,a5,-16
	addi	a4,a5,16
	sd	a4,-160(s0)
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	j	.L61
.L76:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	fld	fa5,0(a5)
	fmv.d	fa0,fa5
	call	__extenddftf2@plt
	mv	a4,a0
	mv	a5,a1
	sd	a4,-48(s0)
	sd	a5,-40(s0)
	j	.L61
.L54:
	lw	a5,-112(s0)
	ori	a5,a5,32
	sw	a5,-112(s0)
.L49:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L78
	ld	a5,-160(s0)
	addi	a5,a5,15
	andi	a5,a5,-16
	addi	a4,a5,16
	sd	a4,-160(s0)
	ld	a4,0(a5)
	sd	a4,-48(s0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	j	.L61
.L78:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	fld	fa5,0(a5)
	fmv.d	fa0,fa5
	call	__extenddftf2@plt
	mv	a4,a0
	mv	a5,a1
	sd	a4,-48(s0)
	sd	a5,-40(s0)
	j	.L61
.L52:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	lw	a5,0(a5)
	andi	a4,a5,0xff
	addi	a5,s0,-104
	mv	a3,a4
	ld	a2,-144(s0)
	mv	a1,a5
	ld	a0,-136(s0)
	call	dopr_outch
	j	.L61
.L44:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-88(s0)
	lw	a5,-120(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L80
	ld	a0,-88(s0)
	call	libmin_strlen@plt
	mv	a5,a0
	sw	a5,-120(s0)
.L80:
	lw	a5,-124(s0)
	sext.w	a5,a5
	ble	a5,zero,.L81
	lw	a5,-120(s0)
	sext.w	a5,a5
	blt	a5,zero,.L81
	lw	a5,-124(s0)
	mv	a4,a5
	lw	a5,-120(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L81
	lw	a5,-124(s0)
	sw	a5,-120(s0)
.L81:
	lw	a3,-120(s0)
	lw	a5,-124(s0)
	lw	a4,-112(s0)
	addi	a1,s0,-104
	mv	a6,a3
	ld	a3,-88(s0)
	ld	a2,-144(s0)
	ld	a0,-136(s0)
	call	fmtstr
	j	.L61
.L45:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-88(s0)
	ld	a3,-88(s0)
	lw	a2,-112(s0)
	lw	a4,-120(s0)
	lw	a5,-124(s0)
	addi	a1,s0,-104
	mv	a7,a2
	mv	a6,a4
	li	a4,16
	ld	a2,-144(s0)
	ld	a0,-136(s0)
	call	fmtint
	j	.L61
.L47:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L82
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-56(s0)
	ld	a5,-104(s0)
	slliw	a4,a5,16
	sraiw	a4,a4,16
	ld	a5,-56(s0)
	sh	a4,0(a5)
	j	.L61
.L82:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L84
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-64(s0)
	ld	a5,-104(s0)
	mv	a4,a5
	ld	a5,-64(s0)
	sd	a4,0(a5)
	j	.L61
.L84:
	lw	a5,-108(s0)
	sext.w	a4,a5
	li	a5,4
	bne	a4,a5,.L85
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-72(s0)
	ld	a5,-104(s0)
	mv	a4,a5
	ld	a5,-72(s0)
	sd	a4,0(a5)
	j	.L61
.L85:
	ld	a5,-160(s0)
	addi	a4,a5,8
	sd	a4,-160(s0)
	ld	a5,0(a5)
	sd	a5,-80(s0)
	ld	a5,-104(s0)
	sext.w	a4,a5
	ld	a5,-80(s0)
	sw	a4,0(a5)
	j	.L61
.L56:
	lbu	a4,-125(s0)
	addi	a5,s0,-104
	mv	a3,a4
	ld	a2,-144(s0)
	mv	a1,a5
	ld	a0,-136(s0)
	call	dopr_outch
	j	.L61
.L42:
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	j	.L61
.L95:
	nop
.L61:
	ld	a5,-152(s0)
	addi	a4,a5,1
	sd	a4,-152(s0)
	lbu	a5,0(a5)
	sb	a5,-125(s0)
	sw	zero,-116(s0)
	sw	zero,-124(s0)
	lw	a5,-124(s0)
	sw	a5,-108(s0)
	lw	a5,-108(s0)
	sw	a5,-112(s0)
	li	a5,-1
	sw	a5,-120(s0)
	j	.L2
.L91:
	nop
	j	.L2
.L92:
	nop
.L2:
	lw	a5,-116(s0)
	sext.w	a4,a5
	li	a5,7
	bne	a4,a5,.L86
	ld	a5,-144(s0)
	beq	a5,zero,.L87
	ld	a5,-144(s0)
	addi	a4,a5,-1
	ld	a5,-104(s0)
	bleu	a4,a5,.L88
	ld	a5,-104(s0)
	ld	a4,-136(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	j	.L87
.L88:
	ld	a5,-144(s0)
	beq	a5,zero,.L87
	ld	a5,-144(s0)
	addi	a5,a5,-1
	ld	a4,-136(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
.L87:
	ld	a5,-104(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L90
	call	__stack_chk_fail@plt
.L90:
	mv	a0,a4
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	dopr, .-dopr
	.section	.rodata
	.align	3
.LC0:
	.string	"<NULL>"
	.text
	.align	1
	.type	fmtstr, @function
fmtstr:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a4,a6
	mv	a5,a2
	sw	a5,-68(s0)
	mv	a5,a3
	sw	a5,-72(s0)
	mv	a5,a4
	sw	a5,-76(s0)
	sw	zero,-20(s0)
	ld	a5,-64(s0)
	bne	a5,zero,.L97
	lla	a5,.LC0
	sd	a5,-64(s0)
.L97:
	sw	zero,-24(s0)
	j	.L98
.L99:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L98:
	lw	a5,-24(s0)
	ld	a4,-64(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L99
	lw	a5,-72(s0)
	mv	a4,a5
	lw	a5,-24(s0)
	subw	a5,a4,a5
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	sext.w	a5,a5
	bge	a5,zero,.L100
	sw	zero,-28(s0)
.L100:
	lw	a5,-68(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L102
	lw	a5,-28(s0)
	negw	a5,a5
	sw	a5,-28(s0)
	j	.L102
.L104:
	li	a3,32
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	dopr_outch
	lw	a5,-28(s0)
	addiw	a5,a5,-1
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L102:
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,zero,.L105
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L104
	j	.L105
.L107:
	ld	a5,-64(s0)
	addi	a4,a5,1
	sd	a4,-64(s0)
	lbu	a5,0(a5)
	mv	a3,a5
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	dopr_outch
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L105:
	ld	a5,-64(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L108
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L107
	j	.L108
.L110:
	li	a3,32
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	dopr_outch
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L108:
	lw	a5,-28(s0)
	sext.w	a5,a5
	bge	a5,zero,.L111
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-76(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L110
.L111:
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	fmtstr, .-fmtstr
	.section	.rodata
	.align	3
.LC1:
	.string	"0123456789ABCDEF"
	.align	3
.LC2:
	.string	"0123456789abcdef"
	.text
	.align	1
	.type	fmtint, @function
fmtint:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	sd	a0,-88(s0)
	sd	a1,-96(s0)
	sd	a2,-104(s0)
	sd	a3,-112(s0)
	mv	a1,a4
	mv	a2,a5
	mv	a3,a6
	mv	a4,a7
	mv	a5,a1
	sw	a5,-116(s0)
	mv	a5,a2
	sw	a5,-120(s0)
	mv	a5,a3
	sw	a5,-124(s0)
	mv	a5,a4
	sw	a5,-128(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-76(s0)
	sw	zero,-72(s0)
	sw	zero,-68(s0)
	sw	zero,-64(s0)
	sw	zero,-60(s0)
	lw	a5,-124(s0)
	sext.w	a5,a5
	bge	a5,zero,.L113
	sw	zero,-124(s0)
.L113:
	ld	a5,-112(s0)
	sd	a5,-56(s0)
	lw	a5,-128(s0)
	andi	a5,a5,64
	sext.w	a5,a5
	bne	a5,zero,.L114
	ld	a5,-112(s0)
	bge	a5,zero,.L115
	li	a5,45
	sw	a5,-76(s0)
	ld	a5,-112(s0)
	neg	a5,a5
	sd	a5,-56(s0)
	j	.L114
.L115:
	lw	a5,-128(s0)
	andi	a5,a5,2
	sext.w	a5,a5
	beq	a5,zero,.L116
	li	a5,43
	sw	a5,-76(s0)
	j	.L114
.L116:
	lw	a5,-128(s0)
	andi	a5,a5,4
	sext.w	a5,a5
	beq	a5,zero,.L114
	li	a5,32
	sw	a5,-76(s0)
.L114:
	lw	a5,-128(s0)
	andi	a5,a5,32
	sext.w	a5,a5
	beq	a5,zero,.L121
	li	a5,1
	sw	a5,-60(s0)
.L121:
	lw	a5,-60(s0)
	sext.w	a5,a5
	beq	a5,zero,.L118
	lla	a5,.LC1
	j	.L119
.L118:
	lla	a5,.LC2
.L119:
	lw	a4,-116(s0)
	slli	a4,a4,32
	srli	a4,a4,32
	ld	a3,-56(s0)
	remu	a4,a3,a4
	add	a4,a5,a4
	lw	a5,-72(s0)
	addiw	a3,a5,1
	sw	a3,-72(s0)
	lbu	a4,0(a4)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	a4,-32(a5)
	lw	a5,-116(s0)
	slli	a5,a5,32
	srli	a5,a5,32
	ld	a4,-56(s0)
	divu	a5,a4,a5
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	beq	a5,zero,.L120
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,19
	ble	a4,a5,.L121
.L120:
	lw	a5,-72(s0)
	sext.w	a4,a5
	li	a5,20
	bne	a4,a5,.L122
	lw	a5,-72(s0)
	addiw	a5,a5,-1
	sw	a5,-72(s0)
.L122:
	lw	a5,-72(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	sb	zero,-32(a5)
	lw	a5,-124(s0)
	mv	a4,a5
	lw	a5,-72(s0)
	subw	a5,a4,a5
	sw	a5,-64(s0)
	lw	a5,-124(s0)
	mv	a2,a5
	lw	a5,-72(s0)
	mv	a3,a5
	sext.w	a4,a3
	sext.w	a5,a2
	bge	a4,a5,.L123
	mv	a3,a2
.L123:
	sext.w	a5,a3
	lw	a4,-120(s0)
	subw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-76(s0)
	sext.w	a5,a5
	snez	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	subw	a5,a4,a5
	sw	a5,-68(s0)
	lw	a5,-64(s0)
	sext.w	a5,a5
	bge	a5,zero,.L124
	sw	zero,-64(s0)
.L124:
	lw	a5,-68(s0)
	sext.w	a5,a5
	bge	a5,zero,.L125
	sw	zero,-68(s0)
.L125:
	lw	a5,-128(s0)
	andi	a5,a5,16
	sext.w	a5,a5
	beq	a5,zero,.L126
	lw	a5,-64(s0)
	mv	a2,a5
	lw	a5,-68(s0)
	sext.w	a3,a5
	sext.w	a4,a2
	bge	a3,a4,.L127
	mv	a5,a2
.L127:
	sw	a5,-64(s0)
	sw	zero,-68(s0)
.L126:
	lw	a5,-128(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L129
	lw	a5,-68(s0)
	negw	a5,a5
	sw	a5,-68(s0)
	j	.L129
.L130:
	li	a3,32
	ld	a2,-104(s0)
	ld	a1,-96(s0)
	ld	a0,-88(s0)
	call	dopr_outch
	lw	a5,-68(s0)
	addiw	a5,a5,-1
	sw	a5,-68(s0)
.L129:
	lw	a5,-68(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L130
	lw	a5,-76(s0)
	sext.w	a5,a5
	beq	a5,zero,.L131
	lw	a5,-76(s0)
	andi	a5,a5,0xff
	mv	a3,a5
	ld	a2,-104(s0)
	ld	a1,-96(s0)
	ld	a0,-88(s0)
	call	dopr_outch
.L131:
	lw	a5,-64(s0)
	sext.w	a5,a5
	ble	a5,zero,.L135
	j	.L133
.L134:
	li	a3,48
	ld	a2,-104(s0)
	ld	a1,-96(s0)
	ld	a0,-88(s0)
	call	dopr_outch
	lw	a5,-64(s0)
	addiw	a5,a5,-1
	sw	a5,-64(s0)
.L133:
	lw	a5,-64(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L134
	j	.L135
.L136:
	lw	a5,-72(s0)
	addiw	a5,a5,-1
	sw	a5,-72(s0)
	lw	a5,-72(s0)
	addi	a5,a5,-16
	add	a5,a5,s0
	lbu	a5,-32(a5)
	mv	a3,a5
	ld	a2,-104(s0)
	ld	a1,-96(s0)
	ld	a0,-88(s0)
	call	dopr_outch
.L135:
	lw	a5,-72(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L136
	j	.L137
.L138:
	li	a3,32
	ld	a2,-104(s0)
	ld	a1,-96(s0)
	ld	a0,-88(s0)
	call	dopr_outch
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-68(s0)
.L137:
	lw	a5,-68(s0)
	sext.w	a5,a5
	blt	a5,zero,.L138
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L139
	call	__stack_chk_fail@plt
.L139:
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	fmtint, .-fmtint
	.globl	__lttf2
	.align	1
	.type	abs_val, @function
abs_val:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s2,40(sp)
	sd	s3,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-64(s0)
	sd	a1,-56(s0)
	ld	a5,-64(s0)
	sd	a5,-48(s0)
	ld	a5,-56(s0)
	sd	a5,-40(s0)
	li	a2,0
	li	a3,0
	ld	a0,-64(s0)
	ld	a1,-56(s0)
	call	__lttf2@plt
	mv	a5,a0
	bge	a5,zero,.L141
	ld	s2,-64(s0)
	ld	a4,-56(s0)
	li	a5,-1
	slli	a5,a5,63
	xor	s3,a4,a5
	sd	s2,-48(s0)
	sd	s3,-40(s0)
.L141:
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s2,40(sp)
	.cfi_restore 18
	ld	s3,32(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	abs_val, .-abs_val
	.globl	__multf3
	.align	1
	.type	POW10, @function
POW10:
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
	mv	a5,a0
	sw	a5,-36(s0)
	lla	a5,.LC3
	ld	a4,0(a5)
	sd	a4,-32(s0)
	ld	a5,8(a5)
	sd	a5,-24(s0)
	j	.L146
.L147:
	lla	a5,.LC4
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a0,-32(s0)
	ld	a1,-24(s0)
	call	__multf3@plt
	mv	a4,a0
	mv	a5,a1
	sd	a4,-32(s0)
	sd	a5,-24(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sw	a5,-36(s0)
.L146:
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L147
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	mv	a2,a4
	mv	a3,a5
	mv	a0,a2
	mv	a1,a3
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
	.size	POW10, .-POW10
	.globl	__fixtfdi
	.globl	__floatditf
	.globl	__subtf3
	.globl	__getf2
	.align	1
	.type	ROUND, @function
ROUND:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-48(s0)
	sd	a1,-40(s0)
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	__fixtfdi@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a0,-24(s0)
	call	__floatditf@plt
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	__subtf3@plt
	mv	a4,a0
	mv	a5,a1
	sd	a4,-48(s0)
	sd	a5,-40(s0)
	lla	a5,.LC5
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	__getf2@plt
	mv	a5,a0
	blt	a5,zero,.L150
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L150:
	ld	a5,-24(s0)
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
.LFE8:
	.size	ROUND, .-ROUND
	.align	1
	.type	my_modf, @function
my_modf:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	fsd	fa0,-88(s0)
	sd	a0,-96(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	fld	fa5,-88(s0)
	fsd	fa5,-48(s0)
	lla	a5,.LC6
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
	sw	zero,-68(s0)
	j	.L155
.L160:
	fld	fa5,-48(s0)
	fcvt.l.d a5,fa5,rtz
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	fcvt.d.l	fa4,a5
	fld	fa3,-48(s0)
	lla	a5,.LC6
	fld	fa5,0(a5)
	fadd.d	fa5,fa3,fa5
	fle.d	a5,fa4,fa5
	beq	a5,zero,.L156
	ld	a5,-56(s0)
	fcvt.d.l	fa4,a5
	fld	fa3,-48(s0)
	lla	a5,.LC6
	fld	fa5,0(a5)
	fsub.d	fa5,fa3,fa5
	fge.d	a5,fa4,fa5
	bne	a5,zero,.L166
.L156:
	fld	fa4,-48(s0)
	lla	a5,.LC7
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	fld	fa4,-40(s0)
	lla	a5,.LC8
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	lw	a5,-68(s0)
	addiw	a5,a5,1
	sw	a5,-68(s0)
.L155:
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,99
	ble	a4,a5,.L160
	j	.L159
.L166:
	nop
.L159:
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,100
	bne	a4,a5,.L161
	ld	a5,-96(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,0(a5)
	fmv.d.x	fa5,zero
	j	.L162
.L161:
	lw	a5,-68(s0)
	sext.w	a5,a5
	beq	a5,zero,.L163
	ld	a5,-56(s0)
	fcvt.d.l	fa4,a5
	fld	fa5,-40(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-88(s0)
	fsub.d	fa5,fa4,fa5
	addi	a5,s0,-64
	mv	a0,a5
	fmv.d	fa0,fa5
	call	my_modf
	fsd	fa0,-32(s0)
	ld	a5,-56(s0)
	fcvt.d.l	fa4,a5
	fld	fa5,-40(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-64(s0)
	fadd.d	fa5,fa4,fa5
	ld	a5,-96(s0)
	fsd	fa5,0(a5)
	fld	fa5,-32(s0)
	j	.L162
.L163:
	ld	a5,-56(s0)
	fcvt.d.l	fa5,a5
	ld	a5,-96(s0)
	fsd	fa5,0(a5)
	ld	a5,-96(s0)
	fld	fa5,0(a5)
	fld	fa4,-48(s0)
	fsub.d	fa5,fa4,fa5
.L162:
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L164
	call	__stack_chk_fail@plt
.L164:
	fmv.d	fa0,fa5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	my_modf, .-my_modf
	.globl	__trunctfdf2
	.align	1
	.type	fmtfp, @function
fmtfp:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-800
	.cfi_def_cfa_offset 800
	sd	ra,792(sp)
	sd	s0,784(sp)
	sd	s2,776(sp)
	sd	s3,768(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 18, -24
	.cfi_offset 19, -32
	addi	s0,sp,800
	.cfi_def_cfa 8, 0
	sd	a0,-744(s0)
	sd	a1,-752(s0)
	sd	a2,-760(s0)
	sd	a3,-784(s0)
	sd	a4,-776(s0)
	mv	a3,a6
	mv	a4,a7
	sw	a5,-764(s0)
	mv	a5,a3
	sw	a5,-768(s0)
	mv	a5,a4
	sw	a5,-788(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	sw	zero,-724(s0)
	sw	zero,-720(s0)
	sw	zero,-716(s0)
	sw	zero,-712(s0)
	sw	zero,-708(s0)
	sw	zero,-704(s0)
	lw	a5,-768(s0)
	sext.w	a5,a5
	bge	a5,zero,.L168
	li	a5,6
	sw	a5,-768(s0)
.L168:
	ld	a0,-784(s0)
	ld	a1,-776(s0)
	call	abs_val
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	call	__trunctfdf2@plt
	fmv.d	fa5,fa0
	fsd	fa5,-680(s0)
	li	a2,0
	li	a3,0
	ld	a0,-784(s0)
	ld	a1,-776(s0)
	call	__lttf2@plt
	mv	a5,a0
	bge	a5,zero,.L208
	li	a5,45
	sw	a5,-724(s0)
	j	.L171
.L208:
	lw	a5,-788(s0)
	andi	a5,a5,2
	sext.w	a5,a5
	beq	a5,zero,.L172
	li	a5,43
	sw	a5,-724(s0)
	j	.L171
.L172:
	lw	a5,-788(s0)
	andi	a5,a5,4
	sext.w	a5,a5
	beq	a5,zero,.L171
	li	a5,32
	sw	a5,-724(s0)
.L171:
	lw	a5,-768(s0)
	sext.w	a4,a5
	li	a5,16
	ble	a4,a5,.L173
	li	a5,16
	sw	a5,-768(s0)
.L173:
	fld	fa5,-680(s0)
	fsd	fa5,-672(s0)
	addi	a5,s0,-696
	mv	a0,a5
	fld	fa0,-672(s0)
	call	my_modf
	lw	a5,-768(s0)
	mv	a0,a5
	call	POW10
	mv	s2,a0
	mv	s3,a1
	fld	fa5,-696(s0)
	fld	fa4,-680(s0)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	__extenddftf2@plt
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__multf3@plt
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	call	ROUND
	mv	a5,a0
	fcvt.d.l	fa5,a5
	fsd	fa5,-688(s0)
	fld	fa5,-688(s0)
	fmv.d	fa0,fa5
	call	__extenddftf2@plt
	mv	s2,a0
	mv	s3,a1
	lw	a5,-768(s0)
	mv	a0,a5
	call	POW10
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	mv	a0,s2
	mv	a1,s3
	call	__getf2@plt
	mv	a5,a0
	blt	a5,zero,.L179
	fld	fa4,-696(s0)
	lla	a5,.LC6
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-696(s0)
	lw	a5,-768(s0)
	mv	a0,a5
	call	POW10
	mv	s2,a0
	mv	s3,a1
	fld	fa5,-688(s0)
	fmv.d	fa0,fa5
	call	__extenddftf2@plt
	mv	a4,a0
	mv	a5,a1
	mv	a2,s2
	mv	a3,s3
	mv	a0,a4
	mv	a1,a5
	call	__subtf3@plt
	mv	a2,a0
	mv	a3,a1
	mv	a4,a2
	mv	a5,a3
	mv	a0,a4
	mv	a1,a5
	call	__trunctfdf2@plt
	fmv.d	fa5,fa0
	fsd	fa5,-688(s0)
.L179:
	fld	fa5,-696(s0)
	fsd	fa5,-672(s0)
	fld	fa4,-696(s0)
	lla	a5,.LC7
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	addi	a5,s0,-696
	mv	a0,a5
	fmv.d	fa0,fa5
	call	my_modf
	fld	fa4,-672(s0)
	lla	a5,.LC7
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-672(s0)
	fld	fa5,-696(s0)
	fld	fa4,-672(s0)
	fsub.d	fa4,fa4,fa5
	lla	a5,.LC9
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	lla	a5,.LC8
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fcvt.w.d a5,fa5,rtz
	sw	a5,-700(s0)
	lw	a5,-704(s0)
	sext.w	a5,a5
	beq	a5,zero,.L176
	lla	a5,.LC1
	j	.L177
.L176:
	lla	a5,.LC2
.L177:
	lw	a4,-700(s0)
	add	a4,a5,a4
	lw	a5,-720(s0)
	addiw	a3,a5,1
	sw	a3,-720(s0)
	lbu	a4,0(a4)
	addi	a5,a5,-32
	add	a5,a5,s0
	sb	a4,-632(a5)
	fld	fa5,-696(s0)
	fmv.d.x	fa4,zero
	feq.d	a5,fa5,fa4
	bne	a5,zero,.L178
	lw	a5,-720(s0)
	sext.w	a4,a5
	li	a5,310
	ble	a4,a5,.L179
.L178:
	lw	a5,-720(s0)
	sext.w	a4,a5
	li	a5,311
	bne	a4,a5,.L180
	lw	a5,-720(s0)
	addiw	a5,a5,-1
	sw	a5,-720(s0)
.L180:
	lw	a5,-720(s0)
	addi	a5,a5,-32
	add	a5,a5,s0
	sb	zero,-632(a5)
	fld	fa5,-688(s0)
	fmv.d.x	fa4,zero
	feq.d	a5,fa5,fa4
	bne	a5,zero,.L181
.L185:
	fld	fa5,-688(s0)
	fsd	fa5,-672(s0)
	fld	fa4,-688(s0)
	lla	a5,.LC7
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	addi	a5,s0,-688
	mv	a0,a5
	fmv.d	fa0,fa5
	call	my_modf
	fld	fa4,-672(s0)
	lla	a5,.LC7
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-672(s0)
	fld	fa5,-688(s0)
	fld	fa4,-672(s0)
	fsub.d	fa4,fa4,fa5
	lla	a5,.LC9
	fld	fa5,0(a5)
	fadd.d	fa4,fa4,fa5
	lla	a5,.LC8
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fcvt.w.d a5,fa5,rtz
	sw	a5,-700(s0)
	lw	a5,-704(s0)
	sext.w	a5,a5
	beq	a5,zero,.L182
	lla	a5,.LC1
	j	.L183
.L182:
	lla	a5,.LC2
.L183:
	lw	a4,-700(s0)
	add	a4,a5,a4
	lw	a5,-716(s0)
	addiw	a3,a5,1
	sw	a3,-716(s0)
	lbu	a4,0(a4)
	addi	a5,a5,-32
	add	a5,a5,s0
	sb	a4,-320(a5)
	fld	fa5,-688(s0)
	fmv.d.x	fa4,zero
	feq.d	a5,fa5,fa4
	bne	a5,zero,.L184
	lw	a5,-716(s0)
	sext.w	a4,a5
	li	a5,310
	ble	a4,a5,.L185
.L184:
	lw	a5,-716(s0)
	sext.w	a4,a5
	li	a5,311
	bne	a4,a5,.L181
	lw	a5,-716(s0)
	addiw	a5,a5,-1
	sw	a5,-716(s0)
.L181:
	lw	a5,-716(s0)
	addi	a5,a5,-32
	add	a5,a5,s0
	sb	zero,-320(a5)
	lw	a5,-764(s0)
	mv	a4,a5
	lw	a5,-720(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-768(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-724(s0)
	sext.w	a5,a5
	snez	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	subw	a5,a4,a5
	sw	a5,-712(s0)
	lw	a5,-768(s0)
	mv	a4,a5
	lw	a5,-716(s0)
	subw	a5,a4,a5
	sw	a5,-708(s0)
	lw	a5,-708(s0)
	sext.w	a5,a5
	bge	a5,zero,.L186
	sw	zero,-708(s0)
.L186:
	lw	a5,-712(s0)
	sext.w	a5,a5
	bge	a5,zero,.L187
	sw	zero,-712(s0)
.L187:
	lw	a5,-788(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L188
	lw	a5,-712(s0)
	negw	a5,a5
	sw	a5,-712(s0)
.L188:
	lw	a5,-788(s0)
	andi	a5,a5,16
	sext.w	a5,a5
	beq	a5,zero,.L193
	lw	a5,-712(s0)
	sext.w	a5,a5
	ble	a5,zero,.L193
	lw	a5,-724(s0)
	sext.w	a5,a5
	beq	a5,zero,.L191
	lw	a5,-724(s0)
	andi	a5,a5,0xff
	mv	a3,a5
	ld	a2,-760(s0)
	ld	a1,-752(s0)
	ld	a0,-744(s0)
	call	dopr_outch
	lw	a5,-712(s0)
	addiw	a5,a5,-1
	sw	a5,-712(s0)
	sw	zero,-724(s0)
	j	.L191
.L192:
	li	a3,48
	ld	a2,-760(s0)
	ld	a1,-752(s0)
	ld	a0,-744(s0)
	call	dopr_outch
	lw	a5,-712(s0)
	addiw	a5,a5,-1
	sw	a5,-712(s0)
.L191:
	lw	a5,-712(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L192
	j	.L193
.L194:
	li	a3,32
	ld	a2,-760(s0)
	ld	a1,-752(s0)
	ld	a0,-744(s0)
	call	dopr_outch
	lw	a5,-712(s0)
	addiw	a5,a5,-1
	sw	a5,-712(s0)
.L193:
	lw	a5,-712(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L194
	lw	a5,-724(s0)
	sext.w	a5,a5
	beq	a5,zero,.L196
	lw	a5,-724(s0)
	andi	a5,a5,0xff
	mv	a3,a5
	ld	a2,-760(s0)
	ld	a1,-752(s0)
	ld	a0,-744(s0)
	call	dopr_outch
	j	.L196
.L197:
	lw	a5,-720(s0)
	addiw	a5,a5,-1
	sw	a5,-720(s0)
	lw	a5,-720(s0)
	addi	a5,a5,-32
	add	a5,a5,s0
	lbu	a5,-632(a5)
	mv	a3,a5
	ld	a2,-760(s0)
	ld	a1,-752(s0)
	ld	a0,-744(s0)
	call	dopr_outch
.L196:
	lw	a5,-720(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L197
	lw	a5,-768(s0)
	sext.w	a5,a5
	ble	a5,zero,.L201
	li	a3,46
	ld	a2,-760(s0)
	ld	a1,-752(s0)
	ld	a0,-744(s0)
	call	dopr_outch
	j	.L199
.L200:
	lw	a5,-716(s0)
	addiw	a5,a5,-1
	sw	a5,-716(s0)
	lw	a5,-716(s0)
	addi	a5,a5,-32
	add	a5,a5,s0
	lbu	a5,-320(a5)
	mv	a3,a5
	ld	a2,-760(s0)
	ld	a1,-752(s0)
	ld	a0,-744(s0)
	call	dopr_outch
.L199:
	lw	a5,-716(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L200
	j	.L201
.L202:
	li	a3,48
	ld	a2,-760(s0)
	ld	a1,-752(s0)
	ld	a0,-744(s0)
	call	dopr_outch
	lw	a5,-708(s0)
	addiw	a5,a5,-1
	sw	a5,-708(s0)
.L201:
	lw	a5,-708(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L202
	j	.L203
.L204:
	li	a3,32
	ld	a2,-760(s0)
	ld	a1,-752(s0)
	ld	a0,-744(s0)
	call	dopr_outch
	lw	a5,-712(s0)
	addiw	a5,a5,1
	sw	a5,-712(s0)
.L203:
	lw	a5,-712(s0)
	sext.w	a5,a5
	blt	a5,zero,.L204
	nop
	la	a5,__stack_chk_guard
	ld	a4, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L205
	call	__stack_chk_fail@plt
.L205:
	ld	ra,792(sp)
	.cfi_restore 1
	ld	s0,784(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 800
	ld	s2,776(sp)
	.cfi_restore 18
	ld	s3,768(sp)
	.cfi_restore 19
	addi	sp,sp,800
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	fmtfp, .-fmtfp
	.align	1
	.type	dopr_outch, @function
dopr_outch:
.LFB11:
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
	mv	a5,a3
	sb	a5,-41(s0)
	ld	a5,-32(s0)
	ld	a5,0(a5)
	ld	a4,-40(s0)
	bleu	a4,a5,.L210
	ld	a5,-32(s0)
	ld	a5,0(a5)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a4,-41(s0)
	sb	a4,0(a5)
.L210:
	ld	a5,-32(s0)
	ld	a5,0(a5)
	addi	a4,a5,1
	ld	a5,-32(s0)
	sd	a4,0(a5)
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	dopr_outch, .-dopr_outch
	.align	1
	.globl	libmin_printf
	.type	libmin_printf, @function
libmin_printf:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-1152
	.cfi_def_cfa_offset 1152
	sd	ra,1080(sp)
	sd	s0,1072(sp)
	.cfi_offset 1, -72
	.cfi_offset 8, -80
	addi	s0,sp,1088
	.cfi_def_cfa 8, 64
	sd	a0,-1080(s0)
	sd	a1,8(s0)
	sd	a2,16(s0)
	sd	a3,24(s0)
	sd	a4,32(s0)
	sd	a5,40(s0)
	sd	a6,48(s0)
	sd	a7,56(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,64
	sd	a5,-1088(s0)
	ld	a5,-1088(s0)
	addi	a5,a5,-56
	sd	a5,-1064(s0)
	ld	a4,-1064(s0)
	addi	a5,s0,-1048
	mv	a3,a4
	ld	a2,-1080(s0)
	li	a1,1024
	mv	a0,a5
	call	dopr
	sb	zero,-25(s0)
	sw	zero,-1068(s0)
	addi	a5,s0,-1048
	sd	a5,-1056(s0)
	j	.L212
.L213:
	ld	a5,-1056(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	libtarg_putc@plt
	lw	a5,-1068(s0)
	addiw	a5,a5,1
	sw	a5,-1068(s0)
	ld	a5,-1056(s0)
	addi	a5,a5,1
	sd	a5,-1056(s0)
.L212:
	ld	a5,-1056(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L213
	lw	a5,-1068(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L215
	call	__stack_chk_fail@plt
.L215:
	mv	a0,a4
	ld	ra,1080(sp)
	.cfi_restore 1
	ld	s0,1072(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1152
	addi	sp,sp,1152
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	libmin_printf, .-libmin_printf
	.align	1
	.globl	libmin_snprintf
	.type	libmin_snprintf, @function
libmin_snprintf:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -56
	.cfi_offset 8, -64
	addi	s0,sp,64
	.cfi_def_cfa 8, 48
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,8(s0)
	sd	a4,16(s0)
	sd	a5,24(s0)
	sd	a6,32(s0)
	sd	a7,40(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,48
	sd	a5,-64(s0)
	ld	a5,-64(s0)
	addi	a5,a5,-40
	sd	a5,-32(s0)
	ld	a5,-32(s0)
	mv	a3,a5
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	dopr
	ld	a5,-48(s0)
	addi	a5,a5,-1
	ld	a4,-40(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	ld	a0,-40(s0)
	call	libmin_strlen@plt
	mv	a5,a0
	sext.w	a5,a5
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L218
	call	__stack_chk_fail@plt
.L218:
	mv	a0,a4
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	libmin_snprintf, .-libmin_snprintf
	.section	.rodata
	.align	4
.LC3:
	.word	0
	.word	0
	.word	0
	.word	1073676288
	.align	4
.LC4:
	.word	0
	.word	0
	.word	0
	.word	1073889280
	.align	4
.LC5:
	.word	0
	.word	0
	.word	0
	.word	1073610752
	.align	3
.LC6:
	.word	0
	.word	1072693248
	.align	3
.LC7:
	.word	-1717986918
	.word	1069128089
	.align	3
.LC8:
	.word	0
	.word	1076101120
	.align	3
.LC9:
	.word	-1717986918
	.word	1068079513
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
