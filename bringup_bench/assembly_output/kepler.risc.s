	.file	"kepler.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.data
	.align	3
	.type	derror, @object
	.size	derror, 8
derror:
	.word	-1598689907
	.word	1051772663
	.text
	.align	1
	.globl	strict_iteration
	.type	strict_iteration, @function
strict_iteration:
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
	fsd	fa0,-24(s0)
	fsd	fa1,-32(s0)
	fsd	fa2,-40(s0)
	mv	a5,a0
	sw	a5,-44(s0)
	fld	fa0,-24(s0)
	call	libmin_sin@plt
	fmv.d	fa4,fa0
	fld	fa5,-32(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-40(s0)
	fadd.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
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
	.size	strict_iteration, .-strict_iteration
	.align	1
	.globl	newton
	.type	newton, @function
newton:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	fsd	fs0,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 40, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	fsd	fa0,-40(s0)
	fsd	fa1,-48(s0)
	fsd	fa2,-56(s0)
	mv	a5,a0
	sw	a5,-60(s0)
	fld	fa0,-40(s0)
	call	libmin_sin@plt
	fmv.d	fa4,fa0
	fld	fa5,-48(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-56(s0)
	fadd.d	fa4,fa4,fa5
	fld	fa5,-40(s0)
	fsub.d	fs0,fa4,fa5
	fld	fa0,-40(s0)
	call	libmin_cos@plt
	fmv.d	fa4,fa0
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	lla	a5,.LC0
	fld	fa4,0(a5)
	fsub.d	fa5,fa4,fa5
	fdiv.d	fa4,fs0,fa5
	fld	fa5,-40(s0)
	fadd.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	fld	fs0,40(sp)
	.cfi_restore 40
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	newton, .-newton
	.align	1
	.globl	binary
	.type	binary, @function
binary:
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
	fsd	fa0,-40(s0)
	fsd	fa1,-48(s0)
	fsd	fa2,-56(s0)
	mv	a5,a0
	sw	a5,-60(s0)
	lw	a5,-60(s0)
	sext.w	a5,a5
	beq	a5,zero,.L6
	lla	a5,scale.2
	lla	a4,.LC1
	fld	fa5,0(a4)
	fsd	fa5,0(a5)
	fmv.d.x	fa5,zero
	j	.L7
.L6:
	fld	fa0,-40(s0)
	call	libmin_sin@plt
	fmv.d	fa4,fa0
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-40(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-32(s0)
	fld	fa4,-56(s0)
	fld	fa5,-32(s0)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L12
	lla	a5,scale.2
	fld	fa4,0(a5)
	fld	fa5,-40(s0)
	fadd.d	fa5,fa4,fa5
	j	.L10
.L12:
	lla	a5,scale.2
	fld	fa5,0(a5)
	fld	fa4,-40(s0)
	fsub.d	fa5,fa4,fa5
.L10:
	fsd	fa5,-24(s0)
	lla	a5,scale.2
	fld	fa4,0(a5)
	lla	a5,.LC2
	fld	fa5,0(a5)
	fdiv.d	fa5,fa4,fa5
	lla	a5,scale.2
	fsd	fa5,0(a5)
	fld	fa5,-24(s0)
.L7:
	fmv.d	fa0,fa5
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
	.size	binary, .-binary
	.align	1
	.globl	e_series
	.type	e_series, @function
e_series:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	fsd	fs0,72(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 40, -24
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	fsd	fa0,-72(s0)
	fsd	fa1,-80(s0)
	fsd	fa2,-88(s0)
	mv	a5,a0
	sw	a5,-92(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-56(s0)
	lw	a5,-92(s0)
	sext.w	a5,a5
	beq	a5,zero,.L14
	lla	a5,n.1
	sw	zero,0(a5)
	fmv.d.x	fa5,zero
	j	.L15
.L14:
	lla	a5,n.1
	lw	a5,0(a5)
	bne	a5,zero,.L16
	lla	a5,n.1
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,n.1
	sw	a4,0(a5)
	fld	fa5,-88(s0)
	j	.L15
.L16:
	sw	zero,-60(s0)
	j	.L17
.L20:
	lla	a5,n.1
	lw	a5,0(a5)
	fcvt.d.w	fa4,a5
	lw	a5,-60(s0)
	fcvt.d.w	fa5,a5
	fadd.d	fa5,fa5,fa5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	lw	a5,-60(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L18
	lla	a5,.LC3
	fld	fa5,0(a5)
	j	.L19
.L18:
	lla	a5,.LC0
	fld	fa5,0(a5)
.L19:
	fsd	fa5,-40(s0)
	lla	a5,n.1
	lw	a5,0(a5)
	lw	a4,-60(s0)
	mv	a1,a4
	mv	a0,a5
	call	bin_fact
	fmv.d	fa4,fa0
	fld	fa5,-40(s0)
	fmul.d	fs0,fa4,fa5
	fld	fa4,-48(s0)
	fld	fa5,-88(s0)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_sin@plt
	fmv.d	fa5,fa0
	fmul.d	fa5,fs0,fa5
	fld	fa4,-56(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	lw	a5,-60(s0)
	addiw	a5,a5,1
	sw	a5,-60(s0)
.L17:
	lw	a5,-60(s0)
	slliw	a5,a5,1
	sext.w	a4,a5
	lla	a5,n.1
	lw	a5,0(a5)
	ble	a4,a5,.L20
	lla	a5,n.1
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,n.1
	sw	a4,0(a5)
	lla	a5,n.1
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a5,a5
	fcvt.d.w	fa5,a5
	fmv.d	fa1,fa5
	fld	fa0,-80(s0)
	call	libmin_pow@plt
	fmv.d	fa4,fa0
	fld	fa5,-56(s0)
	fmul.d	fa4,fa4,fa5
	fld	fa5,-72(s0)
	fadd.d	fa5,fa4,fa5
.L15:
	fmv.d	fa0,fa5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	fld	fs0,72(sp)
	.cfi_restore 40
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	e_series, .-e_series
	.align	1
	.globl	j_series
	.type	j_series, @function
j_series:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	fsd	fs0,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 40, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	fsd	fa0,-56(s0)
	fsd	fa1,-64(s0)
	fsd	fa2,-72(s0)
	mv	a5,a0
	sw	a5,-76(s0)
	lw	a5,-76(s0)
	sext.w	a5,a5
	beq	a5,zero,.L22
	lla	a5,n.0
	sw	zero,0(a5)
	fmv.d.x	fa5,zero
	j	.L23
.L22:
	lla	a5,n.0
	lw	a5,0(a5)
	bne	a5,zero,.L24
	lla	a5,n.0
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,n.0
	sw	a4,0(a5)
	fld	fa5,-72(s0)
	j	.L23
.L24:
	lla	a5,n.0
	lw	a5,0(a5)
	fcvt.d.w	fa5,a5
	fsd	fa5,-48(s0)
	lla	a5,n.0
	lw	a5,0(a5)
	fcvt.d.w	fa5,a5
	lla	a5,.LC2
	fld	fa4,0(a5)
	fdiv.d	fs0,fa4,fa5
	lla	a5,n.0
	lw	a5,0(a5)
	fld	fa4,-48(s0)
	fld	fa5,-64(s0)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	mv	a0,a5
	call	J
	fmv.d	fa5,fa0
	fmul.d	fs0,fs0,fa5
	fld	fa4,-48(s0)
	fld	fa5,-72(s0)
	fmul.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_sin@plt
	fmv.d	fa5,fa0
	fmul.d	fa5,fs0,fa5
	fsd	fa5,-40(s0)
	lla	a5,n.0
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,n.0
	sw	a4,0(a5)
	fld	fa4,-56(s0)
	fld	fa5,-40(s0)
	fadd.d	fa5,fa4,fa5
.L23:
	fmv.d	fa0,fa5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	fld	fs0,56(sp)
	.cfi_restore 40
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	j_series, .-j_series
	.section	.data.rel.local,"aw"
	.align	3
	.type	methods, @object
	.size	methods, 40
methods:
	.dword	strict_iteration
	.dword	newton
	.dword	binary
	.dword	e_series
	.dword	j_series
	.globl	argc
	.data
	.align	2
	.type	argc, @object
	.size	argc, 4
argc:
	.word	5
	.globl	argv
	.section	.rodata
	.align	3
.LC4:
	.string	"kepler"
	.align	3
.LC5:
	.string	"-m"
	.align	3
.LC6:
	.string	"3"
	.align	3
.LC7:
	.string	"0.34"
	.align	3
.LC8:
	.string	"0.25"
	.section	.data.rel.local
	.align	3
	.type	argv, @object
	.size	argv, 40
argv:
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.section	.rodata
	.align	3
.LC11:
	.string	"-h"
	.align	3
.LC12:
	.ascii	"kepler [-h -v -a <.nnnn...> -m <k>] M e\n-h: print this help"
	.ascii	"ful message\n-v: print version number and exit\n-a: obtain s"
	.ascii	"olution to accuracy of  < .nnnn (default ."
	.string	"0000001)\n-m: use selected calculation method k, where\n\tk = 1: Simple iteration.\n\tk = 2: Newton's method.\n\tk = 3: Binary search.\n\tk = 4: Series in powers of e. (e<.6627434193.)\n\tk = 5: Fourier Bessel series.\nM = mean anomaly (radians)\ne = orbit eccentricty."
	.align	3
.LC13:
	.string	"%s\n"
	.align	3
.LC14:
	.string	"-v"
	.align	3
.LC15:
	.string	"1.11"
	.align	3
.LC16:
	.string	"-a"
	.align	3
.LC18:
	.string	"Warning: requested precision may exceed implementation limit.\n"
	.align	3
.LC19:
	.string	"Bad method number %d\n"
	.align	3
.LC20:
	.string	"kepler: Unknown option %s\n"
	.align	3
.LC21:
	.string	"kepler [-h -v -a <.nnnn...> -m <k>] M e"
	.align	3
.LC23:
	.string	"e cannot exceed %f for this method.\n"
	.align	3
.LC24:
	.string	"Eccentricity %f out of range.\n"
	.align	3
.LC27:
	.string	"n = %d\tE = %f\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	li	a5,1
	sw	a5,-76(s0)
	li	a5,1
	sw	a5,-72(s0)
	li	a5,1
	sw	a5,-68(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-64(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-56(s0)
	lla	a5,.LC9
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
	lla	a5,.LC10
	fld	fa5,0(a5)
	fsd	fa5,-48(s0)
	j	.L26
.L37:
	lla	a4,argv
	lw	a5,-72(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC11
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L27
	lla	a1,.LC12
	lla	a0,.LC13
	call	libmin_printf@plt
	call	libmin_success@plt
.L27:
	lla	a4,argv
	lw	a5,-72(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC14
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L28
	lla	a1,.LC15
	lla	a0,.LC13
	call	libmin_printf@plt
	call	libmin_success@plt
.L28:
	lla	a4,argv
	lw	a5,-72(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC16
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L29
	lw	a5,-72(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,argv
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	libmin_atof@plt
	fmv.d	fa5,fa0
	lla	a5,derror
	fsd	fa5,0(a5)
	lla	a5,derror
	fld	fa4,0(a5)
	lla	a5,.LC17
	fld	fa5,0(a5)
	fle.d	a5,fa4,fa5
	beq	a5,zero,.L30
	lla	a0,.LC18
	call	libmin_printf@plt
.L30:
	lw	a5,-72(s0)
	addiw	a5,a5,2
	sw	a5,-72(s0)
	j	.L26
.L29:
	lla	a4,argv
	lw	a5,-72(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC5
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L33
	lw	a5,-72(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,argv
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	libmin_atoi@plt
	mv	a5,a0
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	sext.w	a5,a5
	ble	a5,zero,.L34
	lw	a5,-68(s0)
	mv	a4,a5
	li	a5,5
	bleu	a4,a5,.L35
.L34:
	lw	a5,-68(s0)
	mv	a1,a5
	lla	a0,.LC19
	call	libmin_printf@plt
	li	a5,1
	j	.L36
.L35:
	lw	a5,-72(s0)
	addiw	a5,a5,2
	sw	a5,-72(s0)
	j	.L26
.L33:
	lla	a4,argv
	lw	a5,-72(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC20
	call	libmin_printf@plt
	lla	a1,.LC21
	lla	a0,.LC13
	call	libmin_printf@plt
	li	a5,1
	j	.L36
.L26:
	lla	a4,argv
	lw	a5,-72(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	beq	a4,a5,.L37
	lw	a5,-72(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,argc
	lw	a5,0(a5)
	blt	a4,a5,.L38
	lla	a1,.LC21
	lla	a0,.LC13
	call	libmin_printf@plt
	li	a5,1
	j	.L36
.L38:
	lw	a5,-72(s0)
	addiw	a4,a5,1
	sw	a4,-72(s0)
	lla	a4,argv
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	libmin_atof@plt
	fsd	fa0,-56(s0)
	lla	a4,argv
	lw	a5,-72(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a0,a5
	call	libmin_atof@plt
	fsd	fa0,-40(s0)
	lw	a5,-68(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a4,methods
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-32(s0)
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,4
	bne	a4,a5,.L39
	fld	fa4,-40(s0)
	lla	a5,.LC22
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L39
	lla	a5,.LC22
	fld	fa5,0(a5)
	fmv.x.d	a1,fa5
	lla	a0,.LC23
	call	libmin_printf@plt
	li	a5,1
	j	.L36
.L39:
	fld	fa5,-40(s0)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	bne	a5,zero,.L41
	fld	fa4,-40(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fge.d	a5,fa4,fa5
	beq	a5,zero,.L55
.L41:
	ld	a1,-40(s0)
	lla	a0,.LC24
	call	libmin_printf@plt
	li	a5,1
	j	.L36
.L55:
	fld	fa5,-56(s0)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	beq	a5,zero,.L56
	lla	a5,.LC0
	fld	fa5,0(a5)
	j	.L46
.L56:
	lla	a5,.LC3
	fld	fa5,0(a5)
.L46:
	fsd	fa5,-64(s0)
	fld	fa0,-56(s0)
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC25
	fld	fa5,0(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	fld	fa0,-56(s0)
	call	libmin_floor@plt
	fmv.d	fa4,fa0
	fld	fa5,-56(s0)
	fsub.d	fa5,fa5,fa4
	fadd.d	fa4,fa5,fa5
	lla	a5,.LC26
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-64(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-64(s0)
	fld	fa4,-56(s0)
	lla	a5,.LC26
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L47
	lla	a5,.LC25
	fld	fa4,0(a5)
	fld	fa5,-56(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	lla	a5,.LC3
	fld	fa5,0(a5)
	fsd	fa5,-64(s0)
.L47:
	j	.L49
.L50:
	fld	fa5,-24(s0)
	fsd	fa5,-48(s0)
	lw	a5,-76(s0)
	addiw	a4,a5,1
	sw	a4,-76(s0)
	fld	fa4,-64(s0)
	fld	fa5,-24(s0)
	fmul.d	fa5,fa4,fa5
	fmv.x.d	a2,fa5
	mv	a1,a5
	lla	a0,.LC27
	call	libmin_printf@plt
.L49:
	ld	a5,-32(s0)
	li	a0,0
	fld	fa2,-56(s0)
	fld	fa1,-40(s0)
	fld	fa0,-48(s0)
	jalr	a5
	fsd	fa0,-24(s0)
	fld	fa4,-48(s0)
	fld	fa5,-24(s0)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,derror
	fld	fa5,0(a5)
	fge.d	a5,fa4,fa5
	bne	a5,zero,.L50
	call	libmin_success@plt
	li	a5,0
.L36:
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
.LFE8:
	.size	main, .-main
	.align	1
	.globl	bin_fact
	.type	bin_fact, @function
bin_fact:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s0,88(sp)
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-84(s0)
	mv	a5,a4
	sw	a5,-88(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-64(s0)
	lw	a5,-84(s0)
	fcvt.d.w	fa4,a5
	lla	a5,.LC2
	fld	fa5,0(a5)
	fdiv.d	fa4,fa4,fa5
	lw	a5,-88(s0)
	fcvt.d.w	fa5,a5
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	subw	a5,a4,a5
	sw	a5,-68(s0)
	j	.L58
.L63:
	lw	a5,-68(s0)
	fcvt.d.w	fa5,a5
	fsd	fa5,-48(s0)
	lw	a5,-84(s0)
	fcvt.d.w	fa4,a5
	lw	a5,-88(s0)
	fcvt.d.w	fa5,a5
	fsub.d	fa4,fa4,fa5
	fld	fa5,-48(s0)
	fsub.d	fa4,fa4,fa5
	lla	a5,.LC0
	fld	fa5,0(a5)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-40(s0)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-68(s0)
	subw	a5,a5,a4
	sext.w	a4,a5
	lw	a5,-88(s0)
	sext.w	a5,a5
	ble	a5,a4,.L59
	fld	fa4,-40(s0)
	fld	fa5,-48(s0)
	fmul.d	fa5,fa4,fa5
	j	.L60
.L59:
	fld	fa5,-48(s0)
.L60:
	fsd	fa5,-32(s0)
	lw	a5,-84(s0)
	mv	a4,a5
	lw	a5,-88(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-68(s0)
	subw	a5,a5,a4
	sext.w	a4,a5
	lw	a5,-88(s0)
	sext.w	a5,a5
	ble	a5,a4,.L61
	fld	fa5,-56(s0)
	fmul.d	fa5,fa5,fa5
	j	.L62
.L61:
	fld	fa5,-56(s0)
.L62:
	fsd	fa5,-24(s0)
	fld	fa4,-24(s0)
	fld	fa5,-32(s0)
	fdiv.d	fa5,fa4,fa5
	fld	fa4,-64(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	lw	a5,-68(s0)
	addiw	a5,a5,-1
	sw	a5,-68(s0)
.L58:
	lw	a5,-68(s0)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L63
	fld	fa5,-64(s0)
	fmv.d	fa0,fa5
	ld	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bin_fact, .-bin_fact
	.align	1
	.globl	J
	.type	J, @function
J:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	s0,88(sp)
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	mv	a5,a0
	fsd	fa0,-96(s0)
	sw	a5,-84(s0)
	fmv.d.x	fa5,zero
	fsd	fa5,-64(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-48(s0)
	lw	a5,-84(s0)
	sraiw	a5,a5,31
	lw	a4,-84(s0)
	xor	a4,a5,a4
	subw	a5,a4,a5
	sw	a5,-68(s0)
	lw	a5,-68(s0)
	fcvt.d.w	fa5,a5
	fsd	fa5,-40(s0)
	li	a5,1
	sw	a5,-72(s0)
	j	.L66
.L67:
	lw	a5,-72(s0)
	fcvt.d.w	fa5,a5
	fsd	fa5,-32(s0)
	fld	fa5,-32(s0)
	fadd.d	fa5,fa5,fa5
	fld	fa4,-96(s0)
	fdiv.d	fa5,fa4,fa5
	fld	fa4,-48(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-48(s0)
	lw	a5,-72(s0)
	addiw	a5,a5,1
	sw	a5,-72(s0)
.L66:
	lw	a5,-72(s0)
	mv	a4,a5
	lw	a5,-68(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L67
	fld	fa5,-48(s0)
	fsd	fa5,-56(s0)
	fld	fa5,-56(s0)
	fsd	fa5,-64(s0)
	li	a5,1
	sw	a5,-72(s0)
.L70:
	lw	a5,-72(s0)
	fcvt.d.w	fa5,a5
	fsd	fa5,-32(s0)
	lw	a5,-72(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L68
	lla	a5,.LC3
	fld	fa5,0(a5)
	j	.L69
.L68:
	lla	a5,.LC0
	fld	fa5,0(a5)
.L69:
	fsd	fa5,-24(s0)
	fld	fa5,-96(s0)
	fmul.d	fa4,fa5,fa5
	fld	fa3,-32(s0)
	lla	a5,.LC28
	fld	fa5,0(a5)
	fmul.d	fa3,fa3,fa5
	fld	fa2,-40(s0)
	fld	fa5,-32(s0)
	fadd.d	fa5,fa2,fa5
	fmul.d	fa5,fa3,fa5
	fdiv.d	fa5,fa4,fa5
	fld	fa4,-56(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-56(s0)
	fld	fa4,-24(s0)
	fld	fa5,-56(s0)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-64(s0)
	fadd.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	lw	a5,-72(s0)
	addiw	a5,a5,1
	sw	a5,-72(s0)
	fld	fa4,-56(s0)
	lla	a5,.LC17
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	bne	a5,zero,.L70
	lw	a5,-68(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	beq	a5,zero,.L71
	lla	a5,.LC3
	fld	fa5,0(a5)
	j	.L72
.L71:
	lla	a5,.LC0
	fld	fa5,0(a5)
.L72:
	fsd	fa5,-24(s0)
	lw	a5,-84(s0)
	sext.w	a5,a5
	bge	a5,zero,.L73
	fld	fa4,-24(s0)
	fld	fa5,-64(s0)
	fmul.d	fa5,fa4,fa5
	j	.L75
.L73:
	fld	fa5,-64(s0)
.L75:
	fmv.d	fa0,fa5
	ld	s0,88(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	J, .-J
	.align	1
	.globl	kepler
	.type	kepler, @function
kepler:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	fsd	fa0,-64(s0)
	fsd	fa1,-72(s0)
	fsd	fa2,-80(s0)
	mv	a5,a1
	sw	a5,-84(s0)
	sw	zero,-44(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
	lla	a5,.LC10
	fld	fa5,0(a5)
	fsd	fa5,-32(s0)
	lw	a5,-84(s0)
	sext.w	a5,a5
	blt	a5,zero,.L77
	lw	a5,-84(s0)
	mv	a4,a5
	li	a5,4
	bleu	a4,a5,.L78
.L77:
	li	a5,-1
	j	.L79
.L78:
	lla	a4,methods
	lw	a5,-84(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-24(s0)
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L80
	fld	fa4,-72(s0)
	lla	a5,.LC22
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L80
	li	a5,-1
	j	.L79
.L80:
	fld	fa5,-72(s0)
	fmv.d.x	fa4,zero
	flt.d	a5,fa5,fa4
	bne	a5,zero,.L82
	fld	fa4,-72(s0)
	lla	a5,.LC0
	fld	fa5,0(a5)
	fge.d	a5,fa4,fa5
	beq	a5,zero,.L99
.L82:
	li	a5,-1
	j	.L79
.L99:
	fld	fa5,-64(s0)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	beq	a5,zero,.L100
	lla	a5,.LC0
	fld	fa5,0(a5)
	j	.L87
.L100:
	lla	a5,.LC3
	fld	fa5,0(a5)
.L87:
	fsd	fa5,-40(s0)
	fld	fa0,-64(s0)
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	lla	a5,.LC25
	fld	fa5,0(a5)
	fdiv.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	fld	fa0,-64(s0)
	call	libmin_floor@plt
	fmv.d	fa4,fa0
	fld	fa5,-64(s0)
	fsub.d	fa5,fa5,fa4
	fadd.d	fa4,fa5,fa5
	lla	a5,.LC26
	fld	fa5,0(a5)
	fmul.d	fa5,fa4,fa5
	fld	fa4,-40(s0)
	fmul.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	fld	fa5,-64(s0)
	fmv.d.x	fa4,zero
	fgt.d	a5,fa5,fa4
	beq	a5,zero,.L101
	lla	a5,.LC0
	fld	fa5,0(a5)
	j	.L90
.L101:
	lla	a5,.LC3
	fld	fa5,0(a5)
.L90:
	fsd	fa5,-40(s0)
	fld	fa0,-64(s0)
	call	libmin_fabs@plt
	fsd	fa0,-64(s0)
	fld	fa4,-64(s0)
	lla	a5,.LC26
	fld	fa5,0(a5)
	fgt.d	a5,fa4,fa5
	beq	a5,zero,.L91
	lla	a5,.LC25
	fld	fa4,0(a5)
	fld	fa5,-64(s0)
	fsub.d	fa5,fa4,fa5
	fsd	fa5,-64(s0)
	lla	a5,.LC3
	fld	fa5,0(a5)
	fsd	fa5,-40(s0)
.L91:
	j	.L93
.L94:
	ld	a5,-56(s0)
	fld	fa5,0(a5)
	fsd	fa5,-32(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L93:
	ld	a5,-24(s0)
	li	a0,0
	fld	fa2,-64(s0)
	fld	fa1,-72(s0)
	fld	fa0,-32(s0)
	jalr	a5
	fmv.d	fa5,fa0
	ld	a5,-56(s0)
	fsd	fa5,0(a5)
	ld	a5,-56(s0)
	fld	fa5,0(a5)
	fld	fa4,-32(s0)
	fsub.d	fa5,fa4,fa5
	fmv.d	fa0,fa5
	call	libmin_fabs@plt
	fmv.d	fa4,fa0
	fld	fa5,-80(s0)
	fle.d	a5,fa5,fa4
	bne	a5,zero,.L94
	ld	a5,-56(s0)
	fld	fa4,0(a5)
	fld	fa5,-40(s0)
	fmul.d	fa5,fa4,fa5
	ld	a5,-56(s0)
	fsd	fa5,0(a5)
	ld	a5,-24(s0)
	li	a0,1
	fmv.d.x	fa2,zero
	fmv.d.x	fa1,zero
	fmv.d.x	fa0,zero
	jalr	a5
	lw	a5,-44(s0)
.L79:
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
.LFE11:
	.size	kepler, .-kepler
	.data
	.align	3
	.type	scale.2, @object
	.size	scale.2, 8
scale.2:
	.word	1413754602
	.word	1072243195
	.local	n.1
	.comm	n.1,4,4
	.local	n.0
	.comm	n.0,4,4
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1072693248
	.align	3
.LC1:
	.word	1413754602
	.word	1072243195
	.align	3
.LC2:
	.word	0
	.word	1073741824
	.align	3
.LC3:
	.word	0
	.word	-1074790400
	.align	3
.LC9:
	.word	-1717986918
	.word	-1078355559
	.align	3
.LC10:
	.word	1413754602
	.word	1073291771
	.align	3
.LC17:
	.word	0
	.word	1018167296
	.align	3
.LC22:
	.word	-1343157247
	.word	1071985969
	.align	3
.LC25:
	.word	1413754602
	.word	1075388923
	.align	3
.LC26:
	.word	1413754602
	.word	1074340347
	.align	3
.LC28:
	.word	0
	.word	1074790400
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
