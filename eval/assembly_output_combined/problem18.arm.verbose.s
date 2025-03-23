	.arch armv8-a
	.file	"problem18.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC3:
	.string	"o"
	.align	3
.LC4:
	.string	"o|"
	.align	3
.LC5:
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
// problem18.c:5: int *func0(const char *music_string, int *count) {
	adrp	x0, :got:__stack_chk_guard	// tmp133,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp132, tmp133,
	ldr	x1, [x0]	// tmp187,
	str	x1, [sp, 88]	// tmp187, D.5070
	mov	x1, 0	// tmp187
// problem18.c:6:     int *out = NULL;
	str	xzr, [sp, 56]	//, out
// problem18.c:7:     int size = 0;
	str	wzr, [sp, 40]	//, size
// problem18.c:8:     int capacity = 0;
	str	wzr, [sp, 44]	//, capacity
// problem18.c:10:     char current[3] = "";
	adrp	x0, .LC2	// tmp135,
	add	x0, x0, :lo12:.LC2	// tmp134, tmp135,
	ldrb	w0, [x0]	// tmp136,
	strb	w0, [sp, 80]	// tmp136, current
	strh	wzr, [sp, 81]	//, current
// problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	ldr	x0, [sp, 24]	//, music_string
	bl	strlen		//
// problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	add	w0, w0, 1	// _3, _2,
// problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	str	w0, [sp, 52]	// _3, music_string_length
// problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	ldr	w0, [sp, 52]	// tmp137, music_string_length
	add	w0, w0, 1	// _4, tmp137,
// problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	sxtw	x0, w0	// _5, _4
	bl	malloc		//
	str	x0, [sp, 64]	// tmp138, temp_music_string
// problem18.c:13:     strcpy(temp_music_string, music_string);
	ldr	x1, [sp, 24]	//, music_string
	ldr	x0, [sp, 64]	//, temp_music_string
	bl	strcpy		//
// problem18.c:14:     strcat(temp_music_string, " ");
	ldr	x0, [sp, 64]	//, temp_music_string
	bl	strlen		//
	mov	x1, x0	// _77, tmp139
	ldr	x0, [sp, 64]	// tmp140, temp_music_string
	add	x0, x0, x1	// _78, tmp140, _77
	mov	w1, 32	// tmp141,
	strh	w1, [x0]	// tmp141, MEM <char[1:2]> [(void *)_78]
// problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	str	wzr, [sp, 48]	//, i
// problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	b	.L2		//
.L17:
// problem18.c:17:         if (temp_music_string[i] == ' ') {
	ldrsw	x0, [sp, 48]	// _6, i
	ldr	x1, [sp, 64]	// tmp142, temp_music_string
	add	x0, x1, x0	// _7, tmp142, _6
	ldrb	w0, [x0]	// _8, *_7
// problem18.c:17:         if (temp_music_string[i] == ' ') {
	cmp	w0, 32	// _8,
	bne	.L3		//,
// problem18.c:18:             if (strcmp(current, "o") == 0) {
	add	x2, sp, 80	// tmp143,,
	adrp	x0, .LC3	// tmp144,
	add	x1, x0, :lo12:.LC3	//, tmp144,
	mov	x0, x2	//, tmp143
	bl	strcmp		//
// problem18.c:18:             if (strcmp(current, "o") == 0) {
	cmp	w0, 0	// _9,
	bne	.L4		//,
// problem18.c:19:                 if (size == capacity) {
	ldr	w1, [sp, 40]	// tmp145, size
	ldr	w0, [sp, 44]	// tmp146, capacity
	cmp	w1, w0	// tmp145, tmp146
	bne	.L5		//,
// problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp147, capacity
	cmp	w0, 0	// tmp147,
	ble	.L6		//,
// problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp148, capacity
	lsl	w0, w0, 1	// iftmp.0_56, tmp148,
	b	.L7		//
.L6:
// problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.0_56,
.L7:
// problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 44]	// iftmp.0_56, capacity
// problem18.c:21:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 44]	// _10, capacity
	lsl	x0, x0, 2	// _11, _10,
	mov	x1, x0	//, _11
	ldr	x0, [sp, 56]	//, out
	bl	realloc		//
	str	x0, [sp, 56]	//, out
.L5:
// problem18.c:23:                 out[size++] = 4;
	ldr	w0, [sp, 40]	// size.1_12, size
	add	w1, w0, 1	// tmp149, size.1_12,
	str	w1, [sp, 40]	// tmp149, size
	sxtw	x0, w0	// _13, size.1_12
// problem18.c:23:                 out[size++] = 4;
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 56]	// tmp150, out
	add	x0, x1, x0	// _15, tmp150, _14
// problem18.c:23:                 out[size++] = 4;
	mov	w1, 4	// tmp151,
	str	w1, [x0]	// tmp151, *_15
.L4:
// problem18.c:25:             if (strcmp(current, "o|") == 0) {
	add	x2, sp, 80	// tmp152,,
	adrp	x0, .LC4	// tmp153,
	add	x1, x0, :lo12:.LC4	//, tmp153,
	mov	x0, x2	//, tmp152
	bl	strcmp		//
// problem18.c:25:             if (strcmp(current, "o|") == 0) {
	cmp	w0, 0	// _16,
	bne	.L8		//,
// problem18.c:26:                 if (size == capacity) {
	ldr	w1, [sp, 40]	// tmp154, size
	ldr	w0, [sp, 44]	// tmp155, capacity
	cmp	w1, w0	// tmp154, tmp155
	bne	.L9		//,
// problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp156, capacity
	cmp	w0, 0	// tmp156,
	ble	.L10		//,
// problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp157, capacity
	lsl	w0, w0, 1	// iftmp.2_57, tmp157,
	b	.L11		//
.L10:
// problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.2_57,
.L11:
// problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 44]	// iftmp.2_57, capacity
// problem18.c:28:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 44]	// _17, capacity
	lsl	x0, x0, 2	// _18, _17,
	mov	x1, x0	//, _18
	ldr	x0, [sp, 56]	//, out
	bl	realloc		//
	str	x0, [sp, 56]	//, out
.L9:
// problem18.c:30:                 out[size++] = 2;
	ldr	w0, [sp, 40]	// size.3_19, size
	add	w1, w0, 1	// tmp158, size.3_19,
	str	w1, [sp, 40]	// tmp158, size
	sxtw	x0, w0	// _20, size.3_19
// problem18.c:30:                 out[size++] = 2;
	lsl	x0, x0, 2	// _21, _20,
	ldr	x1, [sp, 56]	// tmp159, out
	add	x0, x1, x0	// _22, tmp159, _21
// problem18.c:30:                 out[size++] = 2;
	mov	w1, 2	// tmp160,
	str	w1, [x0]	// tmp160, *_22
.L8:
// problem18.c:32:             if (strcmp(current, ".|") == 0) {
	add	x2, sp, 80	// tmp161,,
	adrp	x0, .LC5	// tmp162,
	add	x1, x0, :lo12:.LC5	//, tmp162,
	mov	x0, x2	//, tmp161
	bl	strcmp		//
// problem18.c:32:             if (strcmp(current, ".|") == 0) {
	cmp	w0, 0	// _23,
	bne	.L12		//,
// problem18.c:33:                 if (size == capacity) {
	ldr	w1, [sp, 40]	// tmp163, size
	ldr	w0, [sp, 44]	// tmp164, capacity
	cmp	w1, w0	// tmp163, tmp164
	bne	.L13		//,
// problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp165, capacity
	cmp	w0, 0	// tmp165,
	ble	.L14		//,
// problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 44]	// tmp166, capacity
	lsl	w0, w0, 1	// iftmp.4_58, tmp166,
	b	.L15		//
.L14:
// problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.4_58,
.L15:
// problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 44]	// iftmp.4_58, capacity
// problem18.c:35:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 44]	// _24, capacity
	lsl	x0, x0, 2	// _25, _24,
	mov	x1, x0	//, _25
	ldr	x0, [sp, 56]	//, out
	bl	realloc		//
	str	x0, [sp, 56]	//, out
.L13:
// problem18.c:37:                 out[size++] = 1;
	ldr	w0, [sp, 40]	// size.5_26, size
	add	w1, w0, 1	// tmp167, size.5_26,
	str	w1, [sp, 40]	// tmp167, size
	sxtw	x0, w0	// _27, size.5_26
// problem18.c:37:                 out[size++] = 1;
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 56]	// tmp168, out
	add	x0, x1, x0	// _29, tmp168, _28
// problem18.c:37:                 out[size++] = 1;
	mov	w1, 1	// tmp169,
	str	w1, [x0]	// tmp169, *_29
.L12:
// problem18.c:39:             strcpy(current, "");
	strb	wzr, [sp, 80]	//, MEM[(char * {ref-all})&current]
	b	.L16		//
.L3:
// problem18.c:41:             size_t len = strlen(current);
	add	x0, sp, 80	// tmp170,,
	bl	strlen		//
	str	x0, [sp, 72]	//, len
// problem18.c:42:             if (len < sizeof(current) - 1) {
	ldr	x0, [sp, 72]	// tmp171, len
	cmp	x0, 1	// tmp171,
	bhi	.L16		//,
// problem18.c:43:                 current[len] = temp_music_string[i];
	ldrsw	x0, [sp, 48]	// _30, i
	ldr	x1, [sp, 64]	// tmp172, temp_music_string
	add	x0, x1, x0	// _31, tmp172, _30
	ldrb	w2, [x0]	// _32, *_31
// problem18.c:43:                 current[len] = temp_music_string[i];
	ldr	x0, [sp, 72]	// tmp173, len
	add	x1, sp, 80	// tmp174,,
	strb	w2, [x1, x0]	// tmp175, current[len_86]
// problem18.c:44:                 current[len + 1] = '\0';
	ldr	x0, [sp, 72]	// tmp176, len
	add	x0, x0, 1	// _33, tmp176,
// problem18.c:44:                 current[len + 1] = '\0';
	add	x1, sp, 80	// tmp177,,
	strb	wzr, [x1, x0]	//, current[_33]
.L16:
// problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	ldr	w0, [sp, 48]	// tmp179, i
	add	w0, w0, 1	// tmp178, tmp179,
	str	w0, [sp, 48]	// tmp178, i
.L2:
// problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	ldr	w1, [sp, 48]	// tmp180, i
	ldr	w0, [sp, 52]	// tmp181, music_string_length
	cmp	w1, w0	// tmp180, tmp181
	blt	.L17		//,
// problem18.c:48:     free(temp_music_string);
	ldr	x0, [sp, 64]	//, temp_music_string
	bl	free		//
// problem18.c:49:     *count = size;
	ldr	x0, [sp, 16]	// tmp182, count
	ldr	w1, [sp, 40]	// tmp183, size
	str	w1, [x0]	// tmp183, *count_82(D)
// problem18.c:50:     return out;
	ldr	x0, [sp, 56]	// _84, out
	mov	x1, x0	// <retval>, _84
// problem18.c:51: }
	adrp	x0, :got:__stack_chk_guard	// tmp186,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp185, tmp186,
	ldr	x3, [sp, 88]	// tmp188, D.5070
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
.LC2:
	.string	""
	.zero	2
	.text
	.align	2
	.global	issame
	.type	issame, %function
issame:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// a, a
	str	w1, [sp, 20]	// a_size, a_size
	str	x2, [sp, 8]	// b, b
	str	w3, [sp, 16]	// b_size, b_size
// problem18.c:59:     if (a_size != b_size) return 0;
	ldr	w1, [sp, 20]	// tmp102, a_size
	ldr	w0, [sp, 16]	// tmp103, b_size
	cmp	w1, w0	// tmp102, tmp103
	beq	.L21		//,
// problem18.c:59:     if (a_size != b_size) return 0;
	mov	w0, 0	// _10,
	b	.L22		//
.L21:
// problem18.c:60:     for (int i = 0; i < a_size; i++) {
	str	wzr, [sp, 44]	//, i
// problem18.c:60:     for (int i = 0; i < a_size; i++) {
	b	.L23		//
.L25:
// problem18.c:61:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp104, a
	add	x0, x1, x0	// _3, tmp104, _2
	ldr	w1, [x0]	// _4, *_3
// problem18.c:61:         if (a[i] != b[i]) return 0;
	ldrsw	x0, [sp, 44]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x2, [sp, 8]	// tmp105, b
	add	x0, x2, x0	// _7, tmp105, _6
	ldr	w0, [x0]	// _8, *_7
// problem18.c:61:         if (a[i] != b[i]) return 0;
	cmp	w1, w0	// _4, _8
	beq	.L24		//,
// problem18.c:61:         if (a[i] != b[i]) return 0;
	mov	w0, 0	// _10,
	b	.L22		//
.L24:
// problem18.c:60:     for (int i = 0; i < a_size; i++) {
	ldr	w0, [sp, 44]	// tmp107, i
	add	w0, w0, 1	// tmp106, tmp107,
	str	w0, [sp, 44]	// tmp106, i
.L23:
// problem18.c:60:     for (int i = 0; i < a_size; i++) {
	ldr	w1, [sp, 44]	// tmp108, i
	ldr	w0, [sp, 20]	// tmp109, a_size
	cmp	w1, w0	// tmp108, tmp109
	blt	.L25		//,
// problem18.c:63:     return 1;
	mov	w0, 1	// _10,
.L22:
// problem18.c:64: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC6:
	.string	""
	.align	3
.LC7:
	.string	"problem18.c"
	.align	3
.LC8:
	.string	"issame(result, count, (int[]){}, 0)"
	.align	3
.LC9:
	.string	"o o o o"
	.align	3
.LC10:
	.string	"issame(result, count, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC11:
	.string	".| .| .| .|"
	.align	3
.LC12:
	.string	"issame(result, count, (int[]){1, 1, 1, 1}, 4)"
	.align	3
.LC13:
	.string	"o| o| .| .| o o o o"
	.align	3
.LC14:
	.string	"issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8)"
	.align	3
.LC15:
	.string	"o| .| o| .| o o| o o|"
	.align	3
.LC16:
	.string	"issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
// problem18.c:66: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp104, tmp105,
	ldr	x1, [x0]	// tmp159,
	str	x1, [sp, 72]	// tmp159, D.5078
	mov	x1, 0	// tmp159
// problem18.c:70:     result = func0("", &count);
	add	x0, sp, 28	// tmp106,,
	mov	x1, x0	//, tmp106
	adrp	x0, .LC6	// tmp107,
	add	x0, x0, :lo12:.LC6	//, tmp107,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
	ldr	w0, [sp, 28]	// count.6_1, count
	add	x1, sp, 40	// tmp108,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp108
	mov	w1, w0	//, count.6_1
	ldr	x0, [sp, 32]	//, result
	bl	issame		//
	cmp	w0, 0	// _2,
	bne	.L27		//,
// problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp109,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp109,
	mov	w2, 71	//,
	adrp	x0, .LC7	// tmp110,
	add	x1, x0, :lo12:.LC7	//, tmp110,
	adrp	x0, .LC8	// tmp111,
	add	x0, x0, :lo12:.LC8	//, tmp111,
	bl	__assert_fail		//
.L27:
// problem18.c:72:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem18.c:74:     result = func0("o o o o", &count);
	add	x0, sp, 28	// tmp112,,
	mov	x1, x0	//, tmp112
	adrp	x0, .LC9	// tmp113,
	add	x0, x0, :lo12:.LC9	//, tmp113,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem18.c:75:     assert(issame(result, count, (int[]){4, 4, 4, 4}, 4));
	ldr	w1, [sp, 28]	// count.7_3, count
	mov	w0, 4	// tmp114,
	str	w0, [sp, 40]	// tmp114, MEM[(int[4] *)_61][0]
	mov	w0, 4	// tmp115,
	str	w0, [sp, 44]	// tmp115, MEM[(int[4] *)_61][1]
	mov	w0, 4	// tmp116,
	str	w0, [sp, 48]	// tmp116, MEM[(int[4] *)_61][2]
	mov	w0, 4	// tmp117,
	str	w0, [sp, 52]	// tmp117, MEM[(int[4] *)_61][3]
	add	x0, sp, 40	// tmp118,,
	mov	w3, 4	//,
	mov	x2, x0	//, tmp118
	ldr	x0, [sp, 32]	//, result
	bl	issame		//
	cmp	w0, 0	// _4,
	bne	.L28		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp119,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp119,
	mov	w2, 75	//,
	adrp	x0, .LC7	// tmp120,
	add	x1, x0, :lo12:.LC7	//, tmp120,
	adrp	x0, .LC10	// tmp121,
	add	x0, x0, :lo12:.LC10	//, tmp121,
	bl	__assert_fail		//
.L28:
// problem18.c:76:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem18.c:78:     result = func0(".| .| .| .|", &count);
	add	x0, sp, 28	// tmp122,,
	mov	x1, x0	//, tmp122
	adrp	x0, .LC11	// tmp123,
	add	x0, x0, :lo12:.LC11	//, tmp123,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
	ldr	w1, [sp, 28]	// count.8_5, count
	mov	w0, 1	// tmp124,
	str	w0, [sp, 40]	// tmp124, MEM[(int[4] *)_61][0]
	mov	w0, 1	// tmp125,
	str	w0, [sp, 44]	// tmp125, MEM[(int[4] *)_61][1]
	mov	w0, 1	// tmp126,
	str	w0, [sp, 48]	// tmp126, MEM[(int[4] *)_61][2]
	mov	w0, 1	// tmp127,
	str	w0, [sp, 52]	// tmp127, MEM[(int[4] *)_61][3]
	add	x0, sp, 40	// tmp128,,
	mov	w3, 4	//,
	mov	x2, x0	//, tmp128
	ldr	x0, [sp, 32]	//, result
	bl	issame		//
	cmp	w0, 0	// _6,
	bne	.L29		//,
// problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp129,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp129,
	mov	w2, 79	//,
	adrp	x0, .LC7	// tmp130,
	add	x1, x0, :lo12:.LC7	//, tmp130,
	adrp	x0, .LC12	// tmp131,
	add	x0, x0, :lo12:.LC12	//, tmp131,
	bl	__assert_fail		//
.L29:
// problem18.c:80:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem18.c:82:     result = func0("o| o| .| .| o o o o", &count);
	add	x0, sp, 28	// tmp132,,
	mov	x1, x0	//, tmp132
	adrp	x0, .LC13	// tmp133,
	add	x0, x0, :lo12:.LC13	//, tmp133,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
	ldr	w4, [sp, 28]	// count.9_7, count
	adrp	x0, .LC0	// tmp135,
	add	x1, x0, :lo12:.LC0	// tmp134, tmp135,
	add	x0, sp, 40	// tmp136,,
	ldp	q0, q1, [x1]	// tmp138, tmp139,
	stp	q0, q1, [x0]	// tmp138, tmp139, MEM[(int[8] *)_61]
	add	x0, sp, 40	// tmp140,,
	mov	w3, 8	//,
	mov	x2, x0	//, tmp140
	mov	w1, w4	//, count.9_7
	ldr	x0, [sp, 32]	//, result
	bl	issame		//
	cmp	w0, 0	// _8,
	bne	.L30		//,
// problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp141,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp141,
	mov	w2, 83	//,
	adrp	x0, .LC7	// tmp142,
	add	x1, x0, :lo12:.LC7	//, tmp142,
	adrp	x0, .LC14	// tmp143,
	add	x0, x0, :lo12:.LC14	//, tmp143,
	bl	__assert_fail		//
.L30:
// problem18.c:84:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem18.c:86:     result = func0("o| .| o| .| o o| o o|", &count);
	add	x0, sp, 28	// tmp144,,
	mov	x1, x0	//, tmp144
	adrp	x0, .LC15	// tmp145,
	add	x0, x0, :lo12:.LC15	//, tmp145,
	bl	func0		//
	str	x0, [sp, 32]	//, result
// problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
	ldr	w4, [sp, 28]	// count.10_9, count
	adrp	x0, .LC1	// tmp147,
	add	x1, x0, :lo12:.LC1	// tmp146, tmp147,
	add	x0, sp, 40	// tmp148,,
	ldp	q0, q1, [x1]	// tmp150, tmp151,
	stp	q0, q1, [x0]	// tmp150, tmp151, MEM[(int[8] *)_61]
	add	x0, sp, 40	// tmp152,,
	mov	w3, 8	//,
	mov	x2, x0	//, tmp152
	mov	w1, w4	//, count.10_9
	ldr	x0, [sp, 32]	//, result
	bl	issame		//
	cmp	w0, 0	// _10,
	bne	.L31		//,
// problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 87	//,
	adrp	x0, .LC7	// tmp154,
	add	x1, x0, :lo12:.LC7	//, tmp154,
	adrp	x0, .LC16	// tmp155,
	add	x0, x0, :lo12:.LC16	//, tmp155,
	bl	__assert_fail		//
.L31:
// problem18.c:88:     free(result);
	ldr	x0, [sp, 32]	//, result
	bl	free		//
// problem18.c:90:     return 0;
	mov	w0, 0	// _53,
// problem18.c:91: }
	mov	w1, w0	// <retval>, _53
	adrp	x0, :got:__stack_chk_guard	// tmp158,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp157, tmp158,
	ldr	x3, [sp, 72]	// tmp160, D.5078
	ldr	x2, [x0]	// tmp161,
	subs	x3, x3, x2	// tmp160, tmp161
	mov	x2, 0	// tmp161
	beq	.L33		//,
// problem18.c:91: }
	bl	__stack_chk_fail		//
.L33:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	2
	.word	2
	.word	1
	.word	1
	.word	4
	.word	4
	.word	4
	.word	4
	.align	3
.LC1:
	.word	2
	.word	1
	.word	2
	.word	1
	.word	4
	.word	2
	.word	4
	.word	2
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
