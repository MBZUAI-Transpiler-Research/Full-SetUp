	.file	"problem18.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
	sd	a0,-88(s0)	# music_string, music_string
	sd	a1,-96(s0)	# count, count
# problem18.c:5: int *func0(const char *music_string, int *count) {
	la	a5,__stack_chk_guard		# tmp112,
	ld	a4, 0(a5)	# tmp197, __stack_chk_guard
	sd	a4, -24(s0)	# tmp197, D.2715
	li	a4, 0	# tmp197
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
	addiw	a5,a5,1	#, tmp113, _2
	sext.w	a5,a5	# _3, tmp113
# problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	sw	a5,-60(s0)	# _3, music_string_length
# problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	lw	a5,-60(s0)		# tmp116, music_string_length
	addiw	a5,a5,1	#, tmp114, tmp115
	sext.w	a5,a5	# _4, tmp114
# problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp117,
	sd	a5,-48(s0)	# tmp117, temp_music_string
# problem18.c:13:     strcpy(temp_music_string, music_string);
	ld	a1,-88(s0)		#, music_string
	ld	a0,-48(s0)		#, temp_music_string
	call	strcpy@plt	#
# problem18.c:14:     strcat(temp_music_string, " ");
	ld	a0,-48(s0)		#, temp_music_string
	call	strlen@plt	#
	mv	a5,a0	# tmp118,
	mv	a4,a5	# _77, tmp118
	ld	a5,-48(s0)		# tmp119, temp_music_string
	add	a5,a5,a4	# _77, _78, tmp119
	li	a4,32		# tmp120,
	sb	a4,0(a5)	# tmp120, MEM <char[1:2]> [(void *)_78]
	sb	zero,1(a5)	#, MEM <char[1:2]> [(void *)_78]
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	sw	zero,-64(s0)	#, i
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	j	.L2		#
.L17:
# problem18.c:17:         if (temp_music_string[i] == ' ') {
	lw	a5,-64(s0)		# _6, i
	ld	a4,-48(s0)		# tmp121, temp_music_string
	add	a5,a4,a5	# _6, _7, tmp121
	lbu	a5,0(a5)	# _8, *_7
# problem18.c:17:         if (temp_music_string[i] == ' ') {
	mv	a4,a5	# tmp122, _8
	li	a5,32		# tmp123,
	bne	a4,a5,.L3	#, tmp122, tmp123,
# problem18.c:18:             if (strcmp(current, "o") == 0) {
	addi	a5,s0,-32	#, tmp124,
	lla	a1,.LC4	#,
	mv	a0,a5	#, tmp124
	call	strcmp@plt	#
	mv	a5,a0	# tmp125,
# problem18.c:18:             if (strcmp(current, "o") == 0) {
	bne	a5,zero,.L4	#, _9,,
# problem18.c:19:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp127, size
	mv	a4,a5	# tmp126, tmp127
	lw	a5,-68(s0)		# tmp129, capacity
	sext.w	a4,a4	# tmp130, tmp126
	sext.w	a5,a5	# tmp131, tmp128
	bne	a4,a5,.L5	#, tmp130, tmp131,
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp133, capacity
	sext.w	a5,a5	# tmp134, tmp132
	ble	a5,zero,.L6	#, tmp134,,
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp137, capacity
	slliw	a5,a5,1	#, tmp135, tmp136
	sext.w	a5,a5	# iftmp.0_56, tmp135
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
	addiw	a4,a5,1	#, tmp138, size.1_12
	sw	a4,-72(s0)	# tmp138, size
# problem18.c:23:                 out[size++] = 4;
	slli	a5,a5,2	#, _14, _13
	ld	a4,-56(s0)		# tmp139, out
	add	a5,a4,a5	# _14, _15, tmp139
# problem18.c:23:                 out[size++] = 4;
	li	a4,4		# tmp140,
	sw	a4,0(a5)	# tmp140, *_15
.L4:
# problem18.c:25:             if (strcmp(current, "o|") == 0) {
	addi	a5,s0,-32	#, tmp141,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp141
	call	strcmp@plt	#
	mv	a5,a0	# tmp142,
# problem18.c:25:             if (strcmp(current, "o|") == 0) {
	bne	a5,zero,.L8	#, _16,,
# problem18.c:26:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp144, size
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-68(s0)		# tmp146, capacity
	sext.w	a4,a4	# tmp147, tmp143
	sext.w	a5,a5	# tmp148, tmp145
	bne	a4,a5,.L9	#, tmp147, tmp148,
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp150, capacity
	sext.w	a5,a5	# tmp151, tmp149
	ble	a5,zero,.L10	#, tmp151,,
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp154, capacity
	slliw	a5,a5,1	#, tmp152, tmp153
	sext.w	a5,a5	# iftmp.2_57, tmp152
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
	addiw	a4,a5,1	#, tmp155, size.3_19
	sw	a4,-72(s0)	# tmp155, size
# problem18.c:30:                 out[size++] = 2;
	slli	a5,a5,2	#, _21, _20
	ld	a4,-56(s0)		# tmp156, out
	add	a5,a4,a5	# _21, _22, tmp156
# problem18.c:30:                 out[size++] = 2;
	li	a4,2		# tmp157,
	sw	a4,0(a5)	# tmp157, *_22
.L8:
# problem18.c:32:             if (strcmp(current, ".|") == 0) {
	addi	a5,s0,-32	#, tmp158,
	lla	a1,.LC6	#,
	mv	a0,a5	#, tmp158
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
# problem18.c:32:             if (strcmp(current, ".|") == 0) {
	bne	a5,zero,.L12	#, _23,,
# problem18.c:33:                 if (size == capacity) {
	lw	a5,-72(s0)		# tmp161, size
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-68(s0)		# tmp163, capacity
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	bne	a4,a5,.L13	#, tmp164, tmp165,
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp167, capacity
	sext.w	a5,a5	# tmp168, tmp166
	ble	a5,zero,.L14	#, tmp168,,
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	lw	a5,-68(s0)		# tmp171, capacity
	slliw	a5,a5,1	#, tmp169, tmp170
	sext.w	a5,a5	# iftmp.4_58, tmp169
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
	addiw	a4,a5,1	#, tmp172, size.5_26
	sw	a4,-72(s0)	# tmp172, size
# problem18.c:37:                 out[size++] = 1;
	slli	a5,a5,2	#, _28, _27
	ld	a4,-56(s0)		# tmp173, out
	add	a5,a4,a5	# _28, _29, tmp173
# problem18.c:37:                 out[size++] = 1;
	li	a4,1		# tmp174,
	sw	a4,0(a5)	# tmp174, *_29
.L12:
# problem18.c:39:             strcpy(current, "");
	sb	zero,-32(s0)	#, MEM[(char * {ref-all})&current]
	j	.L16		#
.L3:
# problem18.c:41:             size_t len = strlen(current);
	addi	a5,s0,-32	#, tmp175,
	mv	a0,a5	#, tmp175
	call	strlen@plt	#
	sd	a0,-40(s0)	#, len
# problem18.c:42:             if (len < sizeof(current) - 1) {
	ld	a4,-40(s0)		# tmp176, len
	li	a5,1		# tmp177,
	bgtu	a4,a5,.L16	#, tmp176, tmp177,
# problem18.c:43:                 current[len] = temp_music_string[i];
	lw	a5,-64(s0)		# _30, i
	ld	a4,-48(s0)		# tmp178, temp_music_string
	add	a5,a4,a5	# _30, _31, tmp178
	lbu	a4,0(a5)	# _32, *_31
# problem18.c:43:                 current[len] = temp_music_string[i];
	ld	a5,-40(s0)		# tmp180, len
	addi	a5,a5,-16	#, tmp201, tmp180
	add	a5,a5,s0	#, tmp179, tmp201
	sb	a4,-16(a5)	# _32, current[len_86]
# problem18.c:44:                 current[len + 1] = '\0';
	ld	a5,-40(s0)		# tmp181, len
	addi	a5,a5,1	#, _33, tmp181
# problem18.c:44:                 current[len + 1] = '\0';
	addi	a5,a5,-16	#, tmp202, _33
	add	a5,a5,s0	#, tmp182, tmp202
	sb	zero,-16(a5)	#, current[_33]
.L16:
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	lw	a5,-64(s0)		# tmp185, i
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-64(s0)	# tmp183, i
.L2:
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	lw	a5,-64(s0)		# tmp187, i
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-60(s0)		# tmp189, music_string_length
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L17	#, tmp190, tmp191,
# problem18.c:48:     free(temp_music_string);
	ld	a0,-48(s0)		#, temp_music_string
	call	free@plt	#
# problem18.c:49:     *count = size;
	ld	a5,-96(s0)		# tmp192, count
	lw	a4,-72(s0)		# tmp193, size
	sw	a4,0(a5)	# tmp193, *count_82(D)
# problem18.c:50:     return out;
	ld	a5,-56(s0)		# _84, out
	mv	a4,a5	# <retval>, _84
# problem18.c:51: }
	la	a5,__stack_chk_guard		# tmp195,
	ld	a3, -24(s0)	# tmp198, D.2715
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp82, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp84, b_size
	sw	a5,-44(s0)	# tmp83, a_size
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-48(s0)	# tmp85, b_size
# problem18.c:59:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp87, a_size
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, b_size
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L21	#, tmp90, tmp91,
# problem18.c:59:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
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
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem18.c:61:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem18.c:61:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L24	#, tmp94, tmp95,
# problem18.c:61:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L22		#
.L24:
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L23:
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, a_size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L25	#, tmp103, tmp104,
# problem18.c:63:     return 1;
	li	a5,1		# _10,
.L22:
# problem18.c:64: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
# problem18.c:66: int main() {
	la	a5,__stack_chk_guard		# tmp84,
	ld	a4, 0(a5)	# tmp119, __stack_chk_guard
	sd	a4, -24(s0)	# tmp119, D.2722
	li	a4, 0	# tmp119
# problem18.c:70:     result = func0("", &count);
	addi	a5,s0,-68	#, tmp85,
	mv	a1,a5	#, tmp85
	lla	a0,.LC7	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
	lw	a5,-68(s0)		# count.6_1, count
	addi	a4,s0,-56	#, tmp86,
	li	a3,0		#,
	mv	a2,a4	#, tmp86
	mv	a1,a5	#, count.6_1
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp87,
	bne	a5,zero,.L27	#, _2,,
# problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
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
	addi	a5,s0,-68	#, tmp88,
	mv	a1,a5	#, tmp88
	lla	a0,.LC10	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:75:     assert(issame(result, count, (int[]){4, 4, 4, 4}, 4));
	lw	a1,-68(s0)		# count.7_3, count
	lla	a5,.LC0	# tmp89,
	ld	a4,0(a5)		# tmp90,
	sd	a4,-56(s0)	# tmp90, MEM[(int[4] *)_55]
	ld	a5,8(a5)		# tmp91,
	sd	a5,-48(s0)	# tmp91, MEM[(int[4] *)_55]
	addi	a5,s0,-56	#, tmp92,
	li	a3,4		#,
	mv	a2,a5	#, tmp92
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp93,
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
	addi	a5,s0,-68	#, tmp94,
	mv	a1,a5	#, tmp94
	lla	a0,.LC12	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
	lw	a1,-68(s0)		# count.8_5, count
	lla	a5,.LC1	# tmp95,
	ld	a4,0(a5)		# tmp96,
	sd	a4,-56(s0)	# tmp96, MEM[(int[4] *)_55]
	ld	a5,8(a5)		# tmp97,
	sd	a5,-48(s0)	# tmp97, MEM[(int[4] *)_55]
	addi	a5,s0,-56	#, tmp98,
	li	a3,4		#,
	mv	a2,a5	#, tmp98
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp99,
	bne	a5,zero,.L29	#, _6,,
# problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
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
	addi	a5,s0,-68	#, tmp100,
	mv	a1,a5	#, tmp100
	lla	a0,.LC14	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
	lw	a1,-68(s0)		# count.9_7, count
	lla	a5,.LC2	# tmp101,
	ld	a2,0(a5)		# tmp102,
	ld	a3,8(a5)		# tmp103,
	ld	a4,16(a5)		# tmp104,
	ld	a5,24(a5)		# tmp105,
	sd	a2,-56(s0)	# tmp102, MEM[(int[8] *)_55]
	sd	a3,-48(s0)	# tmp103, MEM[(int[8] *)_55]
	sd	a4,-40(s0)	# tmp104, MEM[(int[8] *)_55]
	sd	a5,-32(s0)	# tmp105, MEM[(int[8] *)_55]
	addi	a5,s0,-56	#, tmp106,
	li	a3,8		#,
	mv	a2,a5	#, tmp106
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp107,
	bne	a5,zero,.L30	#, _8,,
# problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
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
	addi	a5,s0,-68	#, tmp108,
	mv	a1,a5	#, tmp108
	lla	a0,.LC16	#,
	call	func0		#
	sd	a0,-64(s0)	#, result
# problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
	lw	a1,-68(s0)		# count.10_9, count
	lla	a5,.LC3	# tmp109,
	ld	a2,0(a5)		# tmp110,
	ld	a3,8(a5)		# tmp111,
	ld	a4,16(a5)		# tmp112,
	ld	a5,24(a5)		# tmp113,
	sd	a2,-56(s0)	# tmp110, MEM[(int[8] *)_55]
	sd	a3,-48(s0)	# tmp111, MEM[(int[8] *)_55]
	sd	a4,-40(s0)	# tmp112, MEM[(int[8] *)_55]
	sd	a5,-32(s0)	# tmp113, MEM[(int[8] *)_55]
	addi	a5,s0,-56	#, tmp114,
	li	a3,8		#,
	mv	a2,a5	#, tmp114
	ld	a0,-64(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp115,
	bne	a5,zero,.L31	#, _10,,
# problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
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
	li	a5,0		# _47,
# problem18.c:91: }
	mv	a4,a5	# <retval>, _47
	la	a5,__stack_chk_guard		# tmp117,
	ld	a3, -24(s0)	# tmp120, D.2722
	ld	a5, 0(a5)	# tmp118, __stack_chk_guard
	xor	a5, a3, a5	# tmp118, tmp120
	li	a3, 0	# tmp120
	beq	a5,zero,.L33	#, tmp118,,
# problem18.c:91: }
	call	__stack_chk_fail@plt	#
.L33:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
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
