	.arch armv8-a
	.file	"libmin_strtol.c"
	.text
	.align	2
	.global	libmin_strtol
	.type	libmin_strtol, %function
libmin_strtol:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	ble	.L2
	ldr	w0, [sp, 28]
	cmp	w0, 36
	ble	.L6
.L2:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L6
	ldr	x0, [sp, 40]
	cmp	x0, 0
	bne	.L6
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L4
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	str	x1, [x0]
.L4:
	mov	x0, 0
	b	.L5
.L7:
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L6:
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 8
	cmp	w0, 0
	bne	.L7
	ldr	x0, [sp, 40]
	ldrb	w0, [x0]
	cmp	w0, 43
	beq	.L8
	cmp	w0, 45
	bne	.L9
	mov	w0, 1
	str	w0, [sp, 64]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	b	.L10
.L8:
	str	wzr, [sp, 64]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	b	.L10
.L9:
	str	wzr, [sp, 64]
	nop
.L10:
	ldr	x0, [sp, 40]
	str	x0, [sp, 80]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L11
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L12
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 120
	beq	.L13
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 88
	bne	.L14
.L13:
	mov	w0, 16
	b	.L15
.L14:
	mov	w0, 8
.L15:
	str	w0, [sp, 28]
	b	.L11
.L12:
	mov	w0, 10
	str	w0, [sp, 28]
.L11:
	ldr	w0, [sp, 28]
	cmp	w0, 16
	bne	.L16
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 48
	bne	.L16
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 120
	beq	.L17
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	ldrb	w0, [x0]
	cmp	w0, 88
	bne	.L16
.L17:
	ldr	x0, [sp, 80]
	add	x0, x0, 2
	str	x0, [sp, 80]
.L16:
	str	xzr, [sp, 72]
	ldr	w0, [sp, 28]
	cmp	w0, 16
	beq	.L18
	ldr	w0, [sp, 28]
	cmp	w0, 16
	bgt	.L45
	ldr	w0, [sp, 28]
	cmp	w0, 8
	beq	.L30
	ldr	w0, [sp, 28]
	cmp	w0, 8
	bgt	.L45
	ldr	w0, [sp, 28]
	cmp	w0, 2
	beq	.L23
	ldr	w0, [sp, 28]
	cmp	w0, 4
	beq	.L27
	b	.L45
.L25:
	ldr	x0, [sp, 72]
	lsl	x0, x0, 1
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	ldr	x1, [sp, 72]
	orr	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	str	x0, [sp, 80]
.L23:
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 47
	bls	.L50
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 49
	bls	.L25
	b	.L50
.L29:
	ldr	x0, [sp, 72]
	lsl	x0, x0, 2
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	ldr	x1, [sp, 72]
	orr	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	str	x0, [sp, 80]
.L27:
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 47
	bls	.L51
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 51
	bls	.L29
	b	.L51
.L32:
	ldr	x0, [sp, 72]
	lsl	x0, x0, 3
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	ldr	x1, [sp, 72]
	orr	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	str	x0, [sp, 80]
.L30:
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 47
	bls	.L52
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 55
	bls	.L32
	b	.L52
.L18:
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L53
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	str	w0, [sp, 60]
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L35
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L36
	ldr	w0, [sp, 60]
	add	w0, w0, 32
	b	.L37
.L36:
	ldr	w0, [sp, 60]
.L37:
	str	w0, [sp, 60]
.L35:
	adrp	x0, digits.0
	add	x0, x0, :lo12:digits.0
	ldr	x0, [x0]
	ldr	w1, [sp, 60]
	and	w1, w1, 255
	bl	libmin_strchr
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L54
	adrp	x0, digits.0
	add	x0, x0, :lo12:digits.0
	ldr	x0, [x0]
	ldr	x1, [sp, 88]
	sub	x0, x1, x0
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 0
	blt	.L55
	ldr	w0, [sp, 68]
	cmp	w0, 15
	bgt	.L55
	ldr	x0, [sp, 72]
	lsl	x0, x0, 4
	str	x0, [sp, 72]
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 72]
	orr	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	str	x0, [sp, 80]
	b	.L18
.L53:
	nop
	b	.L55
.L54:
	nop
	b	.L55
.L45:
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L56
	ldr	x0, [sp, 80]
	ldrb	w0, [x0]
	str	w0, [sp, 60]
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L41
	adrp	x0, :got:_pctype
	ldr	x0, [x0, :got_lo12:_pctype]
	ldr	x1, [x0]
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L42
	ldr	w0, [sp, 60]
	add	w0, w0, 32
	b	.L43
.L42:
	ldr	w0, [sp, 60]
.L43:
	str	w0, [sp, 60]
.L41:
	adrp	x0, digits.0
	add	x0, x0, :lo12:digits.0
	ldr	x0, [x0]
	ldr	w1, [sp, 60]
	and	w1, w1, 255
	bl	libmin_strchr
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	cmp	x0, 0
	beq	.L57
	adrp	x0, digits.0
	add	x0, x0, :lo12:digits.0
	ldr	x0, [x0]
	ldr	x1, [sp, 88]
	sub	x0, x1, x0
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 0
	blt	.L40
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 68]
	cmp	w1, w0
	ble	.L40
	ldrsw	x0, [sp, 28]
	ldr	x1, [sp, 72]
	mul	x0, x1, x0
	str	x0, [sp, 72]
	ldrsw	x0, [sp, 68]
	ldr	x1, [sp, 72]
	sub	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	add	x0, x0, 1
	str	x0, [sp, 80]
	b	.L45
.L56:
	nop
	b	.L40
.L57:
	nop
.L40:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L46
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 80]
	str	x1, [x0]
.L46:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	beq	.L47
	ldr	x0, [sp, 72]
	b	.L5
.L47:
	ldr	x0, [sp, 72]
	neg	x0, x0
	str	x0, [sp, 72]
	b	.L26
.L50:
	nop
	b	.L26
.L51:
	nop
	b	.L26
.L52:
	nop
	b	.L26
.L55:
	nop
.L26:
	ldr	w0, [sp, 64]
	cmp	w0, 0
	beq	.L48
	ldr	x0, [sp, 72]
	neg	x0, x0
	str	x0, [sp, 72]
.L48:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	beq	.L49
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 80]
	str	x1, [x0]
.L49:
	ldr	x0, [sp, 72]
.L5:
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_strtol, .-libmin_strtol
	.section	.rodata
	.align	3
.LC0:
	.string	"0123456789abcdefghijklmnopqrstuvxwyz"
	.section	.data.rel.local,"aw"
	.align	3
	.type	digits.0, %object
	.size	digits.0, 8
digits.0:
	.xword	.LC0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
