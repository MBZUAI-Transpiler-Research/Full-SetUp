	.arch armv8-a
	.file	"problem8.c"
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%u\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #1056
	.cfi_def_cfa_offset 1072
	str	xzr, [sp, 1024]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1048]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 40
	mov	x3, x1
	mov	x1, 1001
	mov	x2, x1
	mov	x1, x3
	bl	memcpy
	mov	x0, 1000
	str	x0, [sp, 32]
	str	wzr, [sp, 8]
	str	xzr, [sp, 16]
	b	.L2
.L6:
	mov	w0, 1
	str	w0, [sp, 12]
	str	xzr, [sp, 24]
	b	.L3
.L4:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	add	x1, sp, 40
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	mov	w1, w0
	ldr	w0, [sp, 12]
	mul	w0, w0, w1
	str	w0, [sp, 12]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
.L3:
	ldr	x0, [sp, 24]
	cmp	x0, 4
	bls	.L4
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	bls	.L5
	ldr	w0, [sp, 12]
	str	w0, [sp, 8]
.L5:
	ldr	x0, [sp, 16]
	add	x0, x0, 1
	str	x0, [sp, 16]
.L2:
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	ldr	x1, [sp, 16]
	cmp	x1, x0
	bcc	.L6
	ldr	w1, [sp, 8]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 1048]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L8
	bl	__stack_chk_fail
.L8:
	mov	w0, w1
	add	sp, sp, 1056
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.ascii	"731671765313306249192251196744265747423553491949349698352031"
	.ascii	"277450632623957831801698480186947885184385861560789112949495"
	.ascii	"459501737958331952853208805511125406987471585238630507156932"
	.ascii	"909632952274430435576689664895044524452316173185640309871112"
	.ascii	"172238311362229893423380308135336276614282806444486645238749"
	.ascii	"303589072962904915604407723907138105158593079608667017242712"
	.ascii	"188399879790879227492190169972088809377665727333001053367881"
	.ascii	"220235421809751254540594752243525849077116705560136048395864"
	.ascii	"467063244157221553975369781797784617406495514929086256932197"
	.ascii	"846862248283972241375657056057490261407972968652414535100474"
	.ascii	"821663704844031998900088952434506585412275886668811642717147"
	.ascii	"992444292823086346567481391912316282458617866458359124566529"
	.ascii	"476545682848912883142607"
	.string	"6900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
