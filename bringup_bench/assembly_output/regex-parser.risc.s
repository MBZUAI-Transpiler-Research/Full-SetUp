	.file	"regex-parser.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	re_match
	.type	re_match, @function
re_match:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	ld	a0,-24(s0)
	call	re_compile
	mv	a5,a0
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	mv	a0,a5
	call	re_matchp
	mv	a5,a0
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
.LFE3:
	.size	re_match, .-re_match
	.align	1
	.globl	re_matchp
	.type	re_matchp, @function
re_matchp:
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
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-56(s0)
	sw	zero,0(a5)
	ld	a5,-40(s0)
	beq	a5,zero,.L4
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L5
	ld	a5,-40(s0)
	addi	a5,a5,16
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	mv	a0,a5
	call	matchpattern
	mv	a5,a0
	beq	a5,zero,.L6
	li	a5,0
	j	.L8
.L6:
	li	a5,-1
	j	.L8
.L5:
	li	a5,-1
	sw	a5,-20(s0)
.L11:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	matchpattern
	mv	a5,a0
	beq	a5,zero,.L9
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L10
	li	a5,-1
	j	.L8
.L10:
	lw	a5,-20(s0)
	j	.L8
.L9:
	ld	a5,-48(s0)
	addi	a4,a5,1
	sd	a4,-48(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L11
.L4:
	li	a5,-1
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
	.size	re_matchp, .-re_matchp
	.align	1
	.globl	re_compile
	.type	re_compile, @function
re_compile:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	li	a5,1
	sw	a5,-32(s0)
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	j	.L13
.L47:
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-33(s0)
	lbu	a5,-33(s0)
	sext.w	a5,a5
	addiw	a3,a5,-36
	sext.w	a4,a3
	li	a5,58
	bgtu	a4,a5,.L14
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a4,a5,2
	lla	a5,.L16
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L16
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L16:
	.word	.L23-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L22-.L16
	.word	.L21-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L20-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L19-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L14-.L16
	.word	.L18-.L16
	.word	.L17-.L16
	.word	.L14-.L16
	.word	.L15-.L16
	.text
.L15:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,2
	sb	a4,0(a5)
	j	.L24
.L23:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,3
	sb	a4,0(a5)
	j	.L24
.L20:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,1
	sb	a4,0(a5)
	j	.L24
.L22:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,5
	sb	a4,0(a5)
	j	.L24
.L21:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,6
	sb	a4,0(a5)
	j	.L24
.L19:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,4
	sb	a4,0(a5)
	j	.L24
.L17:
	lw	a5,-28(s0)
	addi	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L48
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a3,a5
	li	a4,68
	beq	a3,a4,.L26
	mv	a3,a5
	li	a4,68
	blt	a3,a4,.L27
	mv	a3,a5
	li	a4,119
	bgt	a3,a4,.L27
	mv	a3,a5
	li	a4,83
	blt	a3,a4,.L27
	addiw	a3,a5,-83
	sext.w	a4,a3
	li	a5,36
	bgtu	a4,a5,.L27
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a4,a5,2
	lla	a5,.L29
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L29
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L29:
	.word	.L33-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L32-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L31-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L30-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L27-.L29
	.word	.L28-.L29
	.text
.L31:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,10
	sb	a4,0(a5)
	j	.L25
.L26:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,11
	sb	a4,0(a5)
	j	.L25
.L28:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,12
	sb	a4,0(a5)
	j	.L25
.L32:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,13
	sb	a4,0(a5)
	j	.L25
.L30:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,14
	sb	a4,0(a5)
	j	.L25
.L33:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,15
	sb	a4,0(a5)
	j	.L25
.L27:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,7
	sb	a4,0(a5)
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lla	a3,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a3,a5
	sb	a4,8(a5)
	nop
.L25:
	j	.L48
.L18:
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,94
	bne	a4,a5,.L34
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,9
	sb	a4,0(a5)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	addi	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L37
	li	a5,0
	j	.L36
.L34:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,8
	sb	a4,0(a5)
	j	.L37
.L43:
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,92
	bne	a4,a5,.L38
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,38
	ble	a4,a5,.L39
	li	a5,0
	j	.L36
.L39:
	lw	a5,-28(s0)
	addi	a5,a5,1
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L40
	li	a5,0
	j	.L36
.L40:
	lw	a5,-28(s0)
	addiw	a4,a5,1
	sw	a4,-28(s0)
	mv	a4,a5
	ld	a5,-56(s0)
	add	a4,a5,a4
	lw	a5,-32(s0)
	addiw	a3,a5,1
	sw	a3,-32(s0)
	lbu	a4,0(a4)
	lla	a3,ccl_buf.0
	add	a5,a3,a5
	sb	a4,0(a5)
	j	.L41
.L38:
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,39
	ble	a4,a5,.L41
	li	a5,0
	j	.L36
.L41:
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-32(s0)
	addiw	a3,a5,1
	sw	a3,-32(s0)
	lbu	a4,0(a4)
	lla	a3,ccl_buf.0
	add	a5,a3,a5
	sb	a4,0(a5)
.L37:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,93
	beq	a4,a5,.L42
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L43
.L42:
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,39
	ble	a4,a5,.L44
	li	a5,0
	j	.L36
.L44:
	lw	a5,-32(s0)
	addiw	a4,a5,1
	sw	a4,-32(s0)
	lla	a4,ccl_buf.0
	add	a5,a4,a5
	sb	zero,0(a5)
	lw	a4,-20(s0)
	lla	a5,ccl_buf.0
	add	a4,a4,a5
	lla	a3,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a3,a5
	sd	a4,8(a5)
	j	.L24
.L14:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	li	a4,7
	sb	a4,0(a5)
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	lbu	a4,-33(s0)
	sb	a4,8(a5)
	j	.L24
.L48:
	nop
.L24:
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L45
	li	a5,0
	j	.L36
.L45:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L13:
	lw	a5,-28(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L46
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,28
	ble	a4,a5,.L47
.L46:
	lla	a4,re_compiled.1
	lw	a5,-24(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	sb	zero,0(a5)
	lla	a5,re_compiled.1
.L36:
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	re_compile, .-re_compile
	.section	.rodata
	.align	3
.LC19:
	.string	"type: %s"
	.align	3
.LC20:
	.string	" ["
	.align	3
.LC21:
	.string	"%c"
	.align	3
.LC22:
	.string	"]"
	.align	3
.LC23:
	.string	" '%c'"
	.align	3
.LC24:
	.string	"\n"
	.align	3
.LC0:
	.string	"UNUSED"
	.align	3
.LC1:
	.string	"DOT"
	.align	3
.LC2:
	.string	"BEGIN"
	.align	3
.LC3:
	.string	"END"
	.align	3
.LC4:
	.string	"QUESTIONMARK"
	.align	3
.LC5:
	.string	"STAR"
	.align	3
.LC6:
	.string	"PLUS"
	.align	3
.LC7:
	.string	"CHAR"
	.align	3
.LC8:
	.string	"CHAR_CLASS"
	.align	3
.LC9:
	.string	"INV_CHAR_CLASS"
	.align	3
.LC10:
	.string	"DIGIT"
	.align	3
.LC11:
	.string	"NOT_DIGIT"
	.align	3
.LC12:
	.string	"ALPHA"
	.align	3
.LC13:
	.string	"NOT_ALPHA"
	.align	3
.LC14:
	.string	"WHITESPACE"
	.align	3
.LC15:
	.string	"NOT_WHITESPACE"
	.align	3
.LC16:
	.string	"BRANCH"
	.data
	.align	3
.LC18:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.dword	.LC10
	.dword	.LC11
	.dword	.LC12
	.dword	.LC13
	.dword	.LC14
	.dword	.LC15
	.dword	.LC16
	.text
	.align	1
	.globl	re_print
	.type	re_print, @function
re_print:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)
	sd	s0,176(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192
	.cfi_def_cfa 8, 0
	sd	a0,-184(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a4,.LC18
	addi	a5,s0,-160
	mv	a3,a4
	li	a4,136
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy@plt
	sw	zero,-168(s0)
	j	.L50
.L59:
	lw	a5,-168(s0)
	slli	a5,a5,4
	ld	a4,-184(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	beq	a5,zero,.L61
	lw	a5,-168(s0)
	slli	a5,a5,4
	ld	a4,-184(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-144(a5)
	mv	a1,a5
	lla	a0,.LC19
	call	libmin_printf@plt
	lw	a5,-168(s0)
	slli	a5,a5,4
	ld	a4,-184(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,8
	beq	a4,a5,.L53
	lw	a5,-168(s0)
	slli	a5,a5,4
	ld	a4,-184(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,9
	bne	a4,a5,.L54
.L53:
	lla	a0,.LC20
	call	libmin_printf@plt
	sw	zero,-164(s0)
	j	.L55
.L57:
	lw	a5,-168(s0)
	slli	a5,a5,4
	ld	a4,-184(s0)
	add	a5,a4,a5
	ld	a4,8(a5)
	lw	a5,-164(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-169(s0)
	lbu	a5,-169(s0)
	andi	a5,a5,0xff
	beq	a5,zero,.L56
	lbu	a5,-169(s0)
	andi	a4,a5,0xff
	li	a5,93
	beq	a4,a5,.L56
	lbu	a5,-169(s0)
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC21
	call	libmin_printf@plt
	lw	a5,-164(s0)
	addiw	a5,a5,1
	sw	a5,-164(s0)
.L55:
	lw	a5,-164(s0)
	sext.w	a4,a5
	li	a5,39
	ble	a4,a5,.L57
.L56:
	lla	a0,.LC22
	call	libmin_printf@plt
	j	.L58
.L54:
	lw	a5,-168(s0)
	slli	a5,a5,4
	ld	a4,-184(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,7
	bne	a4,a5,.L58
	lw	a5,-168(s0)
	slli	a5,a5,4
	ld	a4,-184(s0)
	add	a5,a4,a5
	lbu	a5,8(a5)
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC23
	call	libmin_printf@plt
.L58:
	lla	a0,.LC24
	call	libmin_printf@plt
	lw	a5,-168(s0)
	addiw	a5,a5,1
	sw	a5,-168(s0)
.L50:
	lw	a5,-168(s0)
	sext.w	a4,a5
	li	a5,29
	ble	a4,a5,.L59
	j	.L52
.L61:
	nop
.L52:
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L60
	call	__stack_chk_fail@plt
.L60:
	ld	ra,184(sp)
	.cfi_restore 1
	ld	s0,176(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	re_print, .-re_print
	.align	1
	.type	matchdigit, @function
matchdigit:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	la	a5,_pctype
	ld	a4,0(a5)
	lbu	a5,-17(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,4
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	matchdigit, .-matchdigit
	.align	1
	.type	matchalpha, @function
matchalpha:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	la	a5,_pctype
	ld	a4,0(a5)
	lbu	a5,-17(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,3
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	matchalpha, .-matchalpha
	.align	1
	.type	matchwhitespace, @function
matchwhitespace:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	la	a5,_pctype
	ld	a4,0(a5)
	lbu	a5,-17(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	andi	a5,a5,8
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	matchwhitespace, .-matchwhitespace
	.align	1
	.type	matchalphanum, @function
matchalphanum:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,95
	beq	a4,a5,.L69
	lbu	a5,-17(s0)
	mv	a0,a5
	call	matchalpha
	mv	a5,a0
	bne	a5,zero,.L69
	lbu	a5,-17(s0)
	mv	a0,a5
	call	matchdigit
	mv	a5,a0
	beq	a5,zero,.L70
.L69:
	li	a5,1
	j	.L71
.L70:
	li	a5,0
.L71:
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
.LFE10:
	.size	matchalphanum, .-matchalphanum
	.align	1
	.type	matchrange, @function
matchrange:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-32(s0)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,45
	beq	a4,a5,.L74
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L74
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	beq	a4,a5,.L74
	ld	a5,-32(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	bne	a4,a5,.L74
	ld	a5,-32(s0)
	addi	a5,a5,2
	lbu	a5,0(a5)
	beq	a5,zero,.L74
	ld	a5,-32(s0)
	lbu	a4,0(a5)
	lbu	a5,-17(s0)
	andi	a5,a5,0xff
	bltu	a5,a4,.L74
	ld	a5,-32(s0)
	addi	a5,a5,2
	lbu	a4,0(a5)
	lbu	a5,-17(s0)
	andi	a5,a5,0xff
	bgtu	a5,a4,.L74
	li	a5,1
	j	.L75
.L74:
	li	a5,0
.L75:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	matchrange, .-matchrange
	.align	1
	.type	matchdot, @function
matchdot:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	li	a5,1
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	matchdot, .-matchdot
	.align	1
	.type	ismetachar, @function
ismetachar:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,115
	beq	a4,a5,.L80
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,83
	beq	a4,a5,.L80
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,119
	beq	a4,a5,.L80
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,87
	beq	a4,a5,.L80
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,100
	beq	a4,a5,.L80
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,68
	bne	a4,a5,.L81
.L80:
	li	a5,1
	j	.L82
.L81:
	li	a5,0
.L82:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	ismetachar, .-ismetachar
	.align	1
	.type	matchmetachar, @function
matchmetachar:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-32(s0)
	sb	a5,-17(s0)
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a3,a5
	li	a4,68
	beq	a3,a4,.L85
	mv	a3,a5
	li	a4,68
	blt	a3,a4,.L86
	mv	a3,a5
	li	a4,119
	bgt	a3,a4,.L86
	mv	a3,a5
	li	a4,83
	blt	a3,a4,.L86
	addiw	a3,a5,-83
	sext.w	a4,a3
	li	a5,36
	bgtu	a4,a5,.L86
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a4,a5,2
	lla	a5,.L88
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L88
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L88:
	.word	.L92-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L91-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L90-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L89-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L86-.L88
	.word	.L87-.L88
	.text
.L90:
	lbu	a5,-17(s0)
	mv	a0,a5
	call	matchdigit
	mv	a5,a0
	j	.L93
.L85:
	lbu	a5,-17(s0)
	mv	a0,a5
	call	matchdigit
	mv	a5,a0
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L93
.L87:
	lbu	a5,-17(s0)
	mv	a0,a5
	call	matchalphanum
	mv	a5,a0
	j	.L93
.L91:
	lbu	a5,-17(s0)
	mv	a0,a5
	call	matchalphanum
	mv	a5,a0
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L93
.L89:
	lbu	a5,-17(s0)
	mv	a0,a5
	call	matchwhitespace
	mv	a5,a0
	j	.L93
.L92:
	lbu	a5,-17(s0)
	mv	a0,a5
	call	matchwhitespace
	mv	a5,a0
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L93
.L86:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	lbu	a4,-17(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
.L93:
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
.LFE14:
	.size	matchmetachar, .-matchmetachar
	.align	1
	.type	matchcharclass, @function
matchcharclass:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-32(s0)
	sb	a5,-17(s0)
.L104:
	lbu	a5,-17(s0)
	ld	a1,-32(s0)
	mv	a0,a5
	call	matchrange
	mv	a5,a0
	beq	a5,zero,.L95
	li	a5,1
	j	.L96
.L95:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,92
	bne	a4,a5,.L97
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
	lbu	a5,-17(s0)
	ld	a1,-32(s0)
	mv	a0,a5
	call	matchmetachar
	mv	a5,a0
	beq	a5,zero,.L98
	li	a5,1
	j	.L96
.L98:
	ld	a5,-32(s0)
	lbu	a4,0(a5)
	lbu	a5,-17(s0)
	andi	a5,a5,0xff
	bne	a5,a4,.L99
	lbu	a5,-17(s0)
	mv	a0,a5
	call	ismetachar
	mv	a5,a0
	bne	a5,zero,.L99
	li	a5,1
	j	.L96
.L97:
	ld	a5,-32(s0)
	lbu	a4,0(a5)
	lbu	a5,-17(s0)
	andi	a5,a5,0xff
	bne	a5,a4,.L99
	lbu	a5,-17(s0)
	andi	a4,a5,0xff
	li	a5,45
	bne	a4,a5,.L100
	ld	a5,-32(s0)
	addi	a5,a5,-1
	lbu	a5,0(a5)
	beq	a5,zero,.L101
	ld	a5,-32(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	bne	a5,zero,.L102
.L101:
	li	a5,1
	j	.L96
.L102:
	li	a5,0
	j	.L96
.L100:
	li	a5,1
	j	.L96
.L99:
	ld	a5,-32(s0)
	addi	a4,a5,1
	sd	a4,-32(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L104
	li	a5,0
.L96:
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
.LFE15:
	.size	matchcharclass, .-matchcharclass
	.align	1
	.type	matchone, @function
matchone:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-32(s0)
	sd	a1,-24(s0)
	mv	a5,a2
	sb	a5,-33(s0)
	lbu	a5,-32(s0)
	sext.w	a5,a5
	mv	a3,a5
	li	a4,15
	bgtu	a3,a4,.L106
	slli	a4,a5,2
	lla	a5,.L108
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L108
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L108:
	.word	.L106-.L108
	.word	.L116-.L108
	.word	.L106-.L108
	.word	.L106-.L108
	.word	.L106-.L108
	.word	.L106-.L108
	.word	.L106-.L108
	.word	.L106-.L108
	.word	.L115-.L108
	.word	.L114-.L108
	.word	.L113-.L108
	.word	.L112-.L108
	.word	.L111-.L108
	.word	.L110-.L108
	.word	.L109-.L108
	.word	.L107-.L108
	.text
.L116:
	lbu	a5,-33(s0)
	mv	a0,a5
	call	matchdot
	mv	a5,a0
	j	.L117
.L115:
	ld	a4,-24(s0)
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	matchcharclass
	mv	a5,a0
	j	.L117
.L114:
	ld	a4,-24(s0)
	lbu	a5,-33(s0)
	mv	a1,a4
	mv	a0,a5
	call	matchcharclass
	mv	a5,a0
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L117
.L113:
	lbu	a5,-33(s0)
	mv	a0,a5
	call	matchdigit
	mv	a5,a0
	j	.L117
.L112:
	lbu	a5,-33(s0)
	mv	a0,a5
	call	matchdigit
	mv	a5,a0
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L117
.L111:
	lbu	a5,-33(s0)
	mv	a0,a5
	call	matchalphanum
	mv	a5,a0
	j	.L117
.L110:
	lbu	a5,-33(s0)
	mv	a0,a5
	call	matchalphanum
	mv	a5,a0
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L117
.L109:
	lbu	a5,-33(s0)
	mv	a0,a5
	call	matchwhitespace
	mv	a5,a0
	j	.L117
.L107:
	lbu	a5,-33(s0)
	mv	a0,a5
	call	matchwhitespace
	mv	a5,a0
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L117
.L106:
	lbu	a5,-24(s0)
	lbu	a4,-33(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
.L117:
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
.LFE16:
	.size	matchone, .-matchone
	.align	1
	.type	matchstar, @function
matchstar:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-48(s0)
	sd	a1,-40(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	sd	a4,-72(s0)
	ld	a5,-72(s0)
	lw	a5,0(a5)
	sw	a5,-28(s0)
	ld	a5,-64(s0)
	sd	a5,-24(s0)
	j	.L119
.L121:
	ld	a5,-64(s0)
	addi	a5,a5,1
	sd	a5,-64(s0)
	ld	a5,-72(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-72(s0)
	sw	a4,0(a5)
.L119:
	ld	a5,-64(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L122
	ld	a5,-64(s0)
	lbu	a5,0(a5)
	mv	a2,a5
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	matchone
	mv	a5,a0
	bne	a5,zero,.L121
	j	.L122
.L125:
	ld	a5,-64(s0)
	addi	a4,a5,-1
	sd	a4,-64(s0)
	ld	a2,-72(s0)
	mv	a1,a5
	ld	a0,-56(s0)
	call	matchpattern
	mv	a5,a0
	beq	a5,zero,.L123
	li	a5,1
	j	.L124
.L123:
	ld	a5,-72(s0)
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	ld	a5,-72(s0)
	sw	a4,0(a5)
.L122:
	ld	a4,-64(s0)
	ld	a5,-24(s0)
	bgeu	a4,a5,.L125
	ld	a5,-72(s0)
	lw	a4,-28(s0)
	sw	a4,0(a5)
	li	a5,0
.L124:
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	matchstar, .-matchstar
	.align	1
	.type	matchplus, @function
matchplus:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-48(s0)
	sd	a1,-40(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	sd	a4,-72(s0)
	ld	a5,-64(s0)
	sd	a5,-24(s0)
	j	.L127
.L129:
	ld	a5,-64(s0)
	addi	a5,a5,1
	sd	a5,-64(s0)
	ld	a5,-72(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-72(s0)
	sw	a4,0(a5)
.L127:
	ld	a5,-64(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L130
	ld	a5,-64(s0)
	lbu	a5,0(a5)
	mv	a2,a5
	ld	a0,-48(s0)
	ld	a1,-40(s0)
	call	matchone
	mv	a5,a0
	bne	a5,zero,.L129
	j	.L130
.L133:
	ld	a5,-64(s0)
	addi	a4,a5,-1
	sd	a4,-64(s0)
	ld	a2,-72(s0)
	mv	a1,a5
	ld	a0,-56(s0)
	call	matchpattern
	mv	a5,a0
	beq	a5,zero,.L131
	li	a5,1
	j	.L132
.L131:
	ld	a5,-72(s0)
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	ld	a5,-72(s0)
	sw	a4,0(a5)
.L130:
	ld	a4,-64(s0)
	ld	a5,-24(s0)
	bgtu	a4,a5,.L133
	li	a5,0
.L132:
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	matchplus, .-matchplus
	.align	1
	.type	matchquestion, @function
matchquestion:
.LFB19:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-32(s0)
	sd	a1,-24(s0)
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	sd	a4,-56(s0)
	lbu	a5,-32(s0)
	bne	a5,zero,.L135
	li	a5,1
	j	.L136
.L135:
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	matchpattern
	mv	a5,a0
	beq	a5,zero,.L137
	li	a5,1
	j	.L136
.L137:
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L138
	ld	a5,-48(s0)
	addi	a4,a5,1
	sd	a4,-48(s0)
	lbu	a5,0(a5)
	mv	a2,a5
	ld	a0,-32(s0)
	ld	a1,-24(s0)
	call	matchone
	mv	a5,a0
	beq	a5,zero,.L138
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	matchpattern
	mv	a5,a0
	beq	a5,zero,.L138
	ld	a5,-56(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-56(s0)
	sw	a4,0(a5)
	li	a5,1
	j	.L136
.L138:
	li	a5,0
.L136:
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
.LFE19:
	.size	matchquestion, .-matchquestion
	.align	1
	.type	matchpattern, @function
matchpattern:
.LFB20:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
.L147:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L140
	ld	a5,-40(s0)
	addi	a5,a5,16
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,4
	bne	a4,a5,.L141
.L140:
	ld	a5,-40(s0)
	addi	a2,a5,32
	ld	a5,-40(s0)
	ld	a4,-56(s0)
	ld	a3,-48(s0)
	ld	a0,0(a5)
	ld	a1,8(a5)
	call	matchquestion
	mv	a5,a0
	j	.L142
.L141:
	ld	a5,-40(s0)
	addi	a5,a5,16
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,5
	bne	a4,a5,.L143
	ld	a5,-40(s0)
	addi	a2,a5,32
	ld	a5,-40(s0)
	ld	a4,-56(s0)
	ld	a3,-48(s0)
	ld	a0,0(a5)
	ld	a1,8(a5)
	call	matchstar
	mv	a5,a0
	j	.L142
.L143:
	ld	a5,-40(s0)
	addi	a5,a5,16
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,6
	bne	a4,a5,.L144
	ld	a5,-40(s0)
	addi	a2,a5,32
	ld	a5,-40(s0)
	ld	a4,-56(s0)
	ld	a3,-48(s0)
	ld	a0,0(a5)
	ld	a1,8(a5)
	call	matchplus
	mv	a5,a0
	j	.L142
.L144:
	ld	a5,-40(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,3
	bne	a4,a5,.L145
	ld	a5,-40(s0)
	addi	a5,a5,16
	lbu	a5,0(a5)
	bne	a5,zero,.L145
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	sext.w	a5,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a5,a5
	j	.L142
.L145:
	ld	a5,-56(s0)
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	ld	a5,-56(s0)
	sw	a4,0(a5)
	ld	a5,-48(s0)
	lbu	a5,0(a5)
	beq	a5,zero,.L146
	ld	a5,-40(s0)
	addi	a4,a5,16
	sd	a4,-40(s0)
	ld	a4,-48(s0)
	addi	a3,a4,1
	sd	a3,-48(s0)
	lbu	a4,0(a4)
	mv	a2,a4
	ld	a0,0(a5)
	ld	a1,8(a5)
	call	matchone
	mv	a5,a0
	bne	a5,zero,.L147
.L146:
	ld	a5,-56(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	li	a5,0
.L142:
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
.LFE20:
	.size	matchpattern, .-matchpattern
	.globl	test_vector
	.section	.rodata
	.align	3
.LC25:
	.string	"\\d"
	.align	3
.LC26:
	.string	"5"
	.align	3
.LC27:
	.string	"\\w+"
	.align	3
.LC28:
	.string	"hej"
	.align	3
.LC29:
	.string	"\\s"
	.align	3
.LC30:
	.string	"\t \n"
	.align	3
.LC31:
	.string	"\\S"
	.align	3
.LC32:
	.string	"[\\s]"
	.align	3
.LC33:
	.string	"[\\S]"
	.align	3
.LC34:
	.string	"\\D"
	.align	3
.LC35:
	.string	"\\W+"
	.align	3
.LC36:
	.string	"[0-9]+"
	.align	3
.LC37:
	.string	"12345"
	.align	3
.LC38:
	.string	"[^\\w]"
	.align	3
.LC39:
	.string	"\\"
	.align	3
.LC40:
	.string	"[\\W]"
	.align	3
.LC41:
	.string	"[\\w]"
	.align	3
.LC42:
	.string	"[^\\d]"
	.align	3
.LC43:
	.string	"d"
	.align	3
.LC44:
	.string	"[\\d]"
	.align	3
.LC45:
	.string	"[^\\D]"
	.align	3
.LC46:
	.string	"[\\D]"
	.align	3
.LC47:
	.string	"^.*\\\\.*$"
	.align	3
.LC48:
	.string	"c:\\Tools"
	.align	3
.LC49:
	.string	"^[\\+-]*[\\d]+$"
	.align	3
.LC50:
	.string	"+27"
	.align	3
.LC51:
	.string	"[abc]"
	.align	3
.LC52:
	.string	"1c2"
	.align	3
.LC53:
	.string	"1C2"
	.align	3
.LC54:
	.string	"[1-5]+"
	.align	3
.LC55:
	.string	"0123456789"
	.align	3
.LC56:
	.string	"[.2]"
	.align	3
.LC57:
	.string	"a*$"
	.align	3
.LC58:
	.string	"Xaa"
	.align	3
.LC59:
	.string	"[a-h]+"
	.align	3
.LC60:
	.string	"abcdefghxxx"
	.align	3
.LC61:
	.string	"ABCDEFGH"
	.align	3
.LC62:
	.string	"[A-H]+"
	.align	3
.LC63:
	.string	"abcdefgh"
	.align	3
.LC64:
	.string	"[^\\s]+"
	.align	3
.LC65:
	.string	"abc def"
	.align	3
.LC66:
	.string	"[^fc]+"
	.align	3
.LC67:
	.string	"[^d\\sf]+"
	.align	3
.LC68:
	.string	"abc\ndef"
	.align	3
.LC69:
	.string	"b.\\s*\n"
	.align	3
.LC70:
	.string	"aa\r\nbb\r\ncc\r\n\r\n"
	.align	3
.LC71:
	.string	".*c"
	.align	3
.LC72:
	.string	"abcabc"
	.align	3
.LC73:
	.string	".+c"
	.align	3
.LC74:
	.string	"[b-z].*"
	.align	3
.LC75:
	.string	"ab"
	.align	3
.LC76:
	.string	"b[k-z]*"
	.align	3
.LC77:
	.string	"[0-9]"
	.align	3
.LC78:
	.string	"  - "
	.align	3
.LC79:
	.string	"[^0-9]"
	.align	3
.LC80:
	.string	"0|"
	.align	3
.LC81:
	.string	"\\d\\d:\\d\\d:\\d\\d"
	.align	3
.LC82:
	.string	"0s:00:00"
	.align	3
.LC83:
	.string	"000:00"
	.align	3
.LC84:
	.string	"00:0000"
	.align	3
.LC85:
	.string	"100:0:00"
	.align	3
.LC86:
	.string	"00:100:00"
	.align	3
.LC87:
	.string	"0:00:100"
	.align	3
.LC88:
	.string	"\\d\\d?:\\d\\d?:\\d\\d?"
	.align	3
.LC89:
	.string	"0:0:0"
	.align	3
.LC90:
	.string	"0:00:0"
	.align	3
.LC91:
	.string	"0:0:00"
	.align	3
.LC92:
	.string	"00:0:0"
	.align	3
.LC93:
	.string	"00:00:0"
	.align	3
.LC94:
	.string	"00:0:00"
	.align	3
.LC95:
	.string	"0:00:00"
	.align	3
.LC96:
	.string	"00:00:00"
	.align	3
.LC97:
	.string	"[Hh]ello [Ww]orld\\s*[!]?"
	.align	3
.LC98:
	.string	"Hello world !"
	.align	3
.LC99:
	.string	"hello world !"
	.align	3
.LC100:
	.string	"Hello World !"
	.align	3
.LC101:
	.string	"Hello world!   "
	.align	3
.LC102:
	.string	"Hello world  !"
	.align	3
.LC103:
	.string	"hello World    !"
	.align	3
.LC104:
	.string	"a:0"
	.align	3
.LC105:
	.string	".?bar"
	.align	3
.LC106:
	.string	"real_bar"
	.align	3
.LC107:
	.string	"real_foo"
	.align	3
.LC108:
	.string	"X?Y"
	.align	3
.LC109:
	.string	"Z"
	.align	3
.LC110:
	.string	"[a-z]+\nbreak"
	.align	3
.LC111:
	.string	"blahblah\nbreak"
	.align	3
.LC112:
	.string	"[a-z\\s]+\nbreak"
	.align	3
.LC113:
	.string	"bla bla \nbreak"
	.section	.data.rel.local,"aw"
	.align	3
	.type	test_vector, @object
	.size	test_vector, 2176
test_vector:
	.dword	1
	.dword	.LC25
	.dword	.LC26
	.dword	1
	.dword	1
	.dword	.LC27
	.dword	.LC28
	.dword	3
	.dword	1
	.dword	.LC29
	.dword	.LC30
	.dword	1
	.dword	0
	.dword	.LC31
	.dword	.LC30
	.dword	0
	.dword	1
	.dword	.LC32
	.dword	.LC30
	.dword	1
	.dword	0
	.dword	.LC33
	.dword	.LC30
	.dword	0
	.dword	0
	.dword	.LC34
	.dword	.LC26
	.dword	0
	.dword	0
	.dword	.LC35
	.dword	.LC28
	.dword	0
	.dword	1
	.dword	.LC36
	.dword	.LC37
	.dword	5
	.dword	1
	.dword	.LC34
	.dword	.LC28
	.dword	1
	.dword	0
	.dword	.LC25
	.dword	.LC28
	.dword	0
	.dword	1
	.dword	.LC38
	.dword	.LC39
	.dword	1
	.dword	1
	.dword	.LC40
	.dword	.LC39
	.dword	1
	.dword	0
	.dword	.LC41
	.dword	.LC39
	.dword	0
	.dword	1
	.dword	.LC42
	.dword	.LC43
	.dword	1
	.dword	0
	.dword	.LC44
	.dword	.LC43
	.dword	0
	.dword	0
	.dword	.LC45
	.dword	.LC43
	.dword	0
	.dword	1
	.dword	.LC46
	.dword	.LC43
	.dword	1
	.dword	1
	.dword	.LC47
	.dword	.LC48
	.dword	8
	.dword	1
	.dword	.LC49
	.dword	.LC50
	.dword	3
	.dword	1
	.dword	.LC51
	.dword	.LC52
	.dword	1
	.dword	0
	.dword	.LC51
	.dword	.LC53
	.dword	0
	.dword	1
	.dword	.LC54
	.dword	.LC55
	.dword	5
	.dword	1
	.dword	.LC56
	.dword	.LC53
	.dword	1
	.dword	1
	.dword	.LC57
	.dword	.LC58
	.dword	2
	.dword	1
	.dword	.LC57
	.dword	.LC58
	.dword	2
	.dword	1
	.dword	.LC59
	.dword	.LC60
	.dword	8
	.dword	0
	.dword	.LC59
	.dword	.LC61
	.dword	0
	.dword	1
	.dword	.LC62
	.dword	.LC61
	.dword	8
	.dword	0
	.dword	.LC62
	.dword	.LC63
	.dword	0
	.dword	1
	.dword	.LC64
	.dword	.LC65
	.dword	3
	.dword	1
	.dword	.LC66
	.dword	.LC65
	.dword	2
	.dword	1
	.dword	.LC67
	.dword	.LC65
	.dword	3
	.dword	1
	.dword	.LC24
	.dword	.LC68
	.dword	1
	.dword	1
	.dword	.LC69
	.dword	.LC70
	.dword	4
	.dword	1
	.dword	.LC71
	.dword	.LC72
	.dword	6
	.dword	1
	.dword	.LC73
	.dword	.LC72
	.dword	6
	.dword	1
	.dword	.LC74
	.dword	.LC75
	.dword	1
	.dword	1
	.dword	.LC76
	.dword	.LC75
	.dword	1
	.dword	0
	.dword	.LC77
	.dword	.LC78
	.dword	0
	.dword	1
	.dword	.LC79
	.dword	.LC78
	.dword	1
	.dword	1
	.dword	.LC80
	.dword	.LC80
	.dword	2
	.dword	0
	.dword	.LC81
	.dword	.LC82
	.dword	0
	.dword	0
	.dword	.LC81
	.dword	.LC83
	.dword	0
	.dword	0
	.dword	.LC81
	.dword	.LC84
	.dword	0
	.dword	0
	.dword	.LC81
	.dword	.LC85
	.dword	0
	.dword	0
	.dword	.LC81
	.dword	.LC86
	.dword	0
	.dword	0
	.dword	.LC81
	.dword	.LC87
	.dword	0
	.dword	1
	.dword	.LC88
	.dword	.LC89
	.dword	5
	.dword	1
	.dword	.LC88
	.dword	.LC90
	.dword	6
	.dword	1
	.dword	.LC88
	.dword	.LC91
	.dword	5
	.dword	1
	.dword	.LC88
	.dword	.LC92
	.dword	6
	.dword	1
	.dword	.LC88
	.dword	.LC93
	.dword	7
	.dword	1
	.dword	.LC88
	.dword	.LC94
	.dword	6
	.dword	1
	.dword	.LC88
	.dword	.LC95
	.dword	6
	.dword	1
	.dword	.LC88
	.dword	.LC96
	.dword	7
	.dword	1
	.dword	.LC97
	.dword	.LC98
	.dword	12
	.dword	1
	.dword	.LC97
	.dword	.LC99
	.dword	12
	.dword	1
	.dword	.LC97
	.dword	.LC100
	.dword	12
	.dword	1
	.dword	.LC97
	.dword	.LC101
	.dword	11
	.dword	1
	.dword	.LC97
	.dword	.LC102
	.dword	13
	.dword	1
	.dword	.LC97
	.dword	.LC103
	.dword	15
	.dword	0
	.dword	.LC88
	.dword	.LC104
	.dword	0
	.dword	1
	.dword	.LC105
	.dword	.LC106
	.dword	4
	.dword	0
	.dword	.LC105
	.dword	.LC107
	.dword	0
	.dword	0
	.dword	.LC108
	.dword	.LC109
	.dword	0
	.dword	1
	.dword	.LC110
	.dword	.LC111
	.dword	14
	.dword	1
	.dword	.LC112
	.dword	.LC113
	.dword	14
	.section	.rodata
	.align	3
.LC114:
	.string	"[%lu/%lu]: pattern '%s' matched '%s' unexpectedly, matched %i chars. \n"
	.align	3
.LC115:
	.string	"[%lu/%lu]: pattern '%s' didn't match '%s' as expected. \n"
	.align	3
.LC116:
	.string	"[%lu/%lu]: pattern '%s' matched '%i' chars of '%s'; expected '%i'. \n"
	.align	3
.LC117:
	.string	"%lu/%lu tests succeeded.\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB21:
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
	li	a5,68
	sd	a5,-48(s0)
	sd	zero,-64(s0)
	sd	zero,-56(s0)
	j	.L149
.L153:
	lla	a4,test_vector
	ld	a5,-56(s0)
	slli	a5,a5,5
	add	a5,a4,a5
	ld	a5,8(a5)
	sd	a5,-40(s0)
	lla	a4,test_vector
	ld	a5,-56(s0)
	slli	a5,a5,5
	add	a5,a4,a5
	ld	a5,16(a5)
	sd	a5,-32(s0)
	lla	a4,test_vector
	ld	a5,-56(s0)
	slli	a5,a5,5
	add	a5,a4,a5
	ld	a5,0(a5)
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-76(s0)
	lla	a4,test_vector
	ld	a5,-56(s0)
	slli	a5,a5,5
	add	a5,a4,a5
	ld	a5,24(a5)
	sw	a5,-72(s0)
	addi	a5,s0,-80
	mv	a2,a5
	ld	a1,-32(s0)
	ld	a0,-40(s0)
	call	re_match
	mv	a5,a0
	sw	a5,-68(s0)
	lw	a5,-76(s0)
	sext.w	a5,a5
	beq	a5,zero,.L150
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,-1
	beq	a4,a5,.L151
	lla	a0,.LC24
	call	libmin_printf@plt
	ld	a0,-40(s0)
	call	re_compile
	mv	a5,a0
	mv	a0,a5
	call	re_print
	ld	a5,-56(s0)
	addi	a1,a5,1
	lw	a5,-80(s0)
	ld	a4,-32(s0)
	ld	a3,-40(s0)
	ld	a2,-48(s0)
	lla	a0,.LC114
	call	libmin_printf@plt
	ld	a5,-64(s0)
	addi	a5,a5,1
	sd	a5,-64(s0)
	j	.L151
.L150:
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L152
	lla	a0,.LC24
	call	libmin_printf@plt
	ld	a0,-40(s0)
	call	re_compile
	mv	a5,a0
	mv	a0,a5
	call	re_print
	ld	a5,-56(s0)
	addi	a5,a5,1
	ld	a4,-32(s0)
	ld	a3,-40(s0)
	ld	a2,-48(s0)
	mv	a1,a5
	lla	a0,.LC115
	call	libmin_printf@plt
	ld	a5,-64(s0)
	addi	a5,a5,1
	sd	a5,-64(s0)
	j	.L151
.L152:
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	sext.w	a5,a5
	beq	a5,a4,.L151
	ld	a5,-56(s0)
	addi	a1,a5,1
	lw	a4,-80(s0)
	lw	a5,-72(s0)
	mv	a6,a5
	ld	a5,-32(s0)
	ld	a3,-40(s0)
	ld	a2,-48(s0)
	lla	a0,.LC116
	call	libmin_printf@plt
	ld	a5,-64(s0)
	addi	a5,a5,1
	sd	a5,-64(s0)
.L151:
	ld	a5,-56(s0)
	addi	a5,a5,1
	sd	a5,-56(s0)
.L149:
	ld	a4,-56(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L153
	ld	a4,-48(s0)
	ld	a5,-64(s0)
	sub	a5,a4,a5
	ld	a2,-48(s0)
	mv	a1,a5
	lla	a0,.LC117
	call	libmin_printf@plt
	ld	a5,-64(s0)
	beq	a5,zero,.L154
	ld	a5,-64(s0)
	sext.w	a5,a5
	j	.L156
.L154:
	call	libmin_success@plt
	li	a5,0
.L156:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L157
	call	__stack_chk_fail@plt
.L157:
	mv	a0,a4
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	main, .-main
	.local	re_compiled.1
	.comm	re_compiled.1,480,8
	.local	ccl_buf.0
	.comm	ccl_buf.0,40,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
