	.arch armv8-a
	.file	"code.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"o"
	.align	3
.LC2:
	.string	"o|"
	.align	3
.LC3:
	.string	".|"
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
	str	x0, [sp, 24]	// music_string, music_string
	str	x1, [sp, 16]	// count, count
// eval/problem18//code.c:5: int *func0(const char *music_string, int *count) {
	adrp	x0, :got:__stack_chk_guard	// tmp133,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp132, tmp133,
	ldr	x1, [x0]	// tmp187,
	str	x1, [sp, 88]	// tmp187, D.4997
	mov	x1, 0	// tmp187
// eval/problem18//code.c:6:     int *out = NULL;
	str	xzr, [sp, 56]	//, out
// eval/problem18//code.c:7:     int size = 0;
	str	wzr, [sp, 40]	//, size
// eval/problem18//code.c:8:     int capacity = 0;
	str	wzr, [sp, 44]	//, capacity
// eval/problem18//code.c:10:     char current[3] = "";
	adrp	x0, .LC0	// tmp135,
	add	x0, x0, :lo12:.LC0	// tmp134, tmp135,
	ldrb	w0, [x0]	// tmp136,
	strb	w0, [sp, 80]	// tmp136, current
	strh	wzr, [sp, 81]	//, current
// eval/problem18//code.c:11:     int music_string_length = strlen(music_string) + 1;
	ldr	x0, [sp, 24]	//, music_string
	bl	strlen		//
// eval/problem18//code.c:11:     int music_string_length = strlen(music_string) + 1;
	add	w0, w0, 1	// _3, _2,
// eval/problem18//code.c:11:     int music_string_length = strlen(music_string) + 1;
	str	w0, [sp, 52]	// _3, music_string_length
// eval/problem18//code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	ldr	w0, [sp, 52]	// tmp137, music_string_length
	add	w0, w0, 1	// _4, tmp137,
// eval/problem18//code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	sxtw	x0, w0	// _5, _4
	bl	malloc		//
	str	x0, [sp, 64]	// tmp138, temp_music_string
// eval/problem18//code.c:13:     strcpy(temp_music_string, music_string);
	ldr	x1, [sp, 24]	//, music_string
	ldr	x0, [sp, 64]	//, temp_music_string
	bl	strcpy		//
// eval/problem18//code.c:14:     strcat(temp_music_string, " ");
	ldr	x0, [sp, 64]	//, temp_music_string
	bl	strlen		//
	mov	x1, x0	// _77, tmp139
	ldr	x0, [sp, 64]	// tmp140, temp_music_string
	add	x0, x0, x1	// _78, tmp140, _77
	mov	w1, 32	// tmp141,
	strh	w1, [x0]	// tmp141, MEM <char[1:2]> [(void *)_78]
// eval/problem18//code.c:16:     for (int i = 0; i < music_string_length; i++) {
	str	wzr, [sp, 48]	//, i
// eval/problem18//code.c:16:     for (int i = 0; i < music_string_length; i++) {
	b	.L2		//
.L17:
// eval/problem18//code.c:17:         if (temp_music_string[i] == ' ') {
	ldrsw	x0, [sp, 48]	// _6, i
	ldr	x1, [sp, 64]	// tmp142, temp_music_string
	add	x0, x1, x0	// _7, tmp142, _6
	ldrb	w0, [x0]	// _8, *_7
// eval/problem18//code.c:17:         if (temp_music_string[i] == ' ') {
	cmp	w0, 32	// _8,
	bne	.L3		//,
// eval/problem18//code.c:18:             if (strcmp(current, "o") == 0) {
	add	x2, sp, 80	// tmp143,,
	adrp	x0, .LC1	// tmp144,
	add	x1, x0, :lo12:.LC1	//, tmp144,
	mov	x0, x2	//, tmp143
	bl	strcmp		//
// eval/problem18//code.c:18:             if (strcmp(current, "o") == 0) {
	cmp	w0, 0	// _9,
	bne	.L4		//,
// eval/problem18//code.c:19:                 if (size == capacity) {
	ldr	w1, [sp, 40]	// tmp145, size
	ldr	w0, [sp, 44]	// tmp146, capacity
	cmp	w1, w0	// tmp145, tmp146
	bne	.L5		//,
// eval/problem18//code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp147, capacity
	cmp	w0, 0	// tmp147,
	ble	.L6		//,
// eval/problem18//code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp148, capacity
	lsl	w0, w0, 1	// iftmp.0_56, tmp148,
	b	.L7		//
.L6:
// eval/problem18//code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.0_56,
.L7:
// eval/problem18//code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 44]	// iftmp.0_56, capacity
// eval/problem18//code.c:21:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 44]	// _10, capacity
	lsl	x0, x0, 2	// _11, _10,
	mov	x1, x0	//, _11
	ldr	x0, [sp, 56]	//, out
	bl	realloc		//
	str	x0, [sp, 56]	//, out
.L5:
// eval/problem18//code.c:23:                 out[size++] = 4;
	ldr	w0, [sp, 40]	// size.1_12, size
	add	w1, w0, 1	// tmp149, size.1_12,
	str	w1, [sp, 40]	// tmp149, size
	sxtw	x0, w0	// _13, size.1_12
// eval/problem18//code.c:23:                 out[size++] = 4;
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 56]	// tmp150, out
	add	x0, x1, x0	// _15, tmp150, _14
// eval/problem18//code.c:23:                 out[size++] = 4;
	mov	w1, 4	// tmp151,
	str	w1, [x0]	// tmp151, *_15
.L4:
// eval/problem18//code.c:25:             if (strcmp(current, "o|") == 0) {
	add	x2, sp, 80	// tmp152,,
	adrp	x0, .LC2	// tmp153,
	add	x1, x0, :lo12:.LC2	//, tmp153,
	mov	x0, x2	//, tmp152
	bl	strcmp		//
// eval/problem18//code.c:25:             if (strcmp(current, "o|") == 0) {
	cmp	w0, 0	// _16,
	bne	.L8		//,
// eval/problem18//code.c:26:                 if (size == capacity) {
	ldr	w1, [sp, 40]	// tmp154, size
	ldr	w0, [sp, 44]	// tmp155, capacity
	cmp	w1, w0	// tmp154, tmp155
	bne	.L9		//,
// eval/problem18//code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp156, capacity
	cmp	w0, 0	// tmp156,
	ble	.L10		//,
// eval/problem18//code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp157, capacity
	lsl	w0, w0, 1	// iftmp.2_57, tmp157,
	b	.L11		//
.L10:
// eval/problem18//code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.2_57,
.L11:
// eval/problem18//code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 44]	// iftmp.2_57, capacity
// eval/problem18//code.c:28:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 44]	// _17, capacity
	lsl	x0, x0, 2	// _18, _17,
	mov	x1, x0	//, _18
	ldr	x0, [sp, 56]	//, out
	bl	realloc		//
	str	x0, [sp, 56]	//, out
.L9:
// eval/problem18//code.c:30:                 out[size++] = 2;
	ldr	w0, [sp, 40]	// size.3_19, size
	add	w1, w0, 1	// tmp158, size.3_19,
	str	w1, [sp, 40]	// tmp158, size
	sxtw	x0, w0	// _20, size.3_19
// eval/problem18//code.c:30:                 out[size++] = 2;
	lsl	x0, x0, 2	// _21, _20,
	ldr	x1, [sp, 56]	// tmp159, out
	add	x0, x1, x0	// _22, tmp159, _21
// eval/problem18//code.c:30:                 out[size++] = 2;
	mov	w1, 2	// tmp160,
	str	w1, [x0]	// tmp160, *_22
.L8:
// eval/problem18//code.c:32:             if (strcmp(current, ".|") == 0) {
	add	x2, sp, 80	// tmp161,,
	adrp	x0, .LC3	// tmp162,
	add	x1, x0, :lo12:.LC3	//, tmp162,
	mov	x0, x2	//, tmp161
	bl	strcmp		//
// eval/problem18//code.c:32:             if (strcmp(current, ".|") == 0) {
	cmp	w0, 0	// _23,
	bne	.L12		//,
// eval/problem18//code.c:33:                 if (size == capacity) {
	ldr	w1, [sp, 40]	// tmp163, size
	ldr	w0, [sp, 44]	// tmp164, capacity
	cmp	w1, w0	// tmp163, tmp164
	bne	.L13		//,
// eval/problem18//code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp165, capacity
	cmp	w0, 0	// tmp165,
	ble	.L14		//,
// eval/problem18//code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp166, capacity
	lsl	w0, w0, 1	// iftmp.4_58, tmp166,
	b	.L15		//
.L14:
// eval/problem18//code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.4_58,
.L15:
// eval/problem18//code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 44]	// iftmp.4_58, capacity
// eval/problem18//code.c:35:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 44]	// _24, capacity
	lsl	x0, x0, 2	// _25, _24,
	mov	x1, x0	//, _25
	ldr	x0, [sp, 56]	//, out
	bl	realloc		//
	str	x0, [sp, 56]	//, out
.L13:
// eval/problem18//code.c:37:                 out[size++] = 1;
	ldr	w0, [sp, 40]	// size.5_26, size
	add	w1, w0, 1	// tmp167, size.5_26,
	str	w1, [sp, 40]	// tmp167, size
	sxtw	x0, w0	// _27, size.5_26
// eval/problem18//code.c:37:                 out[size++] = 1;
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 56]	// tmp168, out
	add	x0, x1, x0	// _29, tmp168, _28
// eval/problem18//code.c:37:                 out[size++] = 1;
	mov	w1, 1	// tmp169,
	str	w1, [x0]	// tmp169, *_29
.L12:
// eval/problem18//code.c:39:             strcpy(current, "");
	strb	wzr, [sp, 80]	//, MEM[(char * {ref-all})&current]
	b	.L16		//
.L3:
// eval/problem18//code.c:41:             size_t len = strlen(current);
	add	x0, sp, 80	// tmp170,,
	bl	strlen		//
	str	x0, [sp, 72]	//, len
// eval/problem18//code.c:42:             if (len < sizeof(current) - 1) {
	ldr	x0, [sp, 72]	// tmp171, len
	cmp	x0, 1	// tmp171,
	bhi	.L16		//,
// eval/problem18//code.c:43:                 current[len] = temp_music_string[i];
	ldrsw	x0, [sp, 48]	// _30, i
	ldr	x1, [sp, 64]	// tmp172, temp_music_string
	add	x0, x1, x0	// _31, tmp172, _30
	ldrb	w2, [x0]	// _32, *_31
// eval/problem18//code.c:43:                 current[len] = temp_music_string[i];
	ldr	x0, [sp, 72]	// tmp173, len
	add	x1, sp, 80	// tmp174,,
	strb	w2, [x1, x0]	// tmp175, current[len_86]
// eval/problem18//code.c:44:                 current[len + 1] = '\0';
	ldr	x0, [sp, 72]	// tmp176, len
	add	x0, x0, 1	// _33, tmp176,
// eval/problem18//code.c:44:                 current[len + 1] = '\0';
	add	x1, sp, 80	// tmp177,,
	strb	wzr, [x1, x0]	//, current[_33]
.L16:
// eval/problem18//code.c:16:     for (int i = 0; i < music_string_length; i++) {
	ldr	w0, [sp, 48]	// tmp179, i
	add	w0, w0, 1	// tmp178, tmp179,
	str	w0, [sp, 48]	// tmp178, i
.L2:
// eval/problem18//code.c:16:     for (int i = 0; i < music_string_length; i++) {
	ldr	w1, [sp, 48]	// tmp180, i
	ldr	w0, [sp, 52]	// tmp181, music_string_length
	cmp	w1, w0	// tmp180, tmp181
	blt	.L17		//,
// eval/problem18//code.c:48:     free(temp_music_string);
	ldr	x0, [sp, 64]	//, temp_music_string
	bl	free		//
// eval/problem18//code.c:49:     *count = size;
	ldr	x0, [sp, 16]	// tmp182, count
	ldr	w1, [sp, 40]	// tmp183, size
	str	w1, [x0]	// tmp183, *count_82(D)
// eval/problem18//code.c:50:     return out;
	ldr	x0, [sp, 56]	// _84, out
	mov	x1, x0	// <retval>, _84
// eval/problem18//code.c:51: }
	adrp	x0, :got:__stack_chk_guard	// tmp186,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp185, tmp186,
	ldr	x3, [sp, 88]	// tmp188, D.4997
	ldr	x2, [x0]	// tmp189,
	subs	x3, x3, x2	// tmp188, tmp189
	mov	x2, 0	// tmp189
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.zero	2
	.text
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
