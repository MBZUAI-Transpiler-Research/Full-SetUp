	.file	"code.c"
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
# eval/problem112//code.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	la	a5,__stack_chk_guard		# tmp153,
	ld	a4, 0(a5)	# tmp203, __stack_chk_guard
	sd	a4, -24(s0)	# tmp203, D.2943
	li	a4, 0	# tmp203
# eval/problem112//code.c:5:     int local_freq[26] = {0}; // for 'a' to 'z'
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
# eval/problem112//code.c:6:     int local_max = 0;
	sw	zero,-152(s0)	#, local_max
# eval/problem112//code.c:7:     const char* ptr = test;
	ld	a5,-168(s0)		# tmp154, test
	sd	a5,-136(s0)	# tmp154, ptr
# eval/problem112//code.c:8:     int idx = 0;
	sw	zero,-148(s0)	#, idx
# eval/problem112//code.c:10:     while (*ptr) {
	j	.L2		#
.L4:
# eval/problem112//code.c:11:         if (*ptr != ' ') {
	ld	a5,-136(s0)		# tmp155, ptr
	lbu	a5,0(a5)	# _1, *ptr_22
# eval/problem112//code.c:11:         if (*ptr != ' ') {
	mv	a4,a5	# tmp156, _1
	li	a5,32		# tmp157,
	beq	a4,a5,.L3	#, tmp156, tmp157,
# eval/problem112//code.c:12:             int letter_index = *ptr - 'a';
	ld	a5,-136(s0)		# tmp158, ptr
	lbu	a5,0(a5)	# _2, *ptr_22
	sext.w	a5,a5	# _3, _2
# eval/problem112//code.c:12:             int letter_index = *ptr - 'a';
	addiw	a5,a5,-97	#, tmp159, _3
	sw	a5,-140(s0)	# tmp159, letter_index
# eval/problem112//code.c:13:             local_freq[letter_index]++;
	lw	a5,-140(s0)		# tmp160, letter_index
	slli	a5,a5,2	#, tmp161, tmp160
	addi	a5,a5,-16	#, tmp207, tmp161
	add	a5,a5,s0	#, tmp161, tmp207
	lw	a5,-112(a5)		# _4, local_freq[letter_index_47]
# eval/problem112//code.c:13:             local_freq[letter_index]++;
	addiw	a5,a5,1	#, tmp162, _4
	sext.w	a4,a5	# _5, tmp162
	lw	a5,-140(s0)		# tmp163, letter_index
	slli	a5,a5,2	#, tmp164, tmp163
	addi	a5,a5,-16	#, tmp208, tmp164
	add	a5,a5,s0	#, tmp164, tmp208
	sw	a4,-112(a5)	# _5, local_freq[letter_index_47]
# eval/problem112//code.c:14:             if (local_freq[letter_index] > local_max) {
	lw	a5,-140(s0)		# tmp165, letter_index
	slli	a5,a5,2	#, tmp166, tmp165
	addi	a5,a5,-16	#, tmp209, tmp166
	add	a5,a5,s0	#, tmp166, tmp209
	lw	a4,-112(a5)		# _6, local_freq[letter_index_47]
# eval/problem112//code.c:14:             if (local_freq[letter_index] > local_max) {
	lw	a5,-152(s0)		# tmp168, local_max
	sext.w	a5,a5	# tmp169, tmp167
	bge	a5,a4,.L3	#, tmp169, tmp170,
# eval/problem112//code.c:15:                 local_max = local_freq[letter_index];
	lw	a5,-140(s0)		# tmp171, letter_index
	slli	a5,a5,2	#, tmp172, tmp171
	addi	a5,a5,-16	#, tmp210, tmp172
	add	a5,a5,s0	#, tmp172, tmp210
	lw	a5,-112(a5)		# tmp173, local_freq[letter_index_47]
	sw	a5,-152(s0)	# tmp173, local_max
.L3:
# eval/problem112//code.c:18:         ptr++;
	ld	a5,-136(s0)		# tmp175, ptr
	addi	a5,a5,1	#, tmp174, tmp175
	sd	a5,-136(s0)	# tmp174, ptr
.L2:
# eval/problem112//code.c:10:     while (*ptr) {
	ld	a5,-136(s0)		# tmp176, ptr
	lbu	a5,0(a5)	# _7, *ptr_22
	bne	a5,zero,.L4	#, _7,,
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	sw	zero,-144(s0)	#, i
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	j	.L5		#
.L7:
# eval/problem112//code.c:22:         freq[i] = local_freq[i];
	lw	a5,-144(s0)		# _8, i
	slli	a5,a5,2	#, _9, _8
	ld	a4,-176(s0)		# tmp177, freq
	add	a4,a4,a5	# _9, _10, tmp177
# eval/problem112//code.c:22:         freq[i] = local_freq[i];
	lw	a5,-144(s0)		# tmp178, i
	slli	a5,a5,2	#, tmp179, tmp178
	addi	a5,a5,-16	#, tmp211, tmp179
	add	a5,a5,s0	#, tmp179, tmp211
	lw	a5,-112(a5)		# _11, local_freq[i_25]
# eval/problem112//code.c:22:         freq[i] = local_freq[i];
	sw	a5,0(a4)	# _11, *_10
# eval/problem112//code.c:23:         if (local_freq[i] == local_max) {
	lw	a5,-144(s0)		# tmp180, i
	slli	a5,a5,2	#, tmp181, tmp180
	addi	a5,a5,-16	#, tmp212, tmp181
	add	a5,a5,s0	#, tmp181, tmp212
	lw	a4,-112(a5)		# _12, local_freq[i_25]
# eval/problem112//code.c:23:         if (local_freq[i] == local_max) {
	lw	a5,-152(s0)		# tmp183, local_max
	sext.w	a5,a5	# tmp184, tmp182
	bne	a5,a4,.L6	#, tmp184, tmp185,
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	lw	a5,-144(s0)		# tmp187, i
	andi	a4,a5,0xff	# _13, tmp186
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	lw	a5,-148(s0)		# idx.0_14, idx
	addiw	a3,a5,1	#, tmp188, idx.0_14
	sw	a3,-148(s0)	# tmp188, idx
	mv	a3,a5	# _15, idx.0_14
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	ld	a5,-192(s0)		# tmp189, letters
	add	a5,a5,a3	# _15, _16, tmp189
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	addiw	a4,a4,97	#, tmp190, _13
	andi	a4,a4,0xff	# _17, tmp190
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	sb	a4,0(a5)	# _17, *_16
.L6:
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	lw	a5,-144(s0)		# tmp193, i
	addiw	a5,a5,1	#, tmp191, tmp192
	sw	a5,-144(s0)	# tmp191, i
.L5:
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	lw	a5,-144(s0)		# tmp195, i
	sext.w	a4,a5	# tmp196, tmp194
	li	a5,25		# tmp197,
	ble	a4,a5,.L7	#, tmp196, tmp197,
# eval/problem112//code.c:28:     *max_count = local_max;
	ld	a5,-184(s0)		# tmp198, max_count
	lw	a4,-152(s0)		# tmp199, local_max
	sw	a4,0(a5)	# tmp199, *max_count_37(D)
# eval/problem112//code.c:29:     letters[idx] = '\0';
	lw	a5,-148(s0)		# _18, idx
	ld	a4,-192(s0)		# tmp200, letters
	add	a5,a4,a5	# _18, _19, tmp200
# eval/problem112//code.c:29:     letters[idx] = '\0';
	sb	zero,0(a5)	#, *_19
# eval/problem112//code.c:30: }
	nop	
	la	a5,__stack_chk_guard		# tmp201,
	ld	a4, -24(s0)	# tmp204, D.2943
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
