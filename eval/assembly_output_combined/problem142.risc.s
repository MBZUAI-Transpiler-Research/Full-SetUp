	.file	"problem142.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"No"
	.align	3
.LC1:
	.string	".txt"
	.align	3
.LC2:
	.string	".exe"
	.align	3
.LC3:
	.string	".dll"
	.align	3
.LC4:
	.string	"Yes"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
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
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	ld	a0,-56(s0)
	call	strlen@plt
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,4
	bgt	a4,a5,.L2
	lla	a5,.LC0
	j	.L3
.L2:
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,64
	bleu	a4,a5,.L4
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,90
	bleu	a4,a5,.L5
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,96
	bleu	a4,a5,.L4
.L5:
	lbu	a5,-41(s0)
	andi	a4,a5,0xff
	li	a5,122
	bleu	a4,a5,.L6
.L4:
	lla	a5,.LC0
	j	.L3
.L6:
	lw	a5,-28(s0)
	addi	a5,a5,-4
	ld	a4,-56(s0)
	add	a5,a4,a5
	sd	a5,-24(s0)
	lla	a1,.LC1
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a1,.LC2
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a1,.LC3
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L7
	lla	a5,.LC0
	j	.L3
.L7:
	sw	zero,-32(s0)
	j	.L8
.L11:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,47
	bleu	a4,a5,.L9
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,57
	bgtu	a4,a5,.L9
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L9:
	lw	a5,-32(s0)
	ld	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,46
	bne	a4,a5,.L10
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L10:
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L8:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L11
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,3
	bgt	a4,a5,.L12
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	beq	a4,a5,.L13
.L12:
	lla	a5,.LC0
	j	.L3
.L13:
	lla	a5,.LC4
.L3:
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
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"example.txt"
	.align	3
.LC6:
	.string	"problem142.c"
	.align	3
.LC7:
	.string	"strcmp(func0(\"example.txt\"), \"Yes\") == 0"
	.align	3
.LC8:
	.string	"1example.dll"
	.align	3
.LC9:
	.string	"strcmp(func0(\"1example.dll\"), \"No\") == 0"
	.align	3
.LC10:
	.string	"s1sdf3.asd"
	.align	3
.LC11:
	.string	"strcmp(func0(\"s1sdf3.asd\"), \"No\") == 0"
	.align	3
.LC12:
	.string	"K.dll"
	.align	3
.LC13:
	.string	"strcmp(func0(\"K.dll\"), \"Yes\") == 0"
	.align	3
.LC14:
	.string	"MY16FILE3.exe"
	.align	3
.LC15:
	.string	"strcmp(func0(\"MY16FILE3.exe\"), \"Yes\") == 0"
	.align	3
.LC16:
	.string	"His12FILE94.exe"
	.align	3
.LC17:
	.string	"strcmp(func0(\"His12FILE94.exe\"), \"No\") == 0"
	.align	3
.LC18:
	.string	"_Y.txt"
	.align	3
.LC19:
	.string	"strcmp(func0(\"_Y.txt\"), \"No\") == 0"
	.align	3
.LC20:
	.string	"?aREYA.exe"
	.align	3
.LC21:
	.string	"strcmp(func0(\"?aREYA.exe\"), \"No\") == 0"
	.align	3
.LC22:
	.string	"/this_is_valid.dll"
	.align	3
.LC23:
	.string	"strcmp(func0(\"/this_is_valid.dll\"), \"No\") == 0"
	.align	3
.LC24:
	.string	"this_is_valid.wow"
	.align	3
.LC25:
	.string	"strcmp(func0(\"this_is_valid.wow\"), \"No\") == 0"
	.align	3
.LC26:
	.string	"this_is_valid.txt"
	.align	3
.LC27:
	.string	"strcmp(func0(\"this_is_valid.txt\"), \"Yes\") == 0"
	.align	3
.LC28:
	.string	"this_is_valid.txtexe"
	.align	3
.LC29:
	.string	"strcmp(func0(\"this_is_valid.txtexe\"), \"No\") == 0"
	.align	3
.LC30:
	.string	"#this2_i4s_5valid.ten"
	.align	3
.LC31:
	.string	"strcmp(func0(\"#this2_i4s_5valid.ten\"), \"No\") == 0"
	.align	3
.LC32:
	.string	"@this1_is6_valid.exe"
	.align	3
.LC33:
	.string	"strcmp(func0(\"@this1_is6_valid.exe\"), \"No\") == 0"
	.align	3
.LC34:
	.string	"this_is_12valid.6exe4.txt"
	.align	3
.LC35:
	.string	"strcmp(func0(\"this_is_12valid.6exe4.txt\"), \"No\") == 0"
	.align	3
.LC36:
	.string	"all.exe.txt"
	.align	3
.LC37:
	.string	"strcmp(func0(\"all.exe.txt\"), \"No\") == 0"
	.align	3
.LC38:
	.string	"I563_No.exe"
	.align	3
.LC39:
	.string	"strcmp(func0(\"I563_No.exe\"), \"Yes\") == 0"
	.align	3
.LC40:
	.string	"Is3youfault.txt"
	.align	3
.LC41:
	.string	"strcmp(func0(\"Is3youfault.txt\"), \"Yes\") == 0"
	.align	3
.LC42:
	.string	"no_one#knows.dll"
	.align	3
.LC43:
	.string	"strcmp(func0(\"no_one#knows.dll\"), \"Yes\") == 0"
	.align	3
.LC44:
	.string	"1I563_Yes3.exe"
	.align	3
.LC45:
	.string	"strcmp(func0(\"1I563_Yes3.exe\"), \"No\") == 0"
	.align	3
.LC46:
	.string	"I563_Yes3.txtt"
	.align	3
.LC47:
	.string	"strcmp(func0(\"I563_Yes3.txtt\"), \"No\") == 0"
	.align	3
.LC48:
	.string	"final..txt"
	.align	3
.LC49:
	.string	"strcmp(func0(\"final..txt\"), \"No\") == 0"
	.align	3
.LC50:
	.string	"final132"
	.align	3
.LC51:
	.string	"strcmp(func0(\"final132\"), \"No\") == 0"
	.align	3
.LC52:
	.string	"_f4indsartal132."
	.align	3
.LC53:
	.string	"strcmp(func0(\"_f4indsartal132.\"), \"No\") == 0"
	.align	3
.LC54:
	.string	"strcmp(func0(\".txt\"), \"No\") == 0"
	.align	3
.LC55:
	.string	"s."
	.align	3
.LC56:
	.string	"strcmp(func0(\"s.\"), \"No\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a0,.LC5
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L15
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,26
	lla	a1,.LC6
	lla	a0,.LC7
	call	__assert_fail@plt
.L15:
	lla	a0,.LC8
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L16
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,27
	lla	a1,.LC6
	lla	a0,.LC9
	call	__assert_fail@plt
.L16:
	lla	a0,.LC10
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L17
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,28
	lla	a1,.LC6
	lla	a0,.LC11
	call	__assert_fail@plt
.L17:
	lla	a0,.LC12
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L18
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,29
	lla	a1,.LC6
	lla	a0,.LC13
	call	__assert_fail@plt
.L18:
	lla	a0,.LC14
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L19
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,30
	lla	a1,.LC6
	lla	a0,.LC15
	call	__assert_fail@plt
.L19:
	lla	a0,.LC16
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L20
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,31
	lla	a1,.LC6
	lla	a0,.LC17
	call	__assert_fail@plt
.L20:
	lla	a0,.LC18
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L21
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,32
	lla	a1,.LC6
	lla	a0,.LC19
	call	__assert_fail@plt
.L21:
	lla	a0,.LC20
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L22
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC6
	lla	a0,.LC21
	call	__assert_fail@plt
.L22:
	lla	a0,.LC22
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L23
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,34
	lla	a1,.LC6
	lla	a0,.LC23
	call	__assert_fail@plt
.L23:
	lla	a0,.LC24
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L24
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,35
	lla	a1,.LC6
	lla	a0,.LC25
	call	__assert_fail@plt
.L24:
	lla	a0,.LC26
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L25
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,36
	lla	a1,.LC6
	lla	a0,.LC27
	call	__assert_fail@plt
.L25:
	lla	a0,.LC28
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L26
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC6
	lla	a0,.LC29
	call	__assert_fail@plt
.L26:
	lla	a0,.LC30
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L27
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,38
	lla	a1,.LC6
	lla	a0,.LC31
	call	__assert_fail@plt
.L27:
	lla	a0,.LC32
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L28
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,39
	lla	a1,.LC6
	lla	a0,.LC33
	call	__assert_fail@plt
.L28:
	lla	a0,.LC34
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L29
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,40
	lla	a1,.LC6
	lla	a0,.LC35
	call	__assert_fail@plt
.L29:
	lla	a0,.LC36
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L30
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC6
	lla	a0,.LC37
	call	__assert_fail@plt
.L30:
	lla	a0,.LC38
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L31
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,42
	lla	a1,.LC6
	lla	a0,.LC39
	call	__assert_fail@plt
.L31:
	lla	a0,.LC40
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L32
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,43
	lla	a1,.LC6
	lla	a0,.LC41
	call	__assert_fail@plt
.L32:
	lla	a0,.LC42
	call	func0
	mv	a5,a0
	lla	a1,.LC4
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L33
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,44
	lla	a1,.LC6
	lla	a0,.LC43
	call	__assert_fail@plt
.L33:
	lla	a0,.LC44
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L34
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,45
	lla	a1,.LC6
	lla	a0,.LC45
	call	__assert_fail@plt
.L34:
	lla	a0,.LC46
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L35
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,46
	lla	a1,.LC6
	lla	a0,.LC47
	call	__assert_fail@plt
.L35:
	lla	a0,.LC48
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L36
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,47
	lla	a1,.LC6
	lla	a0,.LC49
	call	__assert_fail@plt
.L36:
	lla	a0,.LC50
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L37
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,48
	lla	a1,.LC6
	lla	a0,.LC51
	call	__assert_fail@plt
.L37:
	lla	a0,.LC52
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L38
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,49
	lla	a1,.LC6
	lla	a0,.LC53
	call	__assert_fail@plt
.L38:
	lla	a0,.LC1
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L39
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,50
	lla	a1,.LC6
	lla	a0,.LC54
	call	__assert_fail@plt
.L39:
	lla	a0,.LC55
	call	func0
	mv	a5,a0
	lla	a1,.LC0
	mv	a0,a5
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L40
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,51
	lla	a1,.LC6
	lla	a0,.LC56
	call	__assert_fail@plt
.L40:
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
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
