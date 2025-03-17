	.arch armv8-a
	.file	"problem18.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC2:
	.string	"o"
	.align	3
.LC3:
	.string	"o|"
	.align	3
.LC4:
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
// problem18.c:5: int *func0(const char *music_string, int *count) {
	adrp	x0, :got:__stack_chk_guard	// tmp132,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp132,
	ldr	x1, [x0]	// tmp182,
	str	x1, [sp, 72]	// tmp182, D.5686
	mov	x1, 0	// tmp182
// problem18.c:6:     int *out = NULL;
	str	xzr, [sp, 40]	//, out
// problem18.c:7:     int size = 0;
	str	wzr, [sp, 24]	//, size
// problem18.c:8:     int capacity = 0;
	str	wzr, [sp, 28]	//, capacity
// problem18.c:10:     char current[3] = "";
	strh	wzr, [sp, 64]	//, current
	strb	wzr, [sp, 66]	//, current
// problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	ldr	x0, [sp, 8]	//, music_string
	bl	strlen		//
// problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	add	w0, w0, 1	// _3, _2,
// problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	str	w0, [sp, 36]	// _3, music_string_length
// problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	ldr	w0, [sp, 36]	// tmp133, music_string_length
	add	w0, w0, 1	// _4, tmp133,
// problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	sxtw	x0, w0	// _5, _4
	bl	malloc		//
	str	x0, [sp, 48]	// tmp134, temp_music_string
// problem18.c:13:     strcpy(temp_music_string, music_string);
	ldr	x1, [sp, 8]	//, music_string
	ldr	x0, [sp, 48]	//, temp_music_string
	bl	strcpy		//
// problem18.c:14:     strcat(temp_music_string, " ");
	ldr	x0, [sp, 48]	//, temp_music_string
	bl	strlen		//
	mov	x1, x0	// _77, tmp135
// problem18.c:14:     strcat(temp_music_string, " ");
	ldr	x0, [sp, 48]	// tmp136, temp_music_string
	add	x0, x0, x1	// _78, tmp136, _77
	mov	w1, 32	// tmp137,
	strh	w1, [x0]	// tmp137, MEM <char[1:2]> [(void *)_78]
// problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	str	wzr, [sp, 32]	//, i
// problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	b	.L2		//
.L17:
// problem18.c:17:         if (temp_music_string[i] == ' ') {
	ldrsw	x0, [sp, 32]	// _6, i
	ldr	x1, [sp, 48]	// tmp138, temp_music_string
	add	x0, x1, x0	// _7, tmp138, _6
	ldrb	w0, [x0]	// _8, *_7
// problem18.c:17:         if (temp_music_string[i] == ' ') {
	cmp	w0, 32	// _8,
	bne	.L3		//,
// problem18.c:18:             if (strcmp(current, "o") == 0) {
	add	x2, sp, 64	// tmp139,,
	adrp	x0, .LC2	// tmp140,
	add	x1, x0, :lo12:.LC2	//, tmp140,
	mov	x0, x2	//, tmp139
	bl	strcmp		//
// problem18.c:18:             if (strcmp(current, "o") == 0) {
	cmp	w0, 0	// _9,
	bne	.L4		//,
// problem18.c:19:                 if (size == capacity) {
	ldr	w1, [sp, 24]	// tmp141, size
	ldr	w0, [sp, 28]	// tmp142, capacity
	cmp	w1, w0	// tmp141, tmp142
	bne	.L5		//,
// problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp143, capacity
	cmp	w0, 0	// tmp143,
	ble	.L6		//,
// problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp144, capacity
	lsl	w0, w0, 1	// iftmp.0_56, tmp144,
	b	.L7		//
.L6:
// problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.0_56,
.L7:
// problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 28]	// iftmp.0_56, capacity
// problem18.c:21:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 28]	// _10, capacity
	lsl	x0, x0, 2	// _11, _10,
	mov	x1, x0	//, _11
	ldr	x0, [sp, 40]	//, out
	bl	realloc		//
	str	x0, [sp, 40]	//, out
.L5:
// problem18.c:23:                 out[size++] = 4;
	ldr	w0, [sp, 24]	// size.1_12, size
	add	w1, w0, 1	// tmp145, size.1_12,
	str	w1, [sp, 24]	// tmp145, size
	sxtw	x0, w0	// _13, size.1_12
// problem18.c:23:                 out[size++] = 4;
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 40]	// tmp146, out
	add	x0, x1, x0	// _15, tmp146, _14
// problem18.c:23:                 out[size++] = 4;
	mov	w1, 4	// tmp147,
	str	w1, [x0]	// tmp147, *_15
.L4:
// problem18.c:25:             if (strcmp(current, "o|") == 0) {
	add	x2, sp, 64	// tmp148,,
	adrp	x0, .LC3	// tmp149,
	add	x1, x0, :lo12:.LC3	//, tmp149,
	mov	x0, x2	//, tmp148
	bl	strcmp		//
// problem18.c:25:             if (strcmp(current, "o|") == 0) {
	cmp	w0, 0	// _16,
	bne	.L8		//,
// problem18.c:26:                 if (size == capacity) {
	ldr	w1, [sp, 24]	// tmp150, size
	ldr	w0, [sp, 28]	// tmp151, capacity
	cmp	w1, w0	// tmp150, tmp151
	bne	.L9		//,
// problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp152, capacity
	cmp	w0, 0	// tmp152,
	ble	.L10		//,
// problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp153, capacity
	lsl	w0, w0, 1	// iftmp.2_57, tmp153,
	b	.L11		//
.L10:
// problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.2_57,
.L11:
// problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 28]	// iftmp.2_57, capacity
// problem18.c:28:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 28]	// _17, capacity
	lsl	x0, x0, 2	// _18, _17,
	mov	x1, x0	//, _18
	ldr	x0, [sp, 40]	//, out
	bl	realloc		//
	str	x0, [sp, 40]	//, out
.L9:
// problem18.c:30:                 out[size++] = 2;
	ldr	w0, [sp, 24]	// size.3_19, size
	add	w1, w0, 1	// tmp154, size.3_19,
	str	w1, [sp, 24]	// tmp154, size
	sxtw	x0, w0	// _20, size.3_19
// problem18.c:30:                 out[size++] = 2;
	lsl	x0, x0, 2	// _21, _20,
	ldr	x1, [sp, 40]	// tmp155, out
	add	x0, x1, x0	// _22, tmp155, _21
// problem18.c:30:                 out[size++] = 2;
	mov	w1, 2	// tmp156,
	str	w1, [x0]	// tmp156, *_22
.L8:
// problem18.c:32:             if (strcmp(current, ".|") == 0) {
	add	x2, sp, 64	// tmp157,,
	adrp	x0, .LC4	// tmp158,
	add	x1, x0, :lo12:.LC4	//, tmp158,
	mov	x0, x2	//, tmp157
	bl	strcmp		//
// problem18.c:32:             if (strcmp(current, ".|") == 0) {
	cmp	w0, 0	// _23,
	bne	.L12		//,
// problem18.c:33:                 if (size == capacity) {
	ldr	w1, [sp, 24]	// tmp159, size
	ldr	w0, [sp, 28]	// tmp160, capacity
	cmp	w1, w0	// tmp159, tmp160
	bne	.L13		//,
// problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp161, capacity
	cmp	w0, 0	// tmp161,
	ble	.L14		//,
// problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	ldr	w0, [sp, 28]	// tmp162, capacity
	lsl	w0, w0, 1	// iftmp.4_58, tmp162,
	b	.L15		//
.L14:
// problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	mov	w0, 4	// iftmp.4_58,
.L15:
// problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	str	w0, [sp, 28]	// iftmp.4_58, capacity
// problem18.c:35:                     out = realloc(out, capacity * sizeof(int));
	ldrsw	x0, [sp, 28]	// _24, capacity
	lsl	x0, x0, 2	// _25, _24,
	mov	x1, x0	//, _25
	ldr	x0, [sp, 40]	//, out
	bl	realloc		//
	str	x0, [sp, 40]	//, out
.L13:
// problem18.c:37:                 out[size++] = 1;
	ldr	w0, [sp, 24]	// size.5_26, size
	add	w1, w0, 1	// tmp163, size.5_26,
	str	w1, [sp, 24]	// tmp163, size
	sxtw	x0, w0	// _27, size.5_26
// problem18.c:37:                 out[size++] = 1;
	lsl	x0, x0, 2	// _28, _27,
	ldr	x1, [sp, 40]	// tmp164, out
	add	x0, x1, x0	// _29, tmp164, _28
// problem18.c:37:                 out[size++] = 1;
	mov	w1, 1	// tmp165,
	str	w1, [x0]	// tmp165, *_29
.L12:
// problem18.c:39:             strcpy(current, "");
	strb	wzr, [sp, 64]	//, MEM[(char * {ref-all})&current]
	b	.L16		//
.L3:
// problem18.c:41:             size_t len = strlen(current);
	add	x0, sp, 64	// tmp166,,
	bl	strlen		//
	str	x0, [sp, 56]	//, len
// problem18.c:42:             if (len < sizeof(current) - 1) {
	ldr	x0, [sp, 56]	// tmp167, len
	cmp	x0, 1	// tmp167,
	bhi	.L16		//,
// problem18.c:43:                 current[len] = temp_music_string[i];
	ldrsw	x0, [sp, 32]	// _30, i
	ldr	x1, [sp, 48]	// tmp168, temp_music_string
	add	x0, x1, x0	// _31, tmp168, _30
	ldrb	w2, [x0]	// _32, *_31
// problem18.c:43:                 current[len] = temp_music_string[i];
	ldr	x0, [sp, 56]	// tmp169, len
	add	x1, sp, 64	// tmp170,,
	strb	w2, [x1, x0]	// tmp171, current[len_86]
// problem18.c:44:                 current[len + 1] = '\0';
	ldr	x0, [sp, 56]	// tmp172, len
	add	x0, x0, 1	// _33, tmp172,
// problem18.c:44:                 current[len + 1] = '\0';
	add	x1, sp, 64	// tmp173,,
	strb	wzr, [x1, x0]	//, current[_33]
.L16:
// problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	ldr	w0, [sp, 32]	// tmp175, i
	add	w0, w0, 1	// tmp174, tmp175,
	str	w0, [sp, 32]	// tmp174, i
.L2:
// problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	ldr	w1, [sp, 32]	// tmp176, i
	ldr	w0, [sp, 36]	// tmp177, music_string_length
	cmp	w1, w0	// tmp176, tmp177
	blt	.L17		//,
// problem18.c:48:     free(temp_music_string);
	ldr	x0, [sp, 48]	//, temp_music_string
	bl	free		//
// problem18.c:49:     *count = size;
	ldr	x0, [sp]	// tmp178, count
	ldr	w1, [sp, 24]	// tmp179, size
	str	w1, [x0]	// tmp179, *count_82(D)
// problem18.c:50:     return out;
	ldr	x0, [sp, 40]	// _84, out
	mov	x1, x0	// <retval>, _84
// problem18.c:51: }
	adrp	x0, :got:__stack_chk_guard	// tmp181,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp181,
	ldr	x3, [sp, 72]	// tmp183, D.5686
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
// problem18.c:59:     if (a_size != b_size) return 0;
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
// problem18.c:61:         if (a[i] != b[i]) return 0;
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
.LC5:
	.string	""
	.align	3
.LC6:
	.string	"problem18.c"
	.align	3
.LC7:
	.string	"issame(result, count, (int[]){}, 0)"
	.align	3
.LC8:
	.string	"o o o o"
	.align	3
.LC9:
	.string	"issame(result, count, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC10:
	.string	".| .| .| .|"
	.align	3
.LC11:
	.string	"issame(result, count, (int[]){1, 1, 1, 1}, 4)"
	.align	3
.LC12:
	.string	"o| o| .| .| o o o o"
	.align	3
.LC13:
	.string	"issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8)"
	.align	3
.LC14:
	.string	"o| .| o| .| o o| o o|"
	.align	3
.LC15:
	.string	"issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8)"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
// problem18.c:66: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp104,
	ldr	x1, [x0]	// tmp157,
	str	x1, [sp, 56]	// tmp157, D.5693
	mov	x1, 0	// tmp157
// problem18.c:70:     result = func0("", &count);
	add	x0, sp, 12	// tmp105,,
	mov	x1, x0	//, tmp105
	adrp	x0, .LC5	// tmp106,
	add	x0, x0, :lo12:.LC5	//, tmp106,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
	ldr	w0, [sp, 12]	// count.6_1, count
	add	x1, sp, 24	// tmp107,,
	mov	w3, 0	//,
	mov	x2, x1	//, tmp107
	mov	w1, w0	//, count.6_1
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
	cmp	w0, 0	// _2,
	bne	.L27		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp108,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp108,
	mov	w2, 71	//,
	adrp	x0, .LC6	// tmp109,
	add	x1, x0, :lo12:.LC6	//, tmp109,
	adrp	x0, .LC7	// tmp110,
	add	x0, x0, :lo12:.LC7	//, tmp110,
	bl	__assert_fail		//
.L27:
// problem18.c:72:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem18.c:74:     result = func0("o o o o", &count);
	add	x0, sp, 12	// tmp111,,
	mov	x1, x0	//, tmp111
	adrp	x0, .LC8	// tmp112,
	add	x0, x0, :lo12:.LC8	//, tmp112,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem18.c:75:     assert(issame(result, count, (int[]){4, 4, 4, 4}, 4));
	ldr	w1, [sp, 12]	// count.7_3, count
	mov	w0, 4	// tmp113,
	str	w0, [sp, 24]	// tmp113, MEM[(int[4] *)_60][0]
	mov	w0, 4	// tmp114,
	str	w0, [sp, 28]	// tmp114, MEM[(int[4] *)_60][1]
	mov	w0, 4	// tmp115,
	str	w0, [sp, 32]	// tmp115, MEM[(int[4] *)_60][2]
	mov	w0, 4	// tmp116,
	str	w0, [sp, 36]	// tmp116, MEM[(int[4] *)_60][3]
	add	x0, sp, 24	// tmp117,,
	mov	w3, 4	//,
	mov	x2, x0	//, tmp117
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem18.c:75:     assert(issame(result, count, (int[]){4, 4, 4, 4}, 4));
	cmp	w0, 0	// _4,
	bne	.L28		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp118,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp118,
	mov	w2, 75	//,
	adrp	x0, .LC6	// tmp119,
	add	x1, x0, :lo12:.LC6	//, tmp119,
	adrp	x0, .LC9	// tmp120,
	add	x0, x0, :lo12:.LC9	//, tmp120,
	bl	__assert_fail		//
.L28:
// problem18.c:76:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem18.c:78:     result = func0(".| .| .| .|", &count);
	add	x0, sp, 12	// tmp121,,
	mov	x1, x0	//, tmp121
	adrp	x0, .LC10	// tmp122,
	add	x0, x0, :lo12:.LC10	//, tmp122,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
	ldr	w1, [sp, 12]	// count.8_5, count
	mov	w0, 1	// tmp123,
	str	w0, [sp, 24]	// tmp123, MEM[(int[4] *)_60][0]
	mov	w0, 1	// tmp124,
	str	w0, [sp, 28]	// tmp124, MEM[(int[4] *)_60][1]
	mov	w0, 1	// tmp125,
	str	w0, [sp, 32]	// tmp125, MEM[(int[4] *)_60][2]
	mov	w0, 1	// tmp126,
	str	w0, [sp, 36]	// tmp126, MEM[(int[4] *)_60][3]
	add	x0, sp, 24	// tmp127,,
	mov	w3, 4	//,
	mov	x2, x0	//, tmp127
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
	cmp	w0, 0	// _6,
	bne	.L29		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp128,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp128,
	mov	w2, 79	//,
	adrp	x0, .LC6	// tmp129,
	add	x1, x0, :lo12:.LC6	//, tmp129,
	adrp	x0, .LC11	// tmp130,
	add	x0, x0, :lo12:.LC11	//, tmp130,
	bl	__assert_fail		//
.L29:
// problem18.c:80:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem18.c:82:     result = func0("o| o| .| .| o o o o", &count);
	add	x0, sp, 12	// tmp131,,
	mov	x1, x0	//, tmp131
	adrp	x0, .LC12	// tmp132,
	add	x0, x0, :lo12:.LC12	//, tmp132,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
	ldr	w4, [sp, 12]	// count.9_7, count
	adrp	x0, .LC0	// tmp134,
	add	x1, x0, :lo12:.LC0	// tmp133, tmp134,
	add	x0, sp, 24	// tmp135,,
	ldp	q0, q1, [x1]	// tmp137, tmp138,
	stp	q0, q1, [x0]	// tmp137, tmp138, MEM[(int[8] *)_60]
	add	x0, sp, 24	// tmp139,,
	mov	w3, 8	//,
	mov	x2, x0	//, tmp139
	mov	w1, w4	//, count.9_7
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
	cmp	w0, 0	// _8,
	bne	.L30		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp140,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp140,
	mov	w2, 83	//,
	adrp	x0, .LC6	// tmp141,
	add	x1, x0, :lo12:.LC6	//, tmp141,
	adrp	x0, .LC13	// tmp142,
	add	x0, x0, :lo12:.LC13	//, tmp142,
	bl	__assert_fail		//
.L30:
// problem18.c:84:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem18.c:86:     result = func0("o| .| o| .| o o| o o|", &count);
	add	x0, sp, 12	// tmp143,,
	mov	x1, x0	//, tmp143
	adrp	x0, .LC14	// tmp144,
	add	x0, x0, :lo12:.LC14	//, tmp144,
	bl	func0		//
	str	x0, [sp, 16]	//, result
// problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
	ldr	w4, [sp, 12]	// count.10_9, count
	adrp	x0, .LC1	// tmp146,
	add	x1, x0, :lo12:.LC1	// tmp145, tmp146,
	add	x0, sp, 24	// tmp147,,
	ldp	q0, q1, [x1]	// tmp149, tmp150,
	stp	q0, q1, [x0]	// tmp149, tmp150, MEM[(int[8] *)_60]
	add	x0, sp, 24	// tmp151,,
	mov	w3, 8	//,
	mov	x2, x0	//, tmp151
	mov	w1, w4	//, count.10_9
	ldr	x0, [sp, 16]	//, result
	bl	issame		//
// problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
	cmp	w0, 0	// _10,
	bne	.L31		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp152,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp152,
	mov	w2, 87	//,
	adrp	x0, .LC6	// tmp153,
	add	x1, x0, :lo12:.LC6	//, tmp153,
	adrp	x0, .LC15	// tmp154,
	add	x0, x0, :lo12:.LC15	//, tmp154,
	bl	__assert_fail		//
.L31:
// problem18.c:88:     free(result);
	ldr	x0, [sp, 16]	//, result
	bl	free		//
// problem18.c:90:     return 0;
	mov	w0, 0	// _52,
// problem18.c:91: }
	mov	w1, w0	// <retval>, _52
	adrp	x0, :got:__stack_chk_guard	// tmp156,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp156,
	ldr	x3, [sp, 56]	// tmp158, D.5693
	ldr	x2, [x0]	// tmp159,
	subs	x3, x3, x2	// tmp158, tmp159
	mov	x2, 0	// tmp159
	beq	.L33		//,
	bl	__stack_chk_fail		//
.L33:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
