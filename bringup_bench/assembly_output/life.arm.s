	.arch armv8-a
	.file	"life.c"
	.text
	.global	NUM_BLOCKS
	.data
	.align	2
	.type	NUM_BLOCKS, %object
	.size	NUM_BLOCKS, 4
NUM_BLOCKS:
	.word	2
	.global	LIVE
	.type	LIVE, %object
	.size	LIVE, 1
LIVE:
	.byte	42
	.global	DEAD
	.type	DEAD, %object
	.size	DEAD, 1
DEAD:
	.byte	32
	.global	BLOCKS
	.align	3
	.type	BLOCKS, %object
	.size	BLOCKS, 2
BLOCKS:
	.ascii	" *"
	.global	evolution
	.align	2
	.type	evolution, %object
	.size	evolution, 4
evolution:
	.word	1
	.global	gridRoots
	.bss
	.align	3
	.type	gridRoots, %object
	.size	gridRoots, 560
gridRoots:
	.zero	560
	.global	gridTmpRoots
	.align	3
	.type	gridTmpRoots, %object
	.size	gridTmpRoots, 560
gridTmpRoots:
	.zero	560
	.global	grid
	.section	.data.rel.local,"aw"
	.align	3
	.type	grid, %object
	.size	grid, 8
grid:
	.xword	gridRoots
	.global	gridTmp
	.align	3
	.type	gridTmp, %object
	.size	gridTmp, 8
gridTmp:
	.xword	gridTmpRoots
	.global	gridVals
	.bss
	.align	3
	.type	gridVals, %object
	.size	gridVals, 1540
gridVals:
	.zero	1540
	.global	gridTmpVals
	.align	3
	.type	gridTmpVals, %object
	.size	gridTmpVals, 1540
gridTmpVals:
	.zero	1540
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 24]
	bl	init
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
.L4:
	bl	draw
	bl	process
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 80
	bne	.L2
	str	wzr, [sp, 28]
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L4
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.string	"\033[2J"
	.text
	.align	2
	.global	init
	.type	init, %function
init:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 1001
	bl	libmin_srand
	str	wzr, [sp, 24]
	b	.L7
.L10:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x2, x1, x0
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, gridVals
	add	x1, x1, :lo12:gridVals
	add	x0, x0, x1
	str	x0, [x2]
	adrp	x0, gridTmp
	add	x0, x0, :lo12:gridTmp
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x2, x1, x0
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, gridTmpVals
	add	x1, x1, :lo12:gridTmpVals
	add	x0, x0, x1
	str	x0, [x2]
	str	wzr, [sp, 28]
	b	.L8
.L9:
	bl	libmin_rand
	adrp	x1, NUM_BLOCKS
	add	x1, x1, :lo12:NUM_BLOCKS
	ldr	w1, [x1]
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w3, w0, w1
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 28]
	add	x0, x1, x0
	adrp	x1, BLOCKS
	add	x2, x1, :lo12:BLOCKS
	uxtw	x1, w3
	ldrb	w1, [x2, x1]
	strb	w1, [x0]
	adrp	x0, gridTmp
	add	x0, x0, :lo12:gridTmp
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 28]
	add	x0, x1, x0
	mov	w1, 32
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L8:
	ldr	w0, [sp, 28]
	cmp	w0, 21
	ble	.L9
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L7:
	ldr	w0, [sp, 24]
	cmp	w0, 69
	ble	.L10
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
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
	.align	2
	.global	draw
	.type	draw, %function
draw:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	adrp	x0, evolution
	add	x0, x0, :lo12:evolution
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, evolution
	add	x1, x1, :lo12:evolution
	str	w2, [x1]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	str	wzr, [sp, 24]
	b	.L12
.L15:
	str	wzr, [sp, 28]
	b	.L13
.L14:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L13:
	ldr	w0, [sp, 28]
	cmp	w0, 69
	ble	.L14
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L12:
	ldr	w0, [sp, 24]
	cmp	w0, 21
	ble	.L15
	nop
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	draw, .-draw
	.align	2
	.global	process
	.type	process, %function
process:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 20]
	b	.L17
.L26:
	str	wzr, [sp, 24]
	b	.L18
.L25:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	bl	getNumNeigbors
	str	w0, [sp, 28]
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 20]
	add	x0, x1, x0
	ldrb	w1, [x0]
	adrp	x0, LIVE
	add	x0, x0, :lo12:LIVE
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L19
	ldr	w0, [sp, 28]
	cmp	w0, 1
	ble	.L20
	ldr	w0, [sp, 28]
	cmp	w0, 3
	ble	.L21
.L20:
	adrp	x0, gridTmp
	add	x0, x0, :lo12:gridTmp
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 20]
	add	x0, x1, x0
	adrp	x1, DEAD
	add	x1, x1, :lo12:DEAD
	ldrb	w1, [x1]
	strb	w1, [x0]
	b	.L23
.L21:
	adrp	x0, gridTmp
	add	x0, x0, :lo12:gridTmp
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 20]
	add	x0, x1, x0
	adrp	x1, LIVE
	add	x1, x1, :lo12:LIVE
	ldrb	w1, [x1]
	strb	w1, [x0]
	b	.L23
.L19:
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L24
	adrp	x0, gridTmp
	add	x0, x0, :lo12:gridTmp
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 20]
	add	x0, x1, x0
	adrp	x1, LIVE
	add	x1, x1, :lo12:LIVE
	ldrb	w1, [x1]
	strb	w1, [x0]
	b	.L23
.L24:
	adrp	x0, gridTmp
	add	x0, x0, :lo12:gridTmp
	ldr	x1, [x0]
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 20]
	add	x0, x1, x0
	adrp	x1, DEAD
	add	x1, x1, :lo12:DEAD
	ldrb	w1, [x1]
	strb	w1, [x0]
.L23:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	bl	processMutate
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L18:
	ldr	w0, [sp, 24]
	cmp	w0, 69
	ble	.L25
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L17:
	ldr	w0, [sp, 20]
	cmp	w0, 21
	ble	.L26
	bl	flip
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	process, .-process
	.align	2
	.global	getNumNeigbors
	.type	getNumNeigbors, %function
getNumNeigbors:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	str	wzr, [sp, 44]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	getLeft
	and	w1, w0, 255
	adrp	x0, LIVE
	add	x0, x0, :lo12:LIVE
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L28
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L28:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	getRight
	and	w1, w0, 255
	adrp	x0, LIVE
	add	x0, x0, :lo12:LIVE
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L29
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L29:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	getUp
	and	w1, w0, 255
	adrp	x0, LIVE
	add	x0, x0, :lo12:LIVE
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L30
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L30:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	getDown
	and	w1, w0, 255
	adrp	x0, LIVE
	add	x0, x0, :lo12:LIVE
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L31
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L31:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	getUpLeft
	and	w1, w0, 255
	adrp	x0, LIVE
	add	x0, x0, :lo12:LIVE
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L32
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L32:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	getUpRight
	and	w1, w0, 255
	adrp	x0, LIVE
	add	x0, x0, :lo12:LIVE
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L33
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L33:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	getDownLeft
	and	w1, w0, 255
	adrp	x0, LIVE
	add	x0, x0, :lo12:LIVE
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L34
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L34:
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	getDownRight
	and	w1, w0, 255
	adrp	x0, LIVE
	add	x0, x0, :lo12:LIVE
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L35
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L35:
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	getNumNeigbors, .-getNumNeigbors
	.align	2
	.global	processMutate
	.type	processMutate, %function
processMutate:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	bl	libmin_rand
	mov	w1, w0
	mov	w0, 6641
	movk	w0, 0x576, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 6
	mov	w2, 3000
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 2927
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	processMutate, .-processMutate
	.align	2
	.global	flip
	.type	flip, %function
flip:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x0, [x0]
	str	x0, [sp, 8]
	adrp	x0, gridTmp
	add	x0, x0, :lo12:gridTmp
	ldr	x1, [x0]
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	str	x1, [x0]
	adrp	x0, gridTmp
	add	x0, x0, :lo12:gridTmp
	ldr	x1, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	flip, .-flip
	.align	2
	.global	getLeft
	.type	getLeft, %function
getLeft:
.LFB10:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L41
	adrp	x0, DEAD
	add	x0, x0, :lo12:DEAD
	ldrb	w0, [x0]
	b	.L42
.L41:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
.L42:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	getLeft, .-getLeft
	.align	2
	.global	getRight
	.type	getRight, %function
getRight:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w0, 69
	bne	.L44
	adrp	x0, DEAD
	add	x0, x0, :lo12:DEAD
	ldrb	w0, [x0]
	b	.L45
.L44:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 12]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 8]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
.L45:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	getRight, .-getRight
	.align	2
	.global	getUp
	.type	getUp, %function
getUp:
.LFB12:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L47
	adrp	x0, DEAD
	add	x0, x0, :lo12:DEAD
	ldrb	w0, [x0]
	b	.L48
.L47:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 8]
	sub	x0, x0, #1
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
.L48:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	getUp, .-getUp
	.align	2
	.global	getDown
	.type	getDown, %function
getDown:
.LFB13:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 21
	bne	.L50
	adrp	x0, DEAD
	add	x0, x0, :lo12:DEAD
	ldrb	w0, [x0]
	b	.L51
.L50:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 8]
	add	x0, x0, 1
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
.L51:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	getDown, .-getDown
	.align	2
	.global	getUpLeft
	.type	getUpLeft, %function
getUpLeft:
.LFB14:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	beq	.L53
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L54
.L53:
	adrp	x0, DEAD
	add	x0, x0, :lo12:DEAD
	ldrb	w0, [x0]
	b	.L55
.L54:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 8]
	sub	x0, x0, #1
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
.L55:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	getUpLeft, .-getUpLeft
	.align	2
	.global	getUpRight
	.type	getUpRight, %function
getUpRight:
.LFB15:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	cmp	w0, 69
	beq	.L57
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L58
.L57:
	adrp	x0, DEAD
	add	x0, x0, :lo12:DEAD
	ldrb	w0, [x0]
	b	.L59
.L58:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 12]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 8]
	sub	x0, x0, #1
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
.L59:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE15:
	.size	getUpRight, .-getUpRight
	.align	2
	.global	getDownLeft
	.type	getDownLeft, %function
getDownLeft:
.LFB16:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 21
	beq	.L61
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L62
.L61:
	adrp	x0, DEAD
	add	x0, x0, :lo12:DEAD
	ldrb	w0, [x0]
	b	.L63
.L62:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 8]
	add	x0, x0, 1
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
.L63:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE16:
	.size	getDownLeft, .-getDownLeft
	.align	2
	.global	getDownRight
	.type	getDownRight, %function
getDownRight:
.LFB17:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 21
	beq	.L65
	ldr	w0, [sp, 12]
	cmp	w0, 69
	bne	.L66
.L65:
	adrp	x0, DEAD
	add	x0, x0, :lo12:DEAD
	ldrb	w0, [x0]
	b	.L67
.L66:
	adrp	x0, grid
	add	x0, x0, :lo12:grid
	ldr	x1, [x0]
	ldrsw	x0, [sp, 12]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	x1, [x0]
	ldrsw	x0, [sp, 8]
	add	x0, x0, 1
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
.L67:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE17:
	.size	getDownRight, .-getDownRight
	.global	x
	.bss
	.align	2
	.type	x, %object
	.size	x, 4
x:
	.zero	4
	.text
	.align	2
	.global	sleep
	.type	sleep, %function
sleep:
.LFB18:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	adrp	x0, x
	add	x0, x0, :lo12:x
	str	wzr, [x0]
	b	.L69
.L70:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, x
	add	x0, x0, :lo12:x
	str	w1, [x0]
.L69:
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L70
	nop
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE18:
	.size	sleep, .-sleep
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
