	.file	"problem112.c"
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
	addi	sp,sp,-192	#,,
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	addi	s0,sp,192	#,,
	sd	a0,-168(s0)	# test, test
	sd	a1,-176(s0)	# freq, freq
	sd	a2,-184(s0)	# max_count, max_count
	sd	a3,-192(s0)	# letters, letters
# problem112.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	la	a5,__stack_chk_guard		# tmp91,
	ld	a4, 0(a5)	# tmp141, __stack_chk_guard
	sd	a4, -24(s0)	# tmp141, D.2182
	li	a4, 0	# tmp141
# problem112.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
	sd	zero,-128(s0)	#, local_freq
	sd	zero,-120(s0)	#, local_freq
	sd	zero,-112(s0)	#, local_freq
	sd	zero,-104(s0)	#, local_freq
	sd	zero,-96(s0)	#, local_freq
	sd	zero,-88(s0)	#, local_freq
	sd	zero,-80(s0)	#, local_freq
	sd	zero,-72(s0)	#, local_freq
	sd	zero,-64(s0)	#, local_freq
	sd	zero,-56(s0)	#, local_freq
	sd	zero,-48(s0)	#, local_freq
	sd	zero,-40(s0)	#, local_freq
	sd	zero,-32(s0)	#, local_freq
# problem112.c:6:     int local_max = 0;
	sw	zero,-152(s0)	#, local_max
# problem112.c:7:     const char* ptr = test;
	ld	a5,-168(s0)		# tmp92, test
	sd	a5,-136(s0)	# tmp92, ptr
# problem112.c:8:     int idx = 0;
	sw	zero,-148(s0)	#, idx
# problem112.c:10:     while (*ptr) {
	j	.L2		#
.L4:
# problem112.c:11:         if (*ptr != ' ') {
	ld	a5,-136(s0)		# tmp93, ptr
	lbu	a5,0(a5)	# _1, *ptr_22
# problem112.c:11:         if (*ptr != ' ') {
	mv	a4,a5	# tmp94, _1
	li	a5,32		# tmp95,
	beq	a4,a5,.L3	#, tmp94, tmp95,
# problem112.c:12:             int letter_index = *ptr - 'a';
	ld	a5,-136(s0)		# tmp96, ptr
	lbu	a5,0(a5)	# _2, *ptr_22
	sext.w	a5,a5	# _3, _2
# problem112.c:12:             int letter_index = *ptr - 'a';
	addiw	a5,a5,-97	#, tmp97, _3
	sw	a5,-140(s0)	# tmp97, letter_index
# problem112.c:13:             local_freq[letter_index]++;
	lw	a5,-140(s0)		# tmp98, letter_index
	slli	a5,a5,2	#, tmp99, tmp98
	addi	a5,a5,-16	#, tmp145, tmp99
	add	a5,a5,s0	#, tmp99, tmp145
	lw	a5,-112(a5)		# _4, local_freq[letter_index_47]
# problem112.c:13:             local_freq[letter_index]++;
	addiw	a5,a5,1	#, tmp100, _4
	sext.w	a4,a5	# _5, tmp100
	lw	a5,-140(s0)		# tmp101, letter_index
	slli	a5,a5,2	#, tmp102, tmp101
	addi	a5,a5,-16	#, tmp146, tmp102
	add	a5,a5,s0	#, tmp102, tmp146
	sw	a4,-112(a5)	# _5, local_freq[letter_index_47]
# problem112.c:14:             if (local_freq[letter_index] > local_max) {
	lw	a5,-140(s0)		# tmp103, letter_index
	slli	a5,a5,2	#, tmp104, tmp103
	addi	a5,a5,-16	#, tmp147, tmp104
	add	a5,a5,s0	#, tmp104, tmp147
	lw	a4,-112(a5)		# _6, local_freq[letter_index_47]
# problem112.c:14:             if (local_freq[letter_index] > local_max) {
	lw	a5,-152(s0)		# tmp106, local_max
	sext.w	a5,a5	# tmp107, tmp105
	bge	a5,a4,.L3	#, tmp107, tmp108,
# problem112.c:15:                 local_max = local_freq[letter_index];
	lw	a5,-140(s0)		# tmp109, letter_index
	slli	a5,a5,2	#, tmp110, tmp109
	addi	a5,a5,-16	#, tmp148, tmp110
	add	a5,a5,s0	#, tmp110, tmp148
	lw	a5,-112(a5)		# tmp111, local_freq[letter_index_47]
	sw	a5,-152(s0)	# tmp111, local_max
.L3:
# problem112.c:18:         ptr++;
	ld	a5,-136(s0)		# tmp113, ptr
	addi	a5,a5,1	#, tmp112, tmp113
	sd	a5,-136(s0)	# tmp112, ptr
.L2:
# problem112.c:10:     while (*ptr) {
	ld	a5,-136(s0)		# tmp114, ptr
	lbu	a5,0(a5)	# _7, *ptr_22
	bne	a5,zero,.L4	#, _7,,
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	sw	zero,-144(s0)	#, i
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	j	.L5		#
.L7:
# problem112.c:22:         freq[i] = local_freq[i];
	lw	a5,-144(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-176(s0)		# tmp115, freq
	add	a4,a4,a5	# _9, _10, tmp115
# problem112.c:22:         freq[i] = local_freq[i];
	lw	a5,-144(s0)		# tmp116, i
	slli	a5,a5,2	#, tmp117, tmp116
	addi	a5,a5,-16	#, tmp149, tmp117
	add	a5,a5,s0	#, tmp117, tmp149
	lw	a5,-112(a5)		# _11, local_freq[i_25]
# problem112.c:22:         freq[i] = local_freq[i];
	sw	a5,0(a4)	# _11, *_10
# problem112.c:23:         if (local_freq[i] == local_max) {
	lw	a5,-144(s0)		# tmp118, i
	slli	a5,a5,2	#, tmp119, tmp118
	addi	a5,a5,-16	#, tmp150, tmp119
	add	a5,a5,s0	#, tmp119, tmp150
	lw	a4,-112(a5)		# _12, local_freq[i_25]
# problem112.c:23:         if (local_freq[i] == local_max) {
	lw	a5,-152(s0)		# tmp121, local_max
	sext.w	a5,a5	# tmp122, tmp120
	bne	a5,a4,.L6	#, tmp122, tmp123,
# problem112.c:24:             letters[idx++] = 'a' + i;
	lw	a5,-144(s0)		# tmp125, i
	andi	a4,a5,0xff	# _13, tmp124
# problem112.c:24:             letters[idx++] = 'a' + i;
	lw	a5,-148(s0)		# idx.0_14, idx
	addiw	a3,a5,1	#, tmp126, idx.0_14
	sw	a3,-148(s0)	# tmp126, idx
	mv	a3,a5	# _15, idx.0_14
# problem112.c:24:             letters[idx++] = 'a' + i;
	ld	a5,-192(s0)		# tmp127, letters
	add	a5,a5,a3	# _15, _16, tmp127
# problem112.c:24:             letters[idx++] = 'a' + i;
	addiw	a4,a4,97	#, tmp128, _13
	andi	a4,a4,0xff	# _17, tmp128
# problem112.c:24:             letters[idx++] = 'a' + i;
	sb	a4,0(a5)	# _17, *_16
.L6:
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	lw	a5,-144(s0)		# tmp131, i
	addiw	a5,a5,1	#, tmp129, tmp130
	sw	a5,-144(s0)	# tmp129, i
.L5:
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	lw	a5,-144(s0)		# tmp133, i
	sext.w	a4,a5	# tmp134, tmp132
	li	a5,25		# tmp135,
	ble	a4,a5,.L7	#, tmp134, tmp135,
# problem112.c:28:     *max_count = local_max;
	ld	a5,-184(s0)		# tmp136, max_count
	lw	a4,-152(s0)		# tmp137, local_max
	sw	a4,0(a5)	# tmp137, *max_count_37(D)
# problem112.c:29:     letters[idx] = '\0';
	lw	a5,-148(s0)		# _18, idx
	ld	a4,-192(s0)		# tmp138, letters
	add	a5,a4,a5	# _18, _19, tmp138
# problem112.c:29:     letters[idx] = '\0';
	sb	zero,0(a5)	#, *_19
# problem112.c:30: }
	nop	
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, -24(s0)	# tmp142, D.2182
	ld	a5, 0(a5)	# tmp140, __stack_chk_guard
	xor	a5, a4, a5	# tmp140, tmp142
	li	a4, 0	# tmp142
	beq	a5,zero,.L8	#, tmp140,,
	call	__stack_chk_fail@plt	#
.L8:
	ld	ra,184(sp)		#,
	ld	s0,176(sp)		#,
	addi	sp,sp,192	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-80	#,,
	sd	s0,72(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-40(s0)	# freq1, freq1
	sd	a1,-48(s0)	# letters1, letters1
	sd	a3,-64(s0)	# freq2, freq2
	sd	a4,-72(s0)	# letters2, letters2
	mv	a4,a5	# tmp114, max_count2
	mv	a5,a2	# tmp113, tmp112
	sw	a5,-52(s0)	# tmp113, max_count1
	mv	a5,a4	# tmp115, tmp114
	sw	a5,-56(s0)	# tmp115, max_count2
# problem112.c:40:     if (max_count1 != max_count2) return false;
	lw	a5,-52(s0)		# tmp117, max_count1
	mv	a4,a5	# tmp116, tmp117
	lw	a5,-56(s0)		# tmp119, max_count2
	sext.w	a4,a4	# tmp120, tmp116
	sext.w	a5,a5	# tmp121, tmp118
	beq	a4,a5,.L10	#, tmp120, tmp121,
# problem112.c:40:     if (max_count1 != max_count2) return false;
	li	a5,0		# _41,
	j	.L11		#
.L10:
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	sw	zero,-24(s0)	#, i
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	j	.L12		#
.L14:
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	lw	a5,-24(s0)		# _1, i
	ld	a4,-48(s0)		# tmp122, letters1
	add	a5,a4,a5	# _1, _2, tmp122
	lbu	a5,0(a5)	# _3, *_2
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	slli	a5,a5,2	#, _5, _4
	addi	a5,a5,-388	#, _6, _5
	ld	a4,-40(s0)		# tmp123, freq1
	add	a5,a4,a5	# _6, _7, tmp123
	lw	a3,0(a5)		# _8, *_7
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	lw	a5,-24(s0)		# _9, i
	ld	a4,-48(s0)		# tmp124, letters1
	add	a5,a4,a5	# _9, _10, tmp124
	lbu	a5,0(a5)	# _11, *_10
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	slli	a5,a5,2	#, _13, _12
	addi	a5,a5,-388	#, _14, _13
	ld	a4,-64(s0)		# tmp125, freq2
	add	a5,a4,a5	# _14, _15, tmp125
	lw	a5,0(a5)		# _16, *_15
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	mv	a4,a3	# tmp126, _8
	beq	a4,a5,.L13	#, tmp126, tmp127,
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	li	a5,0		# _41,
	j	.L11		#
.L13:
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	lw	a5,-24(s0)		# tmp130, i
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-24(s0)	# tmp128, i
.L12:
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	lw	a5,-24(s0)		# _17, i
	ld	a4,-48(s0)		# tmp131, letters1
	add	a5,a4,a5	# _17, _18, tmp131
	lbu	a5,0(a5)	# _19, *_18
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	bne	a5,zero,.L14	#, _19,,
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	sw	zero,-20(s0)	#, i
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	j	.L15		#
.L17:
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	lw	a5,-20(s0)		# _20, i
	ld	a4,-72(s0)		# tmp132, letters2
	add	a5,a4,a5	# _20, _21, tmp132
	lbu	a5,0(a5)	# _22, *_21
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	slli	a5,a5,2	#, _24, _23
	addi	a5,a5,-388	#, _25, _24
	ld	a4,-64(s0)		# tmp133, freq2
	add	a5,a4,a5	# _25, _26, tmp133
	lw	a3,0(a5)		# _27, *_26
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	lw	a5,-20(s0)		# _28, i
	ld	a4,-72(s0)		# tmp134, letters2
	add	a5,a4,a5	# _28, _29, tmp134
	lbu	a5,0(a5)	# _30, *_29
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	slli	a5,a5,2	#, _32, _31
	addi	a5,a5,-388	#, _33, _32
	ld	a4,-40(s0)		# tmp135, freq1
	add	a5,a4,a5	# _33, _34, tmp135
	lw	a5,0(a5)		# _35, *_34
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	mv	a4,a3	# tmp136, _27
	beq	a4,a5,.L16	#, tmp136, tmp137,
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	li	a5,0		# _41,
	j	.L11		#
.L16:
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	lw	a5,-20(s0)		# tmp140, i
	addiw	a5,a5,1	#, tmp138, tmp139
	sw	a5,-20(s0)	# tmp138, i
.L15:
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	lw	a5,-20(s0)		# _36, i
	ld	a4,-72(s0)		# tmp141, letters2
	add	a5,a4,a5	# _36, _37, tmp141
	lbu	a5,0(a5)	# _38, *_37
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	bne	a5,zero,.L17	#, _38,,
# problem112.c:47:     return true;
	li	a5,1		# _41,
.L11:
# problem112.c:48: }
	mv	a0,a5	#, <retval>
	ld	s0,72(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"a b b a"
	.align	3
.LC1:
	.string	"ab"
	.align	3
.LC2:
	.string	"problem112.c"
	.align	3
.LC3:
	.string	"issame(counts1, letters1, max_count1, counts2, \"ab\", 2)"
	.align	3
.LC4:
	.string	"a b c a b"
	.align	3
.LC5:
	.string	"a b c d g"
	.align	3
.LC6:
	.string	"abcdg"
	.align	3
.LC7:
	.string	"issame(counts1, letters1, max_count1, counts2, \"abcdg\", 1)"
	.align	3
.LC8:
	.string	"r t g"
	.align	3
.LC9:
	.string	"rtg"
	.align	3
.LC10:
	.string	"issame(counts1, letters1, max_count1, counts2, \"rtg\", 1)"
	.align	3
.LC11:
	.string	"b b b b a"
	.align	3
.LC12:
	.string	"b"
	.align	3
.LC13:
	.string	"issame(counts1, letters1, max_count1, counts2, \"b\", 4)"
	.align	3
.LC14:
	.string	"a"
	.align	3
.LC15:
	.string	"issame(counts1, letters1, max_count1, counts2, \"a\", 1)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-272	#,,
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	addi	s0,sp,272	#,,
# problem112.c:50: int main() {
	la	a5,__stack_chk_guard		# tmp96,
	ld	a4, 0(a5)	# tmp165, __stack_chk_guard
	sd	a4, -24(s0)	# tmp165, D.2186
	li	a4, 0	# tmp165
# problem112.c:55:     func0("a b b a", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp97,
	addi	a4,s0,-268	#, tmp98,
	addi	a5,s0,-264	#, tmp99,
	mv	a2,a4	#, tmp98
	mv	a1,a5	#, tmp99
	lla	a0,.LC0	#,
	call	func0		#
# problem112.c:56:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp100,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp100
	call	memset@plt	#
# problem112.c:57:     counts2['a' - 'a'] = 2;
	li	a5,2		# tmp101,
	sw	a5,-160(s0)	# tmp101, counts2[0]
# problem112.c:58:     counts2['b' - 'a'] = 2;
	li	a5,2		# tmp102,
	sw	a5,-156(s0)	# tmp102, counts2[1]
# problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	lw	a2,-268(s0)		# max_count1.1_1, max_count1
	addi	a3,s0,-160	#, tmp103,
	addi	a1,s0,-56	#, tmp104,
	addi	a0,s0,-264	#, tmp105,
	li	a5,2		#,
	lla	a4,.LC1	#,
	call	issame		#
	mv	a5,a0	# tmp106,
	bne	a5,zero,.L19	#, _2,,
# problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L19:
# problem112.c:61:     func0("a b c a b", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp107,
	addi	a4,s0,-268	#, tmp108,
	addi	a5,s0,-264	#, tmp109,
	mv	a2,a4	#, tmp108
	mv	a1,a5	#, tmp109
	lla	a0,.LC4	#,
	call	func0		#
# problem112.c:62:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp110,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp110
	call	memset@plt	#
# problem112.c:63:     counts2['a' - 'a'] = 2;
	li	a5,2		# tmp111,
	sw	a5,-160(s0)	# tmp111, counts2[0]
# problem112.c:64:     counts2['b' - 'a'] = 2;
	li	a5,2		# tmp112,
	sw	a5,-156(s0)	# tmp112, counts2[1]
# problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	lw	a2,-268(s0)		# max_count1.2_3, max_count1
	addi	a3,s0,-160	#, tmp113,
	addi	a1,s0,-56	#, tmp114,
	addi	a0,s0,-264	#, tmp115,
	li	a5,2		#,
	lla	a4,.LC1	#,
	call	issame		#
	mv	a5,a0	# tmp116,
	bne	a5,zero,.L20	#, _4,,
# problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L20:
# problem112.c:67:     func0("a b c d g", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp117,
	addi	a4,s0,-268	#, tmp118,
	addi	a5,s0,-264	#, tmp119,
	mv	a2,a4	#, tmp118
	mv	a1,a5	#, tmp119
	lla	a0,.LC5	#,
	call	func0		#
# problem112.c:68:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp120,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp120
	call	memset@plt	#
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	li	a5,1		# tmp121,
	sw	a5,-136(s0)	# tmp121, counts2[6]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	lw	a5,-136(s0)		# _5, counts2[6]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	sw	a5,-148(s0)	# _5, counts2[3]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	lw	a5,-148(s0)		# _6, counts2[3]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	sw	a5,-152(s0)	# _6, counts2[2]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	lw	a5,-152(s0)		# _7, counts2[2]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	sw	a5,-156(s0)	# _7, counts2[1]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	lw	a5,-156(s0)		# _8, counts2[1]
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	sw	a5,-160(s0)	# _8, counts2[0]
# problem112.c:70:     assert(issame(counts1, letters1, max_count1, counts2, "abcdg", 1));
	lw	a2,-268(s0)		# max_count1.3_9, max_count1
	addi	a3,s0,-160	#, tmp122,
	addi	a1,s0,-56	#, tmp123,
	addi	a0,s0,-264	#, tmp124,
	li	a5,1		#,
	lla	a4,.LC6	#,
	call	issame		#
	mv	a5,a0	# tmp125,
	bne	a5,zero,.L21	#, _10,,
# problem112.c:70:     assert(issame(counts1, letters1, max_count1, counts2, "abcdg", 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L21:
# problem112.c:72:     func0("r t g", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp126,
	addi	a4,s0,-268	#, tmp127,
	addi	a5,s0,-264	#, tmp128,
	mv	a2,a4	#, tmp127
	mv	a1,a5	#, tmp128
	lla	a0,.LC8	#,
	call	func0		#
# problem112.c:73:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp129,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp129
	call	memset@plt	#
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	li	a5,1		# tmp130,
	sw	a5,-136(s0)	# tmp130, counts2[6]
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	lw	a5,-136(s0)		# _11, counts2[6]
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	sw	a5,-84(s0)	# _11, counts2[19]
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	lw	a5,-84(s0)		# _12, counts2[19]
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	sw	a5,-92(s0)	# _12, counts2[17]
# problem112.c:75:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	lw	a2,-268(s0)		# max_count1.4_13, max_count1
	addi	a3,s0,-160	#, tmp131,
	addi	a1,s0,-56	#, tmp132,
	addi	a0,s0,-264	#, tmp133,
	li	a5,1		#,
	lla	a4,.LC9	#,
	call	issame		#
	mv	a5,a0	# tmp134,
	bne	a5,zero,.L22	#, _14,,
# problem112.c:75:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC2	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L22:
# problem112.c:77:     func0("b b b b a", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp135,
	addi	a4,s0,-268	#, tmp136,
	addi	a5,s0,-264	#, tmp137,
	mv	a2,a4	#, tmp136
	mv	a1,a5	#, tmp137
	lla	a0,.LC11	#,
	call	func0		#
# problem112.c:78:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp138,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp138
	call	memset@plt	#
# problem112.c:79:     counts2['b' - 'a'] = 4;
	li	a5,4		# tmp139,
	sw	a5,-156(s0)	# tmp139, counts2[1]
# problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	lw	a2,-268(s0)		# max_count1.5_15, max_count1
	addi	a3,s0,-160	#, tmp140,
	addi	a1,s0,-56	#, tmp141,
	addi	a0,s0,-264	#, tmp142,
	li	a5,4		#,
	lla	a4,.LC12	#,
	call	issame		#
	mv	a5,a0	# tmp143,
	bne	a5,zero,.L23	#, _16,,
# problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,80		#,
	lla	a1,.LC2	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L23:
# problem112.c:82:     func0("r t g", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp144,
	addi	a4,s0,-268	#, tmp145,
	addi	a5,s0,-264	#, tmp146,
	mv	a2,a4	#, tmp145
	mv	a1,a5	#, tmp146
	lla	a0,.LC8	#,
	call	func0		#
# problem112.c:83:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp147,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp147
	call	memset@plt	#
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	li	a5,1		# tmp148,
	sw	a5,-136(s0)	# tmp148, counts2[6]
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	lw	a5,-136(s0)		# _17, counts2[6]
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	sw	a5,-84(s0)	# _17, counts2[19]
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	lw	a5,-84(s0)		# _18, counts2[19]
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	sw	a5,-92(s0)	# _18, counts2[17]
# problem112.c:85:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	lw	a2,-268(s0)		# max_count1.6_19, max_count1
	addi	a3,s0,-160	#, tmp149,
	addi	a1,s0,-56	#, tmp150,
	addi	a0,s0,-264	#, tmp151,
	li	a5,1		#,
	lla	a4,.LC9	#,
	call	issame		#
	mv	a5,a0	# tmp152,
	bne	a5,zero,.L24	#, _20,,
# problem112.c:85:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,85		#,
	lla	a1,.LC2	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L24:
# problem112.c:87:     func0("a", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp153,
	addi	a4,s0,-268	#, tmp154,
	addi	a5,s0,-264	#, tmp155,
	mv	a2,a4	#, tmp154
	mv	a1,a5	#, tmp155
	lla	a0,.LC14	#,
	call	func0		#
# problem112.c:88:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp156,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp156
	call	memset@plt	#
# problem112.c:89:     counts2['a' - 'a'] = 1;
	li	a5,1		# tmp157,
	sw	a5,-160(s0)	# tmp157, counts2[0]
# problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	lw	a2,-268(s0)		# max_count1.7_21, max_count1
	addi	a3,s0,-160	#, tmp158,
	addi	a1,s0,-56	#, tmp159,
	addi	a0,s0,-264	#, tmp160,
	li	a5,1		#,
	lla	a4,.LC14	#,
	call	issame		#
	mv	a5,a0	# tmp161,
	bne	a5,zero,.L25	#, _22,,
# problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,90		#,
	lla	a1,.LC2	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L25:
# problem112.c:92:     return 0;
	li	a5,0		# _69,
# problem112.c:93: }
	mv	a4,a5	# <retval>, _69
	la	a5,__stack_chk_guard		# tmp163,
	ld	a3, -24(s0)	# tmp166, D.2186
	ld	a5, 0(a5)	# tmp164, __stack_chk_guard
	xor	a5, a3, a5	# tmp164, tmp166
	li	a3, 0	# tmp166
	beq	a5,zero,.L27	#, tmp164,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	ld	s0,256(sp)		#,
	addi	sp,sp,272	#,,
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
