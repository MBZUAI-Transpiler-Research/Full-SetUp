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
	.string	"True"
	.align	3
.LC1:
	.string	"False"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x0, [sp, 40]	// s, s
	str	x1, [sp, 32]	// c, c
	str	x2, [sp, 24]	// result, result
	str	x3, [sp, 16]	// palindrome, palindrome
// eval/problem113//code.c:7:     int len = strlen(s);
	ldr	x0, [sp, 40]	//, s
	bl	strlen		//
// eval/problem113//code.c:7:     int len = strlen(s);
	str	w0, [sp, 72]	// tmp123, len
// eval/problem113//code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	ldr	w0, [sp, 72]	// tmp124, len
	add	w0, w0, 1	// _2, tmp124,
// eval/problem113//code.c:8:     char *n = malloc((len + 1) * sizeof(char));
	sxtw	x0, w0	// _3, _2
	bl	malloc		//
	str	x0, [sp, 88]	// tmp125, n
// eval/problem113//code.c:9:     int ni = 0;
	str	wzr, [sp, 60]	//, ni
// eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	str	wzr, [sp, 64]	//, i
// eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	b	.L2		//
.L8:
// eval/problem113//code.c:11:         const char *temp = c;
	ldr	x0, [sp, 32]	// tmp126, c
	str	x0, [sp, 80]	// tmp126, temp
// eval/problem113//code.c:12:         bool found = false;
	strb	wzr, [sp, 58]	//, found
// eval/problem113//code.c:13:         while (*temp != '\0') {
	b	.L3		//
.L6:
// eval/problem113//code.c:14:             if (s[i] == *temp) {
	ldrsw	x0, [sp, 64]	// _4, i
	ldr	x1, [sp, 40]	// tmp127, s
	add	x0, x1, x0	// _5, tmp127, _4
	ldrb	w1, [x0]	// _6, *_5
// eval/problem113//code.c:14:             if (s[i] == *temp) {
	ldr	x0, [sp, 80]	// tmp128, temp
	ldrb	w0, [x0]	// _7, *temp_34
// eval/problem113//code.c:14:             if (s[i] == *temp) {
	cmp	w1, w0	// _6, _7
	bne	.L4		//,
// eval/problem113//code.c:15:                 found = true;
	mov	w0, 1	// tmp129,
	strb	w0, [sp, 58]	// tmp129, found
// eval/problem113//code.c:16:                 break;
	b	.L5		//
.L4:
// eval/problem113//code.c:18:             temp++;
	ldr	x0, [sp, 80]	// tmp131, temp
	add	x0, x0, 1	// tmp130, tmp131,
	str	x0, [sp, 80]	// tmp130, temp
.L3:
// eval/problem113//code.c:13:         while (*temp != '\0') {
	ldr	x0, [sp, 80]	// tmp132, temp
	ldrb	w0, [x0]	// _8, *temp_34
// eval/problem113//code.c:13:         while (*temp != '\0') {
	cmp	w0, 0	// _8,
	bne	.L6		//,
.L5:
// eval/problem113//code.c:20:         if (!found) {
	ldrb	w0, [sp, 58]	// tmp133, found
	eor	w0, w0, 1	// tmp134, tmp133,
	and	w0, w0, 255	// _9, tmp134
// eval/problem113//code.c:20:         if (!found) {
	cmp	w0, 0	// _9,
	beq	.L7		//,
// eval/problem113//code.c:21:             n[ni++] = s[i];
	ldrsw	x0, [sp, 64]	// _10, i
	ldr	x1, [sp, 40]	// tmp135, s
	add	x1, x1, x0	// _11, tmp135, _10
// eval/problem113//code.c:21:             n[ni++] = s[i];
	ldr	w0, [sp, 60]	// ni.0_12, ni
	add	w2, w0, 1	// tmp136, ni.0_12,
	str	w2, [sp, 60]	// tmp136, ni
	sxtw	x0, w0	// _13, ni.0_12
// eval/problem113//code.c:21:             n[ni++] = s[i];
	ldr	x2, [sp, 88]	// tmp137, n
	add	x0, x2, x0	// _14, tmp137, _13
// eval/problem113//code.c:21:             n[ni++] = s[i];
	ldrb	w1, [x1]	// _15, *_11
// eval/problem113//code.c:21:             n[ni++] = s[i];
	strb	w1, [x0]	// tmp138, *_14
.L7:
// eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldr	w0, [sp, 64]	// tmp140, i
	add	w0, w0, 1	// tmp139, tmp140,
	str	w0, [sp, 64]	// tmp139, i
.L2:
// eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	ldrsw	x0, [sp, 64]	// _16, i
	ldr	x1, [sp, 40]	// tmp141, s
	add	x0, x1, x0	// _17, tmp141, _16
	ldrb	w0, [x0]	// _18, *_17
// eval/problem113//code.c:10:     for (int i = 0; s[i] != '\0'; i++) {
	cmp	w0, 0	// _18,
	bne	.L8		//,
// eval/problem113//code.c:24:     n[ni] = '\0';
	ldrsw	x0, [sp, 60]	// _19, ni
	ldr	x1, [sp, 88]	// tmp142, n
	add	x0, x1, x0	// _20, tmp142, _19
// eval/problem113//code.c:24:     n[ni] = '\0';
	strb	wzr, [x0]	//, *_20
// eval/problem113//code.c:26:     int n_len = strlen(n);
	ldr	x0, [sp, 88]	//, n
	bl	strlen		//
// eval/problem113//code.c:26:     int n_len = strlen(n);
	str	w0, [sp, 76]	// tmp143, n_len
// eval/problem113//code.c:27:     bool is_palindrome = true;
	mov	w0, 1	// tmp144,
	strb	w0, [sp, 59]	// tmp144, is_palindrome
// eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	str	wzr, [sp, 68]	//, i
// eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	b	.L9		//
.L12:
// eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldrsw	x0, [sp, 68]	// _22, i
	ldr	x1, [sp, 88]	// tmp145, n
	add	x0, x1, x0	// _23, tmp145, _22
	ldrb	w1, [x0]	// _24, *_23
// eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldr	w0, [sp, 76]	// tmp146, n_len
	sub	w2, w0, #1	// _25, tmp146,
// eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldr	w0, [sp, 68]	// tmp147, i
	sub	w0, w2, w0	// _26, _25, tmp147
	sxtw	x0, w0	// _27, _26
// eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	ldr	x2, [sp, 88]	// tmp148, n
	add	x0, x2, x0	// _28, tmp148, _27
	ldrb	w0, [x0]	// _29, *_28
// eval/problem113//code.c:29:         if (n[i] != n[n_len - 1 - i]) {
	cmp	w1, w0	// _24, _29
	beq	.L10		//,
// eval/problem113//code.c:30:             is_palindrome = false;
	strb	wzr, [sp, 59]	//, is_palindrome
// eval/problem113//code.c:31:             break;
	b	.L11		//
.L10:
// eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	ldr	w0, [sp, 68]	// tmp150, i
	add	w0, w0, 1	// tmp149, tmp150,
	str	w0, [sp, 68]	// tmp149, i
.L9:
// eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	ldr	w0, [sp, 76]	// tmp151, n_len
	lsr	w1, w0, 31	// tmp152, tmp151,
	add	w0, w1, w0	// tmp153, tmp152, tmp151
	asr	w0, w0, 1	// tmp154, tmp153,
	mov	w1, w0	// _30, tmp154
// eval/problem113//code.c:28:     for (int i = 0; i < n_len / 2; i++) {
	ldr	w0, [sp, 68]	// tmp155, i
	cmp	w0, w1	// tmp155, _30
	blt	.L12		//,
.L11:
// eval/problem113//code.c:35:     strcpy(result, n);
	ldr	x1, [sp, 88]	//, n
	ldr	x0, [sp, 24]	//, result
	bl	strcpy		//
// eval/problem113//code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	ldrb	w0, [sp, 59]	// tmp156, is_palindrome
	cmp	w0, 0	// tmp156,
	beq	.L13		//,
// eval/problem113//code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	adrp	x0, .LC0	// tmp157,
	add	x0, x0, :lo12:.LC0	// iftmp.1_38, tmp157,
	b	.L14		//
.L13:
// eval/problem113//code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	adrp	x0, .LC1	// tmp158,
	add	x0, x0, :lo12:.LC1	// iftmp.1_38, tmp158,
.L14:
// eval/problem113//code.c:36:     strcpy(palindrome, is_palindrome ? "True" : "False");
	mov	x1, x0	//, iftmp.1_38
	ldr	x0, [sp, 16]	//, palindrome
	bl	strcpy		//
// eval/problem113//code.c:38:     free(n);
	ldr	x0, [sp, 88]	//, n
	bl	free		//
// eval/problem113//code.c:39: }
	nop	
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
