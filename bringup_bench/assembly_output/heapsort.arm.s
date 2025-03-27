	.arch armv8-a
	.file	"heapsort.c"
	.text
	.local	bplong
	.comm	bplong,8,8
	.local	base
	.comm	base,16384,8
	.section	.rodata
	.align	3
.LC0:
	.string	"base buffer overflow!\n"
	.align	3
.LC1:
	.string	"   %10ld\n"
	.align	3
.LC2:
	.string	"ERROR: base array is not properly sorted!\n"
	.align	3
.LC3:
	.string	"INFO: base array is properly sorted!\n"
	.text
	.align	2
	.global	HSORT
	.type	HSORT, %function
HSORT:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	adrp	x0, bplong
	add	x0, x0, :lo12:bplong
	ldr	x0, [x0]
	ldr	x1, [sp, 24]
	mul	x0, x1, x0
	str	x0, [sp, 80]
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 88]
	ldr	x0, [sp, 24]
	cmp	x0, 2047
	ble	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L2:
	mov	x0, 106
	str	x0, [sp, 96]
	mov	x0, 1283
	str	x0, [sp, 104]
	mov	x0, 6075
	str	x0, [sp, 112]
	mov	x0, 1001
	str	x0, [sp, 120]
	str	xzr, [sp, 128]
	mov	x0, 47
	str	x0, [sp, 64]
	mov	x0, 1
	str	x0, [sp, 32]
	b	.L3
.L4:
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 96]
	mul	x1, x1, x0
	ldr	x0, [sp, 104]
	add	x0, x1, x0
	ldr	x1, [sp, 112]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 112]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 64]
	ldr	x1, [sp, 120]
	ldr	x0, [sp, 64]
	mul	x1, x1, x0
	ldr	x0, [sp, 112]
	sdiv	x1, x1, x0
	ldr	x0, [sp, 32]
	lsl	x2, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x0, x2, x0
	add	x1, x1, 1
	str	x1, [x0]
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L3:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 88]
	cmp	x1, x0
	ble	.L4
	ldr	x0, [sp, 88]
	asr	x0, x0, 1
	add	x0, x0, 1
	str	x0, [sp, 48]
	ldr	x0, [sp, 88]
	str	x0, [sp, 56]
	str	xzr, [sp, 136]
.L13:
	ldr	x0, [sp, 48]
	cmp	x0, 1
	ble	.L5
	ldr	x0, [sp, 48]
	sub	x0, x0, #1
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	lsl	x1, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 72]
	b	.L6
.L5:
	ldr	x0, [sp, 56]
	lsl	x1, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 72]
	ldr	x0, [sp, 56]
	lsl	x1, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x0, x1, x0
	adrp	x1, base
	add	x1, x1, :lo12:base
	ldr	x1, [x1, 8]
	str	x1, [x0]
	ldr	x0, [sp, 56]
	sub	x0, x0, #1
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmp	x0, 1
	bne	.L6
	adrp	x0, base
	add	x0, x0, :lo12:base
	ldr	x1, [sp, 72]
	str	x1, [x0, 8]
	nop
.L7:
	ldr	x1, [sp, 128]
	ldr	x0, [sp, 136]
	add	x0, x1, x0
	str	x0, [sp, 128]
	ldr	x0, [sp, 128]
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 136]
	add	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L14
	b	.L19
.L6:
	ldr	x0, [sp, 48]
	str	x0, [sp, 32]
	ldr	x0, [sp, 48]
	lsl	x0, x0, 1
	str	x0, [sp, 40]
	b	.L8
.L12:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	bge	.L9
	ldr	x0, [sp, 40]
	lsl	x1, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	lsl	x2, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x0, x2, x0
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L9
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L9:
	ldr	x0, [sp, 40]
	lsl	x1, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x0, x1, x0
	ldr	x0, [x0]
	ldr	x1, [sp, 72]
	cmp	x1, x0
	bge	.L10
	ldr	x0, [sp, 40]
	lsl	x1, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x1, x1, x0
	ldr	x0, [sp, 32]
	lsl	x2, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x0, x2, x0
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 40]
	b	.L8
.L10:
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L8:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	cmp	x1, x0
	ble	.L12
	ldr	x0, [sp, 32]
	lsl	x1, x0, 3
	adrp	x0, base
	add	x0, x0, :lo12:base
	add	x0, x1, x0
	ldr	x1, [sp, 72]
	str	x1, [x0]
	b	.L13
.L19:
	ldr	x0, [sp, 80]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
.L14:
	str	xzr, [sp, 32]
	b	.L15
.L17:
	adrp	x0, base
	add	x0, x0, :lo12:base
	ldr	x1, [sp, 32]
	ldr	x1, [x0, x1, lsl 3]
	ldr	x0, [sp, 32]
	add	x2, x0, 1
	adrp	x0, base
	add	x0, x0, :lo12:base
	ldr	x0, [x0, x2, lsl 3]
	cmp	x1, x0
	ble	.L16
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
.L16:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
.L15:
	ldr	x0, [sp, 88]
	sub	x0, x0, #1
	ldr	x1, [sp, 32]
	cmp	x1, x0
	blt	.L17
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	mov	w0, 0
	ldp	x29, x30, [sp], 144
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	HSORT, .-HSORT
	.section	.rodata
	.align	3
.LC4:
	.string	"\n   Heap Sort C Program\n"
	.align	3
.LC5:
	.string	"   Size of long (bytes): %ld\n\n"
	.align	3
.LC6:
	.string	"   Array Size (bytes)\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	adrp	x0, bplong
	add	x0, x0, :lo12:bplong
	mov	x1, 8
	str	x1, [x0]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	adrp	x0, bplong
	add	x0, x0, :lo12:bplong
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	libmin_printf
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	libmin_printf
	mov	x0, 1024
	str	x0, [sp, 16]
	mov	x0, 1
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	bl	HSORT
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
