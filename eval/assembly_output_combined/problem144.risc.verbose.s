	.file	"problem144.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
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
	ld	a4,-56(s0)		# tmp166, sentence
	add	a5,a4,a5	# _1, _2, tmp166
	lbu	a5,0(a5)	# _3, *_2
# problem144.c:12:         if (sentence[i] != ' ') {
	mv	a4,a5	# tmp167, _3
	li	a5,32		# tmp168,
	beq	a4,a5,.L3	#, tmp167, tmp168,
# problem144.c:13:             word_len++;
	lw	a5,-36(s0)		# tmp171, word_len
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-36(s0)	# tmp169, word_len
	j	.L4		#
.L3:
# problem144.c:15:             if (word_len > 1) {
	lw	a5,-36(s0)		# tmp173, word_len
	sext.w	a4,a5	# tmp174, tmp172
	li	a5,1		# tmp175,
	ble	a4,a5,.L5	#, tmp174, tmp175,
# problem144.c:16:                 is_prime = true;
	li	a5,1		# tmp176,
	sb	a5,-37(s0)	# tmp176, is_prime
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	li	a5,2		# tmp177,
	sw	a5,-24(s0)	# tmp177, j
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	j	.L6		#
.L9:
# problem144.c:18:                     if (word_len % j == 0) {
	lw	a5,-36(s0)		# tmp180, word_len
	mv	a4,a5	# tmp179, tmp180
	lw	a5,-24(s0)		# tmp183, j
	remw	a5,a4,a5	# tmp182, tmp181, tmp179
	sext.w	a5,a5	# _4, tmp181
# problem144.c:18:                     if (word_len % j == 0) {
	bne	a5,zero,.L7	#, _4,,
# problem144.c:19:                         is_prime = false;
	sb	zero,-37(s0)	#, is_prime
# problem144.c:20:                         break;
	j	.L10		#
.L7:
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp186, j
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-24(s0)	# tmp184, j
.L6:
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp189, j
	mulw	a5,a5,a5	# tmp187, tmp188, tmp188
	sext.w	a4,a5	# _5, tmp187
# problem144.c:17:                 for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-36(s0)		# tmp191, word_len
	sext.w	a5,a5	# tmp192, tmp190
	bge	a5,a4,.L9	#, tmp192, tmp193,
	j	.L10		#
.L5:
# problem144.c:24:                 is_prime = false;
	sb	zero,-37(s0)	#, is_prime
.L10:
# problem144.c:27:             if (is_prime) {
	lbu	a5,-37(s0)	# tmp195, is_prime
	andi	a5,a5,0xff	# tmp196, tmp194
	beq	a5,zero,.L11	#, tmp196,,
# problem144.c:28:                 if (out_index > 0) {
	lw	a5,-32(s0)		# tmp198, out_index
	sext.w	a5,a5	# tmp199, tmp197
	ble	a5,zero,.L12	#, tmp199,,
# problem144.c:29:                     out[out_index++] = ' ';
	lw	a5,-32(s0)		# out_index.0_6, out_index
	addiw	a4,a5,1	#, tmp200, out_index.0_6
	sw	a4,-32(s0)	# tmp200, out_index
	mv	a4,a5	# _7, out_index.0_6
# problem144.c:29:                     out[out_index++] = ' ';
	ld	a5,-64(s0)		# tmp201, out
	add	a5,a5,a4	# _7, _8, tmp201
# problem144.c:29:                     out[out_index++] = ' ';
	li	a4,32		# tmp202,
	sb	a4,0(a5)	# tmp202, *_8
.L12:
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a5,-32(s0)		# _9, out_index
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	ld	a4,-64(s0)		# tmp203, out
	add	a3,a4,a5	# _9, _10, tmp203
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-28(s0)		# _11, i
	lw	a5,-36(s0)		# _12, word_len
	sub	a5,a4,a5	# _13, _11, _12
	ld	a4,-56(s0)		# tmp204, sentence
	add	a5,a4,a5	# _13, _14, tmp204
# problem144.c:31:                 memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-36(s0)		# _15, word_len
	mv	a2,a4	#, _15
	mv	a1,a5	#, _14
	mv	a0,a3	#, _10
	call	memcpy@plt	#
# problem144.c:32:                 out_index += word_len;
	lw	a5,-32(s0)		# tmp207, out_index
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-36(s0)		# tmp209, word_len
	addw	a5,a4,a5	# tmp208, tmp205, tmp206
	sw	a5,-32(s0)	# tmp205, out_index
.L11:
# problem144.c:34:             word_len = 0;
	sw	zero,-36(s0)	#, word_len
.L4:
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	lw	a5,-28(s0)		# tmp212, i
	addiw	a5,a5,1	#, tmp210, tmp211
	sw	a5,-28(s0)	# tmp210, i
.L2:
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	lw	a5,-28(s0)		# _16, i
	ld	a4,-56(s0)		# tmp213, sentence
	add	a5,a4,a5	# _16, _17, tmp213
	lbu	a5,0(a5)	# _18, *_17
# problem144.c:11:     for (i = 0; sentence[i] != '\0'; ++i) {
	bne	a5,zero,.L13	#, _18,,
# problem144.c:38:     if (word_len > 1) {
	lw	a5,-36(s0)		# tmp215, word_len
	sext.w	a4,a5	# tmp216, tmp214
	li	a5,1		# tmp217,
	ble	a4,a5,.L14	#, tmp216, tmp217,
# problem144.c:39:         is_prime = true;
	li	a5,1		# tmp218,
	sb	a5,-37(s0)	# tmp218, is_prime
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	li	a5,2		# tmp219,
	sw	a5,-24(s0)	# tmp219, j
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	j	.L15		#
.L18:
# problem144.c:41:             if (word_len % j == 0) {
	lw	a5,-36(s0)		# tmp222, word_len
	mv	a4,a5	# tmp221, tmp222
	lw	a5,-24(s0)		# tmp225, j
	remw	a5,a4,a5	# tmp224, tmp223, tmp221
	sext.w	a5,a5	# _19, tmp223
# problem144.c:41:             if (word_len % j == 0) {
	bne	a5,zero,.L16	#, _19,,
# problem144.c:42:                 is_prime = false;
	sb	zero,-37(s0)	#, is_prime
# problem144.c:43:                 break;
	j	.L19		#
.L16:
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp228, j
	addiw	a5,a5,1	#, tmp226, tmp227
	sw	a5,-24(s0)	# tmp226, j
.L15:
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-24(s0)		# tmp231, j
	mulw	a5,a5,a5	# tmp229, tmp230, tmp230
	sext.w	a4,a5	# _20, tmp229
# problem144.c:40:         for (j = 2; j * j <= word_len; ++j) {
	lw	a5,-36(s0)		# tmp233, word_len
	sext.w	a5,a5	# tmp234, tmp232
	bge	a5,a4,.L18	#, tmp234, tmp235,
	j	.L19		#
.L14:
# problem144.c:47:         is_prime = false;
	sb	zero,-37(s0)	#, is_prime
.L19:
# problem144.c:50:     if (is_prime) {
	lbu	a5,-37(s0)	# tmp237, is_prime
	andi	a5,a5,0xff	# tmp238, tmp236
	beq	a5,zero,.L20	#, tmp238,,
# problem144.c:51:         if (out_index > 0) {
	lw	a5,-32(s0)		# tmp240, out_index
	sext.w	a5,a5	# tmp241, tmp239
	ble	a5,zero,.L21	#, tmp241,,
# problem144.c:52:             out[out_index++] = ' ';
	lw	a5,-32(s0)		# out_index.1_21, out_index
	addiw	a4,a5,1	#, tmp242, out_index.1_21
	sw	a4,-32(s0)	# tmp242, out_index
	mv	a4,a5	# _22, out_index.1_21
# problem144.c:52:             out[out_index++] = ' ';
	ld	a5,-64(s0)		# tmp243, out
	add	a5,a5,a4	# _22, _23, tmp243
# problem144.c:52:             out[out_index++] = ' ';
	li	a4,32		# tmp244,
	sb	a4,0(a5)	# tmp244, *_23
.L21:
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a5,-32(s0)		# _24, out_index
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	ld	a4,-64(s0)		# tmp245, out
	add	a3,a4,a5	# _24, _25, tmp245
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-28(s0)		# _26, i
	lw	a5,-36(s0)		# _27, word_len
	sub	a5,a4,a5	# _28, _26, _27
	ld	a4,-56(s0)		# tmp246, sentence
	add	a5,a4,a5	# _28, _29, tmp246
# problem144.c:54:         memcpy(out + out_index, sentence + i - word_len, word_len);
	lw	a4,-36(s0)		# _30, word_len
	mv	a2,a4	#, _30
	mv	a1,a5	#, _29
	mv	a0,a3	#, _25
	call	memcpy@plt	#
# problem144.c:55:         out_index += word_len;
	lw	a5,-32(s0)		# tmp249, out_index
	mv	a4,a5	# tmp248, tmp249
	lw	a5,-36(s0)		# tmp251, word_len
	addw	a5,a4,a5	# tmp250, tmp247, tmp248
	sw	a5,-32(s0)	# tmp247, out_index
.L20:
# problem144.c:58:     out[out_index] = '\0';
	lw	a5,-32(s0)		# _31, out_index
	ld	a4,-64(s0)		# tmp252, out
	add	a5,a4,a5	# _31, _32, tmp252
# problem144.c:58:     out[out_index] = '\0';
	sb	zero,0(a5)	#, *_32
# problem144.c:59: }
	nop	
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem144.c:66: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp167, __stack_chk_guard
	sd	a4, -24(s0)	# tmp167, D.3010
	li	a4, 0	# tmp167
# problem144.c:69:     func0("This is a test", output);
	addi	a5,s0,-128	#, tmp145,
	mv	a1,a5	#, tmp145
	lla	a0,.LC0	#,
	call	func0		#
# problem144.c:70:     assert(strcmp(output, "is") == 0);
	addi	a5,s0,-128	#, tmp146,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp146
	call	strcmp@plt	#
	mv	a5,a0	# tmp147,
# problem144.c:70:     assert(strcmp(output, "is") == 0);
	beq	a5,zero,.L23	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L23:
# problem144.c:72:     func0("lets go for swimming", output);
	addi	a5,s0,-128	#, tmp148,
	mv	a1,a5	#, tmp148
	lla	a0,.LC4	#,
	call	func0		#
# problem144.c:73:     assert(strcmp(output, "go for") == 0);
	addi	a5,s0,-128	#, tmp149,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp149
	call	strcmp@plt	#
	mv	a5,a0	# tmp150,
# problem144.c:73:     assert(strcmp(output, "go for") == 0);
	beq	a5,zero,.L24	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,73		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L24:
# problem144.c:75:     func0("there is no place available here", output);
	addi	a5,s0,-128	#, tmp151,
	mv	a1,a5	#, tmp151
	lla	a0,.LC7	#,
	call	func0		#
# problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	addi	a5,s0,-128	#, tmp152,
	lla	a1,.LC8	#,
	mv	a0,a5	#, tmp152
	call	strcmp@plt	#
	mv	a5,a0	# tmp153,
# problem144.c:76:     assert(strcmp(output, "there is no place") == 0);
	beq	a5,zero,.L25	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,76		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L25:
# problem144.c:78:     func0("Hi I am Hussein", output);
	addi	a5,s0,-128	#, tmp154,
	mv	a1,a5	#, tmp154
	lla	a0,.LC10	#,
	call	func0		#
# problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	addi	a5,s0,-128	#, tmp155,
	lla	a1,.LC11	#,
	mv	a0,a5	#, tmp155
	call	strcmp@plt	#
	mv	a5,a0	# tmp156,
# problem144.c:79:     assert(strcmp(output, "Hi am Hussein") == 0);
	beq	a5,zero,.L26	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,79		#,
	lla	a1,.LC2	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L26:
# problem144.c:81:     func0("go for it", output);
	addi	a5,s0,-128	#, tmp157,
	mv	a1,a5	#, tmp157
	lla	a0,.LC13	#,
	call	func0		#
# problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	addi	a5,s0,-128	#, tmp158,
	lla	a1,.LC13	#,
	mv	a0,a5	#, tmp158
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
# problem144.c:82:     assert(strcmp(output, "go for it") == 0);
	beq	a5,zero,.L27	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,82		#,
	lla	a1,.LC2	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L27:
# problem144.c:84:     func0("here", output);
	addi	a5,s0,-128	#, tmp160,
	mv	a1,a5	#, tmp160
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
	addi	a5,s0,-128	#, tmp161,
	mv	a1,a5	#, tmp161
	lla	a0,.LC17	#,
	call	func0		#
# problem144.c:88:     assert(strcmp(output, "is") == 0);
	addi	a5,s0,-128	#, tmp162,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp162
	call	strcmp@plt	#
	mv	a5,a0	# tmp163,
# problem144.c:88:     assert(strcmp(output, "is") == 0);
	beq	a5,zero,.L29	#, _7,,
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
	la	a5,__stack_chk_guard		# tmp165,
	ld	a3, -24(s0)	# tmp168, D.3010
	ld	a5, 0(a5)	# tmp166, __stack_chk_guard
	xor	a5, a3, a5	# tmp166, tmp168
	li	a3, 0	# tmp168
	beq	a5,zero,.L31	#, tmp166,,
	call	__stack_chk_fail@plt	#
.L31:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
