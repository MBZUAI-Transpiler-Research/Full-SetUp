	.file	"problem154.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC32:
	.string	"%s.%s"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
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
	sd	a3,-96(s0)
	sw	a5,-84(s0)
	li	a5,-1000
	sw	a5,-48(s0)
	sd	zero,-32(s0)
	sw	zero,-44(s0)
	j	.L2
.L8:
	lw	a5,-44(s0)
	slli	a5,a5,3
	ld	a4,-80(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-24(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	j	.L3
.L6:
	lw	a5,-36(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-49(s0)
	lbu	a5,-49(s0)
	andi	a4,a5,0xff
	li	a5,64
	bleu	a4,a5,.L4
	lbu	a5,-49(s0)
	andi	a4,a5,0xff
	li	a5,90
	bgtu	a4,a5,.L4
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L4:
	lbu	a5,-49(s0)
	andi	a4,a5,0xff
	li	a5,96
	bleu	a4,a5,.L5
	lbu	a5,-49(s0)
	andi	a4,a5,0xff
	li	a5,122
	bgtu	a4,a5,.L5
	lw	a5,-40(s0)
	addiw	a5,a5,-1
	sw	a5,-40(s0)
.L5:
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L3:
	lw	a5,-36(s0)
	ld	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	bne	a5,zero,.L6
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-48(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L7
	lw	a5,-40(s0)
	sw	a5,-48(s0)
	ld	a5,-24(s0)
	sd	a5,-32(s0)
.L7:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L2:
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L8
	ld	a3,-32(s0)
	ld	a2,-72(s0)
	lla	a1,.LC32
	ld	a0,-96(s0)
	call	sprintf@plt
	nop
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC33:
	.string	"tEN"
	.align	3
.LC34:
	.string	"niNE"
	.align	3
.LC35:
	.string	"eIGHt8OKe"
	.align	3
.LC36:
	.string	"Watashi"
	.align	3
.LC37:
	.string	"Watashi.eIGHt8OKe"
	.align	3
.LC38:
	.string	"problem154.c"
	.align	3
.LC39:
	.string	"strcmp(result, \"Watashi.eIGHt8OKe\") == 0"
	.align	3
.LC41:
	.string	"Boku123"
	.align	3
.LC42:
	.string	"Boku123.YEs.WeCaNe"
	.align	3
.LC43:
	.string	"strcmp(result, \"Boku123.YEs.WeCaNe\") == 0"
	.align	3
.LC45:
	.string	"__YESIMHERE"
	.align	3
.LC46:
	.string	"__YESIMHERE.NuLl__"
	.align	3
.LC47:
	.string	"strcmp(result, \"__YESIMHERE.NuLl__\") == 0"
	.align	3
.LC49:
	.string	"K"
	.align	3
.LC50:
	.string	"K.TAR"
	.align	3
.LC51:
	.string	"strcmp(result, \"K.TAR\") == 0"
	.align	3
.LC53:
	.string	"__HAHA"
	.align	3
.LC54:
	.string	"__HAHA.123"
	.align	3
.LC55:
	.string	"strcmp(result, \"__HAHA.123\") == 0"
	.align	3
.LC57:
	.string	"YameRore"
	.align	3
.LC58:
	.string	"YameRore.okIWILL123"
	.align	3
.LC59:
	.string	"strcmp(result, \"YameRore.okIWILL123\") == 0"
	.align	3
.LC61:
	.string	"finNNalLLly"
	.align	3
.LC62:
	.string	"finNNalLLly.WoW"
	.align	3
.LC63:
	.string	"strcmp(result, \"finNNalLLly.WoW\") == 0"
	.align	3
.LC64:
	.string	"Bb"
	.align	3
.LC65:
	.string	"91245"
	.align	3
.LC66:
	.string	"_"
	.align	3
.LC67:
	.string	"_.Bb"
	.align	3
.LC68:
	.string	"strcmp(result, \"_.Bb\") == 0"
	.align	3
.LC69:
	.string	"671235"
	.align	3
.LC70:
	.string	"Sp"
	.align	3
.LC71:
	.string	"Sp.671235"
	.align	3
.LC72:
	.string	"strcmp(result, \"Sp.671235\") == 0"
	.align	3
.LC0:
	.string	"nani"
	.align	3
.LC1:
	.string	"NazeDa"
	.align	3
.LC2:
	.string	"YEs.WeCaNe"
	.align	3
.LC3:
	.string	"32145tggg"
	.data
	.align	3
.LC40:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.section	.rodata
	.align	3
.LC5:
	.string	"t"
	.align	3
.LC6:
	.string	"eMptY"
	.align	3
.LC7:
	.string	"(nothing"
	.align	3
.LC8:
	.string	"zeR00"
	.align	3
.LC9:
	.string	"NuLl__"
	.align	3
.LC10:
	.string	"123NoooneB321"
	.data
	.align	3
.LC44:
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.dword	.LC10
	.section	.rodata
	.align	3
.LC12:
	.string	"Ta"
	.align	3
.LC13:
	.string	"TAR"
	.align	3
.LC14:
	.string	"t234An"
	.align	3
.LC15:
	.string	"cosSo"
	.data
	.align	3
.LC48:
	.dword	.LC12
	.dword	.LC13
	.dword	.LC14
	.dword	.LC15
	.section	.rodata
	.align	3
.LC17:
	.string	"Tab"
	.align	3
.LC18:
	.string	"123"
	.align	3
.LC19:
	.string	"781345"
	.align	3
.LC20:
	.string	"-_-"
	.data
	.align	3
.LC52:
	.dword	.LC17
	.dword	.LC18
	.dword	.LC19
	.dword	.LC20
	.section	.rodata
	.align	3
.LC22:
	.string	"HhAas"
	.align	3
.LC23:
	.string	"okIWILL123"
	.align	3
.LC24:
	.string	"WorkOut"
	.align	3
.LC25:
	.string	"Fails"
	.data
	.align	3
.LC56:
	.dword	.LC22
	.dword	.LC23
	.dword	.LC24
	.dword	.LC25
	.dword	.LC20
	.section	.rodata
	.align	3
.LC27:
	.string	"Die"
	.align	3
.LC28:
	.string	"NowW"
	.align	3
.LC29:
	.string	"Wow"
	.align	3
.LC30:
	.string	"WoW"
	.data
	.align	3
.LC60:
	.dword	.LC27
	.dword	.LC28
	.dword	.LC29
	.dword	.LC30
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-352
	.cfi_def_cfa_offset 352
	sd	ra,344(sp)
	sd	s0,336(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,352
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC33
	sd	a5,-320(s0)
	lla	a5,.LC34
	sd	a5,-312(s0)
	lla	a5,.LC35
	sd	a5,-304(s0)
	addi	a4,s0,-80
	addi	a5,s0,-320
	mv	a3,a4
	li	a2,3
	mv	a1,a5
	lla	a0,.LC36
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC37
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC38
	lla	a0,.LC39
	call	__assert_fail@plt
.L10:
	lla	a5,.LC40
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-296(s0)
	sd	a3,-288(s0)
	sd	a4,-280(s0)
	sd	a5,-272(s0)
	addi	a4,s0,-80
	addi	a5,s0,-296
	mv	a3,a4
	li	a2,4
	mv	a1,a5
	lla	a0,.LC41
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC42
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC38
	lla	a0,.LC43
	call	__assert_fail@plt
.L11:
	lla	a5,.LC44
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-128(s0)
	sd	a1,-120(s0)
	sd	a2,-112(s0)
	sd	a3,-104(s0)
	sd	a4,-96(s0)
	sd	a5,-88(s0)
	addi	a4,s0,-80
	addi	a5,s0,-128
	mv	a3,a4
	li	a2,6
	mv	a1,a5
	lla	a0,.LC45
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC46
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L12
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC38
	lla	a0,.LC47
	call	__assert_fail@plt
.L12:
	lla	a5,.LC48
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-264(s0)
	sd	a3,-256(s0)
	sd	a4,-248(s0)
	sd	a5,-240(s0)
	addi	a4,s0,-80
	addi	a5,s0,-264
	mv	a3,a4
	li	a2,4
	mv	a1,a5
	lla	a0,.LC49
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC50
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L13
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC38
	lla	a0,.LC51
	call	__assert_fail@plt
.L13:
	lla	a5,.LC52
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-232(s0)
	sd	a3,-224(s0)
	sd	a4,-216(s0)
	sd	a5,-208(s0)
	addi	a4,s0,-80
	addi	a5,s0,-232
	mv	a3,a4
	li	a2,4
	mv	a1,a5
	lla	a0,.LC53
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC54
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L14
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC38
	lla	a0,.LC55
	call	__assert_fail@plt
.L14:
	lla	a5,.LC56
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-168(s0)
	sd	a2,-160(s0)
	sd	a3,-152(s0)
	sd	a4,-144(s0)
	sd	a5,-136(s0)
	addi	a4,s0,-80
	addi	a5,s0,-168
	mv	a3,a4
	li	a2,5
	mv	a1,a5
	lla	a0,.LC57
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC58
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC38
	lla	a0,.LC59
	call	__assert_fail@plt
.L15:
	lla	a5,.LC60
	ld	a2,0(a5)
	ld	a3,8(a5)
	ld	a4,16(a5)
	ld	a5,24(a5)
	sd	a2,-200(s0)
	sd	a3,-192(s0)
	sd	a4,-184(s0)
	sd	a5,-176(s0)
	addi	a4,s0,-80
	addi	a5,s0,-200
	mv	a3,a4
	li	a2,4
	mv	a1,a5
	lla	a0,.LC61
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC62
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC38
	lla	a0,.LC63
	call	__assert_fail@plt
.L16:
	lla	a5,.LC64
	sd	a5,-352(s0)
	lla	a5,.LC65
	sd	a5,-344(s0)
	addi	a4,s0,-80
	addi	a5,s0,-352
	mv	a3,a4
	li	a2,2
	mv	a1,a5
	lla	a0,.LC66
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC67
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,53
	lla	a1,.LC38
	lla	a0,.LC68
	call	__assert_fail@plt
.L17:
	lla	a5,.LC69
	sd	a5,-336(s0)
	lla	a5,.LC64
	sd	a5,-328(s0)
	addi	a4,s0,-80
	addi	a5,s0,-336
	mv	a3,a4
	li	a2,2
	mv	a1,a5
	lla	a0,.LC70
	call	func0
	addi	a5,s0,-80
	lla	a1,.LC71
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,56
	lla	a1,.LC38
	lla	a0,.LC72
	call	__assert_fail@plt
.L18:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L20
	call	__stack_chk_fail@plt
.L20:
	mv	a0,a4
	ld	ra,344(sp)
	.cfi_restore 1
	ld	s0,336(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 352
	addi	sp,sp,352
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
