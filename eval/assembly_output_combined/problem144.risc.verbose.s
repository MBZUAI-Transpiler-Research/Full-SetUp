	.file	"problem144.c"
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
# problem144.c:6:     int index = 0, word_len = 0;
	sw	zero,-20(s0)	#, index
# problem144.c:6:     int index = 0, word_len = 0;
	sw	zero,-36(s0)	#, word_len
# problem144.c:7:     int out_index = 0;
	sw	zero,-32(s0)	#, out_index
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	sw	zero,-28(s0)	#, i
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	j	.L2		#
.L13:
# problem144.c:12:         if (sentence[i] != ' ') {
	lw	a5,-28(s0)		# _1, i
	ld	a4,-56(s0)		# tmp104, sentence
	add	a5,a4,a5	# _1, _2, tmp104
	lbu	a5,0(a5)	# _3, *_2
# problem144.c:12:         if (sentence[i] != ' ') {
	mv	a4,a5	# tmp105, _3
	li	a5,32		# tmp106,
	beq	a4,a5,.L3	#, tmp105, tmp106,
# problem144.c:13:             word_len++;
	lw	a5,-36(s0)		# tmp109, word_len
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-36(s0)	# tmp107, word_len
	j	.L4		#
.L3:
# problem144.c:15:             if (word_len > 1) {
	lw	a5,-36(s0)		# tmp111, word_len
	sext.w	a4,a5	# tmp112, tmp110
	li	a5,1		# tmp113,
	ble	a4,a5,.L5	#, tmp112, tmp113,
# problem144.c:16:                 is_prime = true;
	li	a5,1		# tmp114,
	sb	a5,-37(s0)	# tmp114, is_prime
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	li	a5,2		# tmp115,
	sw	a5,-24(s0)	# tmp115, j
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	j	.L6		#
.L9:
# problem144.c:18:                     if (word_len % j == 0) {
	lw	a5,-36(s0)		# tmp118, word_len
	mv	a4,a5	# tmp117, tmp118
	lw	a5,-24(s0)		# tmp121, j
	remw	a5,a4,a5	# tmp120, tmp119, tmp117
	sext.w	a5,a5	# _4, tmp119
# problem144.c:18:                     if (word_len % j == 0) {
	bne	a5,zero,.L7	#, _4,,
# problem144.c:19:                         is_prime = false;
	sb	zero,-37(s0)	#, is_prime
# problem144.c:20:                         break;
	j	.L10		#
.L7:
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp124, j
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-24(s0)	# tmp122, j
.L6:
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp127, j
	mulw	a5,a5,a5	# tmp125, tmp126, tmp126
	sext.w	a4,a5	# _5, tmp125
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-36(s0)		# tmp129, word_len
	sext.w	a5,a5	# tmp130, tmp128
	bge	a5,a4,.L9	#, tmp130, tmp131,
	j	.L10		#
.L5:
# problem144.c:24:                 is_prime = false;
	sb	zero,-37(s0)	#, is_prime
.L10:
# problem144.c:27:             if (is_prime) {
	lbu	a5,-37(s0)	# tmp133, is_prime
	andi	a5,a5,0xff	# tmp134, tmp132
	beq	a5,zero,.L11	#, tmp134,,
# problem144.c:28:                 if (out_index > 0) {
	lw	a5,-32(s0)		# tmp136, out_index
	sext.w	a5,a5	# tmp137, tmp135
	ble	a5,zero,.L12	#, tmp137,,
# problem144.c:29:                     out[out_index++] = ' ';
	lw	a5,-32(s0)		# out_index.0_6, out_index
	addiw	a4,a5,1	#, tmp138, out_index.0_6
	sw	a4,-32(s0)	# tmp138, out_index
	mv	a4,a5	# _7, out_index.0_6
# problem144.c:29:                     out[out_index++] = ' ';
	ld	a5,-64(s0)		# tmp139, out
	add	a5,a5,a4	# _7, _8, tmp139
# problem144.c:29:                     out[out_index++] = ' ';
	li	a4,32		# tmp140,
	sb	a4,0(a5)	# tmp140, *_8
.L12:
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a5,-32(s0)		# _9, out_index
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ld	a4,-64(s0)		# tmp141, out
	add	a3,a4,a5	# _9, _10, tmp141
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-28(s0)		# _11, i
	lw	a5,-36(s0)		# _12, word_len
	sub	a5,a4,a5	# _13, _11, _12
	ld	a4,-56(s0)		# tmp142, sentence
	add	a5,a4,a5	# _13, _14, tmp142
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-36(s0)		# _15, word_len
	mv	a2,a4	#, _15
	mv	a1,a5	#, _14
	mv	a0,a3	#, _10
	call	memcpy@plt	#
# problem144.c:32:                 out_index += word_len;
	lw	a5,-32(s0)		# tmp145, out_index
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-36(s0)		# tmp147, word_len
	addw	a5,a4,a5	# tmp146, tmp143, tmp144
	sw	a5,-32(s0)	# tmp143, out_index
.L11:
# problem144.c:34:             word_len = 0;
	sw	zero,-36(s0)	#, word_len
.L4:
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	lw	a5,-28(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-28(s0)	# tmp148, i
.L2:
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	lw	a5,-28(s0)		# _16, i
	ld	a4,-56(s0)		# tmp151, sentence
	add	a5,a4,a5	# _16, _17, tmp151
	lbu	a5,0(a5)	# _18, *_17
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	bne	a5,zero,.L13	#, _18,,
# problem144.c:38:     if (word_len > 1) {
	lw	a5,-36(s0)		# tmp153, word_len
	sext.w	a4,a5	# tmp154, tmp152
	li	a5,1		# tmp155,
	ble	a4,a5,.L14	#, tmp154, tmp155,
# problem144.c:39:         is_prime = true;
	li	a5,1		# tmp156,
	sb	a5,-37(s0)	# tmp156, is_prime
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	li	a5,2		# tmp157,
	sw	a5,-24(s0)	# tmp157, j
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	j	.L15		#
.L18:
# problem144.c:41:             if (word_len % j == 0) {
	lw	a5,-36(s0)		# tmp160, word_len
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-24(s0)		# tmp163, j
	remw	a5,a4,a5	# tmp162, tmp161, tmp159
	sext.w	a5,a5	# _19, tmp161
# problem144.c:41:             if (word_len % j == 0) {
	bne	a5,zero,.L16	#, _19,,
# problem144.c:42:                 is_prime = false;
	sb	zero,-37(s0)	#, is_prime
# problem144.c:43:                 break;
	j	.L19		#
.L16:
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp166, j
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-24(s0)	# tmp164, j
.L15:
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp169, j
	mulw	a5,a5,a5	# tmp167, tmp168, tmp168
	sext.w	a4,a5	# _20, tmp167
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-36(s0)		# tmp171, word_len
	sext.w	a5,a5	# tmp172, tmp170
	bge	a5,a4,.L18	#, tmp172, tmp173,
	j	.L19		#
.L14:
# problem144.c:47:         is_prime = false;
	sb	zero,-37(s0)	#, is_prime
.L19:
# problem144.c:50:     if (is_prime) {
	lbu	a5,-37(s0)	# tmp175, is_prime
	andi	a5,a5,0xff	# tmp176, tmp174
	beq	a5,zero,.L20	#, tmp176,,
# problem144.c:51:         if (out_index > 0) {
	lw	a5,-32(s0)		# tmp178, out_index
	sext.w	a5,a5	# tmp179, tmp177
	ble	a5,zero,.L21	#, tmp179,,
# problem144.c:52:             out[out_index++] = ' ';
	lw	a5,-32(s0)		# out_index.1_21, out_index
	addiw	a4,a5,1	#, tmp180, out_index.1_21
	sw	a4,-32(s0)	# tmp180, out_index
	mv	a4,a5	# _22, out_index.1_21
# problem144.c:52:             out[out_index++] = ' ';
	ld	a5,-64(s0)		# tmp181, out
	add	a5,a5,a4	# _22, _23, tmp181
# problem144.c:52:             out[out_index++] = ' ';
	li	a4,32		# tmp182,
	sb	a4,0(a5)	# tmp182, *_23
.L21:
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a5,-32(s0)		# _24, out_index
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ld	a4,-64(s0)		# tmp183, out
	add	a3,a4,a5	# _24, _25, tmp183
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-28(s0)		# _26, i
	lw	a5,-36(s0)		# _27, word_len
	sub	a5,a4,a5	# _28, _26, _27
	ld	a4,-56(s0)		# tmp184, sentence
	add	a5,a4,a5	# _28, _29, tmp184
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-36(s0)		# _30, word_len
	mv	a2,a4	#, _30
	mv	a1,a5	#, _29
	mv	a0,a3	#, _25
	call	memcpy@plt	#
# problem144.c:55:         out_index += word_len;
	lw	a5,-32(s0)		# tmp187, out_index
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-36(s0)		# tmp189, word_len
	addw	a5,a4,a5	# tmp188, tmp185, tmp186
	sw	a5,-32(s0)	# tmp185, out_index
.L20:
# problem144.c:58:     out[out_index] = '\0';
	lw	a5,-32(s0)		# _31, out_index
	ld	a4,-64(s0)		# tmp190, out
	add	a5,a4,a5	# _31, _32, tmp190
# problem144.c:58:     out[out_index] = '\0';
	sb	zero,0(a5)	#, *_32
# problem144.c:59: }
	nop	
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"This is a test"
	.align	3
.LC1:
	.string	"is"
	.align	3
.LC2:
	.string	"problem144.c"
	.align	3
.LC3:
	.string	"strcmp(output, \"is\") == 0"
	.align	3
.LC4:
	.string	"lets go for swimming"
	.align	3
.LC5:
	.string	"go for"
	.align	3
.LC6:
	.string	"strcmp(output, \"go for\") == 0"
	.align	3
.LC7:
	.string	"there is no place available here"
	.align	3
.LC8:
	.string	"there is no place"
	.align	3
.LC9:
	.string	"strcmp(output, \"there is no place\") == 0"
	.align	3
.LC10:
	.string	"Hi I am Hussein"
	.align	3
.LC11:
	.string	"Hi am Hussein"
	.align	3
.LC12:
	.string	"strcmp(output, \"Hi am Hussein\") == 0"
	.align	3
.LC13:
	.string	"go for it"
	.align	3
.LC14:
	.string	"strcmp(output, \"go for it\") == 0"
	.align	3
.LC15:
	.string	"here"
	.align	3
.LC16:
	.string	"strcmp(output, \"\") == 0"
	.align	3
.LC17:
	.string	"here is"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem144.c:66: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp105, __stack_chk_guard
	sd	a4, -24(s0)	# tmp105, D.2165
	li	a4, 0	# tmp105
# problem144.c:69:     func0("This is a test", output);
	addi	a5,s0,-128	#, tmp83,
	mv	a1,a5	#, tmp83
	lla	a0,.LC0	#,
	call	func0		#
# problem144.c:70:     assert(strcmp(output, "is") == 0);
	addi	a5,s0,-128	#, tmp84,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp84
	call	strcmp@plt	#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L23	#, _1,,
# problem144.c:70:     assert(strcmp(output, "is") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L23:
# problem144.c:72:     func0("lets go for swimming", output);
	addi	a5,s0,-128	#, tmp86,
	mv	a1,a5	#, tmp86
	lla	a0,.LC4	#,
	call	func0		#
# problem144.c:73:     assert(strcmp(output, "go for") == 0);
	addi	a5,s0,-128	#, tmp87,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp87
	call	strcmp@plt	#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L24	#, _2,,
# problem144.c:73:     assert(strcmp(output, "go for") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,73		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L24:
# problem144.c:75:     func0("there is no place available here", output);
	addi	a5,s0,-128	#, tmp89,
	mv	a1,a5	#, tmp89
	lla	a0,.LC7	#,
	call	func0		#
# problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	addi	a5,s0,-128	#, tmp90,
	lla	a1,.LC8	#,
	mv	a0,a5	#, tmp90
	call	strcmp@plt	#
	mv	a5,a0	# tmp91,
	beq	a5,zero,.L25	#, _3,,
# problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,76		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L25:
# problem144.c:78:     func0("Hi I am Hussein", output);
	addi	a5,s0,-128	#, tmp92,
	mv	a1,a5	#, tmp92
	lla	a0,.LC10	#,
	call	func0		#
# problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	addi	a5,s0,-128	#, tmp93,
	lla	a1,.LC11	#,
	mv	a0,a5	#, tmp93
	call	strcmp@plt	#
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L26	#, _4,,
# problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,79		#,
	lla	a1,.LC2	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L26:
# problem144.c:81:     func0("go for it", output);
	addi	a5,s0,-128	#, tmp95,
	mv	a1,a5	#, tmp95
	lla	a0,.LC13	#,
	call	func0		#
# problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	addi	a5,s0,-128	#, tmp96,
	lla	a1,.LC13	#,
	mv	a0,a5	#, tmp96
	call	strcmp@plt	#
	mv	a5,a0	# tmp97,
	beq	a5,zero,.L27	#, _5,,
# problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,82		#,
	lla	a1,.LC2	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L27:
# problem144.c:84:     func0("here", output);
	addi	a5,s0,-128	#, tmp98,
	mv	a1,a5	#, tmp98
	lla	a0,.LC15	#,
	call	func0		#
# problem144.c:85:     assert(strcmp(output, "") == 0);
	lbu	a5,-128(s0)	# _20, MEM[(const unsigned char * {ref-all})&output]
	sext.w	a5,a5	# _6, _20
	beq	a5,zero,.L28	#, _6,,
# problem144.c:85:     assert(strcmp(output, "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,85		#,
	lla	a1,.LC2	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L28:
# problem144.c:87:     func0("here is", output);
	addi	a5,s0,-128	#, tmp99,
	mv	a1,a5	#, tmp99
	lla	a0,.LC17	#,
	call	func0		#
# problem144.c:88:     assert(strcmp(output, "is") == 0);
	addi	a5,s0,-128	#, tmp100,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp100
	call	strcmp@plt	#
	mv	a5,a0	# tmp101,
	beq	a5,zero,.L29	#, _7,,
# problem144.c:88:     assert(strcmp(output, "is") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,88		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L29:
# problem144.c:90:     return 0;
	li	a5,0		# _24,
# problem144.c:91: }
	mv	a4,a5	# <retval>, _24
	la	a5,__stack_chk_guard		# tmp103,
	ld	a3, -24(s0)	# tmp106, D.2165
	ld	a5, 0(a5)	# tmp104, __stack_chk_guard
	xor	a5, a3, a5	# tmp104, tmp106
	li	a3, 0	# tmp106
	beq	a5,zero,.L31	#, tmp104,,
	call	__stack_chk_fail@plt	#
.L31:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
