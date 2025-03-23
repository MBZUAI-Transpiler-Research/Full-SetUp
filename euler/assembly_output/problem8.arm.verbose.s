	.arch armv8-a
	.file	"problem8.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
	sub	sp, sp, #1056	//,,
	.cfi_def_cfa_offset 1072
	str	xzr, [sp, 1024]	//,
// problem8.c:9: {
	adrp	x0, :got:__stack_chk_guard	// tmp100,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp100,
	ldr	x1, [x0]	// tmp127,
	str	x1, [sp, 1048]	// tmp127, D.4850
	mov	x1, 0	// tmp127
// problem8.c:10:   char str[] =
	adrp	x0, .LC0	// tmp102,
	add	x1, x0, :lo12:.LC0	// tmp101, tmp102,
	add	x0, sp, 40	// tmp103,,
	mov	x3, x1	// tmp104, tmp101
	mov	x1, 1001	// tmp105,
	mov	x2, x1	//, tmp105
	mov	x1, x3	//, tmp104
	bl	memcpy		//
// problem8.c:31:   size_t len = sizeof str - 1;
	mov	x0, 1000	// tmp107,
	str	x0, [sp, 32]	// tmp107, len
// problem8.c:33:   unsigned max = 0;
	str	wzr, [sp, 8]	//, max
// problem8.c:35:   for (i = 0; i < len-4; i++) {
	str	xzr, [sp, 16]	//, i
// problem8.c:35:   for (i = 0; i < len-4; i++) {
	b	.L2		//
.L6:
// problem8.c:36:     unsigned p = 1;
	mov	w0, 1	// tmp108,
	str	w0, [sp, 12]	// tmp108, p
// problem8.c:39:     for (j = 0; j < 5; j++) {
	str	xzr, [sp, 24]	//, j
// problem8.c:39:     for (j = 0; j < 5; j++) {
	b	.L3		//
.L4:
// problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	ldr	x1, [sp, 16]	// tmp109, i
	ldr	x0, [sp, 24]	// tmp110, j
	add	x0, x1, x0	// _1, tmp109, tmp110
// problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	add	x1, sp, 40	// tmp111,,
	ldrb	w0, [x1, x0]	// _2, str[_1]
// problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	sub	w0, w0, #48	// _4, _3,
// problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	mov	w1, w0	// _5, _4
// problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	ldr	w0, [sp, 12]	// tmp113, p
	mul	w0, w0, w1	// tmp112, tmp113, _5
	str	w0, [sp, 12]	// tmp112, p
// problem8.c:39:     for (j = 0; j < 5; j++) {
	ldr	x0, [sp, 24]	// tmp115, j
	add	x0, x0, 1	// tmp114, tmp115,
	str	x0, [sp, 24]	// tmp114, j
.L3:
// problem8.c:39:     for (j = 0; j < 5; j++) {
	ldr	x0, [sp, 24]	// tmp116, j
	cmp	x0, 4	// tmp116,
	bls	.L4		//,
// problem8.c:42:     if (p > max) {
	ldr	w1, [sp, 12]	// tmp117, p
	ldr	w0, [sp, 8]	// tmp118, max
	cmp	w1, w0	// tmp117, tmp118
	bls	.L5		//,
// problem8.c:43:       max = p;
	ldr	w0, [sp, 12]	// tmp119, p
	str	w0, [sp, 8]	// tmp119, max
.L5:
// problem8.c:35:   for (i = 0; i < len-4; i++) {
	ldr	x0, [sp, 16]	// tmp121, i
	add	x0, x0, 1	// tmp120, tmp121,
	str	x0, [sp, 16]	// tmp120, i
.L2:
// problem8.c:35:   for (i = 0; i < len-4; i++) {
	ldr	x0, [sp, 32]	// tmp122, len
	sub	x0, x0, #4	// _6, tmp122,
// problem8.c:35:   for (i = 0; i < len-4; i++) {
	ldr	x1, [sp, 16]	// tmp123, i
	cmp	x1, x0	// tmp123, _6
	bcc	.L6		//,
// problem8.c:46:   printf("%u\n", max);
	ldr	w1, [sp, 8]	//, max
	adrp	x0, .LC1	// tmp124,
	add	x0, x0, :lo12:.LC1	//, tmp124,
	bl	printf		//
// problem8.c:47:   return 0;
	mov	w0, 0	// _18,
// problem8.c:48: }
	mov	w1, w0	// <retval>, _18
	adrp	x0, :got:__stack_chk_guard	// tmp126,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp126,
	ldr	x3, [sp, 1048]	// tmp128, D.4850
	ldr	x2, [x0]	// tmp129,
	subs	x3, x3, x2	// tmp128, tmp129
	mov	x2, 0	// tmp129
	beq	.L8		//,
	bl	__stack_chk_fail		//
.L8:
	mov	w0, w1	//, <retval>
	add	sp, sp, 1056	//,,
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16	//,,,
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
