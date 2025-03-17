	.file	"problem112.c"
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
	addi	sp,sp,-192	#,,
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-168(s0)	# test, test
	sd	a1,-176(s0)	# freq, freq
	sd	a2,-184(s0)	# max_count, max_count
	sd	a3,-192(s0)	# letters, letters
# problem112.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	la	a5,__stack_chk_guard		# tmp153,
	ld	a4, 0(a5)	# tmp203, __stack_chk_guard
	sd	a4, -24(s0)	# tmp203, D.3027
	li	a4, 0	# tmp203
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
	ld	a5,-168(s0)		# tmp154, test
	sd	a5,-136(s0)	# tmp154, ptr
# problem112.c:8:     int idx = 0;
	sw	zero,-148(s0)	#, idx
# problem112.c:10:     while (*ptr) {
	j	.L2		#
.L4:
# problem112.c:11:         if (*ptr != ' ') {
	ld	a5,-136(s0)		# tmp155, ptr
	lbu	a5,0(a5)	# _1, *ptr_22
# problem112.c:11:         if (*ptr != ' ') {
	mv	a4,a5	# tmp156, _1
	li	a5,32		# tmp157,
	beq	a4,a5,.L3	#, tmp156, tmp157,
# problem112.c:12:             int letter_index = *ptr - 'a';
	ld	a5,-136(s0)		# tmp158, ptr
	lbu	a5,0(a5)	# _2, *ptr_22
	sext.w	a5,a5	# _3, _2
# problem112.c:12:             int letter_index = *ptr - 'a';
	addiw	a5,a5,-97	#, tmp159, _3
	sw	a5,-140(s0)	# tmp159, letter_index
# problem112.c:13:             local_freq[letter_index]++;
	lw	a5,-140(s0)		# tmp160, letter_index
	slli	a5,a5,2	#, tmp161, tmp160
	addi	a5,a5,-16	#, tmp207, tmp161
	add	a5,a5,s0	#, tmp161, tmp207
	lw	a5,-112(a5)		# _4, local_freq[letter_index_47]
# problem112.c:13:             local_freq[letter_index]++;
	addiw	a5,a5,1	#, tmp162, _4
	sext.w	a4,a5	# _5, tmp162
	lw	a5,-140(s0)		# tmp163, letter_index
	slli	a5,a5,2	#, tmp164, tmp163
	addi	a5,a5,-16	#, tmp208, tmp164
	add	a5,a5,s0	#, tmp164, tmp208
	sw	a4,-112(a5)	# _5, local_freq[letter_index_47]
# problem112.c:14:             if (local_freq[letter_index] > local_max) {
	lw	a5,-140(s0)		# tmp165, letter_index
	slli	a5,a5,2	#, tmp166, tmp165
	addi	a5,a5,-16	#, tmp209, tmp166
	add	a5,a5,s0	#, tmp166, tmp209
	lw	a4,-112(a5)		# _6, local_freq[letter_index_47]
# problem112.c:14:             if (local_freq[letter_index] > local_max) {
	lw	a5,-152(s0)		# tmp168, local_max
	sext.w	a5,a5	# tmp169, tmp167
	bge	a5,a4,.L3	#, tmp169, tmp170,
# problem112.c:15:                 local_max = local_freq[letter_index];
	lw	a5,-140(s0)		# tmp171, letter_index
	slli	a5,a5,2	#, tmp172, tmp171
	addi	a5,a5,-16	#, tmp210, tmp172
	add	a5,a5,s0	#, tmp172, tmp210
	lw	a5,-112(a5)		# tmp173, local_freq[letter_index_47]
	sw	a5,-152(s0)	# tmp173, local_max
.L3:
# problem112.c:18:         ptr++;
	ld	a5,-136(s0)		# tmp175, ptr
	addi	a5,a5,1	#, tmp174, tmp175
	sd	a5,-136(s0)	# tmp174, ptr
.L2:
# problem112.c:10:     while (*ptr) {
	ld	a5,-136(s0)		# tmp176, ptr
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
	ld	a4,-176(s0)		# tmp177, freq
	add	a4,a4,a5	# _9, _10, tmp177
# problem112.c:22:         freq[i] = local_freq[i];
	lw	a5,-144(s0)		# tmp178, i
	slli	a5,a5,2	#, tmp179, tmp178
	addi	a5,a5,-16	#, tmp211, tmp179
	add	a5,a5,s0	#, tmp179, tmp211
	lw	a5,-112(a5)		# _11, local_freq[i_25]
# problem112.c:22:         freq[i] = local_freq[i];
	sw	a5,0(a4)	# _11, *_10
# problem112.c:23:         if (local_freq[i] == local_max) {
	lw	a5,-144(s0)		# tmp180, i
	slli	a5,a5,2	#, tmp181, tmp180
	addi	a5,a5,-16	#, tmp212, tmp181
	add	a5,a5,s0	#, tmp181, tmp212
	lw	a4,-112(a5)		# _12, local_freq[i_25]
# problem112.c:23:         if (local_freq[i] == local_max) {
	lw	a5,-152(s0)		# tmp183, local_max
	sext.w	a5,a5	# tmp184, tmp182
	bne	a5,a4,.L6	#, tmp184, tmp185,
# problem112.c:24:             letters[idx++] = 'a' + i;
	lw	a5,-144(s0)		# tmp187, i
	andi	a4,a5,0xff	# _13, tmp186
# problem112.c:24:             letters[idx++] = 'a' + i;
	lw	a5,-148(s0)		# idx.0_14, idx
	addiw	a3,a5,1	#, tmp188, idx.0_14
	sw	a3,-148(s0)	# tmp188, idx
	mv	a3,a5	# _15, idx.0_14
# problem112.c:24:             letters[idx++] = 'a' + i;
	ld	a5,-192(s0)		# tmp189, letters
	add	a5,a5,a3	# _15, _16, tmp189
# problem112.c:24:             letters[idx++] = 'a' + i;
	addiw	a4,a4,97	#, tmp190, _13
	andi	a4,a4,0xff	# _17, tmp190
# problem112.c:24:             letters[idx++] = 'a' + i;
	sb	a4,0(a5)	# _17, *_16
.L6:
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	lw	a5,-144(s0)		# tmp193, i
	addiw	a5,a5,1	#, tmp191, tmp192
	sw	a5,-144(s0)	# tmp191, i
.L5:
# problem112.c:21:     for (int i = 0; i < 26; i++) {
	lw	a5,-144(s0)		# tmp195, i
	sext.w	a4,a5	# tmp196, tmp194
	li	a5,25		# tmp197,
	ble	a4,a5,.L7	#, tmp196, tmp197,
# problem112.c:28:     *max_count = local_max;
	ld	a5,-184(s0)		# tmp198, max_count
	lw	a4,-152(s0)		# tmp199, local_max
	sw	a4,0(a5)	# tmp199, *max_count_37(D)
# problem112.c:29:     letters[idx] = '\0';
	lw	a5,-148(s0)		# _18, idx
	ld	a4,-192(s0)		# tmp200, letters
	add	a5,a4,a5	# _18, _19, tmp200
# problem112.c:29:     letters[idx] = '\0';
	sb	zero,0(a5)	#, *_19
# problem112.c:30: }
	nop	
	la	a5,__stack_chk_guard		# tmp201,
	ld	a4, -24(s0)	# tmp204, D.3027
	ld	a5, 0(a5)	# tmp202, __stack_chk_guard
	xor	a5, a4, a5	# tmp202, tmp204
	li	a4, 0	# tmp204
	beq	a5,zero,.L8	#, tmp202,,
	call	__stack_chk_fail@plt	#
.L8:
	ld	ra,184(sp)		#,
	.cfi_restore 1
	ld	s0,176(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	s0,72(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# freq1, freq1
	sd	a1,-48(s0)	# letters1, letters1
	sd	a3,-64(s0)	# freq2, freq2
	sd	a4,-72(s0)	# letters2, letters2
	mv	a4,a5	# tmp176, max_count2
	mv	a5,a2	# tmp175, tmp174
	sw	a5,-52(s0)	# tmp175, max_count1
	mv	a5,a4	# tmp177, tmp176
	sw	a5,-56(s0)	# tmp177, max_count2
# problem112.c:40:     if (max_count1 != max_count2) return false;
	lw	a5,-52(s0)		# tmp179, max_count1
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-56(s0)		# tmp181, max_count2
	sext.w	a4,a4	# tmp182, tmp178
	sext.w	a5,a5	# tmp183, tmp180
	beq	a4,a5,.L10	#, tmp182, tmp183,
# problem112.c:40:     if (max_count1 != max_count2) return false;
	li	a5,0		# _41,
# problem112.c:40:     if (max_count1 != max_count2) return false;
	j	.L11		#
.L10:
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	sw	zero,-24(s0)	#, i
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	j	.L12		#
.L14:
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	lw	a5,-24(s0)		# _1, i
	ld	a4,-48(s0)		# tmp184, letters1
	add	a5,a4,a5	# _1, _2, tmp184
	lbu	a5,0(a5)	# _3, *_2
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	slli	a5,a5,2	#, _5, _4
	addi	a5,a5,-388	#, _6, _5
	ld	a4,-40(s0)		# tmp185, freq1
	add	a5,a4,a5	# _6, _7, tmp185
	lw	a3,0(a5)		# _8, *_7
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	lw	a5,-24(s0)		# _9, i
	ld	a4,-48(s0)		# tmp186, letters1
	add	a5,a4,a5	# _9, _10, tmp186
	lbu	a5,0(a5)	# _11, *_10
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	slli	a5,a5,2	#, _13, _12
	addi	a5,a5,-388	#, _14, _13
	ld	a4,-64(s0)		# tmp187, freq2
	add	a5,a4,a5	# _14, _15, tmp187
	lw	a5,0(a5)		# _16, *_15
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	mv	a4,a3	# tmp188, _8
	beq	a4,a5,.L13	#, tmp188, tmp189,
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	li	a5,0		# _41,
# problem112.c:42:         if (freq1[letters1[i] - 'a'] != freq2[letters1[i] - 'a']) return false;
	j	.L11		#
.L13:
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	lw	a5,-24(s0)		# tmp192, i
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-24(s0)	# tmp190, i
.L12:
# problem112.c:41:     for (int i = 0; letters1[i] != '\0'; i++) {
	lw	a5,-24(s0)		# _17, i
	ld	a4,-48(s0)		# tmp193, letters1
	add	a5,a4,a5	# _17, _18, tmp193
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
	ld	a4,-72(s0)		# tmp194, letters2
	add	a5,a4,a5	# _20, _21, tmp194
	lbu	a5,0(a5)	# _22, *_21
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	slli	a5,a5,2	#, _24, _23
	addi	a5,a5,-388	#, _25, _24
	ld	a4,-64(s0)		# tmp195, freq2
	add	a5,a4,a5	# _25, _26, tmp195
	lw	a3,0(a5)		# _27, *_26
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	lw	a5,-20(s0)		# _28, i
	ld	a4,-72(s0)		# tmp196, letters2
	add	a5,a4,a5	# _28, _29, tmp196
	lbu	a5,0(a5)	# _30, *_29
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	slli	a5,a5,2	#, _32, _31
	addi	a5,a5,-388	#, _33, _32
	ld	a4,-40(s0)		# tmp197, freq1
	add	a5,a4,a5	# _33, _34, tmp197
	lw	a5,0(a5)		# _35, *_34
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	mv	a4,a3	# tmp198, _27
	beq	a4,a5,.L16	#, tmp198, tmp199,
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	li	a5,0		# _41,
# problem112.c:45:         if (freq2[letters2[i] - 'a'] != freq1[letters2[i] - 'a']) return false;
	j	.L11		#
.L16:
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	lw	a5,-20(s0)		# tmp202, i
	addiw	a5,a5,1	#, tmp200, tmp201
	sw	a5,-20(s0)	# tmp200, i
.L15:
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	lw	a5,-20(s0)		# _36, i
	ld	a4,-72(s0)		# tmp203, letters2
	add	a5,a4,a5	# _36, _37, tmp203
	lbu	a5,0(a5)	# _38, *_37
# problem112.c:44:     for (int i = 0; letters2[i] != '\0'; i++) {
	bne	a5,zero,.L17	#, _38,,
# problem112.c:47:     return true;
	li	a5,1		# _41,
.L11:
# problem112.c:48: }
	mv	a0,a5	#, <retval>
	ld	s0,72(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
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
.LFB2:
	.cfi_startproc
	addi	sp,sp,-272	#,,
	.cfi_def_cfa_offset 272
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,272	#,,
	.cfi_def_cfa 8, 0
# problem112.c:50: int main() {
	la	a5,__stack_chk_guard		# tmp158,
	ld	a4, 0(a5)	# tmp227, __stack_chk_guard
	sd	a4, -24(s0)	# tmp227, D.3031
	li	a4, 0	# tmp227
# problem112.c:55:     func0("a b b a", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp159,
	addi	a4,s0,-268	#, tmp160,
	addi	a5,s0,-264	#, tmp161,
	mv	a2,a4	#, tmp160
	mv	a1,a5	#, tmp161
	lla	a0,.LC0	#,
	call	func0		#
# problem112.c:56:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp162,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp162
	call	memset@plt	#
# problem112.c:57:     counts2['a' - 'a'] = 2;
	li	a5,2		# tmp163,
	sw	a5,-160(s0)	# tmp163, counts2[0]
# problem112.c:58:     counts2['b' - 'a'] = 2;
	li	a5,2		# tmp164,
	sw	a5,-156(s0)	# tmp164, counts2[1]
# problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	lw	a2,-268(s0)		# max_count1.1_1, max_count1
	addi	a3,s0,-160	#, tmp165,
	addi	a1,s0,-56	#, tmp166,
	addi	a0,s0,-264	#, tmp167,
	li	a5,2		#,
	lla	a4,.LC1	#,
	call	issame		#
	mv	a5,a0	# tmp168,
# problem112.c:59:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	bne	a5,zero,.L19	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,59		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L19:
# problem112.c:61:     func0("a b c a b", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp169,
	addi	a4,s0,-268	#, tmp170,
	addi	a5,s0,-264	#, tmp171,
	mv	a2,a4	#, tmp170
	mv	a1,a5	#, tmp171
	lla	a0,.LC4	#,
	call	func0		#
# problem112.c:62:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp172,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp172
	call	memset@plt	#
# problem112.c:63:     counts2['a' - 'a'] = 2;
	li	a5,2		# tmp173,
	sw	a5,-160(s0)	# tmp173, counts2[0]
# problem112.c:64:     counts2['b' - 'a'] = 2;
	li	a5,2		# tmp174,
	sw	a5,-156(s0)	# tmp174, counts2[1]
# problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	lw	a2,-268(s0)		# max_count1.2_3, max_count1
	addi	a3,s0,-160	#, tmp175,
	addi	a1,s0,-56	#, tmp176,
	addi	a0,s0,-264	#, tmp177,
	li	a5,2		#,
	lla	a4,.LC1	#,
	call	issame		#
	mv	a5,a0	# tmp178,
# problem112.c:65:     assert(issame(counts1, letters1, max_count1, counts2, "ab", 2));
	bne	a5,zero,.L20	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L20:
# problem112.c:67:     func0("a b c d g", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp179,
	addi	a4,s0,-268	#, tmp180,
	addi	a5,s0,-264	#, tmp181,
	mv	a2,a4	#, tmp180
	mv	a1,a5	#, tmp181
	lla	a0,.LC5	#,
	call	func0		#
# problem112.c:68:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp182,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp182
	call	memset@plt	#
# problem112.c:69:     counts2['a' - 'a'] = counts2['b' - 'a'] = counts2['c' - 'a'] = counts2['d' - 'a'] = counts2['g' - 'a'] = 1;
	li	a5,1		# tmp183,
	sw	a5,-136(s0)	# tmp183, counts2[6]
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
	addi	a3,s0,-160	#, tmp184,
	addi	a1,s0,-56	#, tmp185,
	addi	a0,s0,-264	#, tmp186,
	li	a5,1		#,
	lla	a4,.LC6	#,
	call	issame		#
	mv	a5,a0	# tmp187,
# problem112.c:70:     assert(issame(counts1, letters1, max_count1, counts2, "abcdg", 1));
	bne	a5,zero,.L21	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L21:
# problem112.c:72:     func0("r t g", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp188,
	addi	a4,s0,-268	#, tmp189,
	addi	a5,s0,-264	#, tmp190,
	mv	a2,a4	#, tmp189
	mv	a1,a5	#, tmp190
	lla	a0,.LC8	#,
	call	func0		#
# problem112.c:73:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp191,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp191
	call	memset@plt	#
# problem112.c:74:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	li	a5,1		# tmp192,
	sw	a5,-136(s0)	# tmp192, counts2[6]
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
	addi	a3,s0,-160	#, tmp193,
	addi	a1,s0,-56	#, tmp194,
	addi	a0,s0,-264	#, tmp195,
	li	a5,1		#,
	lla	a4,.LC9	#,
	call	issame		#
	mv	a5,a0	# tmp196,
# problem112.c:75:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	bne	a5,zero,.L22	#, _14,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC2	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L22:
# problem112.c:77:     func0("b b b b a", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp197,
	addi	a4,s0,-268	#, tmp198,
	addi	a5,s0,-264	#, tmp199,
	mv	a2,a4	#, tmp198
	mv	a1,a5	#, tmp199
	lla	a0,.LC11	#,
	call	func0		#
# problem112.c:78:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp200,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp200
	call	memset@plt	#
# problem112.c:79:     counts2['b' - 'a'] = 4;
	li	a5,4		# tmp201,
	sw	a5,-156(s0)	# tmp201, counts2[1]
# problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	lw	a2,-268(s0)		# max_count1.5_15, max_count1
	addi	a3,s0,-160	#, tmp202,
	addi	a1,s0,-56	#, tmp203,
	addi	a0,s0,-264	#, tmp204,
	li	a5,4		#,
	lla	a4,.LC12	#,
	call	issame		#
	mv	a5,a0	# tmp205,
# problem112.c:80:     assert(issame(counts1, letters1, max_count1, counts2, "b", 4));
	bne	a5,zero,.L23	#, _16,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,80		#,
	lla	a1,.LC2	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L23:
# problem112.c:82:     func0("r t g", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp206,
	addi	a4,s0,-268	#, tmp207,
	addi	a5,s0,-264	#, tmp208,
	mv	a2,a4	#, tmp207
	mv	a1,a5	#, tmp208
	lla	a0,.LC8	#,
	call	func0		#
# problem112.c:83:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp209,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp209
	call	memset@plt	#
# problem112.c:84:     counts2['r' - 'a'] = counts2['t' - 'a'] = counts2['g' - 'a'] = 1;
	li	a5,1		# tmp210,
	sw	a5,-136(s0)	# tmp210, counts2[6]
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
	addi	a3,s0,-160	#, tmp211,
	addi	a1,s0,-56	#, tmp212,
	addi	a0,s0,-264	#, tmp213,
	li	a5,1		#,
	lla	a4,.LC9	#,
	call	issame		#
	mv	a5,a0	# tmp214,
# problem112.c:85:     assert(issame(counts1, letters1, max_count1, counts2, "rtg", 1));
	bne	a5,zero,.L24	#, _20,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,85		#,
	lla	a1,.LC2	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L24:
# problem112.c:87:     func0("a", counts1, &max_count1, letters1);
	addi	a3,s0,-56	#, tmp215,
	addi	a4,s0,-268	#, tmp216,
	addi	a5,s0,-264	#, tmp217,
	mv	a2,a4	#, tmp216
	mv	a1,a5	#, tmp217
	lla	a0,.LC14	#,
	call	func0		#
# problem112.c:88:     memset(counts2, 0, sizeof(counts2));
	addi	a5,s0,-160	#, tmp218,
	li	a2,104		#,
	li	a1,0		#,
	mv	a0,a5	#, tmp218
	call	memset@plt	#
# problem112.c:89:     counts2['a' - 'a'] = 1;
	li	a5,1		# tmp219,
	sw	a5,-160(s0)	# tmp219, counts2[0]
# problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	lw	a2,-268(s0)		# max_count1.7_21, max_count1
	addi	a3,s0,-160	#, tmp220,
	addi	a1,s0,-56	#, tmp221,
	addi	a0,s0,-264	#, tmp222,
	li	a5,1		#,
	lla	a4,.LC14	#,
	call	issame		#
	mv	a5,a0	# tmp223,
# problem112.c:90:     assert(issame(counts1, letters1, max_count1, counts2, "a", 1));
	bne	a5,zero,.L25	#, _22,,
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
	la	a5,__stack_chk_guard		# tmp225,
	ld	a3, -24(s0)	# tmp228, D.3031
	ld	a5, 0(a5)	# tmp226, __stack_chk_guard
	xor	a5, a3, a5	# tmp226, tmp228
	li	a3, 0	# tmp228
	beq	a5,zero,.L27	#, tmp226,,
	call	__stack_chk_fail@plt	#
.L27:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	.cfi_restore 1
	ld	s0,256(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	addi	sp,sp,272	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
