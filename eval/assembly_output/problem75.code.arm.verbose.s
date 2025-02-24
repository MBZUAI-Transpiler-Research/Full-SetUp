	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// arr1, arr1
	str	w1, [sp, 36]	// n1, n1
	str	x2, [sp, 24]	// arr2, arr2
	str	w3, [sp, 32]	// n2, n2
// code.c:7:   int i, sum1 = 0, sum2 = 0;
	str	wzr, [sp, 56]	//, sum1
// code.c:7:   int i, sum1 = 0, sum2 = 0;
	str	wzr, [sp, 60]	//, sum2
// code.c:9:   for(i=0; i<n1; i++){
	str	wzr, [sp, 52]	//, i
// code.c:9:   for(i=0; i<n1; i++){
	b	.L2		//
.L3:
// code.c:10:     sum1 += strlen(arr1[i]);
	ldrsw	x0, [sp, 52]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp110, arr1
	add	x0, x1, x0	// _3, tmp110, _2
// code.c:10:     sum1 += strlen(arr1[i]);
	ldr	x0, [x0]	// _4, *_3
	bl	strlen		//
// code.c:10:     sum1 += strlen(arr1[i]);
	mov	w1, w0	// _6, _5
	ldr	w0, [sp, 56]	// sum1.0_7, sum1
	add	w0, w1, w0	// _8, _6, sum1.0_7
	str	w0, [sp, 56]	// _8, sum1
// code.c:9:   for(i=0; i<n1; i++){
	ldr	w0, [sp, 52]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 52]	// tmp111, i
.L2:
// code.c:9:   for(i=0; i<n1; i++){
	ldr	w1, [sp, 52]	// tmp113, i
	ldr	w0, [sp, 36]	// tmp114, n1
	cmp	w1, w0	// tmp113, tmp114
	blt	.L3		//,
// code.c:13:   for(i=0; i<n2; i++){
	str	wzr, [sp, 52]	//, i
// code.c:13:   for(i=0; i<n2; i++){
	b	.L4		//
.L5:
// code.c:14:     sum2 += strlen(arr2[i]); 
	ldrsw	x0, [sp, 52]	// _9, i
	lsl	x0, x0, 3	// _10, _9,
	ldr	x1, [sp, 24]	// tmp115, arr2
	add	x0, x1, x0	// _11, tmp115, _10
// code.c:14:     sum2 += strlen(arr2[i]); 
	ldr	x0, [x0]	// _12, *_11
	bl	strlen		//
// code.c:14:     sum2 += strlen(arr2[i]); 
	mov	w1, w0	// _14, _13
	ldr	w0, [sp, 60]	// sum2.1_15, sum2
	add	w0, w1, w0	// _16, _14, sum2.1_15
	str	w0, [sp, 60]	// _16, sum2
// code.c:13:   for(i=0; i<n2; i++){
	ldr	w0, [sp, 52]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 52]	// tmp116, i
.L4:
// code.c:13:   for(i=0; i<n2; i++){
	ldr	w1, [sp, 52]	// tmp118, i
	ldr	w0, [sp, 32]	// tmp119, n2
	cmp	w1, w0	// tmp118, tmp119
	blt	.L5		//,
// code.c:17:   if(sum1 < sum2){
	ldr	w1, [sp, 56]	// tmp120, sum1
	ldr	w0, [sp, 60]	// tmp121, sum2
	cmp	w1, w0	// tmp120, tmp121
	bge	.L6		//,
// code.c:18:     return arr1;
	ldr	x0, [sp, 40]	// _21, arr1
	b	.L7		//
.L6:
// code.c:20:   else if(sum1 > sum2){
	ldr	w1, [sp, 56]	// tmp122, sum1
	ldr	w0, [sp, 60]	// tmp123, sum2
	cmp	w1, w0	// tmp122, tmp123
	ble	.L8		//,
// code.c:21:     return arr2;
	ldr	x0, [sp, 24]	// _21, arr2
	b	.L7		//
.L8:
// code.c:24:     return arr1;
	ldr	x0, [sp, 40]	// _21, arr1
.L7:
// code.c:27: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
