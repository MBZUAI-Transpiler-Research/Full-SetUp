	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# message, message
	sd	a1,-64(s0)	# out, out
# eval/problem94//code.c:6:     const char* vowels = "aeiouAEIOU";
	lla	a5,.LC0	# tmp107,
	sd	a5,-24(s0)	# tmp107, vowels
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	sw	zero,-32(s0)	#, i
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	j	.L2		#
.L10:
# eval/problem94//code.c:10:         char w = message[i];
	lw	a5,-32(s0)		# _1, i
	ld	a4,-56(s0)		# tmp108, message
	add	a5,a4,a5	# _1, _2, tmp108
# eval/problem94//code.c:10:         char w = message[i];
	lbu	a5,0(a5)	# tmp109, *_2
	sb	a5,-33(s0)	# tmp109, w
# eval/problem94//code.c:11:         if (islower(w)) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _3,
	ld	a4,0(a5)		# _4, *_3
	lbu	a5,-33(s0)	# _5, w
	slli	a5,a5,1	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lhu	a5,0(a5)	# _8, *_7
	sext.w	a5,a5	# _9, _8
	andi	a5,a5,512	#, tmp110, _9
	sext.w	a5,a5	# _10, tmp110
# eval/problem94//code.c:11:         if (islower(w)) {
	beq	a5,zero,.L3	#, _10,,
# eval/problem94//code.c:12:             w = toupper(w);
	lbu	a5,-33(s0)	# tmp111, w
	sext.w	a5,a5	# _11, tmp111
	mv	a0,a5	#, _11
	call	toupper@plt	#
	mv	a5,a0	# tmp112,
# eval/problem94//code.c:12:             w = toupper(w);
	sb	a5,-33(s0)	# _12, w
	j	.L4		#
.L3:
# eval/problem94//code.c:13:         } else if (isupper(w)) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _13,
	ld	a4,0(a5)		# _14, *_13
	lbu	a5,-33(s0)	# _15, w
	slli	a5,a5,1	#, _16, _15
	add	a5,a4,a5	# _16, _17, _14
	lhu	a5,0(a5)	# _18, *_17
	sext.w	a5,a5	# _19, _18
	andi	a5,a5,256	#, tmp113, _19
	sext.w	a5,a5	# _20, tmp113
# eval/problem94//code.c:13:         } else if (isupper(w)) {
	beq	a5,zero,.L4	#, _20,,
# eval/problem94//code.c:14:             w = tolower(w);
	lbu	a5,-33(s0)	# tmp114, w
	sext.w	a5,a5	# _21, tmp114
	mv	a0,a5	#, _21
	call	tolower@plt	#
	mv	a5,a0	# tmp115,
# eval/problem94//code.c:14:             w = tolower(w);
	sb	a5,-33(s0)	# _22, w
.L4:
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	sw	zero,-28(s0)	#, j
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	j	.L5		#
.L9:
# eval/problem94//code.c:18:             if (w == vowels[j]) {
	lw	a5,-28(s0)		# _23, j
	ld	a4,-24(s0)		# tmp116, vowels
	add	a5,a4,a5	# _23, _24, tmp116
	lbu	a4,0(a5)	# _25, *_24
# eval/problem94//code.c:18:             if (w == vowels[j]) {
	lbu	a5,-33(s0)	# tmp118, w
	andi	a5,a5,0xff	# tmp119, tmp117
	bne	a5,a4,.L6	#, tmp119, tmp120,
# eval/problem94//code.c:19:                 if (j < 10) {
	lw	a5,-28(s0)		# tmp122, j
	sext.w	a4,a5	# tmp123, tmp121
	li	a5,9		# tmp124,
	bgt	a4,a5,.L11	#, tmp123, tmp124,
# eval/problem94//code.c:20:                     w = w + 2;
	lbu	a5,-33(s0)	# tmp126, w
	addiw	a5,a5,2	#, tmp127, tmp125
	sb	a5,-33(s0)	# tmp127, w
# eval/problem94//code.c:22:                 break;
	j	.L11		#
.L6:
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	lw	a5,-28(s0)		# tmp130, j
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-28(s0)	# tmp128, j
.L5:
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	lw	a5,-28(s0)		# _26, j
	ld	a4,-24(s0)		# tmp131, vowels
	add	a5,a4,a5	# _26, _27, tmp131
	lbu	a5,0(a5)	# _28, *_27
# eval/problem94//code.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	bne	a5,zero,.L9	#, _28,,
	j	.L8		#
.L11:
# eval/problem94//code.c:22:                 break;
	nop	
.L8:
# eval/problem94//code.c:25:         out[i] = w;
	lw	a5,-32(s0)		# _29, i
	ld	a4,-64(s0)		# tmp132, out
	add	a5,a4,a5	# _29, _30, tmp132
# eval/problem94//code.c:25:         out[i] = w;
	lbu	a4,-33(s0)	# tmp133, w
	sb	a4,0(a5)	# tmp133, *_30
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	lw	a5,-32(s0)		# tmp136, i
	addiw	a5,a5,1	#, tmp134, tmp135
	sw	a5,-32(s0)	# tmp134, i
.L2:
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	lw	a5,-32(s0)		# _31, i
	ld	a4,-56(s0)		# tmp137, message
	add	a5,a4,a5	# _31, _32, tmp137
	lbu	a5,0(a5)	# _33, *_32
# eval/problem94//code.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	bne	a5,zero,.L10	#, _33,,
# eval/problem94//code.c:27:     out[i] = '\0';
	lw	a5,-32(s0)		# _34, i
	ld	a4,-64(s0)		# tmp138, out
	add	a5,a4,a5	# _34, _35, tmp138
# eval/problem94//code.c:27:     out[i] = '\0';
	sb	zero,0(a5)	#, *_35
# eval/problem94//code.c:28: }
	nop	
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
