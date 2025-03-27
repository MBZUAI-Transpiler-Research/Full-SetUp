	.arch armv8-a
	.file	"libmin_floor.c"
	.text
	.section	.rodata
	.align	3
	.type	toint0, %object
	.size	toint0, 8
toint0:
	.word	0
	.word	1127219200
	.text
	.align	2
	.global	libmin_floor
	.type	libmin_floor, %function
libmin_floor:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	d0, [sp, 8]
	ldr	d0, [sp, 8]
	str	d0, [sp, 32]
	ldr	x0, [sp, 32]
	lsr	x0, x0, 52
	and	w0, w0, 2047
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1074
	bgt	.L2
	ldr	d0, [sp, 8]
	fcmp	d0, #0.0
	bne	.L3
.L2:
	ldr	d0, [sp, 8]
	b	.L12
.L3:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bge	.L5
	mov	x0, 4841369599423283200
	fmov	d1, x0
	ldr	d0, [sp, 8]
	fsub	d0, d0, d1
	mov	x0, 4841369599423283200
	fmov	d1, x0
	fadd	d1, d0, d1
	ldr	d0, [sp, 8]
	fsub	d0, d1, d0
	str	d0, [sp, 40]
	b	.L6
.L5:
	mov	x0, 4841369599423283200
	fmov	d1, x0
	ldr	d0, [sp, 8]
	fadd	d0, d1, d0
	mov	x0, 4841369599423283200
	fmov	d1, x0
	fsub	d1, d0, d1
	ldr	d0, [sp, 8]
	fsub	d0, d1, d0
	str	d0, [sp, 40]
.L6:
	ldr	w0, [sp, 28]
	cmp	w0, 1022
	bgt	.L7
	ldr	d0, [sp, 40]
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bge	.L8
	fmov	d0, -1.0e+0
	b	.L12
.L8:
	movi	d0, #0
	b	.L12
.L7:
	ldr	d0, [sp, 40]
	fcmpe	d0, #0.0
	bgt	.L13
	b	.L14
.L13:
	ldr	d1, [sp, 8]
	ldr	d0, [sp, 40]
	fadd	d1, d1, d0
	fmov	d0, 1.0e+0
	fsub	d0, d1, d0
	b	.L12
.L14:
	ldr	d1, [sp, 8]
	ldr	d0, [sp, 40]
	fadd	d0, d1, d0
.L12:
	add	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_floor, .-libmin_floor
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
