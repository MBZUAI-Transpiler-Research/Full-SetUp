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
	addi	sp,sp,-192	#,,
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	addi	s0,sp,192	#,,
	sd	a0,-168(s0)	# test, test
	sd	a1,-176(s0)	# freq, freq
	sd	a2,-184(s0)	# max_count, max_count
	sd	a3,-192(s0)	# letters, letters
# eval/problem112//code.c:4: void func0(const char* test, int* freq, int* max_count, char* letters) {
	la	a5,__stack_chk_guard		# tmp91,
	ld	a4, 0(a5)	# tmp141, __stack_chk_guard
	sd	a4, -24(s0)	# tmp141, D.2098
	li	a4, 0	# tmp141
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
	ld	a5,-168(s0)		# tmp92, test
	sd	a5,-136(s0)	# tmp92, ptr
# eval/problem112//code.c:8:     int idx = 0;
	sw	zero,-148(s0)	#, idx
# eval/problem112//code.c:10:     while (*ptr) {
	j	.L2		#
.L4:
# eval/problem112//code.c:11:         if (*ptr != ' ') {
	ld	a5,-136(s0)		# tmp93, ptr
	lbu	a5,0(a5)	# _1, *ptr_22
# eval/problem112//code.c:11:         if (*ptr != ' ') {
	mv	a4,a5	# tmp94, _1
	li	a5,32		# tmp95,
	beq	a4,a5,.L3	#, tmp94, tmp95,
# eval/problem112//code.c:12:             int letter_index = *ptr - 'a';
	ld	a5,-136(s0)		# tmp96, ptr
	lbu	a5,0(a5)	# _2, *ptr_22
	sext.w	a5,a5	# _3, _2
# eval/problem112//code.c:12:             int letter_index = *ptr - 'a';
	addiw	a5,a5,-97	#, tmp97, _3
	sw	a5,-140(s0)	# tmp97, letter_index
# eval/problem112//code.c:13:             local_freq[letter_index]++;
	lw	a5,-140(s0)		# tmp98, letter_index
	slli	a5,a5,2	#, tmp99, tmp98
	addi	a5,a5,-16	#, tmp145, tmp99
	add	a5,a5,s0	#, tmp99, tmp145
	lw	a5,-112(a5)		# _4, local_freq[letter_index_47]
# eval/problem112//code.c:13:             local_freq[letter_index]++;
	addiw	a5,a5,1	#, tmp100, _4
	sext.w	a4,a5	# _5, tmp100
	lw	a5,-140(s0)		# tmp101, letter_index
	slli	a5,a5,2	#, tmp102, tmp101
	addi	a5,a5,-16	#, tmp146, tmp102
	add	a5,a5,s0	#, tmp102, tmp146
	sw	a4,-112(a5)	# _5, local_freq[letter_index_47]
# eval/problem112//code.c:14:             if (local_freq[letter_index] > local_max) {
	lw	a5,-140(s0)		# tmp103, letter_index
	slli	a5,a5,2	#, tmp104, tmp103
	addi	a5,a5,-16	#, tmp147, tmp104
	add	a5,a5,s0	#, tmp104, tmp147
	lw	a4,-112(a5)		# _6, local_freq[letter_index_47]
# eval/problem112//code.c:14:             if (local_freq[letter_index] > local_max) {
	lw	a5,-152(s0)		# tmp106, local_max
	sext.w	a5,a5	# tmp107, tmp105
	bge	a5,a4,.L3	#, tmp107, tmp108,
# eval/problem112//code.c:15:                 local_max = local_freq[letter_index];
	lw	a5,-140(s0)		# tmp109, letter_index
	slli	a5,a5,2	#, tmp110, tmp109
	addi	a5,a5,-16	#, tmp148, tmp110
	add	a5,a5,s0	#, tmp110, tmp148
	lw	a5,-112(a5)		# tmp111, local_freq[letter_index_47]
	sw	a5,-152(s0)	# tmp111, local_max
.L3:
# eval/problem112//code.c:18:         ptr++;
	ld	a5,-136(s0)		# tmp113, ptr
	addi	a5,a5,1	#, tmp112, tmp113
	sd	a5,-136(s0)	# tmp112, ptr
.L2:
# eval/problem112//code.c:10:     while (*ptr) {
	ld	a5,-136(s0)		# tmp114, ptr
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
	ld	a4,-176(s0)		# tmp115, freq
	add	a4,a4,a5	# _9, _10, tmp115
# eval/problem112//code.c:22:         freq[i] = local_freq[i];
	lw	a5,-144(s0)		# tmp116, i
	slli	a5,a5,2	#, tmp117, tmp116
	addi	a5,a5,-16	#, tmp149, tmp117
	add	a5,a5,s0	#, tmp117, tmp149
	lw	a5,-112(a5)		# _11, local_freq[i_25]
# eval/problem112//code.c:22:         freq[i] = local_freq[i];
	sw	a5,0(a4)	# _11, *_10
# eval/problem112//code.c:23:         if (local_freq[i] == local_max) {
	lw	a5,-144(s0)		# tmp118, i
	slli	a5,a5,2	#, tmp119, tmp118
	addi	a5,a5,-16	#, tmp150, tmp119
	add	a5,a5,s0	#, tmp119, tmp150
	lw	a4,-112(a5)		# _12, local_freq[i_25]
# eval/problem112//code.c:23:         if (local_freq[i] == local_max) {
	lw	a5,-152(s0)		# tmp121, local_max
	sext.w	a5,a5	# tmp122, tmp120
	bne	a5,a4,.L6	#, tmp122, tmp123,
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	lw	a5,-144(s0)		# tmp125, i
	andi	a4,a5,0xff	# _13, tmp124
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	lw	a5,-148(s0)		# idx.0_14, idx
	addiw	a3,a5,1	#, tmp126, idx.0_14
	sw	a3,-148(s0)	# tmp126, idx
	mv	a3,a5	# _15, idx.0_14
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	ld	a5,-192(s0)		# tmp127, letters
	add	a5,a5,a3	# _15, _16, tmp127
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	addiw	a4,a4,97	#, tmp128, _13
	andi	a4,a4,0xff	# _17, tmp128
# eval/problem112//code.c:24:             letters[idx++] = 'a' + i;
	sb	a4,0(a5)	# _17, *_16
.L6:
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	lw	a5,-144(s0)		# tmp131, i
	addiw	a5,a5,1	#, tmp129, tmp130
	sw	a5,-144(s0)	# tmp129, i
.L5:
# eval/problem112//code.c:21:     for (int i = 0; i < 26; i++) {
	lw	a5,-144(s0)		# tmp133, i
	sext.w	a4,a5	# tmp134, tmp132
	li	a5,25		# tmp135,
	ble	a4,a5,.L7	#, tmp134, tmp135,
# eval/problem112//code.c:28:     *max_count = local_max;
	ld	a5,-184(s0)		# tmp136, max_count
	lw	a4,-152(s0)		# tmp137, local_max
	sw	a4,0(a5)	# tmp137, *max_count_37(D)
# eval/problem112//code.c:29:     letters[idx] = '\0';
	lw	a5,-148(s0)		# _18, idx
	ld	a4,-192(s0)		# tmp138, letters
	add	a5,a4,a5	# _18, _19, tmp138
# eval/problem112//code.c:29:     letters[idx] = '\0';
	sb	zero,0(a5)	#, *_19
# eval/problem112//code.c:30: }
	nop	
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, -24(s0)	# tmp142, D.2098
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
