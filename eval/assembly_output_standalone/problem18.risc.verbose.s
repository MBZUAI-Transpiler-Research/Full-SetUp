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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
	sd	a0,-88(s0)	# music_string, music_string
	sd	a1,-96(s0)	# count, count
# eval/problem18//code.c:5: int *func0(const char *music_string, int *count) {
	la	a5,__stack_chk_guard		# tmp112,
	ld	a4, 0(a5)	# tmp197, __stack_chk_guard
	sd	a4, -24(s0)	# tmp197, D.2640
	li	a4, 0	# tmp197
# eval/problem18//code.c:6:     int *out = NULL;
	sd	zero,-56(s0)	#, out
# eval/problem18//code.c:7:     int size = 0;
	sw	zero,-72(s0)	#, size
# eval/problem18//code.c:8:     int capacity = 0;
	sw	zero,-68(s0)	#, capacity
# eval/problem18//code.c:10:     char current[3] = "";
	sh	zero,-32(s0)	#, current
	sb	zero,-30(s0)	#, current
# eval/problem18//code.c:11:     int music_string_length = strlen(music_string) + 1;
	ld	a0,-88(s0)		#, music_string
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem18//code.c:11:     int music_string_length = strlen(music_string) + 1;
	sext.w	a5,a5	# _2, _1
	addiw	a5,a5,1	#, tmp113, _2
	sext.w	a5,a5	# _3, tmp113
# eval/problem18//code.c:11:     int music_string_length = strlen(music_string) + 1;
	sw	a5,-60(s0)	# _3, music_string_length
# eval/problem18//code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	lw	a5,-60(s0)		# tmp116, music_string_length
	addiw	a5,a5,1	#, tmp114, tmp115
	sext.w	a5,a5	# _4, tmp114
# eval/problem18//code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp117,
	sd	a5,-48(s0)	# tmp117, temp_music_string
# eval/problem18//code.c:13:     strcpy(temp_music_string, music_string);
	ld	a1,-88(s0)		#, music_string
	ld	a0,-48(s0)		#, temp_music_string
	call	strcpy@plt	#
# eval/problem18//code.c:14:     strcat(temp_music_string, " ");
	ld	a0,-48(s0)		#, temp_music_string
	call	strlen@plt	#
	mv	a5,a0	# tmp118,
	mv	a4,a5	# _77, tmp118
	ld	a5,-48(s0)		# tmp119, temp_music_string
	add	a5,a5,a4	# _77, _78, tmp119
	li	a4,32		# tmp120,
	sb	a4,0(a5)	# tmp120, MEM <char[1:2]> [(void *)_78]
	sb	zero,1(a5)	#, MEM <char[1:2]> [(void *)_78]
# eval/problem18//code.c:16:     for (int i = 0; i < music_string_length; i++) {
	sw	zero,-64(s0)	#, i
# eval/problem18//code.c:16:     for (int i = 0; i < music_string_length; i++) {
	j	.L2		#
.L17:
# eval/problem18//code.c:17:         if (temp_music_string[i] == ' ') {
	lw	a5,-64(s0)		# _6, i
	ld	a4,-48(s0)		# tmp121, temp_music_string
	add	a5,a4,a5	# _6, _7, tmp121
	lbu	a5,0(a5)	# _8, *_7
# eval/problem18//code.c:17:         if (temp_music_string[i] == ' ') {
	mv	a4,a5	# tmp122, _8
	li	a5,32		# tmp123,
	bne	a4,a5,.L3	#, tmp122, tmp123,
# eval/problem18//code.c:18:             if (strcmp(current, "o") == 0) {
	addi	a5,s0,-32	#, tmp124,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp124
	call	strcmp@plt	#
	mv	a5,a0	# tmp125,
# eval/problem18//code.c:18:             if (strcmp(current, "o") == 0) {
	bne	a5,zero,.L4	#, _9,,
# eval/problem18//code.c:19:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp127, size
	mv	a4,a5	# tmp126, tmp127
	lw	a5,-68(s0)		# tmp129, capacity
	sext.w	a4,a4	# tmp130, tmp126
	sext.w	a5,a5	# tmp131, tmp128
	bne	a4,a5,.L5	#, tmp130, tmp131,
# eval/problem18//code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp133, capacity
	sext.w	a5,a5	# tmp134, tmp132
	ble	a5,zero,.L6	#, tmp134,,
# eval/problem18//code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp137, capacity
	slliw	a5,a5,1	#, tmp135, tmp136
	sext.w	a5,a5	# iftmp.0_56, tmp135
	j	.L7		#
.L6:
# eval/problem18//code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	li	a5,4		# iftmp.0_56,
.L7:
# eval/problem18//code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	sw	a5,-68(s0)	# iftmp.0_56, capacity
# eval/problem18//code.c:21:                     out = realloc(out, capacity * sizeof(int));
	lw	a5,-68(s0)		# _10, capacity
	slli	a5,a5,2	#, _11, _10
	mv	a1,a5	#, _11
	ld	a0,-56(s0)		#, out
	call	realloc@plt	#
	sd	a0,-56(s0)	#, out
.L5:
# eval/problem18//code.c:23:                 out[size++] = 4;
	lw	a5,-72(s0)		# size.1_12, size
	addiw	a4,a5,1	#, tmp138, size.1_12
	sw	a4,-72(s0)	# tmp138, size
# eval/problem18//code.c:23:                 out[size++] = 4;
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp139, out
	add	a5,a4,a5	# _14, _15, tmp139
# eval/problem18//code.c:23:                 out[size++] = 4;
	li	a4,4		# tmp140,
	sw	a4,0(a5)	# tmp140, *_15
.L4:
# eval/problem18//code.c:25:             if (strcmp(current, "o|") == 0) {
	addi	a5,s0,-32	#, tmp141,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp141
	call	strcmp@plt	#
	mv	a5,a0	# tmp142,
# eval/problem18//code.c:25:             if (strcmp(current, "o|") == 0) {
	bne	a5,zero,.L8	#, _16,,
# eval/problem18//code.c:26:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp144, size
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-68(s0)		# tmp146, capacity
	sext.w	a4,a4	# tmp147, tmp143
	sext.w	a5,a5	# tmp148, tmp145
	bne	a4,a5,.L9	#, tmp147, tmp148,
# eval/problem18//code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp150, capacity
	sext.w	a5,a5	# tmp151, tmp149
	ble	a5,zero,.L10	#, tmp151,,
# eval/problem18//code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp154, capacity
	slliw	a5,a5,1	#, tmp152, tmp153
	sext.w	a5,a5	# iftmp.2_57, tmp152
	j	.L11		#
.L10:
# eval/problem18//code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	li	a5,4		# iftmp.2_57,
.L11:
# eval/problem18//code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	sw	a5,-68(s0)	# iftmp.2_57, capacity
# eval/problem18//code.c:28:                     out = realloc(out, capacity * sizeof(int));
	lw	a5,-68(s0)		# _17, capacity
	slli	a5,a5,2	#, _18, _17
	mv	a1,a5	#, _18
	ld	a0,-56(s0)		#, out
	call	realloc@plt	#
	sd	a0,-56(s0)	#, out
.L9:
# eval/problem18//code.c:30:                 out[size++] = 2;
	lw	a5,-72(s0)		# size.3_19, size
	addiw	a4,a5,1	#, tmp155, size.3_19
	sw	a4,-72(s0)	# tmp155, size
# eval/problem18//code.c:30:                 out[size++] = 2;
	slli	a5,a5,2	#, _21, _20
	ld	a4,-56(s0)		# tmp156, out
	add	a5,a4,a5	# _21, _22, tmp156
# eval/problem18//code.c:30:                 out[size++] = 2;
	li	a4,2		# tmp157,
	sw	a4,0(a5)	# tmp157, *_22
.L8:
# eval/problem18//code.c:32:             if (strcmp(current, ".|") == 0) {
	addi	a5,s0,-32	#, tmp158,
	lla	a1,.LC2	#,
	mv	a0,a5	#, tmp158
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
# eval/problem18//code.c:32:             if (strcmp(current, ".|") == 0) {
	bne	a5,zero,.L12	#, _23,,
# eval/problem18//code.c:33:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp161, size
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-68(s0)		# tmp163, capacity
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	bne	a4,a5,.L13	#, tmp164, tmp165,
# eval/problem18//code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp167, capacity
	sext.w	a5,a5	# tmp168, tmp166
	ble	a5,zero,.L14	#, tmp168,,
# eval/problem18//code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp171, capacity
	slliw	a5,a5,1	#, tmp169, tmp170
	sext.w	a5,a5	# iftmp.4_58, tmp169
	j	.L15		#
.L14:
# eval/problem18//code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	li	a5,4		# iftmp.4_58,
.L15:
# eval/problem18//code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	sw	a5,-68(s0)	# iftmp.4_58, capacity
# eval/problem18//code.c:35:                     out = realloc(out, capacity * sizeof(int));
	lw	a5,-68(s0)		# _24, capacity
	slli	a5,a5,2	#, _25, _24
	mv	a1,a5	#, _25
	ld	a0,-56(s0)		#, out
	call	realloc@plt	#
	sd	a0,-56(s0)	#, out
.L13:
# eval/problem18//code.c:37:                 out[size++] = 1;
	lw	a5,-72(s0)		# size.5_26, size
	addiw	a4,a5,1	#, tmp172, size.5_26
	sw	a4,-72(s0)	# tmp172, size
# eval/problem18//code.c:37:                 out[size++] = 1;
	slli	a5,a5,2	#, _28, _27
	ld	a4,-56(s0)		# tmp173, out
	add	a5,a4,a5	# _28, _29, tmp173
# eval/problem18//code.c:37:                 out[size++] = 1;
	li	a4,1		# tmp174,
	sw	a4,0(a5)	# tmp174, *_29
.L12:
# eval/problem18//code.c:39:             strcpy(current, "");
	sb	zero,-32(s0)	#, MEM[(char * {ref-all})&current]
	j	.L16		#
.L3:
# eval/problem18//code.c:41:             size_t len = strlen(current);
	addi	a5,s0,-32	#, tmp175,
	mv	a0,a5	#, tmp175
	call	strlen@plt	#
	sd	a0,-40(s0)	#, len
# eval/problem18//code.c:42:             if (len < sizeof(current) - 1) {
	ld	a4,-40(s0)		# tmp176, len
	li	a5,1		# tmp177,
	bgtu	a4,a5,.L16	#, tmp176, tmp177,
# eval/problem18//code.c:43:                 current[len] = temp_music_string[i];
	lw	a5,-64(s0)		# _30, i
	ld	a4,-48(s0)		# tmp178, temp_music_string
	add	a5,a4,a5	# _30, _31, tmp178
	lbu	a4,0(a5)	# _32, *_31
# eval/problem18//code.c:43:                 current[len] = temp_music_string[i];
	ld	a5,-40(s0)		# tmp180, len
	addi	a5,a5,-16	#, tmp201, tmp180
	add	a5,a5,s0	#, tmp179, tmp201
	sb	a4,-16(a5)	# _32, current[len_86]
# eval/problem18//code.c:44:                 current[len + 1] = '\0';
	ld	a5,-40(s0)		# tmp181, len
	addi	a5,a5,1	#, _33, tmp181
# eval/problem18//code.c:44:                 current[len + 1] = '\0';
	addi	a5,a5,-16	#, tmp202, _33
	add	a5,a5,s0	#, tmp182, tmp202
	sb	zero,-16(a5)	#, current[_33]
.L16:
# eval/problem18//code.c:16:     for (int i = 0; i < music_string_length; i++) {
	lw	a5,-64(s0)		# tmp185, i
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-64(s0)	# tmp183, i
.L2:
# eval/problem18//code.c:16:     for (int i = 0; i < music_string_length; i++) {
	lw	a5,-64(s0)		# tmp187, i
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-60(s0)		# tmp189, music_string_length
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L17	#, tmp190, tmp191,
# eval/problem18//code.c:48:     free(temp_music_string);
	ld	a0,-48(s0)		#, temp_music_string
	call	free@plt	#
# eval/problem18//code.c:49:     *count = size;
	ld	a5,-96(s0)		# tmp192, count
	lw	a4,-72(s0)		# tmp193, size
	sw	a4,0(a5)	# tmp193, *count_82(D)
# eval/problem18//code.c:50:     return out;
	ld	a5,-56(s0)		# _84, out
	mv	a4,a5	# <retval>, _84
# eval/problem18//code.c:51: }
	la	a5,__stack_chk_guard		# tmp195,
	ld	a3, -24(s0)	# tmp198, D.2640
	ld	a5, 0(a5)	# tmp196, __stack_chk_guard
	xor	a5, a3, a5	# tmp196, tmp198
	li	a3, 0	# tmp198
	beq	a5,zero,.L19	#, tmp196,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
