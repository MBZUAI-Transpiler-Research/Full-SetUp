	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"No"
	.align	3
.LC1:
	.string	".txt"
	.align	3
.LC2:
	.string	".exe"
	.align	3
.LC3:
	.string	".dll"
	.align	3
.LC4:
	.string	"Yes"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// file_name, file_name
// eval/problem142//code.c:5:     int num_digit = 0, num_dot = 0;
	str	wzr, [sp, 40]	//, num_digit
// eval/problem142//code.c:5:     int num_digit = 0, num_dot = 0;
	str	wzr, [sp, 44]	//, num_dot
// eval/problem142//code.c:6:     int length = strlen(file_name);
	ldr	x0, [sp, 24]	//, file_name
	bl	strlen		//
// eval/problem142//code.c:6:     int length = strlen(file_name);
	str	w0, [sp, 52]	// tmp109, length
// eval/problem142//code.c:7:     if (length < 5) return "No";
	ldr	w0, [sp, 52]	// tmp110, length
	cmp	w0, 4	// tmp110,
	bgt	.L2		//,
// eval/problem142//code.c:7:     if (length < 5) return "No";
	adrp	x0, .LC0	// tmp111,
	add	x0, x0, :lo12:.LC0	// _21, tmp111,
	b	.L3		//
.L2:
// eval/problem142//code.c:8:     char w = file_name[0];
	ldr	x0, [sp, 24]	// tmp112, file_name
	ldrb	w0, [x0]	// tmp113, *file_name_25(D)
	strb	w0, [sp, 39]	// tmp113, w
// eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	ldrb	w0, [sp, 39]	// tmp114, w
	cmp	w0, 64	// tmp114,
	bls	.L4		//,
// eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	ldrb	w0, [sp, 39]	// tmp115, w
	cmp	w0, 90	// tmp115,
	bls	.L5		//,
// eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	ldrb	w0, [sp, 39]	// tmp116, w
	cmp	w0, 96	// tmp116,
	bls	.L4		//,
.L5:
// eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	ldrb	w0, [sp, 39]	// tmp117, w
	cmp	w0, 122	// tmp117,
	bls	.L6		//,
.L4:
// eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	adrp	x0, .LC0	// tmp118,
	add	x0, x0, :lo12:.LC0	// _21, tmp118,
	b	.L3		//
.L6:
// eval/problem142//code.c:10:     const char* last = file_name + length - 4;
	ldrsw	x0, [sp, 52]	// _2, length
	sub	x0, x0, #4	// _3, _2,
// eval/problem142//code.c:10:     const char* last = file_name + length - 4;
	ldr	x1, [sp, 24]	// tmp120, file_name
	add	x0, x1, x0	// tmp119, tmp120, _3
	str	x0, [sp, 56]	// tmp119, last
// eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x0, .LC1	// tmp121,
	add	x1, x0, :lo12:.LC1	//, tmp121,
	ldr	x0, [sp, 56]	//, last
	bl	strcmp		//
// eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	cmp	w0, 0	// _4,
	beq	.L7		//,
// eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x0, .LC2	// tmp122,
	add	x1, x0, :lo12:.LC2	//, tmp122,
	ldr	x0, [sp, 56]	//, last
	bl	strcmp		//
// eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	cmp	w0, 0	// _5,
	beq	.L7		//,
// eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x0, .LC3	// tmp123,
	add	x1, x0, :lo12:.LC3	//, tmp123,
	ldr	x0, [sp, 56]	//, last
	bl	strcmp		//
// eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	cmp	w0, 0	// _6,
	beq	.L7		//,
// eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x0, .LC0	// tmp124,
	add	x0, x0, :lo12:.LC0	// _21, tmp124,
	b	.L3		//
.L7:
// eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 48]	//, i
// eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	b	.L8		//
.L11:
// eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	ldrsw	x0, [sp, 48]	// _7, i
	ldr	x1, [sp, 24]	// tmp125, file_name
	add	x0, x1, x0	// _8, tmp125, _7
	ldrb	w0, [x0]	// _9, *_8
// eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmp	w0, 47	// _9,
	bls	.L9		//,
// eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	ldrsw	x0, [sp, 48]	// _10, i
	ldr	x1, [sp, 24]	// tmp126, file_name
	add	x0, x1, x0	// _11, tmp126, _10
	ldrb	w0, [x0]	// _12, *_11
// eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmp	w0, 57	// _12,
	bhi	.L9		//,
// eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	ldr	w0, [sp, 40]	// tmp128, num_digit
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 40]	// tmp127, num_digit
.L9:
// eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	ldrsw	x0, [sp, 48]	// _13, i
	ldr	x1, [sp, 24]	// tmp129, file_name
	add	x0, x1, x0	// _14, tmp129, _13
	ldrb	w0, [x0]	// _15, *_14
// eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	cmp	w0, 46	// _15,
	bne	.L10		//,
// eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	ldr	w0, [sp, 44]	// tmp131, num_dot
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 44]	// tmp130, num_dot
.L10:
// eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 48]	// tmp133, i
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 48]	// tmp132, i
.L8:
// eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 48]	// tmp134, i
	ldr	w0, [sp, 52]	// tmp135, length
	cmp	w1, w0	// tmp134, tmp135
	blt	.L11		//,
// eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	ldr	w0, [sp, 40]	// tmp136, num_digit
	cmp	w0, 3	// tmp136,
	bgt	.L12		//,
// eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	ldr	w0, [sp, 44]	// tmp137, num_dot
	cmp	w0, 1	// tmp137,
	beq	.L13		//,
.L12:
// eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	adrp	x0, .LC0	// tmp138,
	add	x0, x0, :lo12:.LC0	// _21, tmp138,
	b	.L3		//
.L13:
// eval/problem142//code.c:17:     return "Yes";
	adrp	x0, .LC4	// tmp139,
	add	x0, x0, :lo12:.LC4	// _21, tmp139,
.L3:
// eval/problem142//code.c:18: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
