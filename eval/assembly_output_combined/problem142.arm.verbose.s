	.arch armv8-a
	.file	"problem142.c"
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
// problem142.c:5:     int num_digit = 0, num_dot = 0;
	str	wzr, [sp, 40]	//, num_digit
// problem142.c:5:     int num_digit = 0, num_dot = 0;
	str	wzr, [sp, 44]	//, num_dot
// problem142.c:6:     int length = strlen(file_name);
	ldr	x0, [sp, 24]	//, file_name
	bl	strlen		//
// problem142.c:6:     int length = strlen(file_name);
	str	w0, [sp, 52]	// tmp109, length
// problem142.c:7:     if (length < 5) return "No";
	ldr	w0, [sp, 52]	// tmp110, length
	cmp	w0, 4	// tmp110,
	bgt	.L2		//,
// problem142.c:7:     if (length < 5) return "No";
	adrp	x0, .LC0	// tmp111,
	add	x0, x0, :lo12:.LC0	// _21, tmp111,
	b	.L3		//
.L2:
// problem142.c:8:     char w = file_name[0];
	ldr	x0, [sp, 24]	// tmp112, file_name
	ldrb	w0, [x0]	// tmp113, *file_name_25(D)
	strb	w0, [sp, 39]	// tmp113, w
// problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	ldrb	w0, [sp, 39]	// tmp114, w
	cmp	w0, 64	// tmp114,
	bls	.L4		//,
// problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	ldrb	w0, [sp, 39]	// tmp115, w
	cmp	w0, 90	// tmp115,
	bls	.L5		//,
// problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	ldrb	w0, [sp, 39]	// tmp116, w
	cmp	w0, 96	// tmp116,
	bls	.L4		//,
.L5:
// problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	ldrb	w0, [sp, 39]	// tmp117, w
	cmp	w0, 122	// tmp117,
	bls	.L6		//,
.L4:
// problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	adrp	x0, .LC0	// tmp118,
	add	x0, x0, :lo12:.LC0	// _21, tmp118,
	b	.L3		//
.L6:
// problem142.c:10:     const char* last = file_name + length - 4;
	ldrsw	x0, [sp, 52]	// _2, length
	sub	x0, x0, #4	// _3, _2,
// problem142.c:10:     const char* last = file_name + length - 4;
	ldr	x1, [sp, 24]	// tmp120, file_name
	add	x0, x1, x0	// tmp119, tmp120, _3
	str	x0, [sp, 56]	// tmp119, last
// problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x0, .LC1	// tmp121,
	add	x1, x0, :lo12:.LC1	//, tmp121,
	ldr	x0, [sp, 56]	//, last
	bl	strcmp		//
// problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	cmp	w0, 0	// _4,
	beq	.L7		//,
// problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x0, .LC2	// tmp122,
	add	x1, x0, :lo12:.LC2	//, tmp122,
	ldr	x0, [sp, 56]	//, last
	bl	strcmp		//
// problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	cmp	w0, 0	// _5,
	beq	.L7		//,
// problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x0, .LC3	// tmp123,
	add	x1, x0, :lo12:.LC3	//, tmp123,
	ldr	x0, [sp, 56]	//, last
	bl	strcmp		//
// problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	cmp	w0, 0	// _6,
	beq	.L7		//,
// problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	adrp	x0, .LC0	// tmp124,
	add	x0, x0, :lo12:.LC0	// _21, tmp124,
	b	.L3		//
.L7:
// problem142.c:12:     for (int i = 0; i < length; i++) {
	str	wzr, [sp, 48]	//, i
// problem142.c:12:     for (int i = 0; i < length; i++) {
	b	.L8		//
.L11:
// problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	ldrsw	x0, [sp, 48]	// _7, i
	ldr	x1, [sp, 24]	// tmp125, file_name
	add	x0, x1, x0	// _8, tmp125, _7
	ldrb	w0, [x0]	// _9, *_8
// problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmp	w0, 47	// _9,
	bls	.L9		//,
// problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	ldrsw	x0, [sp, 48]	// _10, i
	ldr	x1, [sp, 24]	// tmp126, file_name
	add	x0, x1, x0	// _11, tmp126, _10
	ldrb	w0, [x0]	// _12, *_11
// problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmp	w0, 57	// _12,
	bhi	.L9		//,
// problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	ldr	w0, [sp, 40]	// tmp128, num_digit
	add	w0, w0, 1	// tmp127, tmp128,
	str	w0, [sp, 40]	// tmp127, num_digit
.L9:
// problem142.c:14:         if (file_name[i] == '.') num_dot++;
	ldrsw	x0, [sp, 48]	// _13, i
	ldr	x1, [sp, 24]	// tmp129, file_name
	add	x0, x1, x0	// _14, tmp129, _13
	ldrb	w0, [x0]	// _15, *_14
// problem142.c:14:         if (file_name[i] == '.') num_dot++;
	cmp	w0, 46	// _15,
	bne	.L10		//,
// problem142.c:14:         if (file_name[i] == '.') num_dot++;
	ldr	w0, [sp, 44]	// tmp131, num_dot
	add	w0, w0, 1	// tmp130, tmp131,
	str	w0, [sp, 44]	// tmp130, num_dot
.L10:
// problem142.c:12:     for (int i = 0; i < length; i++) {
	ldr	w0, [sp, 48]	// tmp133, i
	add	w0, w0, 1	// tmp132, tmp133,
	str	w0, [sp, 48]	// tmp132, i
.L8:
// problem142.c:12:     for (int i = 0; i < length; i++) {
	ldr	w1, [sp, 48]	// tmp134, i
	ldr	w0, [sp, 52]	// tmp135, length
	cmp	w1, w0	// tmp134, tmp135
	blt	.L11		//,
// problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	ldr	w0, [sp, 40]	// tmp136, num_digit
	cmp	w0, 3	// tmp136,
	bgt	.L12		//,
// problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	ldr	w0, [sp, 44]	// tmp137, num_dot
	cmp	w0, 1	// tmp137,
	beq	.L13		//,
.L12:
// problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	adrp	x0, .LC0	// tmp138,
	add	x0, x0, :lo12:.LC0	// _21, tmp138,
	b	.L3		//
.L13:
// problem142.c:17:     return "Yes";
	adrp	x0, .LC4	// tmp139,
	add	x0, x0, :lo12:.LC4	// _21, tmp139,
.L3:
// problem142.c:18: }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC5:
	.string	"example.txt"
	.align	3
.LC6:
	.string	"problem142.c"
	.align	3
.LC7:
	.string	"strcmp(func0(\"example.txt\"), \"Yes\") == 0"
	.align	3
.LC8:
	.string	"1example.dll"
	.align	3
.LC9:
	.string	"strcmp(func0(\"1example.dll\"), \"No\") == 0"
	.align	3
.LC10:
	.string	"s1sdf3.asd"
	.align	3
.LC11:
	.string	"strcmp(func0(\"s1sdf3.asd\"), \"No\") == 0"
	.align	3
.LC12:
	.string	"K.dll"
	.align	3
.LC13:
	.string	"strcmp(func0(\"K.dll\"), \"Yes\") == 0"
	.align	3
.LC14:
	.string	"MY16FILE3.exe"
	.align	3
.LC15:
	.string	"strcmp(func0(\"MY16FILE3.exe\"), \"Yes\") == 0"
	.align	3
.LC16:
	.string	"His12FILE94.exe"
	.align	3
.LC17:
	.string	"strcmp(func0(\"His12FILE94.exe\"), \"No\") == 0"
	.align	3
.LC18:
	.string	"_Y.txt"
	.align	3
.LC19:
	.string	"strcmp(func0(\"_Y.txt\"), \"No\") == 0"
	.align	3
.LC20:
	.string	"?aREYA.exe"
	.align	3
.LC21:
	.string	"strcmp(func0(\"?aREYA.exe\"), \"No\") == 0"
	.align	3
.LC22:
	.string	"/this_is_valid.dll"
	.align	3
.LC23:
	.string	"strcmp(func0(\"/this_is_valid.dll\"), \"No\") == 0"
	.align	3
.LC24:
	.string	"this_is_valid.wow"
	.align	3
.LC25:
	.string	"strcmp(func0(\"this_is_valid.wow\"), \"No\") == 0"
	.align	3
.LC26:
	.string	"this_is_valid.txt"
	.align	3
.LC27:
	.string	"strcmp(func0(\"this_is_valid.txt\"), \"Yes\") == 0"
	.align	3
.LC28:
	.string	"this_is_valid.txtexe"
	.align	3
.LC29:
	.string	"strcmp(func0(\"this_is_valid.txtexe\"), \"No\") == 0"
	.align	3
.LC30:
	.string	"#this2_i4s_5valid.ten"
	.align	3
.LC31:
	.string	"strcmp(func0(\"#this2_i4s_5valid.ten\"), \"No\") == 0"
	.align	3
.LC32:
	.string	"@this1_is6_valid.exe"
	.align	3
.LC33:
	.string	"strcmp(func0(\"@this1_is6_valid.exe\"), \"No\") == 0"
	.align	3
.LC34:
	.string	"this_is_12valid.6exe4.txt"
	.align	3
.LC35:
	.string	"strcmp(func0(\"this_is_12valid.6exe4.txt\"), \"No\") == 0"
	.align	3
.LC36:
	.string	"all.exe.txt"
	.align	3
.LC37:
	.string	"strcmp(func0(\"all.exe.txt\"), \"No\") == 0"
	.align	3
.LC38:
	.string	"I563_No.exe"
	.align	3
.LC39:
	.string	"strcmp(func0(\"I563_No.exe\"), \"Yes\") == 0"
	.align	3
.LC40:
	.string	"Is3youfault.txt"
	.align	3
.LC41:
	.string	"strcmp(func0(\"Is3youfault.txt\"), \"Yes\") == 0"
	.align	3
.LC42:
	.string	"no_one#knows.dll"
	.align	3
.LC43:
	.string	"strcmp(func0(\"no_one#knows.dll\"), \"Yes\") == 0"
	.align	3
.LC44:
	.string	"1I563_Yes3.exe"
	.align	3
.LC45:
	.string	"strcmp(func0(\"1I563_Yes3.exe\"), \"No\") == 0"
	.align	3
.LC46:
	.string	"I563_Yes3.txtt"
	.align	3
.LC47:
	.string	"strcmp(func0(\"I563_Yes3.txtt\"), \"No\") == 0"
	.align	3
.LC48:
	.string	"final..txt"
	.align	3
.LC49:
	.string	"strcmp(func0(\"final..txt\"), \"No\") == 0"
	.align	3
.LC50:
	.string	"final132"
	.align	3
.LC51:
	.string	"strcmp(func0(\"final132\"), \"No\") == 0"
	.align	3
.LC52:
	.string	"_f4indsartal132."
	.align	3
.LC53:
	.string	"strcmp(func0(\"_f4indsartal132.\"), \"No\") == 0"
	.align	3
.LC54:
	.string	"strcmp(func0(\".txt\"), \"No\") == 0"
	.align	3
.LC55:
	.string	"s."
	.align	3
.LC56:
	.string	"strcmp(func0(\"s.\"), \"No\") == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// problem142.c:26:     assert(strcmp(func0("example.txt"), "Yes") == 0);
	adrp	x0, .LC5	// tmp146,
	add	x0, x0, :lo12:.LC5	//, tmp146,
	bl	func0		//
	mov	x2, x0	// _1,
	adrp	x0, .LC4	// tmp147,
	add	x1, x0, :lo12:.LC4	//, tmp147,
	mov	x0, x2	//, _1
	bl	strcmp		//
	cmp	w0, 0	// _2,
	beq	.L15		//,
// problem142.c:26:     assert(strcmp(func0("example.txt"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp148,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp148,
	mov	w2, 26	//,
	adrp	x0, .LC6	// tmp149,
	add	x1, x0, :lo12:.LC6	//, tmp149,
	adrp	x0, .LC7	// tmp150,
	add	x0, x0, :lo12:.LC7	//, tmp150,
	bl	__assert_fail		//
.L15:
// problem142.c:27:     assert(strcmp(func0("1example.dll"), "No") == 0);
	adrp	x0, .LC8	// tmp151,
	add	x0, x0, :lo12:.LC8	//, tmp151,
	bl	func0		//
	mov	x2, x0	// _3,
	adrp	x0, .LC0	// tmp152,
	add	x1, x0, :lo12:.LC0	//, tmp152,
	mov	x0, x2	//, _3
	bl	strcmp		//
	cmp	w0, 0	// _4,
	beq	.L16		//,
// problem142.c:27:     assert(strcmp(func0("1example.dll"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 27	//,
	adrp	x0, .LC6	// tmp154,
	add	x1, x0, :lo12:.LC6	//, tmp154,
	adrp	x0, .LC9	// tmp155,
	add	x0, x0, :lo12:.LC9	//, tmp155,
	bl	__assert_fail		//
.L16:
// problem142.c:28:     assert(strcmp(func0("s1sdf3.asd"), "No") == 0);
	adrp	x0, .LC10	// tmp156,
	add	x0, x0, :lo12:.LC10	//, tmp156,
	bl	func0		//
	mov	x2, x0	// _5,
	adrp	x0, .LC0	// tmp157,
	add	x1, x0, :lo12:.LC0	//, tmp157,
	mov	x0, x2	//, _5
	bl	strcmp		//
	cmp	w0, 0	// _6,
	beq	.L17		//,
// problem142.c:28:     assert(strcmp(func0("s1sdf3.asd"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp158,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp158,
	mov	w2, 28	//,
	adrp	x0, .LC6	// tmp159,
	add	x1, x0, :lo12:.LC6	//, tmp159,
	adrp	x0, .LC11	// tmp160,
	add	x0, x0, :lo12:.LC11	//, tmp160,
	bl	__assert_fail		//
.L17:
// problem142.c:29:     assert(strcmp(func0("K.dll"), "Yes") == 0);
	adrp	x0, .LC12	// tmp161,
	add	x0, x0, :lo12:.LC12	//, tmp161,
	bl	func0		//
	mov	x2, x0	// _7,
	adrp	x0, .LC4	// tmp162,
	add	x1, x0, :lo12:.LC4	//, tmp162,
	mov	x0, x2	//, _7
	bl	strcmp		//
	cmp	w0, 0	// _8,
	beq	.L18		//,
// problem142.c:29:     assert(strcmp(func0("K.dll"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp163,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp163,
	mov	w2, 29	//,
	adrp	x0, .LC6	// tmp164,
	add	x1, x0, :lo12:.LC6	//, tmp164,
	adrp	x0, .LC13	// tmp165,
	add	x0, x0, :lo12:.LC13	//, tmp165,
	bl	__assert_fail		//
.L18:
// problem142.c:30:     assert(strcmp(func0("MY16FILE3.exe"), "Yes") == 0);
	adrp	x0, .LC14	// tmp166,
	add	x0, x0, :lo12:.LC14	//, tmp166,
	bl	func0		//
	mov	x2, x0	// _9,
	adrp	x0, .LC4	// tmp167,
	add	x1, x0, :lo12:.LC4	//, tmp167,
	mov	x0, x2	//, _9
	bl	strcmp		//
	cmp	w0, 0	// _10,
	beq	.L19		//,
// problem142.c:30:     assert(strcmp(func0("MY16FILE3.exe"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp168,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp168,
	mov	w2, 30	//,
	adrp	x0, .LC6	// tmp169,
	add	x1, x0, :lo12:.LC6	//, tmp169,
	adrp	x0, .LC15	// tmp170,
	add	x0, x0, :lo12:.LC15	//, tmp170,
	bl	__assert_fail		//
.L19:
// problem142.c:31:     assert(strcmp(func0("His12FILE94.exe"), "No") == 0);
	adrp	x0, .LC16	// tmp171,
	add	x0, x0, :lo12:.LC16	//, tmp171,
	bl	func0		//
	mov	x2, x0	// _11,
	adrp	x0, .LC0	// tmp172,
	add	x1, x0, :lo12:.LC0	//, tmp172,
	mov	x0, x2	//, _11
	bl	strcmp		//
	cmp	w0, 0	// _12,
	beq	.L20		//,
// problem142.c:31:     assert(strcmp(func0("His12FILE94.exe"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp173,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp173,
	mov	w2, 31	//,
	adrp	x0, .LC6	// tmp174,
	add	x1, x0, :lo12:.LC6	//, tmp174,
	adrp	x0, .LC17	// tmp175,
	add	x0, x0, :lo12:.LC17	//, tmp175,
	bl	__assert_fail		//
.L20:
// problem142.c:32:     assert(strcmp(func0("_Y.txt"), "No") == 0);
	adrp	x0, .LC18	// tmp176,
	add	x0, x0, :lo12:.LC18	//, tmp176,
	bl	func0		//
	mov	x2, x0	// _13,
	adrp	x0, .LC0	// tmp177,
	add	x1, x0, :lo12:.LC0	//, tmp177,
	mov	x0, x2	//, _13
	bl	strcmp		//
	cmp	w0, 0	// _14,
	beq	.L21		//,
// problem142.c:32:     assert(strcmp(func0("_Y.txt"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp178,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp178,
	mov	w2, 32	//,
	adrp	x0, .LC6	// tmp179,
	add	x1, x0, :lo12:.LC6	//, tmp179,
	adrp	x0, .LC19	// tmp180,
	add	x0, x0, :lo12:.LC19	//, tmp180,
	bl	__assert_fail		//
.L21:
// problem142.c:33:     assert(strcmp(func0("?aREYA.exe"), "No") == 0);
	adrp	x0, .LC20	// tmp181,
	add	x0, x0, :lo12:.LC20	//, tmp181,
	bl	func0		//
	mov	x2, x0	// _15,
	adrp	x0, .LC0	// tmp182,
	add	x1, x0, :lo12:.LC0	//, tmp182,
	mov	x0, x2	//, _15
	bl	strcmp		//
	cmp	w0, 0	// _16,
	beq	.L22		//,
// problem142.c:33:     assert(strcmp(func0("?aREYA.exe"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp183,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp183,
	mov	w2, 33	//,
	adrp	x0, .LC6	// tmp184,
	add	x1, x0, :lo12:.LC6	//, tmp184,
	adrp	x0, .LC21	// tmp185,
	add	x0, x0, :lo12:.LC21	//, tmp185,
	bl	__assert_fail		//
.L22:
// problem142.c:34:     assert(strcmp(func0("/this_is_valid.dll"), "No") == 0);
	adrp	x0, .LC22	// tmp186,
	add	x0, x0, :lo12:.LC22	//, tmp186,
	bl	func0		//
	mov	x2, x0	// _17,
	adrp	x0, .LC0	// tmp187,
	add	x1, x0, :lo12:.LC0	//, tmp187,
	mov	x0, x2	//, _17
	bl	strcmp		//
	cmp	w0, 0	// _18,
	beq	.L23		//,
// problem142.c:34:     assert(strcmp(func0("/this_is_valid.dll"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp188,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp188,
	mov	w2, 34	//,
	adrp	x0, .LC6	// tmp189,
	add	x1, x0, :lo12:.LC6	//, tmp189,
	adrp	x0, .LC23	// tmp190,
	add	x0, x0, :lo12:.LC23	//, tmp190,
	bl	__assert_fail		//
.L23:
// problem142.c:35:     assert(strcmp(func0("this_is_valid.wow"), "No") == 0);
	adrp	x0, .LC24	// tmp191,
	add	x0, x0, :lo12:.LC24	//, tmp191,
	bl	func0		//
	mov	x2, x0	// _19,
	adrp	x0, .LC0	// tmp192,
	add	x1, x0, :lo12:.LC0	//, tmp192,
	mov	x0, x2	//, _19
	bl	strcmp		//
	cmp	w0, 0	// _20,
	beq	.L24		//,
// problem142.c:35:     assert(strcmp(func0("this_is_valid.wow"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp193,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp193,
	mov	w2, 35	//,
	adrp	x0, .LC6	// tmp194,
	add	x1, x0, :lo12:.LC6	//, tmp194,
	adrp	x0, .LC25	// tmp195,
	add	x0, x0, :lo12:.LC25	//, tmp195,
	bl	__assert_fail		//
.L24:
// problem142.c:36:     assert(strcmp(func0("this_is_valid.txt"), "Yes") == 0);
	adrp	x0, .LC26	// tmp196,
	add	x0, x0, :lo12:.LC26	//, tmp196,
	bl	func0		//
	mov	x2, x0	// _21,
	adrp	x0, .LC4	// tmp197,
	add	x1, x0, :lo12:.LC4	//, tmp197,
	mov	x0, x2	//, _21
	bl	strcmp		//
	cmp	w0, 0	// _22,
	beq	.L25		//,
// problem142.c:36:     assert(strcmp(func0("this_is_valid.txt"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp198,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp198,
	mov	w2, 36	//,
	adrp	x0, .LC6	// tmp199,
	add	x1, x0, :lo12:.LC6	//, tmp199,
	adrp	x0, .LC27	// tmp200,
	add	x0, x0, :lo12:.LC27	//, tmp200,
	bl	__assert_fail		//
.L25:
// problem142.c:37:     assert(strcmp(func0("this_is_valid.txtexe"), "No") == 0);
	adrp	x0, .LC28	// tmp201,
	add	x0, x0, :lo12:.LC28	//, tmp201,
	bl	func0		//
	mov	x2, x0	// _23,
	adrp	x0, .LC0	// tmp202,
	add	x1, x0, :lo12:.LC0	//, tmp202,
	mov	x0, x2	//, _23
	bl	strcmp		//
	cmp	w0, 0	// _24,
	beq	.L26		//,
// problem142.c:37:     assert(strcmp(func0("this_is_valid.txtexe"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp203,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp203,
	mov	w2, 37	//,
	adrp	x0, .LC6	// tmp204,
	add	x1, x0, :lo12:.LC6	//, tmp204,
	adrp	x0, .LC29	// tmp205,
	add	x0, x0, :lo12:.LC29	//, tmp205,
	bl	__assert_fail		//
.L26:
// problem142.c:38:     assert(strcmp(func0("#this2_i4s_5valid.ten"), "No") == 0);
	adrp	x0, .LC30	// tmp206,
	add	x0, x0, :lo12:.LC30	//, tmp206,
	bl	func0		//
	mov	x2, x0	// _25,
	adrp	x0, .LC0	// tmp207,
	add	x1, x0, :lo12:.LC0	//, tmp207,
	mov	x0, x2	//, _25
	bl	strcmp		//
	cmp	w0, 0	// _26,
	beq	.L27		//,
// problem142.c:38:     assert(strcmp(func0("#this2_i4s_5valid.ten"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp208,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp208,
	mov	w2, 38	//,
	adrp	x0, .LC6	// tmp209,
	add	x1, x0, :lo12:.LC6	//, tmp209,
	adrp	x0, .LC31	// tmp210,
	add	x0, x0, :lo12:.LC31	//, tmp210,
	bl	__assert_fail		//
.L27:
// problem142.c:39:     assert(strcmp(func0("@this1_is6_valid.exe"), "No") == 0);
	adrp	x0, .LC32	// tmp211,
	add	x0, x0, :lo12:.LC32	//, tmp211,
	bl	func0		//
	mov	x2, x0	// _27,
	adrp	x0, .LC0	// tmp212,
	add	x1, x0, :lo12:.LC0	//, tmp212,
	mov	x0, x2	//, _27
	bl	strcmp		//
	cmp	w0, 0	// _28,
	beq	.L28		//,
// problem142.c:39:     assert(strcmp(func0("@this1_is6_valid.exe"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp213,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp213,
	mov	w2, 39	//,
	adrp	x0, .LC6	// tmp214,
	add	x1, x0, :lo12:.LC6	//, tmp214,
	adrp	x0, .LC33	// tmp215,
	add	x0, x0, :lo12:.LC33	//, tmp215,
	bl	__assert_fail		//
.L28:
// problem142.c:40:     assert(strcmp(func0("this_is_12valid.6exe4.txt"), "No") == 0);
	adrp	x0, .LC34	// tmp216,
	add	x0, x0, :lo12:.LC34	//, tmp216,
	bl	func0		//
	mov	x2, x0	// _29,
	adrp	x0, .LC0	// tmp217,
	add	x1, x0, :lo12:.LC0	//, tmp217,
	mov	x0, x2	//, _29
	bl	strcmp		//
	cmp	w0, 0	// _30,
	beq	.L29		//,
// problem142.c:40:     assert(strcmp(func0("this_is_12valid.6exe4.txt"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp218,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp218,
	mov	w2, 40	//,
	adrp	x0, .LC6	// tmp219,
	add	x1, x0, :lo12:.LC6	//, tmp219,
	adrp	x0, .LC35	// tmp220,
	add	x0, x0, :lo12:.LC35	//, tmp220,
	bl	__assert_fail		//
.L29:
// problem142.c:41:     assert(strcmp(func0("all.exe.txt"), "No") == 0);
	adrp	x0, .LC36	// tmp221,
	add	x0, x0, :lo12:.LC36	//, tmp221,
	bl	func0		//
	mov	x2, x0	// _31,
	adrp	x0, .LC0	// tmp222,
	add	x1, x0, :lo12:.LC0	//, tmp222,
	mov	x0, x2	//, _31
	bl	strcmp		//
	cmp	w0, 0	// _32,
	beq	.L30		//,
// problem142.c:41:     assert(strcmp(func0("all.exe.txt"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp223,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp223,
	mov	w2, 41	//,
	adrp	x0, .LC6	// tmp224,
	add	x1, x0, :lo12:.LC6	//, tmp224,
	adrp	x0, .LC37	// tmp225,
	add	x0, x0, :lo12:.LC37	//, tmp225,
	bl	__assert_fail		//
.L30:
// problem142.c:42:     assert(strcmp(func0("I563_No.exe"), "Yes") == 0);
	adrp	x0, .LC38	// tmp226,
	add	x0, x0, :lo12:.LC38	//, tmp226,
	bl	func0		//
	mov	x2, x0	// _33,
	adrp	x0, .LC4	// tmp227,
	add	x1, x0, :lo12:.LC4	//, tmp227,
	mov	x0, x2	//, _33
	bl	strcmp		//
	cmp	w0, 0	// _34,
	beq	.L31		//,
// problem142.c:42:     assert(strcmp(func0("I563_No.exe"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp228,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp228,
	mov	w2, 42	//,
	adrp	x0, .LC6	// tmp229,
	add	x1, x0, :lo12:.LC6	//, tmp229,
	adrp	x0, .LC39	// tmp230,
	add	x0, x0, :lo12:.LC39	//, tmp230,
	bl	__assert_fail		//
.L31:
// problem142.c:43:     assert(strcmp(func0("Is3youfault.txt"), "Yes") == 0);
	adrp	x0, .LC40	// tmp231,
	add	x0, x0, :lo12:.LC40	//, tmp231,
	bl	func0		//
	mov	x2, x0	// _35,
	adrp	x0, .LC4	// tmp232,
	add	x1, x0, :lo12:.LC4	//, tmp232,
	mov	x0, x2	//, _35
	bl	strcmp		//
	cmp	w0, 0	// _36,
	beq	.L32		//,
// problem142.c:43:     assert(strcmp(func0("Is3youfault.txt"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp233,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp233,
	mov	w2, 43	//,
	adrp	x0, .LC6	// tmp234,
	add	x1, x0, :lo12:.LC6	//, tmp234,
	adrp	x0, .LC41	// tmp235,
	add	x0, x0, :lo12:.LC41	//, tmp235,
	bl	__assert_fail		//
.L32:
// problem142.c:44:     assert(strcmp(func0("no_one#knows.dll"), "Yes") == 0);
	adrp	x0, .LC42	// tmp236,
	add	x0, x0, :lo12:.LC42	//, tmp236,
	bl	func0		//
	mov	x2, x0	// _37,
	adrp	x0, .LC4	// tmp237,
	add	x1, x0, :lo12:.LC4	//, tmp237,
	mov	x0, x2	//, _37
	bl	strcmp		//
	cmp	w0, 0	// _38,
	beq	.L33		//,
// problem142.c:44:     assert(strcmp(func0("no_one#knows.dll"), "Yes") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp238,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp238,
	mov	w2, 44	//,
	adrp	x0, .LC6	// tmp239,
	add	x1, x0, :lo12:.LC6	//, tmp239,
	adrp	x0, .LC43	// tmp240,
	add	x0, x0, :lo12:.LC43	//, tmp240,
	bl	__assert_fail		//
.L33:
// problem142.c:45:     assert(strcmp(func0("1I563_Yes3.exe"), "No") == 0);
	adrp	x0, .LC44	// tmp241,
	add	x0, x0, :lo12:.LC44	//, tmp241,
	bl	func0		//
	mov	x2, x0	// _39,
	adrp	x0, .LC0	// tmp242,
	add	x1, x0, :lo12:.LC0	//, tmp242,
	mov	x0, x2	//, _39
	bl	strcmp		//
	cmp	w0, 0	// _40,
	beq	.L34		//,
// problem142.c:45:     assert(strcmp(func0("1I563_Yes3.exe"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp243,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp243,
	mov	w2, 45	//,
	adrp	x0, .LC6	// tmp244,
	add	x1, x0, :lo12:.LC6	//, tmp244,
	adrp	x0, .LC45	// tmp245,
	add	x0, x0, :lo12:.LC45	//, tmp245,
	bl	__assert_fail		//
.L34:
// problem142.c:46:     assert(strcmp(func0("I563_Yes3.txtt"), "No") == 0);
	adrp	x0, .LC46	// tmp246,
	add	x0, x0, :lo12:.LC46	//, tmp246,
	bl	func0		//
	mov	x2, x0	// _41,
	adrp	x0, .LC0	// tmp247,
	add	x1, x0, :lo12:.LC0	//, tmp247,
	mov	x0, x2	//, _41
	bl	strcmp		//
	cmp	w0, 0	// _42,
	beq	.L35		//,
// problem142.c:46:     assert(strcmp(func0("I563_Yes3.txtt"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp248,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp248,
	mov	w2, 46	//,
	adrp	x0, .LC6	// tmp249,
	add	x1, x0, :lo12:.LC6	//, tmp249,
	adrp	x0, .LC47	// tmp250,
	add	x0, x0, :lo12:.LC47	//, tmp250,
	bl	__assert_fail		//
.L35:
// problem142.c:47:     assert(strcmp(func0("final..txt"), "No") == 0);
	adrp	x0, .LC48	// tmp251,
	add	x0, x0, :lo12:.LC48	//, tmp251,
	bl	func0		//
	mov	x2, x0	// _43,
	adrp	x0, .LC0	// tmp252,
	add	x1, x0, :lo12:.LC0	//, tmp252,
	mov	x0, x2	//, _43
	bl	strcmp		//
	cmp	w0, 0	// _44,
	beq	.L36		//,
// problem142.c:47:     assert(strcmp(func0("final..txt"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp253,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp253,
	mov	w2, 47	//,
	adrp	x0, .LC6	// tmp254,
	add	x1, x0, :lo12:.LC6	//, tmp254,
	adrp	x0, .LC49	// tmp255,
	add	x0, x0, :lo12:.LC49	//, tmp255,
	bl	__assert_fail		//
.L36:
// problem142.c:48:     assert(strcmp(func0("final132"), "No") == 0);
	adrp	x0, .LC50	// tmp256,
	add	x0, x0, :lo12:.LC50	//, tmp256,
	bl	func0		//
	mov	x2, x0	// _45,
	adrp	x0, .LC0	// tmp257,
	add	x1, x0, :lo12:.LC0	//, tmp257,
	mov	x0, x2	//, _45
	bl	strcmp		//
	cmp	w0, 0	// _46,
	beq	.L37		//,
// problem142.c:48:     assert(strcmp(func0("final132"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp258,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp258,
	mov	w2, 48	//,
	adrp	x0, .LC6	// tmp259,
	add	x1, x0, :lo12:.LC6	//, tmp259,
	adrp	x0, .LC51	// tmp260,
	add	x0, x0, :lo12:.LC51	//, tmp260,
	bl	__assert_fail		//
.L37:
// problem142.c:49:     assert(strcmp(func0("_f4indsartal132."), "No") == 0);
	adrp	x0, .LC52	// tmp261,
	add	x0, x0, :lo12:.LC52	//, tmp261,
	bl	func0		//
	mov	x2, x0	// _47,
	adrp	x0, .LC0	// tmp262,
	add	x1, x0, :lo12:.LC0	//, tmp262,
	mov	x0, x2	//, _47
	bl	strcmp		//
	cmp	w0, 0	// _48,
	beq	.L38		//,
// problem142.c:49:     assert(strcmp(func0("_f4indsartal132."), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp263,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp263,
	mov	w2, 49	//,
	adrp	x0, .LC6	// tmp264,
	add	x1, x0, :lo12:.LC6	//, tmp264,
	adrp	x0, .LC53	// tmp265,
	add	x0, x0, :lo12:.LC53	//, tmp265,
	bl	__assert_fail		//
.L38:
// problem142.c:50:     assert(strcmp(func0(".txt"), "No") == 0);
	adrp	x0, .LC1	// tmp266,
	add	x0, x0, :lo12:.LC1	//, tmp266,
	bl	func0		//
	mov	x2, x0	// _49,
	adrp	x0, .LC0	// tmp267,
	add	x1, x0, :lo12:.LC0	//, tmp267,
	mov	x0, x2	//, _49
	bl	strcmp		//
	cmp	w0, 0	// _50,
	beq	.L39		//,
// problem142.c:50:     assert(strcmp(func0(".txt"), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp268,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp268,
	mov	w2, 50	//,
	adrp	x0, .LC6	// tmp269,
	add	x1, x0, :lo12:.LC6	//, tmp269,
	adrp	x0, .LC54	// tmp270,
	add	x0, x0, :lo12:.LC54	//, tmp270,
	bl	__assert_fail		//
.L39:
// problem142.c:51:     assert(strcmp(func0("s."), "No") == 0);
	adrp	x0, .LC55	// tmp271,
	add	x0, x0, :lo12:.LC55	//, tmp271,
	bl	func0		//
	mov	x2, x0	// _51,
	adrp	x0, .LC0	// tmp272,
	add	x1, x0, :lo12:.LC0	//, tmp272,
	mov	x0, x2	//, _51
	bl	strcmp		//
	cmp	w0, 0	// _52,
	beq	.L40		//,
// problem142.c:51:     assert(strcmp(func0("s."), "No") == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp273,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp273,
	mov	w2, 51	//,
	adrp	x0, .LC6	// tmp274,
	add	x1, x0, :lo12:.LC6	//, tmp274,
	adrp	x0, .LC56	// tmp275,
	add	x0, x0, :lo12:.LC56	//, tmp275,
	bl	__assert_fail		//
.L40:
// problem142.c:53:     return 0;
	mov	w0, 0	// _106,
// problem142.c:54: }
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
