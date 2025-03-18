	.arch armv8-a
	.file	"problem147.c"
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
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]	// nums, nums
	str	w1, [sp, 4]	// size, size
// problem147.c:5:     int num = 0;
	str	wzr, [sp, 28]	//, num
// problem147.c:6:     for (int i = 0; i < size; i++) {
	str	wzr, [sp, 32]	//, i
// problem147.c:6:     for (int i = 0; i < size; i++) {
	b	.L2		//
.L6:
// problem147.c:7:         if (nums[i] > 10) {
	ldrsw	x0, [sp, 32]	// _1, i
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 8]	// tmp107, nums
	add	x0, x1, x0	// _3, tmp107, _2
	ldr	w0, [x0]	// _4, *_3
// problem147.c:7:         if (nums[i] > 10) {
	cmp	w0, 10	// _4,
	ble	.L3		//,
// problem147.c:9:             last = nums[i] % 10;
	ldrsw	x0, [sp, 32]	// _5, i
	lsl	x0, x0, 2	// _6, _5,
	ldr	x1, [sp, 8]	// tmp108, nums
	add	x0, x1, x0	// _7, tmp108, _6
	ldr	w1, [x0]	// _8, *_7
// problem147.c:9:             last = nums[i] % 10;
	mov	w0, 26215	// tmp110,
	movk	w0, 0x6666, lsl 16	// tmp110,,
	smull	x0, w1, w0	// tmp109, _8, tmp110
	lsr	x0, x0, 32	// tmp111, tmp109,
	asr	w2, w0, 2	// tmp112, tmp111,
	asr	w0, w1, 31	// tmp113, _8,
	sub	w2, w2, w0	// tmp114, tmp112, tmp113
	mov	w0, w2	// tmp115, tmp114
	lsl	w0, w0, 2	// tmp116, tmp115,
	add	w0, w0, w2	// tmp115, tmp115, tmp114
	lsl	w0, w0, 1	// tmp117, tmp115,
	sub	w0, w1, w0	// tmp118, _8, tmp115
	str	w0, [sp, 40]	// tmp118, last
// problem147.c:10:             int n = nums[i];
	ldrsw	x0, [sp, 32]	// _9, i
	lsl	x0, x0, 2	// _10, _9,
	ldr	x1, [sp, 8]	// tmp119, nums
	add	x0, x1, x0	// _11, tmp119, _10
// problem147.c:10:             int n = nums[i];
	ldr	w0, [x0]	// tmp120, *_11
	str	w0, [sp, 36]	// tmp120, n
// problem147.c:11:             while (n >= 10) {
	b	.L4		//
.L5:
// problem147.c:12:                 n /= 10;
	ldr	w0, [sp, 36]	// tmp122, n
	mov	w1, 26215	// tmp124,
	movk	w1, 0x6666, lsl 16	// tmp124,,
	smull	x1, w0, w1	// tmp123, tmp122, tmp124
	lsr	x1, x1, 32	// tmp125, tmp123,
	asr	w1, w1, 2	// tmp126, tmp125,
	asr	w0, w0, 31	// tmp127, tmp122,
	sub	w0, w1, w0	// tmp121, tmp126, tmp127
	str	w0, [sp, 36]	// tmp121, n
.L4:
// problem147.c:11:             while (n >= 10) {
	ldr	w0, [sp, 36]	// tmp128, n
	cmp	w0, 9	// tmp128,
	bgt	.L5		//,
// problem147.c:14:             first = n;
	ldr	w0, [sp, 36]	// tmp129, n
	str	w0, [sp, 44]	// tmp129, first
// problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	ldr	w0, [sp, 44]	// tmp130, first
	cmp	w0, 0	// tmp130,
	and	w0, w0, 1	// tmp131, tmp130,
	csneg	w0, w0, w0, ge	// _12, tmp131, tmp131,
// problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	cmp	w0, 1	// _12,
	bne	.L3		//,
// problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	ldr	w0, [sp, 40]	// tmp132, last
	cmp	w0, 0	// tmp132,
	and	w0, w0, 1	// tmp133, tmp132,
	csneg	w0, w0, w0, ge	// _13, tmp133, tmp133,
// problem147.c:15:             if (first % 2 == 1 && last % 2 == 1) {
	cmp	w0, 1	// _13,
	bne	.L3		//,
// problem147.c:16:                 num += 1;
	ldr	w0, [sp, 28]	// tmp135, num
	add	w0, w0, 1	// tmp134, tmp135,
	str	w0, [sp, 28]	// tmp134, num
.L3:
// problem147.c:6:     for (int i = 0; i < size; i++) {
	ldr	w0, [sp, 32]	// tmp137, i
	add	w0, w0, 1	// tmp136, tmp137,
	str	w0, [sp, 32]	// tmp136, i
.L2:
// problem147.c:6:     for (int i = 0; i < size; i++) {
	ldr	w1, [sp, 32]	// tmp138, i
	ldr	w0, [sp, 4]	// tmp139, size
	cmp	w1, w0	// tmp138, tmp139
	blt	.L6		//,
// problem147.c:20:     return num;
	ldr	w0, [sp, 28]	// _21, num
// problem147.c:21: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC3:
	.string	"problem147.c"
	.align	3
.LC4:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 0"
	.align	3
.LC5:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 1"
	.align	3
.LC6:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 2"
	.align	3
.LC7:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 4"
	.align	3
.LC8:
	.string	"func0(nums, sizeof(nums) / sizeof(nums[0])) == 3"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32	//,,
// problem147.c:27: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp101,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp101,
	ldr	x1, [x0]	// tmp159,
	str	x1, [sp, 24]	// tmp159, D.5433
	mov	x1, 0	// tmp159
// problem147.c:29:         int nums[] = {5, -2, 1, -5};
	mov	w0, 5	// tmp102,
	str	w0, [sp]	// tmp102, MEM[(int[4] *)_44][0]
	mov	w0, -2	// tmp103,
	str	w0, [sp, 4]	// tmp103, MEM[(int[4] *)_44][1]
	mov	w0, 1	// tmp104,
	str	w0, [sp, 8]	// tmp104, MEM[(int[4] *)_44][2]
	mov	w0, -5	// tmp105,
	str	w0, [sp, 12]	// tmp105, MEM[(int[4] *)_44][3]
// problem147.c:30:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	mov	x0, sp	// tmp106,
	mov	w1, 4	//,
	bl	func0		//
// problem147.c:30:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	cmp	w0, 0	// _1,
	beq	.L9		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp107,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp107,
	mov	w2, 30	//,
	adrp	x0, .LC3	// tmp108,
	add	x1, x0, :lo12:.LC3	//, tmp108,
	adrp	x0, .LC4	// tmp109,
	add	x0, x0, :lo12:.LC4	//, tmp109,
	bl	__assert_fail		//
.L9:
// problem147.c:34:         int nums[] = {15, -73, 14, -15};
	mov	w0, 15	// tmp110,
	str	w0, [sp]	// tmp110, MEM[(int[4] *)_44][0]
	mov	w0, -73	// tmp111,
	str	w0, [sp, 4]	// tmp111, MEM[(int[4] *)_44][1]
	mov	w0, 14	// tmp112,
	str	w0, [sp, 8]	// tmp112, MEM[(int[4] *)_44][2]
	mov	w0, -15	// tmp113,
	str	w0, [sp, 12]	// tmp113, MEM[(int[4] *)_44][3]
// problem147.c:35:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 1);
	mov	x0, sp	// tmp114,
	mov	w1, 4	//,
	bl	func0		//
// problem147.c:35:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 1);
	cmp	w0, 1	// _2,
	beq	.L10		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp115,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp115,
	mov	w2, 35	//,
	adrp	x0, .LC3	// tmp116,
	add	x1, x0, :lo12:.LC3	//, tmp116,
	adrp	x0, .LC5	// tmp117,
	add	x0, x0, :lo12:.LC5	//, tmp117,
	bl	__assert_fail		//
.L10:
// problem147.c:39:         int nums[] = {33, -2, -3, 45, 21, 109};
	adrp	x0, .LC0	// tmp119,
	add	x0, x0, :lo12:.LC0	// tmp118, tmp119,
	mov	x2, sp	// tmp120,
	mov	x3, x0	// tmp121, tmp118
	ldp	x0, x1, [x3]	// tmp122,
	stp	x0, x1, [x2]	// tmp122, MEM[(int[6] *)_44]
	ldr	x0, [x3, 16]	// tmp123,
	str	x0, [x2, 16]	// tmp123, MEM[(int[6] *)_44]
// problem147.c:40:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 2);
	mov	x0, sp	// tmp124,
	mov	w1, 6	//,
	bl	func0		//
// problem147.c:40:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 2);
	cmp	w0, 2	// _3,
	beq	.L11		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp125,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp125,
	mov	w2, 40	//,
	adrp	x0, .LC3	// tmp126,
	add	x1, x0, :lo12:.LC3	//, tmp126,
	adrp	x0, .LC6	// tmp127,
	add	x0, x0, :lo12:.LC6	//, tmp127,
	bl	__assert_fail		//
.L11:
// problem147.c:44:         int nums[] = {43, -12, 93, 125, 121, 109};
	adrp	x0, .LC1	// tmp129,
	add	x0, x0, :lo12:.LC1	// tmp128, tmp129,
	mov	x2, sp	// tmp130,
	mov	x3, x0	// tmp131, tmp128
	ldp	x0, x1, [x3]	// tmp132,
	stp	x0, x1, [x2]	// tmp132, MEM[(int[6] *)_44]
	ldr	x0, [x3, 16]	// tmp133,
	str	x0, [x2, 16]	// tmp133, MEM[(int[6] *)_44]
// problem147.c:45:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 4);
	mov	x0, sp	// tmp134,
	mov	w1, 6	//,
	bl	func0		//
// problem147.c:45:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 4);
	cmp	w0, 4	// _4,
	beq	.L12		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp135,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp135,
	mov	w2, 45	//,
	adrp	x0, .LC3	// tmp136,
	add	x1, x0, :lo12:.LC3	//, tmp136,
	adrp	x0, .LC7	// tmp137,
	add	x0, x0, :lo12:.LC7	//, tmp137,
	bl	__assert_fail		//
.L12:
// problem147.c:49:         int nums[] = {71, -2, -33, 75, 21, 19};
	adrp	x0, .LC2	// tmp139,
	add	x0, x0, :lo12:.LC2	// tmp138, tmp139,
	mov	x2, sp	// tmp140,
	mov	x3, x0	// tmp141, tmp138
	ldp	x0, x1, [x3]	// tmp142,
	stp	x0, x1, [x2]	// tmp142, MEM[(int[6] *)_44]
	ldr	x0, [x3, 16]	// tmp143,
	str	x0, [x2, 16]	// tmp143, MEM[(int[6] *)_44]
// problem147.c:50:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 3);
	mov	x0, sp	// tmp144,
	mov	w1, 6	//,
	bl	func0		//
// problem147.c:50:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 3);
	cmp	w0, 3	// _5,
	beq	.L13		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp145,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp145,
	mov	w2, 50	//,
	adrp	x0, .LC3	// tmp146,
	add	x1, x0, :lo12:.LC3	//, tmp146,
	adrp	x0, .LC8	// tmp147,
	add	x0, x0, :lo12:.LC8	//, tmp147,
	bl	__assert_fail		//
.L13:
// problem147.c:54:         int nums[] = {1};
	mov	w0, 1	// tmp148,
	str	w0, [sp]	// tmp148, MEM[(int[1] *)_44][0]
// problem147.c:55:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	mov	x0, sp	// tmp149,
	mov	w1, 1	//,
	bl	func0		//
// problem147.c:55:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	cmp	w0, 0	// _6,
	beq	.L14		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp150,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp150,
	mov	w2, 55	//,
	adrp	x0, .LC3	// tmp151,
	add	x1, x0, :lo12:.LC3	//, tmp151,
	adrp	x0, .LC4	// tmp152,
	add	x0, x0, :lo12:.LC4	//, tmp152,
	bl	__assert_fail		//
.L14:
// problem147.c:60:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	mov	x0, sp	// tmp153,
	mov	w1, 0	//,
	bl	func0		//
// problem147.c:60:         assert(func0(nums, sizeof(nums) / sizeof(nums[0])) == 0);
	cmp	w0, 0	// _7,
	beq	.L15		//,
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp154,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp154,
	mov	w2, 60	//,
	adrp	x0, .LC3	// tmp155,
	add	x1, x0, :lo12:.LC3	//, tmp155,
	adrp	x0, .LC4	// tmp156,
	add	x0, x0, :lo12:.LC4	//, tmp156,
	bl	__assert_fail		//
.L15:
// problem147.c:63:     return 0;
	mov	w0, 0	// _42,
// problem147.c:64: }
	mov	w1, w0	// <retval>, _42
	adrp	x0, :got:__stack_chk_guard	// tmp158,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp158,
	ldr	x3, [sp, 24]	// tmp160, D.5433
	ldr	x2, [x0]	// tmp161,
	subs	x3, x3, x2	// tmp160, tmp161
	mov	x2, 0	// tmp161
	beq	.L17		//,
	bl	__stack_chk_fail		//
.L17:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp, 32]	//,,
	add	sp, sp, 48	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.word	33
	.word	-2
	.word	-3
	.word	45
	.word	21
	.word	109
	.align	3
.LC1:
	.word	43
	.word	-12
	.word	93
	.word	125
	.word	121
	.word	109
	.align	3
.LC2:
	.word	71
	.word	-2
	.word	-33
	.word	75
	.word	21
	.word	19
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
