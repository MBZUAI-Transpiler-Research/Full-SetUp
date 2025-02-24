	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"o"
	.align	3
.LC1:
	.string	"o|"
	.align	3
.LC2:
	.string	".|"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-88(s0)	# music_string, music_string
	sd	a1,-96(s0)	# count, count
# code.c:5: int *func0(const char *music_string, int *count) {
	la	a5,__stack_chk_guard		# tmp174,
	ld	a4, 0(a5)	# tmp259, __stack_chk_guard
	sd	a4, -24(s0)	# tmp259, D.3492
	li	a4, 0	# tmp259
# code.c:6:     int *out = NULL;
	sd	zero,-56(s0)	#, out
# code.c:7:     int size = 0;
	sw	zero,-72(s0)	#, size
# code.c:8:     int capacity = 0;
	sw	zero,-68(s0)	#, capacity
# code.c:10:     char current[3] = "";
	sh	zero,-32(s0)	#, current
	sb	zero,-30(s0)	#, current
# code.c:11:     int music_string_length = strlen(music_string) + 1;
	ld	a0,-88(s0)		#, music_string
	call	strlen@plt	#
	mv	a5,a0	# _1,
# code.c:11:     int music_string_length = strlen(music_string) + 1;
	sext.w	a5,a5	# _2, _1
	addiw	a5,a5,1	#, tmp175, _2
	sext.w	a5,a5	# _3, tmp175
# code.c:11:     int music_string_length = strlen(music_string) + 1;
	sw	a5,-60(s0)	# _3, music_string_length
# code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	lw	a5,-60(s0)		# tmp178, music_string_length
	addiw	a5,a5,1	#, tmp176, tmp177
	sext.w	a5,a5	# _4, tmp176
# code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp179,
	sd	a5,-48(s0)	# tmp179, temp_music_string
# code.c:13:     strcpy(temp_music_string, music_string);
	ld	a1,-88(s0)		#, music_string
	ld	a0,-48(s0)		#, temp_music_string
	call	strcpy@plt	#
# code.c:14:     strcat(temp_music_string, " ");
	ld	a0,-48(s0)		#, temp_music_string
	call	strlen@plt	#
	mv	a5,a0	# tmp180,
	mv	a4,a5	# _77, tmp180
# code.c:14:     strcat(temp_music_string, " ");
	ld	a5,-48(s0)		# tmp181, temp_music_string
	add	a5,a5,a4	# _77, _78, tmp181
	li	a4,32		# tmp182,
	sb	a4,0(a5)	# tmp182, MEM <char[1:2]> [(void *)_78]
	sb	zero,1(a5)	#, MEM <char[1:2]> [(void *)_78]
# code.c:16:     for (int i = 0; i < music_string_length; i++) {
	sw	zero,-64(s0)	#, i
# code.c:16:     for (int i = 0; i < music_string_length; i++) {
	j	.L2		#
.L17:
# code.c:17:         if (temp_music_string[i] == ' ') {
	lw	a5,-64(s0)		# _6, i
	ld	a4,-48(s0)		# tmp183, temp_music_string
	add	a5,a4,a5	# _6, _7, tmp183
	lbu	a5,0(a5)	# _8, *_7
# code.c:17:         if (temp_music_string[i] == ' ') {
	mv	a4,a5	# tmp184, _8
	li	a5,32		# tmp185,
	bne	a4,a5,.L3	#, tmp184, tmp185,
# code.c:18:             if (strcmp(current, "o") == 0) {
	addi	a5,s0,-32	#, tmp186,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp186
	call	strcmp@plt	#
	mv	a5,a0	# tmp187,
# code.c:18:             if (strcmp(current, "o") == 0) {
	bne	a5,zero,.L4	#, _9,,
# code.c:19:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp189, size
	mv	a4,a5	# tmp188, tmp189
	lw	a5,-68(s0)		# tmp191, capacity
	sext.w	a4,a4	# tmp192, tmp188
	sext.w	a5,a5	# tmp193, tmp190
	bne	a4,a5,.L5	#, tmp192, tmp193,
# code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp195, capacity
	sext.w	a5,a5	# tmp196, tmp194
	ble	a5,zero,.L6	#, tmp196,,
# code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp199, capacity
	slliw	a5,a5,1	#, tmp197, tmp198
	sext.w	a5,a5	# iftmp.0_56, tmp197
	j	.L7		#
.L6:
# code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	li	a5,4		# iftmp.0_56,
.L7:
# code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	sw	a5,-68(s0)	# iftmp.0_56, capacity
# code.c:21:                     out = realloc(out, capacity * sizeof(int));
	lw	a5,-68(s0)		# _10, capacity
	slli	a5,a5,2	#, _11, _10
	mv	a1,a5	#, _11
	ld	a0,-56(s0)		#, out
	call	realloc@plt	#
	sd	a0,-56(s0)	#, out
.L5:
# code.c:23:                 out[size++] = 4;
	lw	a5,-72(s0)		# size.1_12, size
	addiw	a4,a5,1	#, tmp200, size.1_12
	sw	a4,-72(s0)	# tmp200, size
# code.c:23:                 out[size++] = 4;
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp201, out
	add	a5,a4,a5	# _14, _15, tmp201
# code.c:23:                 out[size++] = 4;
	li	a4,4		# tmp202,
	sw	a4,0(a5)	# tmp202, *_15
.L4:
# code.c:25:             if (strcmp(current, "o|") == 0) {
	addi	a5,s0,-32	#, tmp203,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp203
	call	strcmp@plt	#
	mv	a5,a0	# tmp204,
# code.c:25:             if (strcmp(current, "o|") == 0) {
	bne	a5,zero,.L8	#, _16,,
# code.c:26:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp206, size
	mv	a4,a5	# tmp205, tmp206
	lw	a5,-68(s0)		# tmp208, capacity
	sext.w	a4,a4	# tmp209, tmp205
	sext.w	a5,a5	# tmp210, tmp207
	bne	a4,a5,.L9	#, tmp209, tmp210,
# code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp212, capacity
	sext.w	a5,a5	# tmp213, tmp211
	ble	a5,zero,.L10	#, tmp213,,
# code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp216, capacity
	slliw	a5,a5,1	#, tmp214, tmp215
	sext.w	a5,a5	# iftmp.2_57, tmp214
	j	.L11		#
.L10:
# code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	li	a5,4		# iftmp.2_57,
.L11:
# code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	sw	a5,-68(s0)	# iftmp.2_57, capacity
# code.c:28:                     out = realloc(out, capacity * sizeof(int));
	lw	a5,-68(s0)		# _17, capacity
	slli	a5,a5,2	#, _18, _17
	mv	a1,a5	#, _18
	ld	a0,-56(s0)		#, out
	call	realloc@plt	#
	sd	a0,-56(s0)	#, out
.L9:
# code.c:30:                 out[size++] = 2;
	lw	a5,-72(s0)		# size.3_19, size
	addiw	a4,a5,1	#, tmp217, size.3_19
	sw	a4,-72(s0)	# tmp217, size
# code.c:30:                 out[size++] = 2;
	slli	a5,a5,2	#, _21, _20
	ld	a4,-56(s0)		# tmp218, out
	add	a5,a4,a5	# _21, _22, tmp218
# code.c:30:                 out[size++] = 2;
	li	a4,2		# tmp219,
	sw	a4,0(a5)	# tmp219, *_22
.L8:
# code.c:32:             if (strcmp(current, ".|") == 0) {
	addi	a5,s0,-32	#, tmp220,
	lla	a1,.LC2	#,
	mv	a0,a5	#, tmp220
	call	strcmp@plt	#
	mv	a5,a0	# tmp221,
# code.c:32:             if (strcmp(current, ".|") == 0) {
	bne	a5,zero,.L12	#, _23,,
# code.c:33:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp223, size
	mv	a4,a5	# tmp222, tmp223
	lw	a5,-68(s0)		# tmp225, capacity
	sext.w	a4,a4	# tmp226, tmp222
	sext.w	a5,a5	# tmp227, tmp224
	bne	a4,a5,.L13	#, tmp226, tmp227,
# code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp229, capacity
	sext.w	a5,a5	# tmp230, tmp228
	ble	a5,zero,.L14	#, tmp230,,
# code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp233, capacity
	slliw	a5,a5,1	#, tmp231, tmp232
	sext.w	a5,a5	# iftmp.4_58, tmp231
	j	.L15		#
.L14:
# code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	li	a5,4		# iftmp.4_58,
.L15:
# code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	sw	a5,-68(s0)	# iftmp.4_58, capacity
# code.c:35:                     out = realloc(out, capacity * sizeof(int));
	lw	a5,-68(s0)		# _24, capacity
	slli	a5,a5,2	#, _25, _24
	mv	a1,a5	#, _25
	ld	a0,-56(s0)		#, out
	call	realloc@plt	#
	sd	a0,-56(s0)	#, out
.L13:
# code.c:37:                 out[size++] = 1;
	lw	a5,-72(s0)		# size.5_26, size
	addiw	a4,a5,1	#, tmp234, size.5_26
	sw	a4,-72(s0)	# tmp234, size
# code.c:37:                 out[size++] = 1;
	slli	a5,a5,2	#, _28, _27
	ld	a4,-56(s0)		# tmp235, out
	add	a5,a4,a5	# _28, _29, tmp235
# code.c:37:                 out[size++] = 1;
	li	a4,1		# tmp236,
	sw	a4,0(a5)	# tmp236, *_29
.L12:
# code.c:39:             strcpy(current, "");
	sb	zero,-32(s0)	#, MEM[(char * {ref-all})&current]
	j	.L16		#
.L3:
# code.c:41:             size_t len = strlen(current);
	addi	a5,s0,-32	#, tmp237,
	mv	a0,a5	#, tmp237
	call	strlen@plt	#
	sd	a0,-40(s0)	#, len
# code.c:42:             if (len < sizeof(current) - 1) {
	ld	a4,-40(s0)		# tmp238, len
	li	a5,1		# tmp239,
	bgtu	a4,a5,.L16	#, tmp238, tmp239,
# code.c:43:                 current[len] = temp_music_string[i];
	lw	a5,-64(s0)		# _30, i
	ld	a4,-48(s0)		# tmp240, temp_music_string
	add	a5,a4,a5	# _30, _31, tmp240
	lbu	a4,0(a5)	# _32, *_31
# code.c:43:                 current[len] = temp_music_string[i];
	ld	a5,-40(s0)		# tmp242, len
	addi	a5,a5,-16	#, tmp263, tmp242
	add	a5,a5,s0	#, tmp241, tmp263
	sb	a4,-16(a5)	# _32, current[len_86]
# code.c:44:                 current[len + 1] = '\0';
	ld	a5,-40(s0)		# tmp243, len
	addi	a5,a5,1	#, _33, tmp243
# code.c:44:                 current[len + 1] = '\0';
	addi	a5,a5,-16	#, tmp264, _33
	add	a5,a5,s0	#, tmp244, tmp264
	sb	zero,-16(a5)	#, current[_33]
.L16:
# code.c:16:     for (int i = 0; i < music_string_length; i++) {
	lw	a5,-64(s0)		# tmp247, i
	addiw	a5,a5,1	#, tmp245, tmp246
	sw	a5,-64(s0)	# tmp245, i
.L2:
# code.c:16:     for (int i = 0; i < music_string_length; i++) {
	lw	a5,-64(s0)		# tmp249, i
	mv	a4,a5	# tmp248, tmp249
	lw	a5,-60(s0)		# tmp251, music_string_length
	sext.w	a4,a4	# tmp252, tmp248
	sext.w	a5,a5	# tmp253, tmp250
	blt	a4,a5,.L17	#, tmp252, tmp253,
# code.c:48:     free(temp_music_string);
	ld	a0,-48(s0)		#, temp_music_string
	call	free@plt	#
# code.c:49:     *count = size;
	ld	a5,-96(s0)		# tmp254, count
	lw	a4,-72(s0)		# tmp255, size
	sw	a4,0(a5)	# tmp255, *count_82(D)
# code.c:50:     return out;
	ld	a5,-56(s0)		# _84, out
	mv	a4,a5	# <retval>, _84
# code.c:51: }
	la	a5,__stack_chk_guard		# tmp257,
	ld	a3, -24(s0)	# tmp260, D.3492
	ld	a5, 0(a5)	# tmp258, __stack_chk_guard
	xor	a5, a3, a5	# tmp258, tmp260
	li	a3, 0	# tmp260
	beq	a5,zero,.L19	#, tmp258,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
