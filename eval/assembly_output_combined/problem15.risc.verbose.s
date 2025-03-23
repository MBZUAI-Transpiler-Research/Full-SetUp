	.file	"problem15.c"
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# str, str
	sd	a1,-80(s0)	# count, count
# problem15.c:6:     int len = strlen(str);
	ld	a0,-72(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem15.c:6:     int len = strlen(str);
	sw	a5,-60(s0)	# _1, len
# problem15.c:7:     char **out = malloc(len * sizeof(char *));
	lw	a5,-60(s0)		# _2, len
	slli	a5,a5,3	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp96,
	sd	a5,-48(s0)	# tmp96, out
# problem15.c:9:     char *current = malloc(len + 1);
	lw	a5,-60(s0)		# tmp99, len
	addiw	a5,a5,1	#, tmp97, tmp98
	sext.w	a5,a5	# _4, tmp97
# problem15.c:9:     char *current = malloc(len + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp100,
	sd	a5,-56(s0)	# tmp100, current
# problem15.c:10:     current[0] = '\0';
	ld	a5,-56(s0)		# tmp101, current
	sb	zero,0(a5)	#, *current_32
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	sw	zero,-64(s0)	#, i
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	j	.L2		#
.L3:
# problem15.c:13:         size_t current_len = strlen(current);
	ld	a0,-56(s0)		#, current
	call	strlen@plt	#
	sd	a0,-40(s0)	#, current_len
# problem15.c:14:         current = realloc(current, current_len + 2);
	ld	a5,-40(s0)		# tmp102, current_len
	addi	a5,a5,2	#, _6, tmp102
	mv	a1,a5	#, _6
	ld	a0,-56(s0)		#, current
	call	realloc@plt	#
	sd	a0,-56(s0)	#, current
# problem15.c:15:         current[current_len] = str[i];
	lw	a5,-64(s0)		# _7, i
	ld	a4,-72(s0)		# tmp103, str
	add	a4,a4,a5	# _7, _8, tmp103
# problem15.c:15:         current[current_len] = str[i];
	ld	a3,-56(s0)		# tmp104, current
	ld	a5,-40(s0)		# tmp105, current_len
	add	a5,a3,a5	# tmp105, _9, tmp104
# problem15.c:15:         current[current_len] = str[i];
	lbu	a4,0(a4)	# _10, *_8
# problem15.c:15:         current[current_len] = str[i];
	sb	a4,0(a5)	# _10, *_9
# problem15.c:16:         current[current_len + 1] = '\0';
	ld	a5,-40(s0)		# tmp106, current_len
	addi	a5,a5,1	#, _11, tmp106
	ld	a4,-56(s0)		# tmp107, current
	add	a5,a4,a5	# _11, _12, tmp107
# problem15.c:16:         current[current_len + 1] = '\0';
	sb	zero,0(a5)	#, *_12
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	ld	a0,-56(s0)		#, current
	call	strlen@plt	#
	mv	a5,a0	# _13,
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	addi	a3,a5,1	#, _14, _13
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	lw	a5,-64(s0)		# _15, i
	slli	a5,a5,3	#, _16, _15
	ld	a4,-48(s0)		# tmp108, out
	add	s1,a4,a5	# _16, _17, tmp108
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	mv	a0,a3	#, _14
	call	malloc@plt	#
	mv	a5,a0	# tmp109,
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	sd	a5,0(s1)	# _18, *_17
# problem15.c:19:         strcpy(out[i], current);
	lw	a5,-64(s0)		# _19, i
	slli	a5,a5,3	#, _20, _19
	ld	a4,-48(s0)		# tmp110, out
	add	a5,a4,a5	# _20, _21, tmp110
# problem15.c:19:         strcpy(out[i], current);
	ld	a5,0(a5)		# _22, *_21
	ld	a1,-56(s0)		#, current
	mv	a0,a5	#, _22
	call	strcpy@plt	#
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	lw	a5,-64(s0)		# tmp113, i
	addiw	a5,a5,1	#, tmp111, tmp112
	sw	a5,-64(s0)	# tmp111, i
.L2:
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	lw	a5,-64(s0)		# tmp115, i
	mv	a4,a5	# tmp114, tmp115
	lw	a5,-60(s0)		# tmp117, len
	sext.w	a4,a4	# tmp118, tmp114
	sext.w	a5,a5	# tmp119, tmp116
	blt	a4,a5,.L3	#, tmp118, tmp119,
# problem15.c:21:     free(current);
	ld	a0,-56(s0)		#, current
	call	free@plt	#
# problem15.c:23:     *count = len;
	ld	a5,-80(s0)		# tmp120, count
	lw	a4,-60(s0)		# tmp121, len
	sw	a4,0(a5)	# tmp121, *count_36(D)
# problem15.c:24:     return out;
	ld	a5,-48(s0)		# _38, out
# problem15.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	ld	s1,56(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp83, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp85, b_size
	sw	a5,-44(s0)	# tmp84, a_size
	mv	a5,a4	# tmp86, tmp85
	sw	a5,-48(s0)	# tmp86, b_size
# problem15.c:34:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp88, a_size
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-48(s0)		# tmp90, b_size
	sext.w	a4,a4	# tmp91, tmp87
	sext.w	a5,a5	# tmp92, tmp89
	beq	a4,a5,.L6	#, tmp91, tmp92,
# problem15.c:34:     if (a_size != b_size) return 0;
	li	a5,0		# _11,
	j	.L7		#
.L6:
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	j	.L8		#
.L10:
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp93, a
	add	a5,a4,a5	# _2, _3, tmp93
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp94, b
	add	a5,a4,a5	# _6, _7, tmp94
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L9	#, _9,,
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
	j	.L7		#
.L9:
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L8:
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, a_size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L10	#, tmp103, tmp104,
# problem15.c:38:     return 1;
	li	a5,1		# _11,
.L7:
# problem15.c:39: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.align	1
	.globl	free_prefixes
	.type	free_prefixes, @function
free_prefixes:
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# prefixes, prefixes
	mv	a5,a1	# tmp76, count
	sw	a5,-44(s0)	# tmp77, count
# problem15.c:42:     for (int i = 0; i < count; i++) {
	sw	zero,-20(s0)	#, i
# problem15.c:42:     for (int i = 0; i < count; i++) {
	j	.L12		#
.L13:
# problem15.c:43:         free(prefixes[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp78, prefixes
	add	a5,a4,a5	# _2, _3, tmp78
# problem15.c:43:         free(prefixes[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	free@plt	#
# problem15.c:42:     for (int i = 0; i < count; i++) {
	lw	a5,-20(s0)		# tmp81, i
	addiw	a5,a5,1	#, tmp79, tmp80
	sw	a5,-20(s0)	# tmp79, i
.L12:
# problem15.c:42:     for (int i = 0; i < count; i++) {
	lw	a5,-20(s0)		# tmp83, i
	mv	a4,a5	# tmp82, tmp83
	lw	a5,-44(s0)		# tmp85, count
	sext.w	a4,a4	# tmp86, tmp82
	sext.w	a5,a5	# tmp87, tmp84
	blt	a4,a5,.L13	#, tmp86, tmp87,
# problem15.c:45:     free(prefixes);
	ld	a0,-40(s0)		#, prefixes
	call	free@plt	#
# problem15.c:46: }
	nop	
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	free_prefixes, .-free_prefixes
	.section	.rodata
	.align	3
.LC7:
	.string	""
	.align	3
.LC8:
	.string	"problem15.c"
	.align	3
.LC9:
	.string	"issame(result, 0, NULL, 0)"
	.align	3
.LC5:
	.string	"asdfgh"
	.align	3
.LC11:
	.string	"issame(result, count, expected1, 6)"
	.align	3
.LC12:
	.string	"W"
	.align	3
.LC13:
	.string	"WW"
	.align	3
.LC14:
	.string	"WWW"
	.align	3
.LC15:
	.string	"issame(result, count, expected2, 3)"
	.align	3
.LC0:
	.string	"a"
	.align	3
.LC1:
	.string	"as"
	.align	3
.LC2:
	.string	"asd"
	.align	3
.LC3:
	.string	"asdf"
	.align	3
.LC4:
	.string	"asdfg"
	.data
	.align	3
.LC10:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
# problem15.c:48: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp104, __stack_chk_guard
	sd	a4, -24(s0)	# tmp104, D.2679
	li	a4, 0	# tmp104
# problem15.c:52:     result = func0("", &count);
	addi	a5,s0,-108	#, tmp83,
	mv	a1,a5	#, tmp83
	lla	a0,.LC7	#,
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem15.c:53:     assert(issame(result, 0, NULL, 0));
	li	a3,0		#,
	li	a2,0		#,
	li	a1,0		#,
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp84,
	bne	a5,zero,.L15	#, _1,,
# problem15.c:53:     assert(issame(result, 0, NULL, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC8	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L15:
# problem15.c:54:     free_prefixes(result, count);
	lw	a5,-108(s0)		# count.0_2, count
	mv	a1,a5	#, count.0_2
	ld	a0,-104(s0)		#, result
	call	free_prefixes		#
# problem15.c:56:     char *expected1[] = {"a", "as", "asd", "asdf", "asdfg", "asdfgh"};
	lla	a5,.LC10	# tmp85,
	ld	a0,0(a5)		# tmp86,
	ld	a1,8(a5)		# tmp87,
	ld	a2,16(a5)		# tmp88,
	ld	a3,24(a5)		# tmp89,
	ld	a4,32(a5)		# tmp90,
	ld	a5,40(a5)		# tmp91,
	sd	a0,-72(s0)	# tmp86, expected1
	sd	a1,-64(s0)	# tmp87, expected1
	sd	a2,-56(s0)	# tmp88, expected1
	sd	a3,-48(s0)	# tmp89, expected1
	sd	a4,-40(s0)	# tmp90, expected1
	sd	a5,-32(s0)	# tmp91, expected1
# problem15.c:57:     result = func0("asdfgh", &count);
	addi	a5,s0,-108	#, tmp92,
	mv	a1,a5	#, tmp92
	lla	a0,.LC5	#,
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem15.c:58:     assert(issame(result, count, expected1, 6));
	lw	a5,-108(s0)		# count.1_3, count
	addi	a4,s0,-72	#, tmp93,
	li	a3,6		#,
	mv	a2,a4	#, tmp93
	mv	a1,a5	#, count.1_3
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L16	#, _4,,
# problem15.c:58:     assert(issame(result, count, expected1, 6));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC8	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem15.c:59:     free_prefixes(result, count);
	lw	a5,-108(s0)		# count.2_5, count
	mv	a1,a5	#, count.2_5
	ld	a0,-104(s0)		#, result
	call	free_prefixes		#
# problem15.c:61:     char *expected2[] = {"W", "WW", "WWW"};
	lla	a5,.LC12	# tmp95,
	sd	a5,-96(s0)	# tmp95, expected2[0]
	lla	a5,.LC13	# tmp96,
	sd	a5,-88(s0)	# tmp96, expected2[1]
	lla	a5,.LC14	# tmp97,
	sd	a5,-80(s0)	# tmp97, expected2[2]
# problem15.c:62:     result = func0("WWW", &count);
	addi	a5,s0,-108	#, tmp98,
	mv	a1,a5	#, tmp98
	lla	a0,.LC14	#,
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem15.c:63:     assert(issame(result, count, expected2, 3));
	lw	a5,-108(s0)		# count.3_6, count
	addi	a4,s0,-96	#, tmp99,
	li	a3,3		#,
	mv	a2,a4	#, tmp99
	mv	a1,a5	#, count.3_6
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp100,
	bne	a5,zero,.L17	#, _7,,
# problem15.c:63:     assert(issame(result, count, expected2, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,63		#,
	lla	a1,.LC8	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L17:
# problem15.c:64:     free_prefixes(result, count);
	lw	a5,-108(s0)		# count.4_8, count
	mv	a1,a5	#, count.4_8
	ld	a0,-104(s0)		#, result
	call	free_prefixes		#
# problem15.c:66:     return 0;
	li	a5,0		# _29,
# problem15.c:67: }
	mv	a4,a5	# <retval>, _29
	la	a5,__stack_chk_guard		# tmp102,
	ld	a3, -24(s0)	# tmp105, D.2679
	ld	a5, 0(a5)	# tmp103, __stack_chk_guard
	xor	a5, a3, a5	# tmp103, tmp105
	li	a3, 0	# tmp105
	beq	a5,zero,.L19	#, tmp103,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	addi	sp,sp,112	#,,
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
