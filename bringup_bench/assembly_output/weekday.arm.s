	.arch armv8-a
	.file	"weekday.c"
	.text
	.align	2
	.global	dayOfWeek
	.type	dayOfWeek, %function
dayOfWeek:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	w0, [sp, 8]
	cmp	w0, 2
	cset	w0, le
	and	w0, w0, 255
	mov	w1, w0
	ldr	w0, [sp, 12]
	sub	w0, w0, w1
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	w1, w0, 3
	cmp	w0, 0
	csel	w0, w1, w0, lt
	asr	w0, w0, 2
	mov	w1, w0
	ldr	w0, [sp, 12]
	add	w1, w1, w0
	ldr	w0, [sp, 12]
	mov	w2, 34079
	movk	w2, 0x51eb, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w2, w2, 5
	asr	w0, w0, 31
	sub	w0, w0, w2
	add	w1, w1, w0
	ldr	w0, [sp, 12]
	mov	w2, 34079
	movk	w2, 0x51eb, lsl 16
	smull	x2, w0, w2
	lsr	x2, x2, 32
	asr	w2, w2, 7
	asr	w0, w0, 31
	sub	w0, w2, w0
	add	w1, w1, w0
	ldr	w0, [sp, 8]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	add	w1, w1, w0
	ldr	w0, [sp, 4]
	add	w0, w1, w0
	mov	w1, 9363
	movk	w1, 0x9249, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	add	w1, w0, w1
	asr	w2, w1, 2
	asr	w1, w0, 31
	sub	w2, w2, w1
	mov	w1, w2
	lsl	w1, w1, 3
	sub	w1, w1, w2
	sub	w2, w0, w1
	mov	w1, w2
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L3
	bl	__stack_chk_fail
.L3:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	dayOfWeek, .-dayOfWeek
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	3
	.word	2
	.word	5
	.word	0
	.word	3
	.word	5
	.word	1
	.word	4
	.word	6
	.word	2
	.word	4
	.text
	.section	.rodata
	.align	3
.LC10:
	.string	"%02d/%02d/%04d was a `%s'\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	str	w0, [sp, 12]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	x1, [x1, 48]
	str	x1, [x0, 48]
	mov	w2, 20
	mov	w1, 2
	mov	w0, 2024
	bl	dayOfWeek
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 16
	ldr	x0, [x1, x0]
	mov	x4, x0
	mov	w3, 2024
	mov	w2, 20
	mov	w1, 2
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	mov	w2, 5
	mov	w1, 4
	mov	w0, 1994
	bl	dayOfWeek
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 16
	ldr	x0, [x1, x0]
	mov	x4, x0
	mov	w3, 1994
	mov	w2, 5
	mov	w1, 4
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	mov	w2, 1
	mov	w1, 1
	mov	w0, 1975
	bl	dayOfWeek
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 16
	ldr	x0, [x1, x0]
	mov	x4, x0
	mov	w3, 1975
	mov	w2, 1
	mov	w1, 1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	mov	w2, 7
	mov	w1, 2
	mov	w0, 1964
	bl	dayOfWeek
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 16
	ldr	x0, [x1, x0]
	mov	x4, x0
	mov	w3, 1964
	mov	w2, 7
	mov	w1, 2
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.string	"Sunday"
	.align	3
.LC2:
	.string	"Monday"
	.align	3
.LC3:
	.string	"Tuesday"
	.align	3
.LC4:
	.string	"Wednesday"
	.align	3
.LC5:
	.string	"Thursday"
	.align	3
.LC6:
	.string	"Friday"
	.align	3
.LC7:
	.string	"Saturday"
	.data
	.align	3
.LC9:
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.xword	.LC7
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
