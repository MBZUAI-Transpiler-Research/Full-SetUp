	.file	"life.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	NUM_BLOCKS
	.data
	.align	2
	.type	NUM_BLOCKS, @object
	.size	NUM_BLOCKS, 4
NUM_BLOCKS:
	.word	2
	.globl	LIVE
	.type	LIVE, @object
	.size	LIVE, 1
LIVE:
	.byte	42
	.globl	DEAD
	.type	DEAD, @object
	.size	DEAD, 1
DEAD:
	.byte	32
	.globl	BLOCKS
	.align	3
	.type	BLOCKS, @object
	.size	BLOCKS, 2
BLOCKS:
	.ascii	" *"
	.globl	evolution
	.align	2
	.type	evolution, @object
	.size	evolution, 4
evolution:
	.word	1
	.globl	gridRoots
	.bss
	.align	3
	.type	gridRoots, @object
	.size	gridRoots, 560
gridRoots:
	.zero	560
	.globl	gridTmpRoots
	.align	3
	.type	gridTmpRoots, @object
	.size	gridTmpRoots, 560
gridTmpRoots:
	.zero	560
	.globl	grid
	.section	.data.rel.local,"aw"
	.align	3
	.type	grid, @object
	.size	grid, 8
grid:
	.dword	gridRoots
	.globl	gridTmp
	.align	3
	.type	gridTmp, @object
	.size	gridTmp, 8
gridTmp:
	.dword	gridTmpRoots
	.globl	gridVals
	.bss
	.align	3
	.type	gridVals, @object
	.size	gridVals, 1540
gridVals:
	.zero	1540
	.globl	gridTmpVals
	.align	3
	.type	gridTmpVals, @object
	.size	gridTmpVals, 1540
gridTmpVals:
	.zero	1540
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	zero,-24(s0)
	call	init
	li	a5,1
	sw	a5,-20(s0)
	j	.L2
.L4:
	call	draw
	call	process
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,80
	bne	a4,a5,.L2
	sw	zero,-20(s0)
.L2:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L4
	call	libmin_success@plt
	li	a5,0
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
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"\033[2J"
	.text
	.align	1
	.globl	init
	.type	init, @function
init:
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
	li	a0,1001
	call	libmin_srand@plt
	sw	zero,-24(s0)
	j	.L7
.L10:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a3,-24(s0)
	li	a4,22
	mul	a3,a3,a4
	lla	a4,gridVals
	add	a4,a3,a4
	sd	a4,0(a5)
	lla	a5,gridTmp
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a3,-24(s0)
	li	a4,22
	mul	a3,a3,a4
	lla	a4,gridTmpVals
	add	a4,a3,a4
	sd	a4,0(a5)
	sw	zero,-20(s0)
	j	.L8
.L9:
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a4,a5
	lla	a5,NUM_BLOCKS
	lw	a5,0(a5)
	sext.w	a5,a5
	remuw	a5,a4,a5
	sext.w	a2,a5
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-20(s0)
	add	a5,a4,a5
	lla	a3,BLOCKS
	slli	a4,a2,32
	srli	a4,a4,32
	add	a4,a3,a4
	lbu	a4,0(a4)
	sb	a4,0(a5)
	lla	a5,gridTmp
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-20(s0)
	add	a5,a4,a5
	li	a4,32
	sb	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L8:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,21
	ble	a4,a5,.L9
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L7:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,69
	ble	a4,a5,.L10
	lla	a0,.LC0
	call	libmin_printf@plt
	nop
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
	.size	init, .-init
	.section	.rodata
	.align	3
.LC1:
	.string	"\033[H"
	.align	3
.LC2:
	.string	"CONWAY'S Game of Life\n\nEvolution #%d\n\n"
	.align	3
.LC3:
	.string	"%c"
	.align	3
.LC4:
	.string	"\n"
	.text
	.align	1
	.globl	draw
	.type	draw, @function
draw:
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
	lla	a0,.LC1
	call	libmin_printf@plt
	lla	a5,evolution
	lw	a5,0(a5)
	sext.w	a5,a5
	addiw	a4,a5,1
	sext.w	a3,a4
	lla	a4,evolution
	sw	a3,0(a4)
	mv	a1,a5
	lla	a0,.LC2
	call	libmin_printf@plt
	sw	zero,-24(s0)
	j	.L12
.L15:
	sw	zero,-20(s0)
	j	.L13
.L14:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-24(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L13:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,69
	ble	a4,a5,.L14
	lla	a0,.LC4
	call	libmin_printf@plt
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L12:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,21
	ble	a4,a5,.L15
	nop
	nop
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
	.size	draw, .-draw
	.align	1
	.globl	process
	.type	process, @function
process:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	zero,-28(s0)
	j	.L17
.L26:
	sw	zero,-24(s0)
	j	.L18
.L25:
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	getNumNeigbors
	mv	a5,a0
	sw	a5,-20(s0)
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lla	a5,LIVE
	lbu	a5,0(a5)
	bne	a4,a5,.L19
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L20
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,3
	ble	a4,a5,.L21
.L20:
	lla	a5,gridTmp
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lla	a4,DEAD
	lbu	a4,0(a4)
	sb	a4,0(a5)
	j	.L23
.L21:
	lla	a5,gridTmp
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lla	a4,LIVE
	lbu	a4,0(a4)
	sb	a4,0(a5)
	j	.L23
.L19:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L24
	lla	a5,gridTmp
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lla	a4,LIVE
	lbu	a4,0(a4)
	sb	a4,0(a5)
	j	.L23
.L24:
	lla	a5,gridTmp
	ld	a4,0(a5)
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lla	a4,DEAD
	lbu	a4,0(a4)
	sb	a4,0(a5)
.L23:
	lw	a4,-28(s0)
	lw	a5,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	processMutate
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L18:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,69
	ble	a4,a5,.L25
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L17:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,21
	ble	a4,a5,.L26
	call	flip
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	process, .-process
	.align	1
	.globl	getNumNeigbors
	.type	getNumNeigbors, @function
getNumNeigbors:
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
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	sw	zero,-20(s0)
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	getLeft
	mv	a5,a0
	mv	a4,a5
	lla	a5,LIVE
	lbu	a5,0(a5)
	bne	a4,a5,.L28
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L28:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	getRight
	mv	a5,a0
	mv	a4,a5
	lla	a5,LIVE
	lbu	a5,0(a5)
	bne	a4,a5,.L29
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L29:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	getUp
	mv	a5,a0
	mv	a4,a5
	lla	a5,LIVE
	lbu	a5,0(a5)
	bne	a4,a5,.L30
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L30:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	getDown
	mv	a5,a0
	mv	a4,a5
	lla	a5,LIVE
	lbu	a5,0(a5)
	bne	a4,a5,.L31
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L31:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	getUpLeft
	mv	a5,a0
	mv	a4,a5
	lla	a5,LIVE
	lbu	a5,0(a5)
	bne	a4,a5,.L32
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L32:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	getUpRight
	mv	a5,a0
	mv	a4,a5
	lla	a5,LIVE
	lbu	a5,0(a5)
	bne	a4,a5,.L33
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L33:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	getDownLeft
	mv	a5,a0
	mv	a4,a5
	lla	a5,LIVE
	lbu	a5,0(a5)
	bne	a4,a5,.L34
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L34:
	lw	a4,-40(s0)
	lw	a5,-36(s0)
	mv	a1,a4
	mv	a0,a5
	call	getDownRight
	mv	a5,a0
	mv	a4,a5
	lla	a5,LIVE
	lbu	a5,0(a5)
	bne	a4,a5,.L35
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L35:
	lw	a5,-20(s0)
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
	.size	getNumNeigbors, .-getNumNeigbors
	.align	1
	.globl	processMutate
	.type	processMutate, @function
processMutate:
.LFB8:
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
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	call	libmin_rand@plt
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	processMutate, .-processMutate
	.align	1
	.globl	flip
	.type	flip, @function
flip:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lla	a5,grid
	ld	a5,0(a5)
	sd	a5,-24(s0)
	lla	a5,gridTmp
	ld	a4,0(a5)
	lla	a5,grid
	sd	a4,0(a5)
	lla	a5,gridTmp
	ld	a4,-24(s0)
	sd	a4,0(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	flip, .-flip
	.align	1
	.globl	getLeft
	.type	getLeft, @function
getLeft:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L41
	lla	a5,DEAD
	lbu	a5,0(a5)
	j	.L42
.L41:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,3
	addi	a5,a5,-8
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
.L42:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	getLeft, .-getLeft
	.align	1
	.globl	getRight
	.type	getRight, @function
getRight:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,69
	bne	a4,a5,.L44
	lla	a5,DEAD
	lbu	a5,0(a5)
	j	.L45
.L44:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-36(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
.L45:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	getRight, .-getRight
	.align	1
	.globl	getUp
	.type	getUp, @function
getUp:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L47
	lla	a5,DEAD
	lbu	a5,0(a5)
	j	.L48
.L47:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,-1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
.L48:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	getUp, .-getUp
	.align	1
	.globl	getDown
	.type	getDown, @function
getDown:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,21
	bne	a4,a5,.L50
	lla	a5,DEAD
	lbu	a5,0(a5)
	j	.L51
.L50:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
.L51:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	getDown, .-getDown
	.align	1
	.globl	getUpLeft
	.type	getUpLeft, @function
getUpLeft:
.LFB14:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sext.w	a5,a5
	beq	a5,zero,.L53
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L54
.L53:
	lla	a5,DEAD
	lbu	a5,0(a5)
	j	.L55
.L54:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,3
	addi	a5,a5,-8
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,-1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
.L55:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	getUpLeft, .-getUpLeft
	.align	1
	.globl	getUpRight
	.type	getUpRight, @function
getUpRight:
.LFB15:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,69
	beq	a4,a5,.L57
	lw	a5,-40(s0)
	sext.w	a5,a5
	bne	a5,zero,.L58
.L57:
	lla	a5,DEAD
	lbu	a5,0(a5)
	j	.L59
.L58:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-36(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,-1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
.L59:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	getUpRight, .-getUpRight
	.align	1
	.globl	getDownLeft
	.type	getDownLeft, @function
getDownLeft:
.LFB16:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,21
	beq	a4,a5,.L61
	lw	a5,-36(s0)
	sext.w	a5,a5
	bne	a5,zero,.L62
.L61:
	lla	a5,DEAD
	lbu	a5,0(a5)
	j	.L63
.L62:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-36(s0)
	slli	a5,a5,3
	addi	a5,a5,-8
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
.L63:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	getDownLeft, .-getDownLeft
	.align	1
	.globl	getDownRight
	.type	getDownRight, @function
getDownRight:
.LFB17:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-40(s0)
	sext.w	a4,a5
	li	a5,21
	beq	a4,a5,.L65
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,69
	bne	a4,a5,.L66
.L65:
	lla	a5,DEAD
	lbu	a5,0(a5)
	j	.L67
.L66:
	lla	a5,grid
	ld	a4,0(a5)
	lw	a5,-36(s0)
	addi	a5,a5,1
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	lw	a5,-40(s0)
	addi	a5,a5,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
.L67:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	getDownRight, .-getDownRight
	.globl	x
	.bss
	.align	2
	.type	x, @object
	.size	x, 4
x:
	.zero	4
	.text
	.align	1
	.globl	sleep
	.type	sleep, @function
sleep:
.LFB18:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-20(s0)
	lla	a5,x
	sw	zero,0(a5)
	j	.L69
.L70:
	lla	a5,x
	lw	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,x
	sw	a4,0(a5)
.L69:
	lla	a5,x
	lw	a5,0(a5)
	sext.w	a5,a5
	ble	a5,zero,.L70
	nop
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	sleep, .-sleep
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
