	.file	"problem15.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
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
	mv	a5,a0	# tmp158,
	sd	a5,-48(s0)	# tmp158, out
# problem15.c:9:     char *current = malloc(len + 1);
	lw	a5,-60(s0)		# tmp161, len
	addiw	a5,a5,1	#, tmp159, tmp160
	sext.w	a5,a5	# _4, tmp159
# problem15.c:9:     char *current = malloc(len + 1);
	mv	a0,a5	#, _5
	call	malloc@plt	#
	mv	a5,a0	# tmp162,
	sd	a5,-56(s0)	# tmp162, current
# problem15.c:10:     current[0] = '\0';
	ld	a5,-56(s0)		# tmp163, current
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
	ld	a5,-40(s0)		# tmp164, current_len
	addi	a5,a5,2	#, _6, tmp164
	mv	a1,a5	#, _6
	ld	a0,-56(s0)		#, current
	call	realloc@plt	#
	sd	a0,-56(s0)	#, current
# problem15.c:15:         current[current_len] = str[i];
	lw	a5,-64(s0)		# _7, i
	ld	a4,-72(s0)		# tmp165, str
	add	a4,a4,a5	# _7, _8, tmp165
# problem15.c:15:         current[current_len] = str[i];
	ld	a3,-56(s0)		# tmp166, current
	ld	a5,-40(s0)		# tmp167, current_len
	add	a5,a3,a5	# tmp167, _9, tmp166
# problem15.c:15:         current[current_len] = str[i];
	lbu	a4,0(a4)	# _10, *_8
# problem15.c:15:         current[current_len] = str[i];
	sb	a4,0(a5)	# _10, *_9
# problem15.c:16:         current[current_len + 1] = '\0';
	ld	a5,-40(s0)		# tmp168, current_len
	addi	a5,a5,1	#, _11, tmp168
	ld	a4,-56(s0)		# tmp169, current
	add	a5,a4,a5	# _11, _12, tmp169
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
	ld	a4,-48(s0)		# tmp170, out
	add	s1,a4,a5	# _16, _17, tmp170
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	mv	a0,a3	#, _14
	call	malloc@plt	#
	mv	a5,a0	# tmp171,
# problem15.c:18:         out[i] = malloc(strlen(current) + 1);
	sd	a5,0(s1)	# _18, *_17
# problem15.c:19:         strcpy(out[i], current);
	lw	a5,-64(s0)		# _19, i
	slli	a5,a5,3	#, _20, _19
	ld	a4,-48(s0)		# tmp172, out
	add	a5,a4,a5	# _20, _21, tmp172
# problem15.c:19:         strcpy(out[i], current);
	ld	a5,0(a5)		# _22, *_21
	ld	a1,-56(s0)		#, current
	mv	a0,a5	#, _22
	call	strcpy@plt	#
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	lw	a5,-64(s0)		# tmp175, i
	addiw	a5,a5,1	#, tmp173, tmp174
	sw	a5,-64(s0)	# tmp173, i
.L2:
# problem15.c:12:     for (int i = 0; i < len; ++i) {
	lw	a5,-64(s0)		# tmp177, i
	mv	a4,a5	# tmp176, tmp177
	lw	a5,-60(s0)		# tmp179, len
	sext.w	a4,a4	# tmp180, tmp176
	sext.w	a5,a5	# tmp181, tmp178
	blt	a4,a5,.L3	#, tmp180, tmp181,
# problem15.c:21:     free(current);
	ld	a0,-56(s0)		#, current
	call	free@plt	#
# problem15.c:23:     *count = len;
	ld	a5,-80(s0)		# tmp182, count
	lw	a4,-60(s0)		# tmp183, len
	sw	a4,0(a5)	# tmp183, *count_36(D)
# problem15.c:24:     return out;
	ld	a5,-48(s0)		# _38, out
# problem15.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)		#,
	.cfi_restore 9
	addi	sp,sp,80	#,,
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
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp145, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp147, b_size
	sw	a5,-44(s0)	# tmp146, a_size
	mv	a5,a4	# tmp148, tmp147
	sw	a5,-48(s0)	# tmp148, b_size
# problem15.c:34:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp150, a_size
	mv	a4,a5	# tmp149, tmp150
	lw	a5,-48(s0)		# tmp152, b_size
	sext.w	a4,a4	# tmp153, tmp149
	sext.w	a5,a5	# tmp154, tmp151
	beq	a4,a5,.L6	#, tmp153, tmp154,
# problem15.c:34:     if (a_size != b_size) return 0;
	li	a5,0		# _11,
# problem15.c:34:     if (a_size != b_size) return 0;
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
	ld	a4,-40(s0)		# tmp155, a
	add	a5,a4,a5	# _2, _3, tmp155
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp156, b
	add	a5,a4,a5	# _6, _7, tmp156
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp157,
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L9	#, _9,,
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
# problem15.c:36:         if (strcmp(a[i], b[i]) != 0) return 0;
	j	.L7		#
.L9:
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L8:
# problem15.c:35:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, a_size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L10	#, tmp165, tmp166,
# problem15.c:38:     return 1;
	li	a5,1		# _11,
.L7:
# problem15.c:39: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.align	1
	.globl	free_prefixes
	.type	free_prefixes, @function
free_prefixes:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# prefixes, prefixes
	mv	a5,a1	# tmp138, count
	sw	a5,-44(s0)	# tmp139, count
# problem15.c:42:     for (int i = 0; i < count; i++) {
	sw	zero,-20(s0)	#, i
# problem15.c:42:     for (int i = 0; i < count; i++) {
	j	.L12		#
.L13:
# problem15.c:43:         free(prefixes[i]);
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp140, prefixes
	add	a5,a4,a5	# _2, _3, tmp140
# problem15.c:43:         free(prefixes[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	free@plt	#
# problem15.c:42:     for (int i = 0; i < count; i++) {
	lw	a5,-20(s0)		# tmp143, i
	addiw	a5,a5,1	#, tmp141, tmp142
	sw	a5,-20(s0)	# tmp141, i
.L12:
# problem15.c:42:     for (int i = 0; i < count; i++) {
	lw	a5,-20(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-44(s0)		# tmp147, count
	sext.w	a4,a4	# tmp148, tmp144
	sext.w	a5,a5	# tmp149, tmp146
	blt	a4,a5,.L13	#, tmp148, tmp149,
# problem15.c:45:     free(prefixes);
	ld	a0,-40(s0)		#, prefixes
	call	free@plt	#
# problem15.c:46: }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
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
.LFB9:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
# problem15.c:48: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp166, __stack_chk_guard
	sd	a4, -24(s0)	# tmp166, D.3531
	li	a4, 0	# tmp166
# problem15.c:52:     result = func0("", &count);
	addi	a5,s0,-108	#, tmp145,
	mv	a1,a5	#, tmp145
	lla	a0,.LC7	#,
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem15.c:53:     assert(issame(result, 0, NULL, 0));
	li	a3,0		#,
	li	a2,0		#,
	li	a1,0		#,
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp146,
# problem15.c:53:     assert(issame(result, 0, NULL, 0));
	bne	a5,zero,.L15	#, _1,,
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
	lla	a5,.LC10	# tmp147,
	ld	a0,0(a5)		# tmp148,
	ld	a1,8(a5)		# tmp149,
	ld	a2,16(a5)		# tmp150,
	ld	a3,24(a5)		# tmp151,
	ld	a4,32(a5)		# tmp152,
	ld	a5,40(a5)		# tmp153,
	sd	a0,-72(s0)	# tmp148, expected1
	sd	a1,-64(s0)	# tmp149, expected1
	sd	a2,-56(s0)	# tmp150, expected1
	sd	a3,-48(s0)	# tmp151, expected1
	sd	a4,-40(s0)	# tmp152, expected1
	sd	a5,-32(s0)	# tmp153, expected1
# problem15.c:57:     result = func0("asdfgh", &count);
	addi	a5,s0,-108	#, tmp154,
	mv	a1,a5	#, tmp154
	lla	a0,.LC5	#,
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem15.c:58:     assert(issame(result, count, expected1, 6));
	lw	a5,-108(s0)		# count.1_3, count
	addi	a4,s0,-72	#, tmp155,
	li	a3,6		#,
	mv	a2,a4	#, tmp155
	mv	a1,a5	#, count.1_3
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp156,
# problem15.c:58:     assert(issame(result, count, expected1, 6));
	bne	a5,zero,.L16	#, _4,,
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
	lla	a5,.LC12	# tmp157,
	sd	a5,-96(s0)	# tmp157, expected2[0]
	lla	a5,.LC13	# tmp158,
	sd	a5,-88(s0)	# tmp158, expected2[1]
	lla	a5,.LC14	# tmp159,
	sd	a5,-80(s0)	# tmp159, expected2[2]
# problem15.c:62:     result = func0("WWW", &count);
	addi	a5,s0,-108	#, tmp160,
	mv	a1,a5	#, tmp160
	lla	a0,.LC14	#,
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem15.c:63:     assert(issame(result, count, expected2, 3));
	lw	a5,-108(s0)		# count.3_6, count
	addi	a4,s0,-96	#, tmp161,
	li	a3,3		#,
	mv	a2,a4	#, tmp161
	mv	a1,a5	#, count.3_6
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp162,
# problem15.c:63:     assert(issame(result, count, expected2, 3));
	bne	a5,zero,.L17	#, _7,,
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
	la	a5,__stack_chk_guard		# tmp164,
	ld	a3, -24(s0)	# tmp167, D.3531
	ld	a5, 0(a5)	# tmp165, __stack_chk_guard
	xor	a5, a3, a5	# tmp165, tmp167
	li	a3, 0	# tmp167
	beq	a5,zero,.L19	#, tmp165,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
