	.arch armv8-a
	.file	"problem75.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
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
// problem75.c:7:   int i, sum1 = 0, sum2 = 0;
	str	wzr, [sp, 56]	//, sum1
// problem75.c:7:   int i, sum1 = 0, sum2 = 0;
	str	wzr, [sp, 60]	//, sum2
// problem75.c:9:   for(i=0; i<n1; i++){
	str	wzr, [sp, 52]	//, i
// problem75.c:9:   for(i=0; i<n1; i++){
	b	.L2		//
.L3:
// problem75.c:10:     sum1 += strlen(arr1[i]);
	ldrsw	x0, [sp, 52]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp110, arr1
	add	x0, x1, x0	// _3, tmp110, _2
// problem75.c:10:     sum1 += strlen(arr1[i]);
	ldr	x0, [x0]	// _4, *_3
	bl	strlen		//
// problem75.c:10:     sum1 += strlen(arr1[i]);
	mov	w1, w0	// _6, _5
	ldr	w0, [sp, 56]	// sum1.0_7, sum1
	add	w0, w1, w0	// _8, _6, sum1.0_7
	str	w0, [sp, 56]	// _8, sum1
// problem75.c:9:   for(i=0; i<n1; i++){
	ldr	w0, [sp, 52]	// tmp112, i
	add	w0, w0, 1	// tmp111, tmp112,
	str	w0, [sp, 52]	// tmp111, i
.L2:
// problem75.c:9:   for(i=0; i<n1; i++){
	ldr	w1, [sp, 52]	// tmp113, i
	ldr	w0, [sp, 36]	// tmp114, n1
	cmp	w1, w0	// tmp113, tmp114
	blt	.L3		//,
// problem75.c:13:   for(i=0; i<n2; i++){
	str	wzr, [sp, 52]	//, i
// problem75.c:13:   for(i=0; i<n2; i++){
	b	.L4		//
.L5:
// problem75.c:14:     sum2 += strlen(arr2[i]); 
	ldrsw	x0, [sp, 52]	// _9, i
	lsl	x0, x0, 3	// _10, _9,
	ldr	x1, [sp, 24]	// tmp115, arr2
	add	x0, x1, x0	// _11, tmp115, _10
// problem75.c:14:     sum2 += strlen(arr2[i]); 
	ldr	x0, [x0]	// _12, *_11
	bl	strlen		//
// problem75.c:14:     sum2 += strlen(arr2[i]); 
	mov	w1, w0	// _14, _13
	ldr	w0, [sp, 60]	// sum2.1_15, sum2
	add	w0, w1, w0	// _16, _14, sum2.1_15
	str	w0, [sp, 60]	// _16, sum2
// problem75.c:13:   for(i=0; i<n2; i++){
	ldr	w0, [sp, 52]	// tmp117, i
	add	w0, w0, 1	// tmp116, tmp117,
	str	w0, [sp, 52]	// tmp116, i
.L4:
// problem75.c:13:   for(i=0; i<n2; i++){
	ldr	w1, [sp, 52]	// tmp118, i
	ldr	w0, [sp, 32]	// tmp119, n2
	cmp	w1, w0	// tmp118, tmp119
	blt	.L5		//,
// problem75.c:17:   if(sum1 < sum2){
	ldr	w1, [sp, 56]	// tmp120, sum1
	ldr	w0, [sp, 60]	// tmp121, sum2
	cmp	w1, w0	// tmp120, tmp121
	bge	.L6		//,
// problem75.c:18:     return arr1;
	ldr	x0, [sp, 40]	// _21, arr1
	b	.L7		//
.L6:
// problem75.c:20:   else if(sum1 > sum2){
	ldr	w1, [sp, 56]	// tmp122, sum1
	ldr	w0, [sp, 60]	// tmp123, sum2
	cmp	w1, w0	// tmp122, tmp123
	ble	.L8		//,
// problem75.c:21:     return arr2;
	ldr	x0, [sp, 24]	// _21, arr2
	b	.L7		//
.L8:
// problem75.c:24:     return arr1;
	ldr	x0, [sp, 40]	// _21, arr1
.L7:
// problem75.c:27: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
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
// problem75.c:43:   if(n1 != n2) return 0;
	ldr	w1, [sp, 36]	// tmp103, n1
	ldr	w0, [sp, 32]	// tmp104, n2
	cmp	w1, w0	// tmp103, tmp104
	beq	.L10		//,
// problem75.c:43:   if(n1 != n2) return 0;
	mov	w0, 0	// _11,
// problem75.c:43:   if(n1 != n2) return 0;
	b	.L11		//
.L10:
// problem75.c:45:   for(i=0; i<n1; i++){
	str	wzr, [sp, 60]	//, i
// problem75.c:45:   for(i=0; i<n1; i++){
	b	.L12		//
.L14:
// problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 40]	// tmp105, arr1
	add	x0, x1, x0	// _3, tmp105, _2
// problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	ldr	x2, [x0]	// _4, *_3
// problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	ldrsw	x0, [sp, 60]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 24]	// tmp106, arr2
	add	x0, x1, x0	// _7, tmp106, _6
// problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	ldr	x0, [x0]	// _8, *_7
	mov	x1, x0	//, _8
	mov	x0, x2	//, _4
	bl	strcmp		//
// problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	cmp	w0, 0	// _9,
	beq	.L13		//,
// problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	mov	w0, 0	// _11,
// problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	b	.L11		//
.L13:
// problem75.c:45:   for(i=0; i<n1; i++){
	ldr	w0, [sp, 60]	// tmp108, i
	add	w0, w0, 1	// tmp107, tmp108,
	str	w0, [sp, 60]	// tmp107, i
.L12:
// problem75.c:45:   for(i=0; i<n1; i++){
	ldr	w1, [sp, 60]	// tmp109, i
	ldr	w0, [sp, 36]	// tmp110, n1
	cmp	w1, w0	// tmp109, tmp110
	blt	.L14		//,
// problem75.c:49:   return 1;
	mov	w0, 1	// _11,
.L11:
// problem75.c:51: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"hi"
	.align	3
.LC1:
	.string	"admin"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #128	//,,
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112	//,,
// problem75.c:59: int main(){
	adrp	x0, :got:__stack_chk_guard	// tmp97,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp97,
	ldr	x1, [x0]	// tmp131,
	str	x1, [sp, 104]	// tmp131, D.5631
	mov	x1, 0	// tmp131
// problem75.c:63:   int n1 = 0, n2 = 0;
	str	wzr, [sp]	//, n1
// problem75.c:63:   int n1 = 0, n2 = 0;
	str	wzr, [sp, 4]	//, n2
// problem75.c:64:   issame(func0(arr1, n1, arr2, n2), n1, arr2, n2);
	add	x1, sp, 16	// tmp98,,
	add	x0, sp, 8	// tmp99,,
	ldr	w3, [sp, 4]	//, n2
	mov	x2, x1	//, tmp98
	ldr	w1, [sp]	//, n1
	bl	func0		//
	mov	x4, x0	// _1,
// problem75.c:64:   issame(func0(arr1, n1, arr2, n2), n1, arr2, n2);
	add	x0, sp, 16	// tmp100,,
	ldr	w3, [sp, 4]	//, n2
	mov	x2, x0	//, tmp100
	ldr	w1, [sp]	//, n1
	mov	x0, x4	//, _1
	bl	issame		//
// problem75.c:66:   char* arr3[] = {"hi", "admin"};
	adrp	x0, .LC0	// tmp102,
	add	x0, x0, :lo12:.LC0	// tmp101, tmp102,
	str	x0, [sp, 24]	// tmp101, arr3[0]
	adrp	x0, .LC1	// tmp104,
	add	x0, x0, :lo12:.LC1	// tmp103, tmp104,
	str	x0, [sp, 32]	// tmp103, arr3[1]
// problem75.c:67:   char* arr4[] = {"hi", "hi"};
	adrp	x0, .LC0	// tmp106,
	add	x0, x0, :lo12:.LC0	// tmp105, tmp106,
	str	x0, [sp, 40]	// tmp105, arr4[0]
	adrp	x0, .LC0	// tmp108,
	add	x0, x0, :lo12:.LC0	// tmp107, tmp108,
	str	x0, [sp, 48]	// tmp107, arr4[1]
// problem75.c:68:   n1 = 2; n2 = 2;
	mov	w0, 2	// tmp109,
	str	w0, [sp]	// tmp109, n1
// problem75.c:68:   n1 = 2; n2 = 2;
	mov	w0, 2	// tmp110,
	str	w0, [sp, 4]	// tmp110, n2
// problem75.c:69:   issame(func0(arr3, n1, arr4, n2), n1, arr4, n2);
	add	x1, sp, 40	// tmp111,,
	add	x0, sp, 24	// tmp112,,
	ldr	w3, [sp, 4]	//, n2
	mov	x2, x1	//, tmp111
	ldr	w1, [sp]	//, n1
	bl	func0		//
	mov	x4, x0	// _2,
// problem75.c:69:   issame(func0(arr3, n1, arr4, n2), n1, arr4, n2);
	add	x0, sp, 40	// tmp113,,
	ldr	w3, [sp, 4]	//, n2
	mov	x2, x0	//, tmp113
	ldr	w1, [sp]	//, n1
	mov	x0, x4	//, _2
	bl	issame		//
// problem75.c:71:   char* arr5[] = {"hi", "admin"};
	adrp	x0, .LC0	// tmp115,
	add	x0, x0, :lo12:.LC0	// tmp114, tmp115,
	str	x0, [sp, 56]	// tmp114, arr5[0]
	adrp	x0, .LC1	// tmp117,
	add	x0, x0, :lo12:.LC1	// tmp116, tmp117,
	str	x0, [sp, 64]	// tmp116, arr5[1]
// problem75.c:72:   char* arr6[] = {"hi", "hi", "admin", "project"};
	add	x0, sp, 120	// tmp118,,
	sub	x0, x0, #48	// tmp120, tmp118,
	adrp	x1, .LC4	// tmp122,
	add	x1, x1, :lo12:.LC4	// tmp121, tmp122,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp123,
	st1	{v0.16b - v1.16b}, [x0]	// tmp123, arr6
// problem75.c:73:   n1 = 2; n2 = 4;
	mov	w0, 2	// tmp124,
	str	w0, [sp]	// tmp124, n1
// problem75.c:73:   n1 = 2; n2 = 4;
	mov	w0, 4	// tmp125,
	str	w0, [sp, 4]	// tmp125, n2
// problem75.c:74:   issame(func0(arr5, n1, arr6, n2), n1, arr5, n1);
	add	x1, sp, 72	// tmp126,,
	add	x0, sp, 56	// tmp127,,
	ldr	w3, [sp, 4]	//, n2
	mov	x2, x1	//, tmp126
	ldr	w1, [sp]	//, n1
	bl	func0		//
	mov	x4, x0	// _3,
// problem75.c:74:   issame(func0(arr5, n1, arr6, n2), n1, arr5, n1);
	add	x0, sp, 56	// tmp128,,
	ldr	w3, [sp]	//, n1
	mov	x2, x0	//, tmp128
	ldr	w1, [sp]	//, n1
	mov	x0, x4	//, _3
	bl	issame		//
// problem75.c:78:   return 0;
	mov	w0, 0	// _24,
// problem75.c:79: }
	mov	w1, w0	// <retval>, _24
	adrp	x0, :got:__stack_chk_guard	// tmp130,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp130,
	ldr	x3, [sp, 104]	// tmp132, D.5631
	ldr	x2, [x0]	// tmp133,
	subs	x3, x3, x2	// tmp132, tmp133
	mov	x2, 0	// tmp133
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 112]	//,,
	add	sp, sp, 128	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	"project"
	.data
	.align	3
.LC4:
	.xword	.LC0
	.xword	.LC0
	.xword	.LC1
	.xword	.LC2
	.text
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
