	.arch armv8-a
	.file	"bubble-sort.c"
	.text
	.global	data
	.bss
	.align	3
	.type	data, %object
	.size	data, 1024
data:
	.zero	1024
	.global	swaps
	.align	3
	.type	swaps, %object
	.size	swaps, 8
swaps:
	.zero	8
	.section	.rodata
	.align	3
.LC0:
	.string	"DATA DUMP:\n"
	.align	3
.LC1:
	.string	"  data[%u] = %d\n"
	.text
	.align	2
	.global	print_data
	.type	print_data, %function
print_data:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	str	wzr, [sp, 44]
	b	.L2
.L3:
	ldr	w0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w2, w0
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L2:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bcc	.L3
	nop
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	print_data, .-print_data
	.align	2
	.global	bubblesort
	.type	bubblesort, %function
bubblesort:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 16]
	b	.L5
.L11:
	str	wzr, [sp, 20]
	str	wzr, [sp, 24]
	b	.L6
.L8:
	ldr	w0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldr	w0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	uxtw	x0, w0
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 20]
	adrp	x0, swaps
	add	x0, x0, :lo12:swaps
	ldr	x0, [x0]
	add	x1, x0, 1
	adrp	x0, swaps
	add	x0, x0, :lo12:swaps
	str	x1, [x0]
.L7:
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L6:
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bcc	.L8
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L12
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
.L5:
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	ldr	w1, [sp, 16]
	cmp	w1, w0
	bcc	.L11
	b	.L13
.L12:
	nop
.L13:
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	bubblesort, .-bubblesort
	.section	.rodata
	.align	3
.LC2:
	.string	"ERROR: data is not properly sorted.\n"
	.align	3
.LC3:
	.string	"INFO: %lu swaps executed.\n"
	.align	3
.LC4:
	.string	"INFO: data is properly sorted.\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 42
	bl	libmin_srand
	str	wzr, [sp, 24]
	b	.L15
.L16:
	bl	libmin_rand
	mov	w2, w0
	adrp	x0, data
	add	x0, x0, :lo12:data
	ldr	w1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L15:
	ldr	w0, [sp, 24]
	cmp	w0, 255
	bls	.L16
	mov	w1, 256
	adrp	x0, data
	add	x0, x0, :lo12:data
	bl	print_data
	mov	w1, 256
	adrp	x0, data
	add	x0, x0, :lo12:data
	bl	bubblesort
	mov	w1, 256
	adrp	x0, data
	add	x0, x0, :lo12:data
	bl	print_data
	str	wzr, [sp, 28]
	b	.L17
.L20:
	adrp	x0, data
	add	x0, x0, :lo12:data
	ldr	w1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w2, w0, 1
	adrp	x0, data
	add	x0, x0, :lo12:data
	uxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L18
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	mov	w0, -1
	b	.L19
.L18:
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L17:
	ldr	w0, [sp, 28]
	cmp	w0, 254
	bls	.L20
	adrp	x0, swaps
	add	x0, x0, :lo12:swaps
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
.L19:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
