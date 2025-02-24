	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"o"
	.align	3
.LC1:
	.string	"o|"
	.align	3
.LC2:
	.string	".|"
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB6:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80	//,,
	str	x0, [sp, 8]	// music_string, music_string
	str	x1, [sp]	// count, count
// code.c:5: int *func0(const char *music_string, int *count) {
	adrp	x0, :got:__stack_chk_guard	// tmp132,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp132,
	ldr	x1, [x0]	// tmp182,
	str	x1, [sp, 72]	// tmp182, D.5613
	mov	x1, 0	// tmp182
// code.c:6:     int *out = NULL;
	str	xzr, [sp, 40]	//, out
// code.c:7:     int size = 0;
	str	wzr, [sp, 24]	//, size
// code.c:8:     int capacity = 0;
	str	wzr, [sp, 28]	//, capacity
// code.c:10:     char current[3] = "";
	strh	wzr, [sp, 64]	//, current
	strb	wzr, [sp, 66]	//, current
// code.c:11:     int music_string_length = strlen(music_string) + 1;
	ldr	x0, [sp, 8]	//, music_string
	bl	strlen		//
// code.c:11:     int music_string_length = strlen(music_string) + 1;
	add	w0, w0, 1	// _3, _2,
// code.c:11:     int music_string_length = strlen(music_string) + 1;
	str	w0, [sp, 36]	// _3, music_string_length
// code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	ldr	w0, [sp, 36]	// tmp133, music_string_length
	add	w0, w0, 1	// _4, tmp133,
// code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	sxtw	x0, w0	// _5, _4
	bl	malloc		//
	str	x0, [sp, 48]	// tmp134, temp_music_string
// code.c:13:     strcpy(temp_music_string, music_string);
	ldr	x1, [sp, 8]	//, music_string
	ldr	x0, [sp, 48]	//, temp_music_string
	bl	strcpy		//
// code.c:14:     strcat(temp_music_string, " ");
	ldr	x0, [sp, 48]	//, temp_music_string
	bl	strlen		//
	mov	x1, x0	// _77, tmp135
// code.c:14:     strcat(temp_music_string, " ");
	ldr	x0, [sp, 48]	// tmp136, temp_music_string
	add	x0, x0, x1	// _78, tmp136, _77
	mov	w1, 32	// tmp137,
	strh	w1, [x0]	// tmp137, MEM <char[1:2]> [(void *)_78]
// code.c:16:     for (int i = 0; i < music_string_length; i++) {
	str	wzr, [sp, 32]	//, i
// code.c:16:     for (int i = 0; i < music_string_length; i++) {
	b	.L2		//
.L17:
// code.c:17:         if (temp_music_string[i] == ' ') {
	ldrsw	x0, [sp, 32]	// _6, i
	ldr	x1, [sp, 48]	// tmp138, temp_music_string
	add	x0, x1, x0	// _7, tmp138, _6
	ldrb	w0, [x0]	// _8, *_7
// code.c:17:         if (temp_music_string[i] == ' ') {
	cmp	w0, 32	// _8,
	bne	.L3		//,
// code.c:18:             if (strcmp(current, "o") == 0) {
	add	x2, sp, 64	// tmp139,,
	adrp	x0, .LC0	// tmp140,
	add	x1, x0, :lo12:.LC0	//, tmp140,
	mov	x0, x2	//, tmp139
	bl	strcmp		//
// code.c:18:             if (strcmp(current, "o") == 0) {
	cmp	w0, 0	// _9,
	bne	.L4		//,
// code.c:19:                 if (size == capacity) {
	ldr	w1, [sp, 24]	// tmp141, size
	ldr	w0, [sp, 28]	// tmp142, capacity
	cmp	w1, w0	// tmp141, tmp142
	bne	.L5		//,
// code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp143, capacity
	cmp	w0, 0	// tmp143,
	ble	.L6		//,
// code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp144, capacity
	lsl	w0, w0, 1	// iftmp.0_56, tmp144,
	b	.L7		//
.L6:
// code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.0_56,
.L7:
// code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 28]	// iftmp.0_56, capacity
// code.c:21:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 28]	// _10, capacity
	lsl	x0, x0, 2	// _11, _10,
	mov	x1, x0	//, _11
	ldr	x0, [sp, 40]	//, out
	bl	realloc		//
	str	x0, [sp, 40]	//, out
.L5:
// code.c:23:                 out[size++] = 4;
	ldr	w0, [sp, 24]	// size.1_12, size
	add	w1, w0, 1	// tmp145, size.1_12,
	str	w1, [sp, 24]	// tmp145, size
	sxtw	x0, w0	// _13, size.1_12
// code.c:23:                 out[size++] = 4;
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 40]	// tmp146, out
	add	x0, x1, x0	// _15, tmp146, _14
// code.c:23:                 out[size++] = 4;
	mov	w1, 4	// tmp147,
	str	w1, [x0]	// tmp147, *_15
.L4:
// code.c:25:             if (strcmp(current, "o|") == 0) {
	add	x2, sp, 64	// tmp148,,
	adrp	x0, .LC1	// tmp149,
	add	x1, x0, :lo12:.LC1	//, tmp149,
	mov	x0, x2	//, tmp148
	bl	strcmp		//
// code.c:25:             if (strcmp(current, "o|") == 0) {
	cmp	w0, 0	// _16,
	bne	.L8		//,
// code.c:26:                 if (size == capacity) {
	ldr	w1, [sp, 24]	// tmp150, size
	ldr	w0, [sp, 28]	// tmp151, capacity
	cmp	w1, w0	// tmp150, tmp151
	bne	.L9		//,
// code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp152, capacity
	cmp	w0, 0	// tmp152,
	ble	.L10		//,
// code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp153, capacity
	lsl	w0, w0, 1	// iftmp.2_57, tmp153,
	b	.L11		//
.L10:
// code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.2_57,
.L11:
// code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 28]	// iftmp.2_57, capacity
// code.c:28:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 28]	// _17, capacity
	lsl	x0, x0, 2	// _18, _17,
	mov	x1, x0	//, _18
	ldr	x0, [sp, 40]	//, out
	bl	realloc		//
	str	x0, [sp, 40]	//, out
.L9:
// code.c:30:                 out[size++] = 2;
	ldr	w0, [sp, 24]	// size.3_19, size
	add	w1, w0, 1	// tmp154, size.3_19,
	str	w1, [sp, 24]	// tmp154, size
	sxtw	x0, w0	// _20, size.3_19
// code.c:30:                 out[size++] = 2;
	lsl	x0, x0, 2	// _21, _20,
	ldr	x1, [sp, 40]	// tmp155, out
	add	x0, x1, x0	// _22, tmp155, _21
// code.c:30:                 out[size++] = 2;
	mov	w1, 2	// tmp156,
	str	w1, [x0]	// tmp156, *_22
.L8:
// code.c:32:             if (strcmp(current, ".|") == 0) {
	add	x2, sp, 64	// tmp157,,
	adrp	x0, .LC2	// tmp158,
	add	x1, x0, :lo12:.LC2	//, tmp158,
	mov	x0, x2	//, tmp157
	bl	strcmp		//
// code.c:32:             if (strcmp(current, ".|") == 0) {
	cmp	w0, 0	// _23,
	bne	.L12		//,
// code.c:33:                 if (size == capacity) {
	ldr	w1, [sp, 24]	// tmp159, size
	ldr	w0, [sp, 28]	// tmp160, capacity
	cmp	w1, w0	// tmp159, tmp160
	bne	.L13		//,
// code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp161, capacity
	cmp	w0, 0	// tmp161,
	ble	.L14		//,
// code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp162, capacity
	lsl	w0, w0, 1	// iftmp.4_58, tmp162,
	b	.L15		//
.L14:
// code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.4_58,
.L15:
// code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 28]	// iftmp.4_58, capacity
// code.c:35:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 28]	// _24, capacity
	lsl	x0, x0, 2	// _25, _24,
	mov	x1, x0	//, _25
	ldr	x0, [sp, 40]	//, out
	bl	realloc		//
	str	x0, [sp, 40]	//, out
.L13:
// code.c:37:                 out[size++] = 1;
	ldr	w0, [sp, 24]	// size.5_26, size
	add	w1, w0, 1	// tmp163, size.5_26,
	str	w1, [sp, 24]	// tmp163, size
	sxtw	x0, w0	// _27, size.5_26
// code.c:37:                 out[size++] = 1;
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 40]	// tmp164, out
	add	x0, x1, x0	// _29, tmp164, _28
// code.c:37:                 out[size++] = 1;
	mov	w1, 1	// tmp165,
	str	w1, [x0]	// tmp165, *_29
.L12:
// code.c:39:             strcpy(current, "");
	strb	wzr, [sp, 64]	//, MEM[(char * {ref-all})&current]
	b	.L16		//
.L3:
// code.c:41:             size_t len = strlen(current);
	add	x0, sp, 64	// tmp166,,
	bl	strlen		//
	str	x0, [sp, 56]	//, len
// code.c:42:             if (len < sizeof(current) - 1) {
	ldr	x0, [sp, 56]	// tmp167, len
	cmp	x0, 1	// tmp167,
	bhi	.L16		//,
// code.c:43:                 current[len] = temp_music_string[i];
	ldrsw	x0, [sp, 32]	// _30, i
	ldr	x1, [sp, 48]	// tmp168, temp_music_string
	add	x0, x1, x0	// _31, tmp168, _30
	ldrb	w2, [x0]	// _32, *_31
// code.c:43:                 current[len] = temp_music_string[i];
	ldr	x0, [sp, 56]	// tmp169, len
	add	x1, sp, 64	// tmp170,,
	strb	w2, [x1, x0]	// tmp171, current[len_86]
// code.c:44:                 current[len + 1] = '\0';
	ldr	x0, [sp, 56]	// tmp172, len
	add	x0, x0, 1	// _33, tmp172,
// code.c:44:                 current[len + 1] = '\0';
	add	x1, sp, 64	// tmp173,,
	strb	wzr, [x1, x0]	//, current[_33]
.L16:
// code.c:16:     for (int i = 0; i < music_string_length; i++) {
	ldr	w0, [sp, 32]	// tmp175, i
	add	w0, w0, 1	// tmp174, tmp175,
	str	w0, [sp, 32]	// tmp174, i
.L2:
// code.c:16:     for (int i = 0; i < music_string_length; i++) {
	ldr	w1, [sp, 32]	// tmp176, i
	ldr	w0, [sp, 36]	// tmp177, music_string_length
	cmp	w1, w0	// tmp176, tmp177
	blt	.L17		//,
// code.c:48:     free(temp_music_string);
	ldr	x0, [sp, 48]	//, temp_music_string
	bl	free		//
// code.c:49:     *count = size;
	ldr	x0, [sp]	// tmp178, count
	ldr	w1, [sp, 24]	// tmp179, size
	str	w1, [x0]	// tmp179, *count_82(D)
// code.c:50:     return out;
	ldr	x0, [sp, 40]	// _84, out
	mov	x1, x0	// <retval>, _84
// code.c:51: }
	adrp	x0, :got:__stack_chk_guard	// tmp181,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp181,
	ldr	x3, [sp, 72]	// tmp183, D.5613
	ldr	x2, [x0]	// tmp184,
	subs	x3, x3, x2	// tmp183, tmp184
	mov	x2, 0	// tmp184
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 80]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
