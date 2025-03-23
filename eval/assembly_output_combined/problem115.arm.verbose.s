	.arch armv8-a
	.file	"problem115.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.align	2
	.global	func0
	.type	func0, %function
func0:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 8]	// nums, nums
	str	w1, [sp, 4]	// size, size
// problem115.c:4:     long long current = nums[0];
	ldr	x0, [sp, 8]	// tmp102, nums
	ldr	x0, [x0]	// tmp103, *nums_14(D)
	str	x0, [sp, 32]	// tmp103, current
// problem115.c:5:     long long min = nums[0];
	ldr	x0, [sp, 8]	// tmp104, nums
	ldr	x0, [x0]	// tmp105, *nums_14(D)
	str	x0, [sp, 40]	// tmp105, min
// problem115.c:6:     for (int i = 1; i < size; i++) {
	mov	w0, 1	// tmp106,
	str	w0, [sp, 28]	// tmp106, i
// problem115.c:6:     for (int i = 1; i < size; i++) {
	b	.L2		//
.L6:
// problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldr	x0, [sp, 32]	// tmp107, current
	cmp	x0, 0	// tmp107,
	bge	.L3		//,
// problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldrsw	x0, [sp, 28]	// _1, i
	lsl	x0, x0, 3	// _2, _1,
	ldr	x1, [sp, 8]	// tmp108, nums
	add	x0, x1, x0	// _3, tmp108, _2
	ldr	x1, [x0]	// _4, *_3
// problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldr	x0, [sp, 32]	// tmp109, current
	add	x0, x1, x0	// iftmp.0_12, _4, tmp109
	b	.L4		//
.L3:
// problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldrsw	x0, [sp, 28]	// _5, i
	lsl	x0, x0, 3	// _6, _5,
	ldr	x1, [sp, 8]	// tmp110, nums
	add	x0, x1, x0	// _7, tmp110, _6
// problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	ldr	x0, [x0]	// iftmp.0_12, *_7
.L4:
// problem115.c:7:         current = current < 0 ? current + nums[i] : nums[i];
	str	x0, [sp, 32]	// iftmp.0_12, current
// problem115.c:8:         if (current < min) min = current;
	ldr	x1, [sp, 32]	// tmp111, current
	ldr	x0, [sp, 40]	// tmp112, min
	cmp	x1, x0	// tmp111, tmp112
	bge	.L5		//,
// problem115.c:8:         if (current < min) min = current;
	ldr	x0, [sp, 32]	// tmp113, current
	str	x0, [sp, 40]	// tmp113, min
.L5:
// problem115.c:6:     for (int i = 1; i < size; i++) {
	ldr	w0, [sp, 28]	// tmp115, i
	add	w0, w0, 1	// tmp114, tmp115,
	str	w0, [sp, 28]	// tmp114, i
.L2:
// problem115.c:6:     for (int i = 1; i < size; i++) {
	ldr	w1, [sp, 28]	// tmp116, i
	ldr	w0, [sp, 4]	// tmp117, size
	cmp	w1, w0	// tmp116, tmp117
	blt	.L6		//,
// problem115.c:10:     return min;
	ldr	x0, [sp, 40]	// _19, min
// problem115.c:11: }
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC8:
	.string	"problem115.c"
	.align	3
.LC9:
	.string	"func0(nums1, 6) == 1"
	.align	3
.LC10:
	.string	"func0(nums2, 3) == -6"
	.align	3
.LC11:
	.string	"func0(nums3, 5) == -14"
	.align	3
.LC12:
	.string	"func0(nums4, 1) == -9999999999999999"
	.align	3
.LC13:
	.string	"func0(nums5, 4) == 0"
	.align	3
.LC14:
	.string	"func0(nums6, 5) == -6"
	.align	3
.LC15:
	.string	"func0(nums7, 6) == -6"
	.align	3
.LC16:
	.string	"func0(nums8, 6) == 3"
	.align	3
.LC17:
	.string	"func0(nums9, 6) == -33"
	.align	3
.LC18:
	.string	"func0(nums10, 1) == -10"
	.align	3
.LC19:
	.string	"func0(nums11, 1) == 7"
	.align	3
.LC20:
	.string	"func0(nums12, 2) == -1"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -400]!	//,,,
	.cfi_def_cfa_offset 400
	.cfi_offset 29, -400
	.cfi_offset 30, -392
	mov	x29, sp	//,
// problem115.c:17: int main() {
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp106, tmp107,
	ldr	x1, [x0]	// tmp219,
	str	x1, [sp, 392]	// tmp219, D.4347
	mov	x1, 0	// tmp219
// problem115.c:18:     long long nums1[] = {2, 3, 4, 1, 2, 4};
	adrp	x0, .LC0	// tmp109,
	add	x1, x0, :lo12:.LC0	// tmp108, tmp109,
	add	x0, sp, 200	// tmp110,,
	ldp	q0, q1, [x1]	// tmp112, tmp113,
	stp	q0, q1, [x0]	// tmp112, tmp113, nums1
	ldr	q0, [x1, 32]	// tmp114,
	str	q0, [x0, 32]	// tmp114, nums1
// problem115.c:19:     assert(func0(nums1, 6) == 1);
	add	x0, sp, 200	// tmp115,,
	mov	w1, 6	//,
	bl	func0		//
	cmp	x0, 1	// _1,
	beq	.L9		//,
// problem115.c:19:     assert(func0(nums1, 6) == 1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp116,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp116,
	mov	w2, 19	//,
	adrp	x0, .LC8	// tmp117,
	add	x1, x0, :lo12:.LC8	//, tmp117,
	adrp	x0, .LC9	// tmp118,
	add	x0, x0, :lo12:.LC9	//, tmp118,
	bl	__assert_fail		//
.L9:
// problem115.c:21:     long long nums2[] = {-1, -2, -3};
	adrp	x0, .LC1	// tmp120,
	add	x0, x0, :lo12:.LC1	// tmp119, tmp120,
	add	x2, sp, 64	// tmp121,,
	mov	x3, x0	// tmp122, tmp119
	ldp	x0, x1, [x3]	// tmp123,
	stp	x0, x1, [x2]	// tmp123, nums2
	ldr	x0, [x3, 16]	// tmp124,
	str	x0, [x2, 16]	// tmp124, nums2
// problem115.c:22:     assert(func0(nums2, 3) == -6);
	add	x0, sp, 64	// tmp125,,
	mov	w1, 3	//,
	bl	func0		//
	cmn	x0, #6	// _2,
	beq	.L10		//,
// problem115.c:22:     assert(func0(nums2, 3) == -6);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp126,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp126,
	mov	w2, 22	//,
	adrp	x0, .LC8	// tmp127,
	add	x1, x0, :lo12:.LC8	//, tmp127,
	adrp	x0, .LC10	// tmp128,
	add	x0, x0, :lo12:.LC10	//, tmp128,
	bl	__assert_fail		//
.L10:
// problem115.c:24:     long long nums3[] = {-1, -2, -3, 2, -10};
	adrp	x0, .LC2	// tmp130,
	add	x1, x0, :lo12:.LC2	// tmp129, tmp130,
	add	x0, sp, 120	// tmp131,,
	ldp	q0, q1, [x1]	// tmp133, tmp134,
	stp	q0, q1, [x0]	// tmp133, tmp134, nums3
	ldr	x1, [x1, 32]	// tmp135,
	str	x1, [x0, 32]	// tmp135, nums3
// problem115.c:25:     assert(func0(nums3, 5) == -14);
	add	x0, sp, 120	// tmp136,,
	mov	w1, 5	//,
	bl	func0		//
	cmn	x0, #14	// _3,
	beq	.L11		//,
// problem115.c:25:     assert(func0(nums3, 5) == -14);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp137,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp137,
	mov	w2, 25	//,
	adrp	x0, .LC8	// tmp138,
	add	x1, x0, :lo12:.LC8	//, tmp138,
	adrp	x0, .LC11	// tmp139,
	add	x0, x0, :lo12:.LC11	//, tmp139,
	bl	__assert_fail		//
.L11:
// problem115.c:27:     long long nums4[] = {-9999999999999999};
	mov	x0, 1	// tmp140,
	movk	x0, 0x903f, lsl 16	// tmp140,,
	movk	x0, 0x790d, lsl 32	// tmp140,,
	movk	x0, 0xffdc, lsl 48	// tmp140,,
	str	x0, [sp, 24]	// tmp140, nums4[0]
// problem115.c:28:     assert(func0(nums4, 1) == -9999999999999999);
	add	x0, sp, 24	// tmp141,,
	mov	w1, 1	//,
	bl	func0		//
	mov	x1, x0	// _4,
	mov	x0, 1	// tmp142,
	movk	x0, 0x903f, lsl 16	// tmp142,,
	movk	x0, 0x790d, lsl 32	// tmp142,,
	movk	x0, 0xffdc, lsl 48	// tmp142,,
	cmp	x1, x0	// _4, tmp142
	beq	.L12		//,
// problem115.c:28:     assert(func0(nums4, 1) == -9999999999999999);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp143,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp143,
	mov	w2, 28	//,
	adrp	x0, .LC8	// tmp144,
	add	x1, x0, :lo12:.LC8	//, tmp144,
	adrp	x0, .LC12	// tmp145,
	add	x0, x0, :lo12:.LC12	//, tmp145,
	bl	__assert_fail		//
.L12:
// problem115.c:30:     long long nums5[] = {0, 10, 20, 1000000};
	add	x0, sp, 408	// tmp146,,
	sub	x0, x0, #320	// tmp148, tmp146,
	adrp	x1, .LC3	// tmp150,
	add	x1, x1, :lo12:.LC3	// tmp149, tmp150,
	ld1	{v0.16b - v1.16b}, [x1]	// tmp151,
	st1	{v0.16b - v1.16b}, [x0]	// tmp151, nums5
// problem115.c:31:     assert(func0(nums5, 4) == 0);
	add	x0, sp, 88	// tmp152,,
	mov	w1, 4	//,
	bl	func0		//
	cmp	x0, 0	// _5,
	beq	.L13		//,
// problem115.c:31:     assert(func0(nums5, 4) == 0);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp153,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp153,
	mov	w2, 31	//,
	adrp	x0, .LC8	// tmp154,
	add	x1, x0, :lo12:.LC8	//, tmp154,
	adrp	x0, .LC13	// tmp155,
	add	x0, x0, :lo12:.LC13	//, tmp155,
	bl	__assert_fail		//
.L13:
// problem115.c:33:     long long nums6[] = {-1, -2, -3, 10, -5};
	adrp	x0, .LC4	// tmp157,
	add	x1, x0, :lo12:.LC4	// tmp156, tmp157,
	add	x0, sp, 160	// tmp158,,
	ldp	q0, q1, [x1]	// tmp160, tmp161,
	stp	q0, q1, [x0]	// tmp160, tmp161, nums6
	ldr	x1, [x1, 32]	// tmp162,
	str	x1, [x0, 32]	// tmp162, nums6
// problem115.c:34:     assert(func0(nums6, 5) == -6);
	add	x0, sp, 160	// tmp163,,
	mov	w1, 5	//,
	bl	func0		//
	cmn	x0, #6	// _6,
	beq	.L14		//,
// problem115.c:34:     assert(func0(nums6, 5) == -6);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp164,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp164,
	mov	w2, 34	//,
	adrp	x0, .LC8	// tmp165,
	add	x1, x0, :lo12:.LC8	//, tmp165,
	adrp	x0, .LC14	// tmp166,
	add	x0, x0, :lo12:.LC14	//, tmp166,
	bl	__assert_fail		//
.L14:
// problem115.c:36:     long long nums7[] = {100, -1, -2, -3, 10, -5};
	adrp	x0, .LC5	// tmp168,
	add	x1, x0, :lo12:.LC5	// tmp167, tmp168,
	add	x0, sp, 248	// tmp169,,
	ldp	q0, q1, [x1]	// tmp171, tmp172,
	stp	q0, q1, [x0]	// tmp171, tmp172, nums7
	ldr	q0, [x1, 32]	// tmp173,
	str	q0, [x0, 32]	// tmp173, nums7
// problem115.c:37:     assert(func0(nums7, 6) == -6);
	add	x0, sp, 248	// tmp174,,
	mov	w1, 6	//,
	bl	func0		//
	cmn	x0, #6	// _7,
	beq	.L15		//,
// problem115.c:37:     assert(func0(nums7, 6) == -6);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp175,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp175,
	mov	w2, 37	//,
	adrp	x0, .LC8	// tmp176,
	add	x1, x0, :lo12:.LC8	//, tmp176,
	adrp	x0, .LC15	// tmp177,
	add	x0, x0, :lo12:.LC15	//, tmp177,
	bl	__assert_fail		//
.L15:
// problem115.c:39:     long long nums8[] = {10, 11, 13, 8, 3, 4};
	adrp	x0, .LC6	// tmp179,
	add	x1, x0, :lo12:.LC6	// tmp178, tmp179,
	add	x0, sp, 296	// tmp180,,
	ldp	q0, q1, [x1]	// tmp182, tmp183,
	stp	q0, q1, [x0]	// tmp182, tmp183, nums8
	ldr	q0, [x1, 32]	// tmp184,
	str	q0, [x0, 32]	// tmp184, nums8
// problem115.c:40:     assert(func0(nums8, 6) == 3);
	add	x0, sp, 296	// tmp185,,
	mov	w1, 6	//,
	bl	func0		//
	cmp	x0, 3	// _8,
	beq	.L16		//,
// problem115.c:40:     assert(func0(nums8, 6) == 3);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp186,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp186,
	mov	w2, 40	//,
	adrp	x0, .LC8	// tmp187,
	add	x1, x0, :lo12:.LC8	//, tmp187,
	adrp	x0, .LC16	// tmp188,
	add	x0, x0, :lo12:.LC16	//, tmp188,
	bl	__assert_fail		//
.L16:
// problem115.c:42:     long long nums9[] = {100, -33, 32, -1, 0, -2};
	adrp	x0, .LC7	// tmp190,
	add	x1, x0, :lo12:.LC7	// tmp189, tmp190,
	add	x0, sp, 344	// tmp191,,
	ldp	q0, q1, [x1]	// tmp193, tmp194,
	stp	q0, q1, [x0]	// tmp193, tmp194, nums9
	ldr	q0, [x1, 32]	// tmp195,
	str	q0, [x0, 32]	// tmp195, nums9
// problem115.c:43:     assert(func0(nums9, 6) == -33);
	add	x0, sp, 344	// tmp196,,
	mov	w1, 6	//,
	bl	func0		//
	cmn	x0, #33	// _9,
	beq	.L17		//,
// problem115.c:43:     assert(func0(nums9, 6) == -33);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp197,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp197,
	mov	w2, 43	//,
	adrp	x0, .LC8	// tmp198,
	add	x1, x0, :lo12:.LC8	//, tmp198,
	adrp	x0, .LC17	// tmp199,
	add	x0, x0, :lo12:.LC17	//, tmp199,
	bl	__assert_fail		//
.L17:
// problem115.c:45:     long long nums10[] = {-10};
	mov	x0, -10	// tmp200,
	str	x0, [sp, 32]	// tmp200, nums10[0]
// problem115.c:46:     assert(func0(nums10, 1) == -10);
	add	x0, sp, 32	// tmp201,,
	mov	w1, 1	//,
	bl	func0		//
	cmn	x0, #10	// _10,
	beq	.L18		//,
// problem115.c:46:     assert(func0(nums10, 1) == -10);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp202,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp202,
	mov	w2, 46	//,
	adrp	x0, .LC8	// tmp203,
	add	x1, x0, :lo12:.LC8	//, tmp203,
	adrp	x0, .LC18	// tmp204,
	add	x0, x0, :lo12:.LC18	//, tmp204,
	bl	__assert_fail		//
.L18:
// problem115.c:48:     long long nums11[] = {7};
	mov	x0, 7	// tmp205,
	str	x0, [sp, 40]	// tmp205, nums11[0]
// problem115.c:49:     assert(func0(nums11, 1) == 7);
	add	x0, sp, 40	// tmp206,,
	mov	w1, 1	//,
	bl	func0		//
	cmp	x0, 7	// _11,
	beq	.L19		//,
// problem115.c:49:     assert(func0(nums11, 1) == 7);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp207,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp207,
	mov	w2, 49	//,
	adrp	x0, .LC8	// tmp208,
	add	x1, x0, :lo12:.LC8	//, tmp208,
	adrp	x0, .LC19	// tmp209,
	add	x0, x0, :lo12:.LC19	//, tmp209,
	bl	__assert_fail		//
.L19:
// problem115.c:51:     long long nums12[] = {1, -1};
	mov	x0, 1	// tmp210,
	str	x0, [sp, 48]	// tmp210, nums12[0]
	mov	x0, -1	// tmp211,
	str	x0, [sp, 56]	// tmp211, nums12[1]
// problem115.c:52:     assert(func0(nums12, 2) == -1);
	add	x0, sp, 48	// tmp212,,
	mov	w1, 2	//,
	bl	func0		//
	cmn	x0, #1	// _12,
	beq	.L20		//,
// problem115.c:52:     assert(func0(nums12, 2) == -1);
	adrp	x0, __PRETTY_FUNCTION__.0	// tmp213,
	add	x3, x0, :lo12:__PRETTY_FUNCTION__.0	//, tmp213,
	mov	w2, 52	//,
	adrp	x0, .LC8	// tmp214,
	add	x1, x0, :lo12:.LC8	//, tmp214,
	adrp	x0, .LC20	// tmp215,
	add	x0, x0, :lo12:.LC20	//, tmp215,
	bl	__assert_fail		//
.L20:
// problem115.c:54:     return 0;
	mov	w0, 0	// _51,
// problem115.c:55: }
	mov	w1, w0	// <retval>, _51
	adrp	x0, :got:__stack_chk_guard	// tmp218,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp217, tmp218,
	ldr	x3, [sp, 392]	// tmp220, D.4347
	ldr	x2, [x0]	// tmp221,
	subs	x3, x3, x2	// tmp220, tmp221
	mov	x2, 0	// tmp221
	beq	.L22		//,
	bl	__stack_chk_fail		//
.L22:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 400	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.xword	2
	.xword	3
	.xword	4
	.xword	1
	.xword	2
	.xword	4
	.align	3
.LC1:
	.xword	-1
	.xword	-2
	.xword	-3
	.align	3
.LC2:
	.xword	-1
	.xword	-2
	.xword	-3
	.xword	2
	.xword	-10
	.align	3
.LC3:
	.xword	0
	.xword	10
	.xword	20
	.xword	1000000
	.align	3
.LC4:
	.xword	-1
	.xword	-2
	.xword	-3
	.xword	10
	.xword	-5
	.align	3
.LC5:
	.xword	100
	.xword	-1
	.xword	-2
	.xword	-3
	.xword	10
	.xword	-5
	.align	3
.LC6:
	.xword	10
	.xword	11
	.xword	13
	.xword	8
	.xword	3
	.xword	4
	.align	3
.LC7:
	.xword	100
	.xword	-33
	.xword	32
	.xword	-1
	.xword	0
	.xword	-2
	.text
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, %object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
