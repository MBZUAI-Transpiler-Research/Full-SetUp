	.file	"parrondo.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	cointoss
	.type	cointoss, @function
cointoss:
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
	fsd	fa0,-40(s0)
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a5,a5
	fcvt.d.wu	fa4,a5
	lla	a5,.LC0
	fld	fa5,0(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-24(s0)
	fld	fa4,-24(s0)
	fld	fa5,-40(s0)
	fge.d	a5,fa4,fa5
	beq	a5,zero,.L7
	li	a5,-1
	j	.L4
.L7:
	li	a5,1
.L4:
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
	.size	cointoss, .-cointoss
	.align	1
	.globl	play_s
	.type	play_s, @function
play_s:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a5,.LC1
	fld	fa5,0(a5)
	fmv.d	fa0,fa5
	call	cointoss
	mv	a5,a0
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
.LFE4:
	.size	play_s, .-play_s
	.align	1
	.globl	play_c
	.type	play_c, @function
play_c:
.LFB5:
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
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	li	a5,3
	remw	a5,a4,a5
	sext.w	a5,a5
	beq	a5,zero,.L11
	lla	a5,.LC2
	fld	fa5,0(a5)
	fmv.d	fa0,fa5
	call	cointoss
	mv	a5,a0
	j	.L12
.L11:
	lla	a5,.LC3
	fld	fa5,0(a5)
	fmv.d	fa0,fa5
	call	cointoss
	mv	a5,a0
.L12:
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
.LFE5:
	.size	play_c, .-play_c
	.globl	argc
	.data
	.align	2
	.type	argc, @object
	.size	argc, 4
argc:
	.word	6
	.globl	argv
	.section	.rodata
	.align	3
.LC4:
	.string	"parrondo"
	.align	3
.LC5:
	.string	"-2"
	.align	3
.LC6:
	.string	"-t"
	.align	3
.LC7:
	.string	"10"
	.align	3
.LC8:
	.string	"-S"
	.align	3
.LC9:
	.string	"1"
	.section	.data.rel.local,"aw"
	.align	3
	.type	argv, @object
	.size	argv, 48
argv:
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.section	.rodata
	.align	3
.LC11:
	.string	"parrondo [ -s number -t number -m number -1 -2 -h -v]"
	.align	3
.LC12:
	.string	"%s\n"
	.align	3
.LC13:
	.string	"1.1"
	.align	3
.LC14:
	.ascii	"parrondo [ -s number -t number -m number -1 -2 ]\n\nPrint in"
	.ascii	"formation on simulations of Parrondo's paradoxical game.\n\n"
	.ascii	"-s: Use next argument as RNG seed. (otherwise use system tim"
	.ascii	"e as seed.)\n-t: Use next argument"
	.string	" as number of trials. Default 10000.\n-m: Use number as max fortune (win), -number as min fortune(loss). Default 50. \n-v: Print version number and exit. \n-h: Print this helpful information. \n-1: Simulate simple game alone.\n-2: Simulate complex game alone.\n\n"
	.align	3
.LC16:
	.string	"parrondo: unkown option %s\n"
	.align	3
.LC17:
	.string	"Using seed = %d\n"
	.align	3
.LC18:
	.string	"Simulating %d trials ...\n"
	.align	3
.LC19:
	.string	"%d wins, %d losses, %d draws\n"
	.align	3
.LC20:
	.string	"(Win/loss = %d/-%d, draw = no win/loss in %ld plays.)\n"
	.align	3
.LC21:
	.string	"Average trial length = %lf\n"
	.align	3
.LC23:
	.string	"Site occupancy: 0 mod 3: %lf%%, 1 mod 3: %lf%%, 2 mod 3: %lf%%\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sd	zero,-88(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-80(s0)
	li	a5,1000
	sw	a5,-120(s0)
	sw	zero,-116(s0)
	sw	zero,-112(s0)
	sw	zero,-108(s0)
	sw	zero,-104(s0)
	sw	zero,-100(s0)
	li	a5,50
	sw	a5,-96(s0)
	lla	a5,.LC10
	fld	fa5,0(a5)
	fsd	fa5,-72(s0)
	sd	zero,-64(s0)
	j	.L14
.L30:
	lla	a4,argv
	lw	a5,-112(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	bne	a4,a5,.L15
	lla	a4,argv
	lw	a5,-112(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,1
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a3,a5,-49
	sext.w	a4,a3
	li	a5,69
	bgtu	a4,a5,.L16
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a4,a5,2
	lla	a5,.L18
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L18
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L18:
	.word	.L24-.L18
	.word	.L23-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L22-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L22-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L21-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L20-.L18
	.word	.L19-.L18
	.word	.L16-.L18
	.word	.L17-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L22-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L21-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L16-.L18
	.word	.L20-.L18
	.word	.L19-.L18
	.word	.L16-.L18
	.word	.L17-.L18
	.text
.L20:
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,argc
	lw	a5,0(a5)
	blt	a4,a5,.L25
	lla	a1,.LC11
	lla	a0,.LC12
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L25:
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,argv
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	libmin_atol@plt
	sd	a0,-64(s0)
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sw	a5,-112(s0)
	j	.L14
.L19:
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,argc
	lw	a5,0(a5)
	blt	a4,a5,.L27
	lla	a1,.LC11
	lla	a0,.LC12
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L27:
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,argv
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	libmin_atoi@plt
	mv	a5,a0
	sw	a5,-120(s0)
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sw	a5,-112(s0)
	j	.L14
.L21:
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,argc
	lw	a5,0(a5)
	blt	a4,a5,.L28
	lla	a1,.LC11
	lla	a0,.LC12
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L28:
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,argv
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	libmin_atoi@plt
	mv	a5,a0
	sw	a5,-96(s0)
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sw	a5,-112(s0)
	j	.L14
.L17:
	lla	a1,.LC13
	lla	a0,.LC12
	call	libmin_printf@plt
	call	libmin_success@plt
.L22:
	lla	a1,.LC14
	lla	a0,.LC12
	call	libmin_printf@plt
	call	libmin_success@plt
.L24:
	fmv.d.x	fa5,zero
	fsd	fa5,-72(s0)
	j	.L14
.L23:
	lla	a5,.LC15
	fld	fa5,0(a5)
	fsd	fa5,-72(s0)
	j	.L14
.L16:
	lla	a4,argv
	lw	a5,-112(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC16
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
	j	.L14
.L15:
	lla	a1,.LC11
	lla	a0,.LC12
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L14:
	lw	a5,-112(s0)
	addiw	a5,a5,1
	sw	a5,-112(s0)
	lla	a5,argc
	lw	a4,0(a5)
	lw	a5,-112(s0)
	sext.w	a5,a5
	blt	a5,a4,.L30
	ld	a5,-64(s0)
	bne	a5,zero,.L31
	li	a5,4096
	addi	a5,a5,-651
	sd	a5,-64(s0)
	li	a5,4096
	addi	a1,a5,-651
	lla	a0,.LC17
	call	libmin_printf@plt
.L31:
	ld	a5,-64(s0)
	sext.w	a5,a5
	mv	a0,a5
	call	libmin_srand@plt
	sw	zero,-116(s0)
	j	.L32
.L33:
	lw	a5,-116(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	zero,-32(a5)
	lw	a5,-116(s0)
	addiw	a5,a5,1
	sw	a5,-116(s0)
.L32:
	lw	a5,-116(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L33
	sw	zero,-116(s0)
	lw	a5,-120(s0)
	mv	a1,a5
	lla	a0,.LC18
	call	libmin_printf@plt
	j	.L34
.L42:
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	sd	a5,-64(s0)
	ld	a5,-64(s0)
	sext.w	a5,a5
	mv	a0,a5
	call	libmin_srand@plt
	sw	zero,-100(s0)
	j	.L35
.L39:
	fld	fa0,-72(s0)
	call	cointoss
	mv	a5,a0
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L36
	lw	a5,-100(s0)
	mv	a0,a5
	call	play_c
	mv	a5,a0
	lw	a4,-100(s0)
	addw	a5,a4,a5
	sw	a5,-100(s0)
	j	.L37
.L36:
	call	play_s
	mv	a5,a0
	lw	a4,-100(s0)
	addw	a5,a4,a5
	sw	a5,-100(s0)
.L37:
	lw	a5,-100(s0)
	mv	a4,a5
	lw	a5,-96(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bge	a4,a5,.L38
	lw	a5,-96(s0)
	negw	a5,a5
	sext.w	a4,a5
	lw	a5,-100(s0)
	sext.w	a5,a5
	ble	a5,a4,.L38
	lw	a5,-100(s0)
	sraiw	a5,a5,31
	lw	a4,-100(s0)
	xor	a4,a5,a4
	subw	a5,a4,a5
	sw	a5,-92(s0)
	lw	a5,-92(s0)
	mv	a4,a5
	li	a5,3
	remw	a5,a4,a5
	sext.w	a4,a5
	slli	a5,a4,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a5,-32(a5)
	addi	a3,a5,1
	slli	a5,a4,3
	addi	a5,a5,-16
	add	a5,a5,s0
	sd	a3,-32(a5)
.L35:
	ld	a5,-88(s0)
	addi	a4,a5,1
	sd	a4,-88(s0)
	li	a4,999424
	addi	a4,a4,575
	ble	a5,a4,.L39
.L38:
	lw	a5,-100(s0)
	mv	a4,a5
	lw	a5,-96(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L40
	lw	a5,-108(s0)
	addiw	a5,a5,1
	sw	a5,-108(s0)
	j	.L41
.L40:
	lw	a5,-96(s0)
	negw	a5,a5
	sext.w	a4,a5
	lw	a5,-100(s0)
	sext.w	a5,a5
	bne	a5,a4,.L41
	lw	a5,-104(s0)
	addiw	a5,a5,1
	sw	a5,-104(s0)
.L41:
	lw	a5,-116(s0)
	addiw	a5,a5,1
	sw	a5,-116(s0)
	ld	a5,-88(s0)
	fcvt.d.l	fa5,a5
	fld	fa4,-80(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-80(s0)
	sd	zero,-88(s0)
.L34:
	lw	a5,-116(s0)
	mv	a4,a5
	lw	a5,-120(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L42
	lw	a5,-116(s0)
	fcvt.d.w	fa5,a5
	fld	fa4,-80(s0)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	lw	a5,-108(s0)
	mv	a4,a5
	lw	a5,-104(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-116(s0)
	subw	a5,a4,a5
	sext.w	a3,a5
	lw	a4,-104(s0)
	lw	a5,-108(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC19
	call	libmin_printf@plt
	lw	a2,-96(s0)
	lw	a4,-96(s0)
	li	a5,999424
	addi	a3,a5,576
	mv	a1,a4
	lla	a0,.LC20
	call	libmin_printf@plt
	ld	a1,-56(s0)
	lla	a0,.LC21
	call	libmin_printf@plt
	ld	a5,-48(s0)
	fcvt.d.l	fa4,a5
	lla	a5,.LC22
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fdiv.d	fa3,fa4,fa5
	ld	a5,-40(s0)
	fcvt.d.l	fa4,a5
	lla	a5,.LC22
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fdiv.d	fa2,fa4,fa5
	ld	a5,-32(s0)
	fcvt.d.l	fa4,a5
	lla	a5,.LC22
	fld	fa5,0(a5)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-80(s0)
	fdiv.d	fa5,fa4,fa5
	fmv.x.d	a3,fa5
	fmv.x.d	a2,fa2
	fmv.x.d	a1,fa3
	lla	a0,.LC23
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L44
	call	__stack_chk_fail@plt
.L44:
	mv	a0,a4
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	-4194304
	.word	1105199103
	.align	3
.LC1:
	.word	2061584302
	.word	1071623700
	.align	3
.LC2:
	.word	1030792151
	.word	1072158474
	.align	3
.LC3:
	.word	-2061584302
	.word	1069044203
	.align	3
.LC10:
	.word	0
	.word	1071644672
	.align	3
.LC15:
	.word	0
	.word	1072693248
	.align	3
.LC22:
	.word	0
	.word	1079574528
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
