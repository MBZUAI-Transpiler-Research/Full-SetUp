	.arch armv8-a
	.file	"qsort-demo.c"
	.text
	.align	2
	.global	int_cmp
	.type	int_cmp, %function
int_cmp:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 16]
	ldr	x0, [sp]
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	sub	w0, w1, w0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	int_cmp, .-int_cmp
	.section	.rodata
	.align	3
.LC9:
	.string	"%d | "
	.text
	.align	2
	.global	print_int_array
	.type	print_int_array, %function
print_int_array:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 40]
	b	.L4
.L5:
	ldr	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	libmin_printf
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L4:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L5
	mov	w0, 10
	bl	libmin_putc
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	print_int_array, .-print_int_array
	.section	.rodata
	.align	3
.LC10:
	.string	"*** Integer sorting..."
	.text
	.align	2
	.global	sort_integers_example
	.type	sort_integers_example, %function
sort_integers_example:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 8
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 28]
	str	q0, [x0, 28]
	mov	x0, 11
	str	x0, [sp]
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_puts
	add	x0, sp, 8
	ldr	x1, [sp]
	bl	print_int_array
	add	x4, sp, 8
	adrp	x0, int_cmp
	add	x3, x0, :lo12:int_cmp
	mov	x2, 4
	ldr	x1, [sp]
	mov	x0, x4
	bl	libmin_qsort
	add	x0, sp, 8
	ldr	x1, [sp]
	bl	print_int_array
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L7
	bl	__stack_chk_fail
.L7:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	sort_integers_example, .-sort_integers_example
	.section	.rodata
	.align	3
.LC0:
	.word	7
	.word	3
	.word	4
	.word	1
	.word	-1
	.word	23
	.word	12
	.word	43
	.word	2
	.word	-4
	.word	5
	.text
	.align	2
	.global	cstring_cmp
	.type	cstring_cmp, %function
cstring_cmp:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	ldr	x2, [x0]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	libmin_strcmp
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	cstring_cmp, .-cstring_cmp
	.section	.rodata
	.align	3
.LC11:
	.string	"%s | "
	.text
	.align	2
	.global	print_cstring_array
	.type	print_cstring_array, %function
print_cstring_array:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 40]
	b	.L11
.L12:
	ldr	x0, [sp, 40]
	lsl	x0, x0, 3
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	libmin_printf
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L11:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L12
	mov	w0, 10
	bl	libmin_putc
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	print_cstring_array, .-print_cstring_array
	.section	.rodata
	.align	3
.LC13:
	.string	"*** String sorting..."
	.text
	.align	2
	.global	sort_cstrings_example
	.type	sort_cstrings_example, %function
sort_cstrings_example:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	add	x0, sp, 8
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	mov	x0, 6
	str	x0, [sp]
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_puts
	add	x0, sp, 8
	ldr	x1, [sp]
	bl	print_cstring_array
	add	x4, sp, 8
	adrp	x0, cstring_cmp
	add	x3, x0, :lo12:cstring_cmp
	mov	x2, 8
	ldr	x1, [sp]
	mov	x0, x4
	bl	libmin_qsort
	add	x0, sp, 8
	ldr	x1, [sp]
	bl	print_cstring_array
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 56]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L14
	bl	__stack_chk_fail
.L14:
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE8:
	.size	sort_cstrings_example, .-sort_cstrings_example
	.section	.rodata
	.align	3
.LC1:
	.string	"Zorro"
	.align	3
.LC2:
	.string	"Alex"
	.align	3
.LC3:
	.string	"Celine"
	.align	3
.LC4:
	.string	"Bill"
	.align	3
.LC5:
	.string	"Forest"
	.align	3
.LC6:
	.string	"Dexter"
	.data
	.align	3
.LC12:
	.xword	.LC1
	.xword	.LC2
	.xword	.LC3
	.xword	.LC4
	.xword	.LC5
	.xword	.LC6
	.text
	.align	2
	.global	struct_cmp_by_price
	.type	struct_cmp_by_price, %function
struct_cmp_by_price:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 16]
	ldr	x0, [sp]
	str	x0, [sp, 24]
	ldr	x0, [sp, 16]
	ldr	s0, [x0, 16]
	mov	w0, 1120403456
	fmov	s1, w0
	fmul	s1, s0, s1
	ldr	x0, [sp, 24]
	ldr	s0, [x0, 16]
	mov	w0, 1120403456
	fmov	s2, w0
	fmul	s0, s0, s2
	fsub	s0, s1, s0
	fcvtzs	s0, s0
	fmov	w0, s0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	struct_cmp_by_price, .-struct_cmp_by_price
	.align	2
	.global	struct_cmp_by_product
	.type	struct_cmp_by_product, %function
struct_cmp_by_product:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 16]
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 40]
	bl	libmin_strcmp
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	struct_cmp_by_product, .-struct_cmp_by_product
	.section	.rodata
	.align	3
.LC14:
	.string	"[ product: %s \t price: $%.2f ]\n"
	.align	3
.LC15:
	.string	"--"
	.text
	.align	2
	.global	print_struct_array
	.type	print_struct_array, %function
print_struct_array:
.LFB11:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	xzr, [sp, 40]
	b	.L20
.L21:
	ldr	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x0, x1
	mov	x2, x0
	ldr	x1, [sp, 40]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	mov	x1, x0
	ldr	x0, [sp, 24]
	add	x0, x0, x1
	ldr	s0, [x0, 16]
	fcvt	d0, s0
	mov	x1, x2
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	libmin_printf
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
.L20:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 16]
	cmp	x1, x0
	bcc	.L21
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	libmin_puts
	nop
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	print_struct_array, .-print_struct_array
	.section	.rodata
	.align	3
.LC16:
	.string	"*** Struct sorting (price)..."
	.align	3
.LC17:
	.string	"*** Struct sorting (product)..."
	.text
	.align	2
	.global	sort_structs_example
	.type	sort_structs_example, %function
sort_structs_example:
.LFB12:
	.cfi_startproc
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, 144]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 144
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 136]
	mov	x1, 0
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldp	q0, q1, [x1, 32]
	stp	q0, q1, [x0, 32]
	ldp	q0, q1, [x1, 64]
	stp	q0, q1, [x0, 64]
	ldr	q0, [x1, 96]
	str	q0, [x0, 96]
	ldr	x1, [x1, 112]
	str	x1, [x0, 112]
	mov	x0, 6
	str	x0, [sp, 8]
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	libmin_puts
	add	x0, sp, 16
	ldr	x1, [sp, 8]
	bl	print_struct_array
	add	x4, sp, 16
	adrp	x0, struct_cmp_by_price
	add	x3, x0, :lo12:struct_cmp_by_price
	mov	x2, 20
	ldr	x1, [sp, 8]
	mov	x0, x4
	bl	libmin_qsort
	add	x0, sp, 16
	ldr	x1, [sp, 8]
	bl	print_struct_array
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	libmin_puts
	add	x4, sp, 16
	adrp	x0, struct_cmp_by_product
	add	x3, x0, :lo12:struct_cmp_by_product
	mov	x2, 20
	ldr	x1, [sp, 8]
	mov	x0, x4
	bl	libmin_qsort
	add	x0, sp, 16
	ldr	x1, [sp, 8]
	bl	print_struct_array
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 136]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L23
	bl	__stack_chk_fail
.L23:
	ldp	x29, x30, [sp, 144]
	add	sp, sp, 160
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	sort_structs_example, .-sort_structs_example
	.section	.rodata
	.align	3
.LC8:
	.string	"mp3 player"
	.zero	5
	.word	1133871104
	.string	"plasma tv"
	.zero	6
	.word	1158250496
	.string	"notebook"
	.zero	7
	.word	1151500288
	.string	"smartphone"
	.zero	5
	.word	1140457144
	.string	"dvd player"
	.zero	5
	.word	1125515264
	.string	"matches"
	.zero	8
	.word	1045220557
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB13:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	bl	sort_integers_example
	bl	sort_cstrings_example
	bl	sort_structs_example
	bl	libmin_success
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
