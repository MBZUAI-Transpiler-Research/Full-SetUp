	.arch armv8-a
	.file	"frac-calc.c"
	.text
	.global	__input
	.section	.rodata
	.align	3
	.type	__input, %object
	.size	__input, 30
__input:
	.ascii	" 3/4 + 6 7/19\n1\n7/19 + 21/7\n0\n"
	.global	input
	.align	3
.LC0:
	.string	"input.h"
	.section	.data.rel.local,"aw"
	.align	3
	.type	input, %object
	.size	input, 32
input:
	.xword	.LC0
	.xword	30
	.xword	__input
	.word	0
	.zero	4
	.global	minput
	.align	3
	.type	minput, %object
	.size	minput, 8
minput:
	.xword	input
	.local	verb
	.comm	verb,4,4
	.section	.rodata
	.align	3
.LC1:
	.string	"Type\n\t$man %s\nor\n\t$%s -h\nfor help.\n\n"
	.align	3
.LC2:
	.string	"vhV"
	.align	3
.LC3:
	.string	"Verbose level set at: %d\n"
	.align	3
.LC4:
	.string	"\nDo you want to do another operation?\nenter 1 for yes\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 272]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272
	str	w0, [sp, 12]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 264]
	mov	x1, 0
	mov	w0, 1
	str	w0, [sp, 28]
	adrp	x0, :got:opterr
	ldr	x0, [x0, :got_lo12:opterr]
	str	wzr, [x0]
	b	.L2
.L8:
	ldr	w0, [sp, 32]
	cmp	w0, 118
	beq	.L3
	ldr	w0, [sp, 32]
	cmp	w0, 118
	bgt	.L4
	ldr	w0, [sp, 32]
	cmp	w0, 86
	beq	.L5
	ldr	w0, [sp, 32]
	cmp	w0, 104
	bne	.L4
	bl	help
	b	.L2
.L5:
	bl	copyr
	b	.L2
.L3:
	adrp	x0, verb
	add	x0, x0, :lo12:verb
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, verb
	add	x0, x0, :lo12:verb
	str	w1, [x0]
	b	.L2
.L4:
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
	mov	w0, 1
	b	.L11
.L2:
	adrp	x0, .LC2
	add	x2, x0, :lo12:.LC2
	ldr	x1, [sp]
	ldr	w0, [sp, 12]
	bl	libmin_getopt
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	cmn	w0, #1
	bne	.L8
	adrp	x0, verb
	add	x0, x0, :lo12:verb
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L10
	adrp	x0, verb
	add	x0, x0, :lo12:verb
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
.L10:
	add	x0, sp, 136
	bl	frac_init
	add	x1, sp, 40
	add	x0, sp, 136
	bl	divtokens
	add	x1, sp, 88
	add	x0, sp, 40
	bl	calcula
	str	s0, [sp, 36]
	add	x2, sp, 40
	add	x1, sp, 88
	add	x0, sp, 136
	ldr	s0, [sp, 36]
	bl	print
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	adrp	x0, minput
	add	x0, x0, :lo12:minput
	ldr	x1, [x0]
	add	x0, sp, 200
	mov	x2, x1
	mov	x1, 60
	bl	libmin_mgets
	add	x0, sp, 200
	bl	libmin_atoi
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	beq	.L10
	bl	libmin_success
	mov	w0, 0
.L11:
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 264]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L12
	bl	__stack_chk_fail
.L12:
	mov	w0, w1
	ldp	x29, x30, [sp, 272]
	add	sp, sp, 288
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC5:
	.string	"Fraction Calculator"
	.align	3
.LC6:
	.string	"frac"
	.align	3
.LC7:
	.string	"%s - %s\n"
	.align	3
.LC8:
	.string	"\nUsage: %s [-h|-v]\n"
	.align	3
.LC9:
	.string	"\nOptions:\n"
	.align	3
.LC10:
	.string	"\t-h,  --help\n\t\tShow this help.\n"
	.align	3
.LC11:
	.string	"\t-V,  --version\n\t\tShow version and copyright information.\n"
	.align	3
.LC12:
	.string	"\t-v,  --verbose\n\t\tSet verbose level (cumulative).\n"
	.align	3
.LC13:
	.string	"\nExit status:\n\t0 if ok.\n\t1 some error occurred.\n"
	.align	3
.LC14:
	.string	"\nTodo:\n\tLong options not implemented yet.\n"
	.align	3
.LC15:
	.string	"iagocarrazzoni@gmail.com"
	.align	3
.LC16:
	.string	"Iago Gade Gusmao Carrazzoni"
	.align	3
.LC17:
	.string	"\nAuthor:\n\tWritten by %s <%s>\n\n"
	.text
	.align	2
	.global	help
	.type	help, %function
help:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, .LC5
	add	x2, x0, :lo12:.LC5
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	libmin_printf
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	libmin_printf
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	libmin_printf
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	libmin_printf
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	libmin_printf
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_printf
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	libmin_printf
	adrp	x0, .LC15
	add	x2, x0, :lo12:.LC15
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	libmin_printf
	mov	w0, 1
	bl	libmin_fail
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	help, .-help
	.section	.rodata
	.align	3
.LC18:
	.string	"20180915.214818"
	.align	3
.LC19:
	.string	"%s - Version %s\n"
	.align	3
.LC20:
	.ascii	"\nCopyright (C) %d %s <%s>, GNU GPL version 2 <http://gnu"
	.string	".org/licenses/gpl.html>. This  is  free  software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law. USE IT AS IT IS. The author takes no responsability to any damage this software may inflige in your data.\n\n"
	.align	3
.LC21:
	.string	"copyr(): Verbose: %d\n"
	.text
	.align	2
	.global	copyr
	.type	copyr, %function
copyr:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	adrp	x0, .LC18
	add	x2, x0, :lo12:.LC18
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	libmin_printf
	adrp	x0, .LC15
	add	x3, x0, :lo12:.LC15
	adrp	x0, .LC16
	add	x2, x0, :lo12:.LC16
	mov	w1, 2018
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	libmin_printf
	adrp	x0, verb
	add	x0, x0, :lo12:verb
	ldr	w0, [x0]
	cmp	w0, 3
	ble	.L15
	adrp	x0, verb
	add	x0, x0, :lo12:verb
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	libmin_printf
.L15:
	mov	w0, 1
	bl	libmin_fail
	nop
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	copyr, .-copyr
	.section	.rodata
	.align	3
.LC22:
	.string	"-------------------\n"
	.align	3
.LC23:
	.string	"FRACTION CALCULATOR\nPlease entry the desired operation:\n(It is necessary to add a space between the fractions, like a/b + c/d)\n-> "
	.text
	.align	2
	.global	frac_init
	.type	frac_init, %function
frac_init:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	libmin_printf
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	libmin_printf
	adrp	x0, minput
	add	x0, x0, :lo12:minput
	ldr	x0, [x0]
	mov	x2, x0
	mov	x1, 60
	ldr	x0, [sp, 24]
	bl	libmin_mgets
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	frac_init, .-frac_init
	.section	.rodata
	.align	3
.LC24:
	.string	" "
	.text
	.align	2
	.global	divtokens
	.type	divtokens, %function
divtokens:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #592
	.cfi_def_cfa_offset 608
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 584]
	mov	x1, 0
	str	wzr, [sp, 28]
	add	x0, sp, 520
	ldr	x1, [sp, 8]
	bl	libmin_strcpy
	add	x2, sp, 520
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	mov	x0, x2
	bl	libmin_strtok
	str	x0, [sp, 32]
	b	.L19
.L20:
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x1, sp, 40
	ldr	x2, [sp, 32]
	str	x2, [x1, x0]
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	mov	x0, 0
	bl	libmin_strtok
	str	x0, [sp, 32]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L19:
	ldr	x0, [sp, 32]
	cmp	x0, 0
	bne	.L20
	ldr	x0, [sp]
	add	x0, x0, 36
	ldr	w1, [sp, 28]
	str	w1, [x0]
	add	x0, sp, 40
	ldr	w2, [sp, 28]
	ldr	x1, [sp]
	bl	avaliatokens
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 584]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L22
	bl	__stack_chk_fail
.L22:
	add	sp, sp, 592
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	divtokens, .-divtokens
	.section	.rodata
	.align	3
.LC25:
	.string	"+"
	.align	3
.LC26:
	.string	"-"
	.align	3
.LC27:
	.string	"*"
	.align	3
.LC28:
	.string	"/"
	.text
	.align	2
	.global	avaliatokens
	.type	avaliatokens, %function
avaliatokens:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -80
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	str	w2, [sp, 44]
	str	wzr, [sp, 80]
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	ldr	x2, [x0]
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	beq	.L24
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	ldr	x2, [x0]
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	beq	.L24
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	ldr	x2, [x0]
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	beq	.L24
	ldr	x0, [sp, 56]
	add	x0, x0, 16
	ldr	x2, [x0]
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L25
.L24:
	ldr	w0, [sp, 44]
	cmp	w0, 4
	bne	.L25
	mov	w0, 1
	str	w0, [sp, 84]
.L25:
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	ldr	x2, [x0]
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	beq	.L26
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	ldr	x2, [x0]
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	beq	.L26
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	ldr	x2, [x0]
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	beq	.L26
	ldr	x0, [sp, 56]
	add	x0, x0, 8
	ldr	x2, [x0]
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L27
.L26:
	ldr	w0, [sp, 44]
	cmp	w0, 4
	bne	.L27
	mov	w0, 2
	str	w0, [sp, 84]
.L27:
	str	wzr, [sp, 76]
	b	.L28
.L35:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L29
	ldr	x0, [sp, 48]
	add	x0, x0, 40
	mov	w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L29:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L30
	ldr	x0, [sp, 48]
	add	x0, x0, 40
	mov	w1, 2
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L30:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L31
	ldr	x0, [sp, 48]
	add	x0, x0, 40
	mov	w1, 3
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L31:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, x2
	bl	libmin_strcmp
	cmp	w0, 0
	bne	.L32
	ldr	x0, [sp, 48]
	add	x0, x0, 40
	mov	w1, 4
	str	w1, [x0]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L32:
	ldrsw	x0, [sp, 76]
	lsl	x0, x0, 3
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	x2, [x0]
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, x2
	bl	libmin_strtok
	str	x0, [sp, 88]
	b	.L33
.L34:
	ldrsw	x0, [sp, 80]
	lsl	x0, x0, 2
	ldr	x1, [sp, 48]
	add	x19, x1, x0
	ldr	x0, [sp, 88]
	bl	libmin_atoi
	str	w0, [x19]
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	mov	x0, 0
	bl	libmin_strtok
	str	x0, [sp, 88]
	ldr	w0, [sp, 80]
	add	w0, w0, 1
	str	w0, [sp, 80]
.L33:
	ldr	x0, [sp, 88]
	cmp	x0, 0
	bne	.L34
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
.L28:
	ldr	w1, [sp, 76]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L35
	ldr	w2, [sp, 44]
	ldr	x1, [sp, 48]
	ldr	w0, [sp, 84]
	bl	misto
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	avaliatokens, .-avaliatokens
	.align	2
	.global	misto
	.type	misto, %function
misto:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	x1, [sp]
	str	w2, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 3
	bne	.L38
	ldr	x0, [sp]
	add	x0, x0, 36
	ldr	x1, [sp]
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 32
	ldr	x1, [sp]
	ldr	w1, [x1, 4]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 28
	ldr	x1, [sp]
	ldr	w1, [x1, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 24
	ldr	x1, [sp]
	ldr	w1, [x1, 12]
	str	w1, [x0]
	b	.L37
.L38:
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L40
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	w0, [x0]
	add	w1, w1, w0
	ldr	x0, [sp]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	x1, [sp]
	ldr	w1, [x1, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	x1, [sp]
	ldr	w1, [x1, 12]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 12
	ldr	x1, [sp]
	ldr	w1, [x1, 16]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 36
	ldr	x1, [sp]
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 32
	ldr	x1, [sp]
	ldr	w1, [x1, 4]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 28
	ldr	x1, [sp]
	ldr	w1, [x1, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 24
	ldr	x1, [sp]
	ldr	w1, [x1, 12]
	str	w1, [x0]
	b	.L37
.L40:
	ldr	w0, [sp, 12]
	cmp	w0, 2
	bne	.L41
	ldr	x0, [sp]
	add	x0, x0, 16
	ldr	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	w0, [x0]
	mul	w2, w1, w0
	ldr	x0, [sp]
	add	x0, x0, 12
	ldr	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 8
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 12
	ldr	x1, [sp]
	ldr	w1, [x1, 16]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 36
	ldr	x1, [sp]
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 32
	ldr	x1, [sp]
	ldr	w1, [x1, 4]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 28
	ldr	x1, [sp]
	ldr	w1, [x1, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 24
	ldr	x1, [sp]
	ldr	w1, [x1, 12]
	str	w1, [x0]
	b	.L37
.L41:
	ldr	w0, [sp, 8]
	cmp	w0, 5
	bne	.L43
	ldr	x0, [sp]
	add	x0, x0, 8
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	w0, [x0]
	add	w1, w1, w0
	ldr	x0, [sp]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 4
	ldr	x1, [sp]
	ldr	w1, [x1, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 20
	ldr	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 12
	ldr	w0, [x0]
	mul	w2, w1, w0
	ldr	x0, [sp]
	add	x0, x0, 16
	ldr	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 8
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 12
	ldr	x1, [sp]
	ldr	w1, [x1, 20]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 36
	ldr	x1, [sp]
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 32
	ldr	x1, [sp]
	ldr	w1, [x1, 4]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 28
	ldr	x1, [sp]
	ldr	w1, [x1, 8]
	str	w1, [x0]
	ldr	x0, [sp]
	add	x0, x0, 24
	ldr	x1, [sp]
	ldr	w1, [x1, 12]
	str	w1, [x0]
	b	.L37
.L43:
	nop
.L37:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	misto, .-misto
	.align	2
	.global	calcula
	.type	calcula, %function
calcula:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	wzr, [sp, 36]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 12
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	x0, [sp, 16]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 40
	ldr	w0, [x0]
	cmp	w0, 4
	beq	.L45
	cmp	w0, 4
	bgt	.L46
	cmp	w0, 3
	beq	.L47
	cmp	w0, 3
	bgt	.L46
	cmp	w0, 1
	beq	.L48
	cmp	w0, 2
	beq	.L49
	b	.L46
.L48:
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	w0, [x0]
	sdiv	w1, w1, w0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	mul	w2, w1, w0
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 12
	ldr	w0, [x0]
	sdiv	w1, w1, w0
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	add	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	s0, [x0]
	scvtf	s0, s0
	str	s0, [sp, 40]
	ldr	x0, [sp, 16]
	ldr	s0, [x0]
	scvtf	s0, s0
	str	s0, [sp, 44]
	ldr	s0, [sp, 44]
	ldr	s1, [sp, 40]
	fdiv	s0, s1, s0
	str	s0, [sp, 36]
	ldr	x0, [sp, 16]
	bl	simplifica
	b	.L46
.L49:
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	w0, [x0]
	sdiv	w1, w1, w0
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	mul	w2, w1, w0
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 12
	ldr	w0, [x0]
	sdiv	w1, w1, w0
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	sub	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	s0, [x0]
	scvtf	s0, s0
	str	s0, [sp, 40]
	ldr	x0, [sp, 16]
	ldr	s0, [x0]
	scvtf	s0, s0
	str	s0, [sp, 44]
	ldr	s0, [sp, 44]
	ldr	s1, [sp, 40]
	fdiv	s0, s1, s0
	str	s0, [sp, 36]
	ldr	x0, [sp, 16]
	bl	simplifica
	b	.L46
.L47:
	ldr	x0, [sp, 24]
	ldr	w2, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	mul	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	s0, [x0]
	scvtf	s0, s0
	str	s0, [sp, 40]
	ldr	x0, [sp, 16]
	ldr	s0, [x0]
	scvtf	s0, s0
	str	s0, [sp, 44]
	ldr	s0, [sp, 44]
	ldr	s1, [sp, 40]
	fdiv	s0, s1, s0
	str	s0, [sp, 36]
	ldr	x0, [sp, 16]
	bl	simplifica
	b	.L46
.L45:
	ldr	x0, [sp, 24]
	add	x0, x0, 4
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	w0, [x0]
	mul	w1, w1, w0
	ldr	x0, [sp, 16]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	w2, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 12
	ldr	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	mul	w1, w2, w1
	str	w1, [x0]
	ldr	x0, [sp, 16]
	add	x0, x0, 4
	ldr	s0, [x0]
	scvtf	s0, s0
	str	s0, [sp, 40]
	ldr	x0, [sp, 16]
	ldr	s0, [x0]
	scvtf	s0, s0
	str	s0, [sp, 44]
	ldr	s0, [sp, 44]
	ldr	s1, [sp, 40]
	fdiv	s0, s1, s0
	str	s0, [sp, 36]
	ldr	x0, [sp, 16]
	bl	simplifica
	nop
.L46:
	ldr	s0, [sp, 36]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	calcula, .-calcula
	.align	2
	.global	simplifica
	.type	simplifica, %function
simplifica:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	str	w0, [sp, 24]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L52
.L54:
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L53
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L53
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sdiv	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	sdiv	w0, w1, w0
	str	w0, [sp, 28]
.L53:
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
.L52:
	ldr	w0, [sp, 20]
	cmp	w0, 12
	ble	.L54
	ldr	x0, [sp, 8]
	add	x0, x0, 12
	ldr	w1, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 8]
	add	x0, x0, 16
	ldr	w1, [sp, 28]
	str	w1, [x0]
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	simplifica, .-simplifica
	.section	.rodata
	.align	3
.LC29:
	.string	"\nEXPRESSION: %sFRACTION: %d/%d %c %d/%d\nINTERMEDIATE: %d/%d\nRESULT: %d/%d\nDECIMAL: %.3f\n"
	.text
	.align	2
	.global	print
	.type	print, %function
print:
.LFB12:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 32
	str	x0, [sp, 72]
	str	x1, [sp, 64]
	str	s0, [sp, 60]
	str	x2, [sp, 48]
	ldr	x0, [sp, 48]
	add	x0, x0, 40
	ldr	w0, [x0]
	cmp	w0, 1
	bne	.L57
	mov	w0, 43
	strb	w0, [sp, 95]
.L57:
	ldr	x0, [sp, 48]
	add	x0, x0, 40
	ldr	w0, [x0]
	cmp	w0, 2
	bne	.L58
	mov	w0, 45
	strb	w0, [sp, 95]
.L58:
	ldr	x0, [sp, 48]
	add	x0, x0, 40
	ldr	w0, [x0]
	cmp	w0, 3
	bne	.L59
	mov	w0, 42
	strb	w0, [sp, 95]
.L59:
	ldr	x0, [sp, 48]
	add	x0, x0, 40
	ldr	w0, [x0]
	cmp	w0, 4
	bne	.L60
	mov	w0, 47
	strb	w0, [sp, 95]
.L60:
	ldr	x0, [sp, 48]
	add	x0, x0, 36
	ldr	w8, [x0]
	ldr	x0, [sp, 48]
	add	x0, x0, 32
	ldr	w3, [x0]
	ldrb	w4, [sp, 95]
	ldr	x0, [sp, 48]
	add	x0, x0, 28
	ldr	w5, [x0]
	ldr	x0, [sp, 48]
	add	x0, x0, 24
	ldr	w6, [x0]
	ldr	x0, [sp, 64]
	add	x0, x0, 4
	ldr	w7, [x0]
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	ldr	x1, [sp, 64]
	add	x1, x1, 12
	ldr	w1, [x1]
	ldr	x2, [sp, 64]
	add	x2, x2, 16
	ldr	w2, [x2]
	ldr	s0, [sp, 60]
	fcvt	d0, s0
	str	w2, [sp, 16]
	str	w1, [sp, 8]
	str	w0, [sp]
	mov	w2, w8
	ldr	x1, [sp, 72]
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	bl	libmin_printf
	nop
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	print, .-print
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
