	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# sentence, sentence
	sd	a1,-64(s0)	# out, out
# eval/problem144//code.c:6:     int index = 0, word_len = 0;
	sw	zero,-20(s0)	#, index
# eval/problem144//code.c:6:     int index = 0, word_len = 0;
	sw	zero,-36(s0)	#, word_len
# eval/problem144//code.c:7:     int out_index = 0;
	sw	zero,-32(s0)	#, out_index
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	sw	zero,-28(s0)	#, i
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	j	.L2		#
.L13:
# eval/problem144//code.c:12:         if (sentence[i] != ' ') {
	lw	a5,-28(s0)		# _1, i
	ld	a4,-56(s0)		# tmp104, sentence
	add	a5,a4,a5	# _1, _2, tmp104
	lbu	a5,0(a5)	# _3, *_2
# eval/problem144//code.c:12:         if (sentence[i] != ' ') {
	mv	a4,a5	# tmp105, _3
	li	a5,32		# tmp106,
	beq	a4,a5,.L3	#, tmp105, tmp106,
# eval/problem144//code.c:13:             word_len++;
	lw	a5,-36(s0)		# tmp109, word_len
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-36(s0)	# tmp107, word_len
	j	.L4		#
.L3:
# eval/problem144//code.c:15:             if (word_len > 1) {
	lw	a5,-36(s0)		# tmp111, word_len
	sext.w	a4,a5	# tmp112, tmp110
	li	a5,1		# tmp113,
	ble	a4,a5,.L5	#, tmp112, tmp113,
# eval/problem144//code.c:16:                 is_prime = true;
	li	a5,1		# tmp114,
	sb	a5,-37(s0)	# tmp114, is_prime
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	li	a5,2		# tmp115,
	sw	a5,-24(s0)	# tmp115, j
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	j	.L6		#
.L9:
# eval/problem144//code.c:18:                     if (word_len % j == 0) {
	lw	a5,-36(s0)		# tmp118, word_len
	mv	a4,a5	# tmp117, tmp118
	lw	a5,-24(s0)		# tmp121, j
	remw	a5,a4,a5	# tmp120, tmp119, tmp117
	sext.w	a5,a5	# _4, tmp119
# eval/problem144//code.c:18:                     if (word_len % j == 0) {
	bne	a5,zero,.L7	#, _4,,
# eval/problem144//code.c:19:                         is_prime = false;
	sb	zero,-37(s0)	#, is_prime
# eval/problem144//code.c:20:                         break;
	j	.L10		#
.L7:
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp124, j
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-24(s0)	# tmp122, j
.L6:
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp127, j
	mulw	a5,a5,a5	# tmp125, tmp126, tmp126
	sext.w	a4,a5	# _5, tmp125
# eval/problem144//code.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-36(s0)		# tmp129, word_len
	sext.w	a5,a5	# tmp130, tmp128
	bge	a5,a4,.L9	#, tmp130, tmp131,
	j	.L10		#
.L5:
# eval/problem144//code.c:24:                 is_prime = false;
	sb	zero,-37(s0)	#, is_prime
.L10:
# eval/problem144//code.c:27:             if (is_prime) {
	lbu	a5,-37(s0)	# tmp133, is_prime
	andi	a5,a5,0xff	# tmp134, tmp132
	beq	a5,zero,.L11	#, tmp134,,
# eval/problem144//code.c:28:                 if (out_index > 0) {
	lw	a5,-32(s0)		# tmp136, out_index
	sext.w	a5,a5	# tmp137, tmp135
	ble	a5,zero,.L12	#, tmp137,,
# eval/problem144//code.c:29:                     out[out_index++] = ' ';
	lw	a5,-32(s0)		# out_index.0_6, out_index
	addiw	a4,a5,1	#, tmp138, out_index.0_6
	sw	a4,-32(s0)	# tmp138, out_index
	mv	a4,a5	# _7, out_index.0_6
# eval/problem144//code.c:29:                     out[out_index++] = ' ';
	ld	a5,-64(s0)		# tmp139, out
	add	a5,a5,a4	# _7, _8, tmp139
# eval/problem144//code.c:29:                     out[out_index++] = ' ';
	li	a4,32		# tmp140,
	sb	a4,0(a5)	# tmp140, *_8
.L12:
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a5,-32(s0)		# _9, out_index
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ld	a4,-64(s0)		# tmp141, out
	add	a3,a4,a5	# _9, _10, tmp141
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-28(s0)		# _11, i
	lw	a5,-36(s0)		# _12, word_len
	sub	a5,a4,a5	# _13, _11, _12
	ld	a4,-56(s0)		# tmp142, sentence
	add	a5,a4,a5	# _13, _14, tmp142
# eval/problem144//code.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-36(s0)		# _15, word_len
	mv	a2,a4	#, _15
	mv	a1,a5	#, _14
	mv	a0,a3	#, _10
	call	memcpy@plt	#
# eval/problem144//code.c:32:                 out_index += word_len;
	lw	a5,-32(s0)		# tmp145, out_index
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-36(s0)		# tmp147, word_len
	addw	a5,a4,a5	# tmp146, tmp143, tmp144
	sw	a5,-32(s0)	# tmp143, out_index
.L11:
# eval/problem144//code.c:34:             word_len = 0;
	sw	zero,-36(s0)	#, word_len
.L4:
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	lw	a5,-28(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-28(s0)	# tmp148, i
.L2:
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	lw	a5,-28(s0)		# _16, i
	ld	a4,-56(s0)		# tmp151, sentence
	add	a5,a4,a5	# _16, _17, tmp151
	lbu	a5,0(a5)	# _18, *_17
# eval/problem144//code.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	bne	a5,zero,.L13	#, _18,,
# eval/problem144//code.c:38:     if (word_len > 1) {
	lw	a5,-36(s0)		# tmp153, word_len
	sext.w	a4,a5	# tmp154, tmp152
	li	a5,1		# tmp155,
	ble	a4,a5,.L14	#, tmp154, tmp155,
# eval/problem144//code.c:39:         is_prime = true;
	li	a5,1		# tmp156,
	sb	a5,-37(s0)	# tmp156, is_prime
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	li	a5,2		# tmp157,
	sw	a5,-24(s0)	# tmp157, j
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	j	.L15		#
.L18:
# eval/problem144//code.c:41:             if (word_len % j == 0) {
	lw	a5,-36(s0)		# tmp160, word_len
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-24(s0)		# tmp163, j
	remw	a5,a4,a5	# tmp162, tmp161, tmp159
	sext.w	a5,a5	# _19, tmp161
# eval/problem144//code.c:41:             if (word_len % j == 0) {
	bne	a5,zero,.L16	#, _19,,
# eval/problem144//code.c:42:                 is_prime = false;
	sb	zero,-37(s0)	#, is_prime
# eval/problem144//code.c:43:                 break;
	j	.L19		#
.L16:
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp166, j
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-24(s0)	# tmp164, j
.L15:
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp169, j
	mulw	a5,a5,a5	# tmp167, tmp168, tmp168
	sext.w	a4,a5	# _20, tmp167
# eval/problem144//code.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-36(s0)		# tmp171, word_len
	sext.w	a5,a5	# tmp172, tmp170
	bge	a5,a4,.L18	#, tmp172, tmp173,
	j	.L19		#
.L14:
# eval/problem144//code.c:47:         is_prime = false;
	sb	zero,-37(s0)	#, is_prime
.L19:
# eval/problem144//code.c:50:     if (is_prime) {
	lbu	a5,-37(s0)	# tmp175, is_prime
	andi	a5,a5,0xff	# tmp176, tmp174
	beq	a5,zero,.L20	#, tmp176,,
# eval/problem144//code.c:51:         if (out_index > 0) {
	lw	a5,-32(s0)		# tmp178, out_index
	sext.w	a5,a5	# tmp179, tmp177
	ble	a5,zero,.L21	#, tmp179,,
# eval/problem144//code.c:52:             out[out_index++] = ' ';
	lw	a5,-32(s0)		# out_index.1_21, out_index
	addiw	a4,a5,1	#, tmp180, out_index.1_21
	sw	a4,-32(s0)	# tmp180, out_index
	mv	a4,a5	# _22, out_index.1_21
# eval/problem144//code.c:52:             out[out_index++] = ' ';
	ld	a5,-64(s0)		# tmp181, out
	add	a5,a5,a4	# _22, _23, tmp181
# eval/problem144//code.c:52:             out[out_index++] = ' ';
	li	a4,32		# tmp182,
	sb	a4,0(a5)	# tmp182, *_23
.L21:
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a5,-32(s0)		# _24, out_index
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ld	a4,-64(s0)		# tmp183, out
	add	a3,a4,a5	# _24, _25, tmp183
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-28(s0)		# _26, i
	lw	a5,-36(s0)		# _27, word_len
	sub	a5,a4,a5	# _28, _26, _27
	ld	a4,-56(s0)		# tmp184, sentence
	add	a5,a4,a5	# _28, _29, tmp184
# eval/problem144//code.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-36(s0)		# _30, word_len
	mv	a2,a4	#, _30
	mv	a1,a5	#, _29
	mv	a0,a3	#, _25
	call	memcpy@plt	#
# eval/problem144//code.c:55:         out_index += word_len;
	lw	a5,-32(s0)		# tmp187, out_index
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-36(s0)		# tmp189, word_len
	addw	a5,a4,a5	# tmp188, tmp185, tmp186
	sw	a5,-32(s0)	# tmp185, out_index
.L20:
# eval/problem144//code.c:58:     out[out_index] = '\0';
	lw	a5,-32(s0)		# _31, out_index
	ld	a4,-64(s0)		# tmp190, out
	add	a5,a4,a5	# _31, _32, tmp190
# eval/problem144//code.c:58:     out[out_index] = '\0';
	sb	zero,0(a5)	#, *_32
# eval/problem144//code.c:59: }
	nop	
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
