	.file	"problem18.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC4:
	.string	"o"
	.align	3
.LC5:
	.string	"o|"
	.align	3
.LC6:
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
# problem18.c:5: int *func0(const char *music_string, int *count) {
	la	a5,__stack_chk_guard		# tmp174,
	ld	a4, 0(a5)	# tmp259, __stack_chk_guard
	sd	a4, -24(s0)	# tmp259, D.3567
	li	a4, 0	# tmp259
# problem18.c:6:     int *out = NULL;
	sd	zero,-56(s0)	#, out
# problem18.c:7:     int size = 0;
	sw	zero,-72(s0)	#, size
# problem18.c:8:     int capacity = 0;
	sw	zero,-68(s0)	#, capacity
# problem18.c:10:     char current[3] = "";
	sh	zero,-32(s0)	#, current
	sb	zero,-30(s0)	#, current
# problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	ld	a0,-88(s0)		#, music_string
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	sext.w	a5,a5	# _2, _1
	addiw	a5,a5,1	#, tmp175, _2
	sext.w	a5,a5	# _3, tmp175
# problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	sw	a5,-60(s0)	# _3, music_string_length
# problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	lw	a5,-60(s0)		# tmp178, music_string_length
	addiw	a5,a5,1	#, tmp176, tmp177
	sext.w	a5,a5	# _4, tmp176
# problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp179,
	sd	a5,-48(s0)	# tmp179, temp_music_string
# problem18.c:13:     strcpy(temp_music_string, music_string);
	ld	a1,-88(s0)		#, music_string
	ld	a0,-48(s0)		#, temp_music_string
	call	strcpy@plt	#
# problem18.c:14:     strcat(temp_music_string, " ");
	ld	a0,-48(s0)		#, temp_music_string
	call	strlen@plt	#
	mv	a5,a0	# tmp180,
	mv	a4,a5	# _77, tmp180
# problem18.c:14:     strcat(temp_music_string, " ");
	ld	a5,-48(s0)		# tmp181, temp_music_string
	add	a5,a5,a4	# _77, _78, tmp181
	li	a4,32		# tmp182,
	sb	a4,0(a5)	# tmp182, MEM <char[1:2]> [(void *)_78]
	sb	zero,1(a5)	#, MEM <char[1:2]> [(void *)_78]
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	sw	zero,-64(s0)	#, i
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	j	.L2		#
.L17:
# problem18.c:17:         if (temp_music_string[i] == ' ') {
	lw	a5,-64(s0)		# _6, i
	ld	a4,-48(s0)		# tmp183, temp_music_string
	add	a5,a4,a5	# _6, _7, tmp183
	lbu	a5,0(a5)	# _8, *_7
# problem18.c:17:         if (temp_music_string[i] == ' ') {
	mv	a4,a5	# tmp184, _8
	li	a5,32		# tmp185,
	bne	a4,a5,.L3	#, tmp184, tmp185,
# problem18.c:18:             if (strcmp(current, "o") == 0) {
	addi	a5,s0,-32	#, tmp186,
	lla	a1,.LC4	#,
	mv	a0,a5	#, tmp186
	call	strcmp@plt	#
	mv	a5,a0	# tmp187,
# problem18.c:18:             if (strcmp(current, "o") == 0) {
	bne	a5,zero,.L4	#, _9,,
# problem18.c:19:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp189, size
	mv	a4,a5	# tmp188, tmp189
	lw	a5,-68(s0)		# tmp191, capacity
	sext.w	a4,a4	# tmp192, tmp188
	sext.w	a5,a5	# tmp193, tmp190
	bne	a4,a5,.L5	#, tmp192, tmp193,
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp195, capacity
	sext.w	a5,a5	# tmp196, tmp194
	ble	a5,zero,.L6	#, tmp196,,
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp199, capacity
	slliw	a5,a5,1	#, tmp197, tmp198
	sext.w	a5,a5	# iftmp.0_56, tmp197
	j	.L7		#
.L6:
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	li	a5,4		# iftmp.0_56,
.L7:
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	sw	a5,-68(s0)	# iftmp.0_56, capacity
# problem18.c:21:                     out = realloc(out, capacity * sizeof(int));
	lw	a5,-68(s0)		# _10, capacity
	slli	a5,a5,2	#, _11, _10
	mv	a1,a5	#, _11
	ld	a0,-56(s0)		#, out
	call	realloc@plt	#
	sd	a0,-56(s0)	#, out
.L5:
# problem18.c:23:                 out[size++] = 4;
	lw	a5,-72(s0)		# size.1_12, size
	addiw	a4,a5,1	#, tmp200, size.1_12
	sw	a4,-72(s0)	# tmp200, size
# problem18.c:23:                 out[size++] = 4;
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp201, out
	add	a5,a4,a5	# _14, _15, tmp201
# problem18.c:23:                 out[size++] = 4;
	li	a4,4		# tmp202,
	sw	a4,0(a5)	# tmp202, *_15
.L4:
# problem18.c:25:             if (strcmp(current, "o|") == 0) {
	addi	a5,s0,-32	#, tmp203,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp203
	call	strcmp@plt	#
	mv	a5,a0	# tmp204,
# problem18.c:25:             if (strcmp(current, "o|") == 0) {
	bne	a5,zero,.L8	#, _16,,
# problem18.c:26:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp206, size
	mv	a4,a5	# tmp205, tmp206
	lw	a5,-68(s0)		# tmp208, capacity
	sext.w	a4,a4	# tmp209, tmp205
	sext.w	a5,a5	# tmp210, tmp207
	bne	a4,a5,.L9	#, tmp209, tmp210,
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp212, capacity
	sext.w	a5,a5	# tmp213, tmp211
	ble	a5,zero,.L10	#, tmp213,,
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp216, capacity
	slliw	a5,a5,1	#, tmp214, tmp215
	sext.w	a5,a5	# iftmp.2_57, tmp214
	j	.L11		#
.L10:
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	li	a5,4		# iftmp.2_57,
.L11:
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	sw	a5,-68(s0)	# iftmp.2_57, capacity
# problem18.c:28:                     out = realloc(out, capacity * sizeof(int));
	lw	a5,-68(s0)		# _17, capacity
	slli	a5,a5,2	#, _18, _17
	mv	a1,a5	#, _18
	ld	a0,-56(s0)		#, out
	call	realloc@plt	#
	sd	a0,-56(s0)	#, out
.L9:
# problem18.c:30:                 out[size++] = 2;
	lw	a5,-72(s0)		# size.3_19, size
	addiw	a4,a5,1	#, tmp217, size.3_19
	sw	a4,-72(s0)	# tmp217, size
# problem18.c:30:                 out[size++] = 2;
	slli	a5,a5,2	#, _21, _20
	ld	a4,-56(s0)		# tmp218, out
	add	a5,a4,a5	# _21, _22, tmp218
# problem18.c:30:                 out[size++] = 2;
	li	a4,2		# tmp219,
	sw	a4,0(a5)	# tmp219, *_22
.L8:
# problem18.c:32:             if (strcmp(current, ".|") == 0) {
	addi	a5,s0,-32	#, tmp220,
	lla	a1,.LC6	#,
	mv	a0,a5	#, tmp220
	call	strcmp@plt	#
	mv	a5,a0	# tmp221,
# problem18.c:32:             if (strcmp(current, ".|") == 0) {
	bne	a5,zero,.L12	#, _23,,
# problem18.c:33:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp223, size
	mv	a4,a5	# tmp222, tmp223
	lw	a5,-68(s0)		# tmp225, capacity
	sext.w	a4,a4	# tmp226, tmp222
	sext.w	a5,a5	# tmp227, tmp224
	bne	a4,a5,.L13	#, tmp226, tmp227,
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp229, capacity
	sext.w	a5,a5	# tmp230, tmp228
	ble	a5,zero,.L14	#, tmp230,,
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp233, capacity
	slliw	a5,a5,1	#, tmp231, tmp232
	sext.w	a5,a5	# iftmp.4_58, tmp231
	j	.L15		#
.L14:
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	li	a5,4		# iftmp.4_58,
.L15:
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	sw	a5,-68(s0)	# iftmp.4_58, capacity
# problem18.c:35:                     out = realloc(out, capacity * sizeof(int));
	lw	a5,-68(s0)		# _24, capacity
	slli	a5,a5,2	#, _25, _24
	mv	a1,a5	#, _25
	ld	a0,-56(s0)		#, out
	call	realloc@plt	#
	sd	a0,-56(s0)	#, out
.L13:
# problem18.c:37:                 out[size++] = 1;
	lw	a5,-72(s0)		# size.5_26, size
	addiw	a4,a5,1	#, tmp234, size.5_26
	sw	a4,-72(s0)	# tmp234, size
# problem18.c:37:                 out[size++] = 1;
	slli	a5,a5,2	#, _28, _27
	ld	a4,-56(s0)		# tmp235, out
	add	a5,a4,a5	# _28, _29, tmp235
# problem18.c:37:                 out[size++] = 1;
	li	a4,1		# tmp236,
	sw	a4,0(a5)	# tmp236, *_29
.L12:
# problem18.c:39:             strcpy(current, "");
	sb	zero,-32(s0)	#, MEM[(char * {ref-all})&current]
	j	.L16		#
.L3:
# problem18.c:41:             size_t len = strlen(current);
	addi	a5,s0,-32	#, tmp237,
	mv	a0,a5	#, tmp237
	call	strlen@plt	#
	sd	a0,-40(s0)	#, len
# problem18.c:42:             if (len < sizeof(current) - 1) {
	ld	a4,-40(s0)		# tmp238, len
	li	a5,1		# tmp239,
	bgtu	a4,a5,.L16	#, tmp238, tmp239,
# problem18.c:43:                 current[len] = temp_music_string[i];
	lw	a5,-64(s0)		# _30, i
	ld	a4,-48(s0)		# tmp240, temp_music_string
	add	a5,a4,a5	# _30, _31, tmp240
	lbu	a4,0(a5)	# _32, *_31
# problem18.c:43:                 current[len] = temp_music_string[i];
	ld	a5,-40(s0)		# tmp242, len
	addi	a5,a5,-16	#, tmp263, tmp242
	add	a5,a5,s0	#, tmp241, tmp263
	sb	a4,-16(a5)	# _32, current[len_86]
# problem18.c:44:                 current[len + 1] = '\0';
	ld	a5,-40(s0)		# tmp243, len
	addi	a5,a5,1	#, _33, tmp243
# problem18.c:44:                 current[len + 1] = '\0';
	addi	a5,a5,-16	#, tmp264, _33
	add	a5,a5,s0	#, tmp244, tmp264
	sb	zero,-16(a5)	#, current[_33]
.L16:
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	lw	a5,-64(s0)		# tmp247, i
	addiw	a5,a5,1	#, tmp245, tmp246
	sw	a5,-64(s0)	# tmp245, i
.L2:
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	lw	a5,-64(s0)		# tmp249, i
	mv	a4,a5	# tmp248, tmp249
	lw	a5,-60(s0)		# tmp251, music_string_length
	sext.w	a4,a4	# tmp252, tmp248
	sext.w	a5,a5	# tmp253, tmp250
	blt	a4,a5,.L17	#, tmp252, tmp253,
# problem18.c:48:     free(temp_music_string);
	ld	a0,-48(s0)		#, temp_music_string
	call	free@plt	#
# problem18.c:49:     *count = size;
	ld	a5,-96(s0)		# tmp254, count
	lw	a4,-72(s0)		# tmp255, size
	sw	a4,0(a5)	# tmp255, *count_82(D)
# problem18.c:50:     return out;
	ld	a5,-56(s0)		# _84, out
	mv	a4,a5	# <retval>, _84
# problem18.c:51: }
	la	a5,__stack_chk_guard		# tmp257,
	ld	a3, -24(s0)	# tmp260, D.3567
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp144, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, b_size
	sw	a5,-44(s0)	# tmp145, a_size
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, b_size
# problem18.c:59:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp149, a_size
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, b_size
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L21	#, tmp152, tmp153,
# problem18.c:59:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
# problem18.c:59:     if (a_size != b_size) return 0;
	j	.L22		#
.L21:
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	j	.L23		#
.L25:
# problem18.c:61:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem18.c:61:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem18.c:61:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L24	#, tmp156, tmp157,
# problem18.c:61:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem18.c:61:         if (a[i] != b[i]) return 0;
	j	.L22		#
.L24:
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L23:
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, a_size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L25	#, tmp165, tmp166,
# problem18.c:63:     return 1;
	li	a5,1		# _10,
.L22:
# problem18.c:64: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC7:
	.string	""
	.align	3
.LC8:
	.string	"problem18.c"
	.align	3
.LC9:
	.string	"issame(result, count, (int[]){}, 0)"
	.align	3
.LC10:
	.string	"o o o o"
	.align	3
.LC11:
	.string	"issame(result, count, (int[]){4, 4, 4, 4}, 4)"
	.align	3
.LC12:
	.string	".| .| .| .|"
	.align	3
.LC13:
	.string	"issame(result, count, (int[]){1, 1, 1, 1}, 4)"
	.align	3
.LC14:
	.string	"o| o| .| .| o o o o"
	.align	3
.LC15:
	.string	"issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8)"
	.align	3
.LC16:
	.string	"o| .| o| .| o o| o o|"
	.align	3
.LC17:
	.string	"issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8)"
	.align	3
.LC0:
	.word	4
	.word	4
	.word	4
	.word	4
	.align	3
.LC1:
	.word	1
	.word	1
	.word	1
	.word	1
	.align	3
.LC2:
	.word	2
	.word	2
	.word	1
	.word	1
	.word	4
	.word	4
	.word	4
	.word	4
	.align	3
.LC3:
	.word	2
	.word	1
	.word	2
	.word	1
	.word	4
	.word	2
	.word	4
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
# problem18.c:66: int main() {
	la	a5,__stack_chk_guard		# tmp146,
	ld	a4, 0(a5)	# tmp181, __stack_chk_guard
	sd	a4, -24(s0)	# tmp181, D.3574
	li	a4, 0	# tmp181
# problem18.c:70:     result = func0("", &count);
	addi	a5,s0,-68	#, tmp147,
	mv	a1,a5	#, tmp147
	lla	a0,.LC7	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
	lw	a5,-68(s0)		# count.6_1, count
	addi	a4,s0,-56	#, tmp148,
	li	a3,0		#,
	mv	a2,a4	#, tmp148
	mv	a1,a5	#, count.6_1
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp149,
# problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
	bne	a5,zero,.L27	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,71		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L27:
# problem18.c:72:     free(result);
	ld	a0,-64(s0)		#, result
	call	free@plt	#
# problem18.c:74:     result = func0("o o o o", &count);
	addi	a5,s0,-68	#, tmp150,
	mv	a1,a5	#, tmp150
	lla	a0,.LC10	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:75:     assert(issame(result, count, (int[]){4, 4, 4, 4}, 4));
	lw	a1,-68(s0)		# count.7_3, count
	lla	a5,.LC0	# tmp151,
	ld	a4,0(a5)		# tmp152,
	sd	a4,-56(s0)	# tmp152, MEM[(int[4] *)_54]
	ld	a5,8(a5)		# tmp153,
	sd	a5,-48(s0)	# tmp153, MEM[(int[4] *)_54]
	addi	a5,s0,-56	#, tmp154,
	li	a3,4		#,
	mv	a2,a5	#, tmp154
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp155,
# problem18.c:75:     assert(issame(result, count, (int[]){4, 4, 4, 4}, 4));
	bne	a5,zero,.L28	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L28:
# problem18.c:76:     free(result);
	ld	a0,-64(s0)		#, result
	call	free@plt	#
# problem18.c:78:     result = func0(".| .| .| .|", &count);
	addi	a5,s0,-68	#, tmp156,
	mv	a1,a5	#, tmp156
	lla	a0,.LC12	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
	lw	a1,-68(s0)		# count.8_5, count
	lla	a5,.LC1	# tmp157,
	ld	a4,0(a5)		# tmp158,
	sd	a4,-56(s0)	# tmp158, MEM[(int[4] *)_54]
	ld	a5,8(a5)		# tmp159,
	sd	a5,-48(s0)	# tmp159, MEM[(int[4] *)_54]
	addi	a5,s0,-56	#, tmp160,
	li	a3,4		#,
	mv	a2,a5	#, tmp160
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp161,
# problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
	bne	a5,zero,.L29	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,79		#,
	lla	a1,.LC8	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L29:
# problem18.c:80:     free(result);
	ld	a0,-64(s0)		#, result
	call	free@plt	#
# problem18.c:82:     result = func0("o| o| .| .| o o o o", &count);
	addi	a5,s0,-68	#, tmp162,
	mv	a1,a5	#, tmp162
	lla	a0,.LC14	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
	lw	a1,-68(s0)		# count.9_7, count
	lla	a5,.LC2	# tmp163,
	ld	a2,0(a5)		# tmp164,
	ld	a3,8(a5)		# tmp165,
	ld	a4,16(a5)		# tmp166,
	ld	a5,24(a5)		# tmp167,
	sd	a2,-56(s0)	# tmp164, MEM[(int[8] *)_54]
	sd	a3,-48(s0)	# tmp165, MEM[(int[8] *)_54]
	sd	a4,-40(s0)	# tmp166, MEM[(int[8] *)_54]
	sd	a5,-32(s0)	# tmp167, MEM[(int[8] *)_54]
	addi	a5,s0,-56	#, tmp168,
	li	a3,8		#,
	mv	a2,a5	#, tmp168
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp169,
# problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
	bne	a5,zero,.L30	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,83		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L30:
# problem18.c:84:     free(result);
	ld	a0,-64(s0)		#, result
	call	free@plt	#
# problem18.c:86:     result = func0("o| .| o| .| o o| o o|", &count);
	addi	a5,s0,-68	#, tmp170,
	mv	a1,a5	#, tmp170
	lla	a0,.LC16	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
	lw	a1,-68(s0)		# count.10_9, count
	lla	a5,.LC3	# tmp171,
	ld	a2,0(a5)		# tmp172,
	ld	a3,8(a5)		# tmp173,
	ld	a4,16(a5)		# tmp174,
	ld	a5,24(a5)		# tmp175,
	sd	a2,-56(s0)	# tmp172, MEM[(int[8] *)_54]
	sd	a3,-48(s0)	# tmp173, MEM[(int[8] *)_54]
	sd	a4,-40(s0)	# tmp174, MEM[(int[8] *)_54]
	sd	a5,-32(s0)	# tmp175, MEM[(int[8] *)_54]
	addi	a5,s0,-56	#, tmp176,
	li	a3,8		#,
	mv	a2,a5	#, tmp176
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp177,
# problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
	bne	a5,zero,.L31	#, _10,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,87		#,
	lla	a1,.LC8	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L31:
# problem18.c:88:     free(result);
	ld	a0,-64(s0)		#, result
	call	free@plt	#
# problem18.c:90:     return 0;
	li	a5,0		# _46,
# problem18.c:91: }
	mv	a4,a5	# <retval>, _46
	la	a5,__stack_chk_guard		# tmp179,
	ld	a3, -24(s0)	# tmp182, D.3574
	ld	a5, 0(a5)	# tmp180, __stack_chk_guard
	xor	a5, a3, a5	# tmp180, tmp182
	li	a3, 0	# tmp182
	beq	a5,zero,.L33	#, tmp180,,
	call	__stack_chk_fail@plt	#
.L33:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
