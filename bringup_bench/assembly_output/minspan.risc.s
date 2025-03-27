	.file	"minspan.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	V
	.section	.rodata
	.align	2
	.type	V, @object
	.size	V, 4
V:
	.word	10
	.globl	vertName
	.align	3
.LC0:
	.string	"Home"
	.align	3
.LC1:
	.string	"z-mall"
	.align	3
.LC2:
	.string	"st.pet"
	.align	3
.LC3:
	.string	"office"
	.align	3
.LC4:
	.string	"school"
	.align	3
.LC5:
	.string	"motel"
	.align	3
.LC6:
	.string	"restr."
	.align	3
.LC7:
	.string	"library"
	.align	3
.LC8:
	.string	"airport"
	.align	3
.LC9:
	.string	"barber"
	.section	.data.rel.local,"aw"
	.align	3
	.type	vertName, @object
	.size	vertName, 80
vertName:
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
	.text
	.align	1
	.globl	minVal
	.type	minVal, @function
minVal:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	li	a5,-1
	sw	a5,-28(s0)
	li	a5,-2147483648
	addi	a5,a5,-1
	sw	a5,-24(s0)
	sw	zero,-20(s0)
	j	.L2
.L4:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-24(s0)
	sext.w	a5,a5
	ble	a5,a4,.L3
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	bne	a5,zero,.L3
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	sw	a5,-28(s0)
.L3:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	li	a4,10
	lw	a5,-20(s0)
	sext.w	a5,a5
	blt	a5,a4,.L4
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,-1
	beq	a4,a5,.L5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	li	a4,1
	sw	a4,0(a5)
.L5:
	lw	a5,-28(s0)
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	minVal, .-minVal
	.align	1
	.globl	minSpanTree
	.type	minSpanTree, @function
minSpanTree:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	sd	s3,136(sp)
	sd	s4,128(sp)
	sd	s5,120(sp)
	sd	s6,112(sp)
	sd	s7,104(sp)
	sd	s8,96(sp)
	sd	s9,88(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sd	a0,-168(s0)
	sd	a1,-176(s0)
	la	a1,__stack_chk_guard
	ld	a0, 0(a1)
	sd	a0, -104(s0)
	li	a0, 0
	li	a1,10
	addi	a1,a1,-1
	sd	a1,-144(s0)
	li	a1,10
	mv	s8,a1
	li	s9,0
	srli	a1,s8,59
	slli	t4,s9,5
	or	t4,a1,t4
	slli	t3,s8,5
	mv	a1,sp
	mv	s1,a1
	li	a1,10
	addi	a1,a1,-1
	sd	a1,-136(s0)
	li	a1,10
	mv	s6,a1
	li	s7,0
	srli	a1,s6,59
	slli	t2,s7,5
	or	t2,a1,t2
	slli	t1,s6,5
	li	a1,10
	mv	s4,a1
	li	s5,0
	srli	a1,s4,59
	slli	a7,s5,5
	or	a7,a1,a7
	slli	a6,s4,5
	li	a1,10
	slli	a1,a1,2
	addi	a1,a1,15
	srli	a1,a1,4
	slli	a1,a1,4
	sub	sp,sp,a1
	mv	a1,sp
	addi	a1,a1,3
	srli	a1,a1,2
	slli	a1,a1,2
	sd	a1,-128(s0)
	li	a1,10
	addi	a1,a1,-1
	sd	a1,-120(s0)
	li	a1,10
	mv	s2,a1
	li	s3,0
	srli	a1,s2,59
	slli	a3,s3,5
	or	a3,a1,a3
	slli	a2,s2,5
	li	a3,10
	mv	t5,a3
	li	t6,0
	srli	a3,t5,59
	slli	a5,t6,5
	or	a5,a3,a5
	slli	a4,t5,5
	li	a5,10
	slli	a5,a5,2
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,3
	srli	a5,a5,2
	slli	a5,a5,2
	sd	a5,-112(s0)
	sw	zero,-160(s0)
	sw	zero,-156(s0)
	j	.L8
.L11:
	lw	a5,-160(s0)
	mv	a4,a5
	lw	a5,-156(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L9
	ld	a4,-128(s0)
	lw	a5,-156(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	ld	a4,-112(s0)
	lw	a5,-156(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,1
	sw	a4,0(a5)
	j	.L10
.L9:
	ld	a4,-128(s0)
	lw	a5,-156(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,-2147483648
	addi	a4,a4,-1
	sw	a4,0(a5)
	ld	a4,-112(s0)
	lw	a5,-156(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
.L10:
	lw	a5,-156(s0)
	addiw	a5,a5,1
	sw	a5,-156(s0)
.L8:
	li	a4,10
	lw	a5,-156(s0)
	sext.w	a5,a5
	blt	a5,a4,.L11
	sw	zero,-152(s0)
	j	.L12
.L16:
	sw	zero,-148(s0)
	j	.L13
.L15:
	ld	a4,-112(s0)
	lw	a5,-148(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	bne	a5,zero,.L14
	lw	a5,-160(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-168(s0)
	add	a4,a4,a5
	lw	a5,-148(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	beq	a5,zero,.L14
	lw	a5,-160(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-168(s0)
	add	a4,a4,a5
	lw	a5,-148(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	ld	a4,-128(s0)
	lw	a5,-148(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	bge	a4,a5,.L14
	lw	a5,-160(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-168(s0)
	add	a4,a4,a5
	lw	a5,-148(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	ld	a3,-128(s0)
	lw	a5,-148(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-148(s0)
	slli	a5,a5,2
	ld	a4,-176(s0)
	add	a5,a4,a5
	lw	a4,-160(s0)
	sw	a4,0(a5)
.L14:
	lw	a5,-148(s0)
	addiw	a5,a5,1
	sw	a5,-148(s0)
.L13:
	li	a4,10
	lw	a5,-148(s0)
	sext.w	a5,a5
	blt	a5,a4,.L15
	ld	a1,-112(s0)
	ld	a0,-128(s0)
	call	minVal
	mv	a5,a0
	sw	a5,-160(s0)
	lw	a5,-152(s0)
	addiw	a5,a5,1
	sw	a5,-152(s0)
.L12:
	li	a4,10
	lw	a5,-152(s0)
	sext.w	a5,a5
	blt	a5,a4,.L16
	mv	sp,s1
	nop
	la	a5,__stack_chk_guard
	ld	a4, -104(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L17
	call	__stack_chk_fail@plt
.L17:
	addi	sp,s0,-176
	.cfi_def_cfa 2, 176
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s0,160(sp)
	.cfi_restore 8
	ld	s1,152(sp)
	.cfi_restore 9
	ld	s2,144(sp)
	.cfi_restore 18
	ld	s3,136(sp)
	.cfi_restore 19
	ld	s4,128(sp)
	.cfi_restore 20
	ld	s5,120(sp)
	.cfi_restore 21
	ld	s6,112(sp)
	.cfi_restore 22
	ld	s7,104(sp)
	.cfi_restore 23
	ld	s8,96(sp)
	.cfi_restore 24
	ld	s9,88(sp)
	.cfi_restore 25
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	minSpanTree, .-minSpanTree
	.align	1
	.globl	initializeData
	.type	initializeData, @function
initializeData:
.LFB5:
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
	sd	a0,-56(s0)
	li	a1,10
	addi	a1,a1,-1
	sd	a1,-40(s0)
	li	a1,10
	mv	a2,a1
	li	a3,0
	srli	a1,a2,59
	slli	a5,a3,5
	or	a5,a1,a5
	slli	a4,a2,5
	li	a0,10
	call	libmin_srand@plt
	sw	zero,-48(s0)
	j	.L19
.L26:
	sw	zero,-44(s0)
	j	.L20
.L25:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L21
	lw	a5,-44(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	li	a3,10
	mul	a5,a5,a3
	slli	a5,a5,2
	ld	a3,-56(s0)
	add	a3,a3,a5
	lw	a5,-48(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	j	.L22
.L21:
	lw	a5,-48(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L23
	lw	a5,-48(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	j	.L22
.L23:
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a5,a5
	mv	a4,a5
	li	a5,5
	remuw	a5,a4,a5
	sext.w	s1,a5
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a5,a5
	mv	a4,a5
	li	a5,5
	remuw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,s1
	bne	a4,a5,.L24
	lw	a5,-48(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	j	.L22
.L24:
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a5,a5
	mv	a4,a5
	li	a5,10
	remuw	a5,a4,a5
	sext.w	a2,a5
	lw	a5,-48(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a3,a4,a5
	sext.w	a4,a2
	lw	a5,-44(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
.L22:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L20:
	li	a4,10
	lw	a5,-44(s0)
	sext.w	a5,a5
	blt	a5,a4,.L25
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L19:
	li	a4,10
	lw	a5,-48(s0)
	sext.w	a5,a5
	blt	a5,a4,.L26
	nop
	nop
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
.LFE5:
	.size	initializeData, .-initializeData
	.section	.rodata
	.align	3
.LC10:
	.string	"       "
	.align	3
.LC11:
	.string	"%8s"
	.align	3
.LC12:
	.string	"%8d"
	.align	3
.LC13:
	.string	"\n"
	.align	3
.LC14:
	.string	"\n\n"
	.text
	.align	1
	.globl	displayGraph
	.type	displayGraph, @function
displayGraph:
.LFB6:
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
	li	a1,10
	addi	a1,a1,-1
	sd	a1,-24(s0)
	li	a1,10
	mv	a2,a1
	li	a3,0
	srli	a1,a2,59
	slli	a5,a3,5
	or	a5,a1,a5
	slli	a4,a2,5
	sw	zero,-36(s0)
	li	a5,-1
	sw	a5,-32(s0)
	j	.L28
.L35:
	li	a5,-1
	sw	a5,-28(s0)
	j	.L29
.L34:
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L30
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L31
	lla	a0,.LC10
	call	libmin_printf@plt
	j	.L32
.L31:
	lla	a4,vertName
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC11
	call	libmin_printf@plt
	j	.L32
.L30:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L33
	lla	a4,vertName
	lw	a5,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC11
	call	libmin_printf@plt
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	j	.L32
.L33:
	lw	a5,-32(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC12
	call	libmin_printf@plt
.L32:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L29:
	li	a4,10
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L34
	lla	a0,.LC13
	call	libmin_printf@plt
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L28:
	li	a4,10
	lw	a5,-32(s0)
	sext.w	a5,a5
	blt	a5,a4,.L35
	lla	a0,.LC14
	call	libmin_printf@plt
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	displayGraph, .-displayGraph
	.section	.rodata
	.align	3
.LC15:
	.string	"%8d / %d"
	.text
	.align	1
	.globl	displayGraph1
	.type	displayGraph1, @function
displayGraph1:
.LFB7:
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
	sd	a1,-64(s0)
	li	a1,10
	addi	a1,a1,-1
	sd	a1,-24(s0)
	li	a1,10
	mv	a2,a1
	li	a3,0
	srli	a1,a2,59
	slli	a5,a3,5
	or	a5,a1,a5
	slli	a4,a2,5
	sw	zero,-36(s0)
	li	a5,-1
	sw	a5,-32(s0)
	j	.L37
.L44:
	li	a5,-1
	sw	a5,-28(s0)
	j	.L38
.L43:
	lw	a5,-32(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L39
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L40
	lla	a0,.LC10
	call	libmin_printf@plt
	j	.L41
.L40:
	lla	a4,vertName
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC11
	call	libmin_printf@plt
	j	.L41
.L39:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L42
	lla	a4,vertName
	lw	a5,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC11
	call	libmin_printf@plt
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
	j	.L41
.L42:
	lw	a5,-32(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-64(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,a3
	lla	a0,.LC15
	call	libmin_printf@plt
.L41:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L38:
	li	a4,10
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L43
	lla	a0,.LC13
	call	libmin_printf@plt
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L37:
	li	a4,10
	lw	a5,-32(s0)
	sext.w	a5,a5
	blt	a5,a4,.L44
	lla	a0,.LC14
	call	libmin_printf@plt
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	displayGraph1, .-displayGraph1
	.section	.rodata
	.align	3
.LC16:
	.string	"\nSource: %s\tDestination: %s\n\n"
	.align	3
.LC17:
	.string	"Path: %s"
	.align	3
.LC18:
	.string	"-> %s"
	.text
	.align	1
	.globl	displayPath
	.type	displayPath, @function
displayPath:
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
	mv	a5,a0
	mv	a4,a1
	sd	a2,-48(s0)
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sw	a5,-20(s0)
	lla	a5,count.0
	lw	a5,0(a5)
	bne	a5,zero,.L46
	lla	a4,vertName
	lw	a5,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a3,0(a5)
	lla	a4,vertName
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a2,a5
	mv	a1,a3
	lla	a0,.LC16
	call	libmin_printf@plt
	lla	a4,vertName
	lw	a5,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC17
	call	libmin_printf@plt
	lla	a5,count.0
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,count.0
	sw	a4,0(a5)
.L46:
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-36(s0)
	sext.w	a5,a5
	beq	a5,a4,.L47
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-36(s0)
	ld	a2,-48(s0)
	mv	a1,a4
	mv	a0,a5
	call	displayPath
.L47:
	lla	a4,vertName
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC18
	call	libmin_printf@plt
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L49
	lla	a0,.LC13
	call	libmin_printf@plt
.L49:
	nop
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
	.size	displayPath, .-displayPath
	.section	.rodata
	.align	3
.LC19:
	.string	"minimum spanning tree:\n"
	.align	3
.LC20:
	.string	"  %8s <-%d-> %8s\n"
	.align	3
.LC21:
	.string	"total cost = %d\n"
	.text
	.align	1
	.globl	displayTree
	.type	displayTree, @function
displayTree:
.LFB9:
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
	li	a1,10
	addi	a1,a1,-1
	sd	a1,-24(s0)
	li	a1,10
	mv	a2,a1
	li	a3,0
	srli	a1,a2,59
	slli	a5,a3,5
	or	a5,a1,a5
	slli	a4,a2,5
	sw	zero,-32(s0)
	lla	a0,.LC19
	call	libmin_printf@plt
	li	a5,1
	sw	a5,-28(s0)
	j	.L51
.L52:
	lla	a4,vertName
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a1,0(a5)
	lw	a5,-28(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a2,0(a5)
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a4,-48(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	lla	a4,vertName
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a3,a5
	lla	a0,.LC20
	call	libmin_printf@plt
	lw	a5,-28(s0)
	li	a4,10
	mul	a5,a5,a4
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,2
	ld	a3,-48(s0)
	add	a5,a3,a5
	lw	a5,0(a5)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	lw	a4,-32(s0)
	addw	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L51:
	li	a4,10
	lw	a5,-28(s0)
	sext.w	a5,a5
	blt	a5,a4,.L52
	lw	a5,-32(s0)
	mv	a1,a5
	lla	a0,.LC21
	call	libmin_printf@plt
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	displayTree, .-displayTree
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sd	ra,216(sp)
	sd	s0,208(sp)
	sd	s1,200(sp)
	sd	s2,192(sp)
	sd	s3,184(sp)
	sd	s4,176(sp)
	sd	s5,168(sp)
	sd	s6,160(sp)
	sd	s7,152(sp)
	sd	s8,144(sp)
	sd	s9,136(sp)
	sd	s10,128(sp)
	sd	s11,120(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	addi	s0,sp,224
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -120(s0)
	li	a4, 0
	mv	a5,sp
	mv	s1,a5
	li	a5,10
	addi	a5,a5,-1
	sd	a5,-160(s0)
	li	a5,10
	sd	a5,-192(s0)
	sd	zero,-184(s0)
	ld	a5,-192(s0)
	srli	a5,a5,59
	ld	a4,-184(s0)
	slli	a3,a4,5
	or	a3,a5,a3
	ld	a5,-192(s0)
	slli	a2,a5,5
	li	a5,10
	addi	a5,a5,-1
	sd	a5,-152(s0)
	li	a5,10
	mv	s2,a5
	li	s3,0
	li	a5,10
	mv	t5,a5
	li	t6,0
	mul	a4,s3,t5
	mul	a5,t6,s2
	add	a5,a4,a5
	mul	a3,s2,t5
	mulhu	a4,s2,t5
	mv	a6,a3
	mv	a7,a4
	add	a5,a5,a7
	mv	a7,a5
	srli	a5,a6,59
	slli	s11,a7,5
	or	s11,a5,s11
	slli	s10,a6,5
	li	a5,10
	mv	t3,a5
	li	t4,0
	li	a5,10
	mv	t1,a5
	li	t2,0
	mul	a4,t4,t1
	mul	a5,t2,t3
	add	a5,a4,a5
	mul	a3,t3,t1
	mulhu	a4,t3,t1
	mv	a0,a3
	mv	a1,a4
	add	a5,a5,a1
	mv	a1,a5
	srli	a5,a0,59
	slli	s9,a1,5
	or	s9,a5,s9
	slli	s8,a0,5
	li	a5,10
	mv	a4,a5
	li	a5,10
	mul	a5,a4,a5
	slli	a5,a5,2
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,3
	srli	a5,a5,2
	slli	a5,a5,2
	sd	a5,-144(s0)
	li	a5,10
	addi	a5,a5,-1
	sd	a5,-136(s0)
	li	a5,10
	sd	a5,-208(s0)
	sd	zero,-200(s0)
	ld	a5,-208(s0)
	srli	a5,a5,59
	ld	a4,-200(s0)
	slli	s7,a4,5
	or	s7,a5,s7
	ld	a5,-208(s0)
	slli	s6,a5,5
	li	a5,10
	sd	a5,-224(s0)
	sd	zero,-216(s0)
	ld	a5,-224(s0)
	srli	a5,a5,59
	ld	a4,-216(s0)
	slli	s5,a4,5
	or	s5,a5,s5
	ld	a5,-224(s0)
	slli	s4,a5,5
	li	a5,10
	slli	a5,a5,2
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,3
	srli	a5,a5,2
	slli	a5,a5,2
	sd	a5,-128(s0)
	sw	zero,-164(s0)
	j	.L54
.L55:
	ld	a4,-128(s0)
	lw	a5,-164(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	li	a4,-1
	sw	a4,0(a5)
	lw	a5,-164(s0)
	addiw	a5,a5,1
	sw	a5,-164(s0)
.L54:
	li	a4,10
	lw	a5,-164(s0)
	sext.w	a5,a5
	blt	a5,a4,.L55
	ld	a0,-144(s0)
	call	initializeData
	ld	a0,-144(s0)
	call	displayGraph
	ld	a1,-128(s0)
	ld	a0,-144(s0)
	call	minSpanTree
	ld	a1,-128(s0)
	ld	a0,-144(s0)
	call	displayTree
	call	libmin_success@plt
	li	a5,0
	mv	sp,s1
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -120(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L57
	call	__stack_chk_fail@plt
.L57:
	mv	a0,a4
	addi	sp,s0,-224
	.cfi_def_cfa 2, 224
	ld	ra,216(sp)
	.cfi_restore 1
	ld	s0,208(sp)
	.cfi_restore 8
	ld	s1,200(sp)
	.cfi_restore 9
	ld	s2,192(sp)
	.cfi_restore 18
	ld	s3,184(sp)
	.cfi_restore 19
	ld	s4,176(sp)
	.cfi_restore 20
	ld	s5,168(sp)
	.cfi_restore 21
	ld	s6,160(sp)
	.cfi_restore 22
	ld	s7,152(sp)
	.cfi_restore 23
	ld	s8,144(sp)
	.cfi_restore 24
	ld	s9,136(sp)
	.cfi_restore 25
	ld	s10,128(sp)
	.cfi_restore 26
	ld	s11,120(sp)
	.cfi_restore 27
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	main, .-main
	.local	count.0
	.comm	count.0,4,4
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
