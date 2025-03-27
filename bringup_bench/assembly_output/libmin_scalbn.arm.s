	.arch armv8-a
	.file	"libmin_scalbn.c"
	.text
	.align	2
	.global	libmin_scalbn
	.type	libmin_scalbn, %function
libmin_scalbn:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	d0, [sp, 8]
	str	w0, [sp, 4]
	ldr	d0, [sp, 8]
	str	d0, [sp, 24]
	ldr	w0, [sp, 4]
	cmp	w0, 1023
	ble	.L2
	ldr	d0, [sp, 24]
	mov	x0, 9214364837600034816
	fmov	d1, x0
	fmul	d0, d0, d1
	str	d0, [sp, 24]
	ldr	w0, [sp, 4]
	sub	w0, w0, #1023
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 1023
	ble	.L3
	ldr	d0, [sp, 24]
	mov	x0, 9214364837600034816
	fmov	d1, x0
	fmul	d0, d0, d1
	str	d0, [sp, 24]
	ldr	w0, [sp, 4]
	sub	w0, w0, #1023
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 1023
	ble	.L3
	mov	w0, 1023
	str	w0, [sp, 4]
	b	.L3
.L2:
	ldr	w0, [sp, 4]
	cmn	w0, #1022
	bge	.L3
	ldr	d0, [sp, 24]
	mov	x0, 243194379878006784
	fmov	d1, x0
	fmul	d0, d0, d1
	str	d0, [sp, 24]
	ldr	w0, [sp, 4]
	add	w0, w0, 969
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmn	w0, #1022
	bge	.L3
	ldr	d0, [sp, 24]
	mov	x0, 243194379878006784
	fmov	d1, x0
	fmul	d0, d0, d1
	str	d0, [sp, 24]
	ldr	w0, [sp, 4]
	add	w0, w0, 969
	str	w0, [sp, 4]
	ldr	w0, [sp, 4]
	cmn	w0, #1022
	bge	.L3
	mov	w0, -1022
	str	w0, [sp, 4]
.L3:
	ldr	w0, [sp, 4]
	add	w0, w0, 1023
	sxtw	x0, w0
	lsl	x0, x0, 52
	str	x0, [sp, 16]
	ldr	d0, [sp, 16]
	ldr	d1, [sp, 24]
	fmul	d0, d1, d0
	str	d0, [sp, 8]
	ldr	d0, [sp, 8]
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_scalbn, .-libmin_scalbn
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
