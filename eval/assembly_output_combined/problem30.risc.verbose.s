	.file	"problem30.c"
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# strings, strings
	mv	a5,a1	# tmp93, count
	sd	a2,-56(s0)	# prefix, prefix
	sd	a3,-64(s0)	# out, out
	sw	a5,-44(s0)	# tmp94, count
# problem30.c:6:     int prefix_length = strlen(prefix);
	ld	a0,-56(s0)		#, prefix
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem30.c:6:     int prefix_length = strlen(prefix);
	sw	a5,-20(s0)	# _1, prefix_length
# problem30.c:7:     *out = (char**)malloc(count * sizeof(char*));
	lw	a5,-44(s0)		# _2, count
	slli	a5,a5,3	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp95,
	mv	a4,a5	# _4, tmp95
# problem30.c:7:     *out = (char**)malloc(count * sizeof(char*));
	ld	a5,-64(s0)		# tmp96, out
	sd	a4,0(a5)	# _4, *out_30(D)
# problem30.c:8:     int out_count = 0;
	sw	zero,-28(s0)	#, out_count
# problem30.c:10:     for (int i = 0; i < count; i++) {
	sw	zero,-24(s0)	#, i
# problem30.c:10:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L4:
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-40(s0)		# tmp97, strings
	add	a5,a4,a5	# _6, _7, tmp97
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	ld	a5,0(a5)		# _8, *_7
	lw	a4,-20(s0)		# _9, prefix_length
	mv	a2,a4	#, _9
	ld	a1,-56(s0)		#, prefix
	mv	a0,a5	#, _8
	call	strncmp@plt	#
	mv	a5,a0	# tmp98,
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	bne	a5,zero,.L3	#, _10,,
# problem30.c:12:             (*out)[out_count++] = strings[i];
	lw	a5,-24(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-40(s0)		# tmp99, strings
	add	a4,a4,a5	# _12, _13, tmp99
# problem30.c:12:             (*out)[out_count++] = strings[i];
	ld	a5,-64(s0)		# tmp100, out
	ld	a3,0(a5)		# _14, *out_30(D)
# problem30.c:12:             (*out)[out_count++] = strings[i];
	lw	a5,-28(s0)		# out_count.0_15, out_count
	addiw	a2,a5,1	#, tmp101, out_count.0_15
	sw	a2,-28(s0)	# tmp101, out_count
# problem30.c:12:             (*out)[out_count++] = strings[i];
	slli	a5,a5,3	#, _17, _16
	add	a5,a3,a5	# _17, _18, _14
# problem30.c:12:             (*out)[out_count++] = strings[i];
	ld	a4,0(a4)		# _19, *_13
# problem30.c:12:             (*out)[out_count++] = strings[i];
	sd	a4,0(a5)	# _19, *_18
.L3:
# problem30.c:10:     for (int i = 0; i < count; i++) {
	lw	a5,-24(s0)		# tmp104, i
	addiw	a5,a5,1	#, tmp102, tmp103
	sw	a5,-24(s0)	# tmp102, i
.L2:
# problem30.c:10:     for (int i = 0; i < count; i++) {
	lw	a5,-24(s0)		# tmp106, i
	mv	a4,a5	# tmp105, tmp106
	lw	a5,-44(s0)		# tmp108, count
	sext.w	a4,a4	# tmp109, tmp105
	sext.w	a5,a5	# tmp110, tmp107
	blt	a4,a5,.L4	#, tmp109, tmp110,
# problem30.c:16:     return out_count;
	lw	a5,-28(s0)		# _34, out_count
# problem30.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
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
	mv	a5,a1	# tmp83, a_count
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp85, b_count
	sw	a5,-44(s0)	# tmp84, a_count
	mv	a5,a4	# tmp86, tmp85
	sw	a5,-48(s0)	# tmp86, b_count
# problem30.c:28:     if (a_count != b_count) return 0;
	lw	a5,-44(s0)		# tmp88, a_count
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-48(s0)		# tmp90, b_count
	sext.w	a4,a4	# tmp91, tmp87
	sext.w	a5,a5	# tmp92, tmp89
	beq	a4,a5,.L7	#, tmp91, tmp92,
# problem30.c:28:     if (a_count != b_count) return 0;
	li	a5,0		# _11,
	j	.L8		#
.L7:
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	sw	zero,-20(s0)	#, i
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	j	.L9		#
.L11:
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp93, a
	add	a5,a4,a5	# _2, _3, tmp93
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp94, b
	add	a5,a4,a5	# _6, _7, tmp94
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L10	#, _9,,
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
	j	.L8		#
.L10:
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L9:
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, a_count
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L11	#, tmp103, tmp104,
# problem30.c:32:     return 1;
	li	a5,1		# _11,
.L8:
# problem30.c:33: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC6:
	.string	"john"
	.align	3
.LC7:
	.string	"problem30.c"
	.align	3
.LC8:
	.string	"issame(result, count, (char*[]){}, 0)"
	.align	3
.LC0:
	.string	"xxx"
	.align	3
.LC4:
	.string	"xxxAAA"
	.align	3
.LC10:
	.string	"issame(result, count, expected, 3)"
	.align	3
.LC1:
	.string	"asd"
	.align	3
.LC2:
	.string	"xxy"
	.align	3
.LC3:
	.string	"john doe"
	.data
	.align	3
.LC9:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem30.c:35: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp106, __stack_chk_guard
	sd	a4, -24(s0)	# tmp106, D.2675
	li	a4, 0	# tmp106
# problem30.c:39:     count = func0((char*[]){}, 0, "john", &result);
	addi	a4,s0,-112	#, tmp81,
	addi	a5,s0,-104	#, tmp82,
	mv	a3,a4	#, tmp81
	lla	a2,.LC6	#,
	li	a1,0		#,
	mv	a0,a5	#, tmp82
	call	func0		#
	mv	a5,a0	# tmp83,
	sw	a5,-116(s0)	# tmp83, count
# problem30.c:40:     assert(issame(result, count, (char*[]){}, 0));
	ld	a5,-112(s0)		# result.1_1, result
	addi	a2,s0,-72	#, tmp84,
	lw	a4,-116(s0)		# tmp85, count
	li	a3,0		#,
	mv	a1,a4	#, tmp85
	mv	a0,a5	#, result.1_1
	call	issame		#
	mv	a5,a0	# tmp86,
	bne	a5,zero,.L13	#, _2,,
# problem30.c:40:     assert(issame(result, count, (char*[]){}, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem30.c:41:     free(result);
	ld	a5,-112(s0)		# result.2_3, result
	mv	a0,a5	#, result.2_3
	call	free@plt	#
# problem30.c:43:     char* strings[] = {"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"};
	lla	a5,.LC9	# tmp87,
	ld	a0,0(a5)		# tmp88,
	ld	a1,8(a5)		# tmp89,
	ld	a2,16(a5)		# tmp90,
	ld	a3,24(a5)		# tmp91,
	ld	a4,32(a5)		# tmp92,
	ld	a5,40(a5)		# tmp93,
	sd	a0,-72(s0)	# tmp88, MEM[(char *[6] *)_32]
	sd	a1,-64(s0)	# tmp89, MEM[(char *[6] *)_32]
	sd	a2,-56(s0)	# tmp90, MEM[(char *[6] *)_32]
	sd	a3,-48(s0)	# tmp91, MEM[(char *[6] *)_32]
	sd	a4,-40(s0)	# tmp92, MEM[(char *[6] *)_32]
	sd	a5,-32(s0)	# tmp93, MEM[(char *[6] *)_32]
# problem30.c:44:     char* expected[] = {"xxx", "xxxAAA", "xxx"};
	lla	a5,.LC0	# tmp94,
	sd	a5,-96(s0)	# tmp94, expected[0]
	lla	a5,.LC4	# tmp95,
	sd	a5,-88(s0)	# tmp95, expected[1]
	lla	a5,.LC0	# tmp96,
	sd	a5,-80(s0)	# tmp96, expected[2]
# problem30.c:45:     count = func0(strings, 6, "xxx", &result);
	addi	a4,s0,-112	#, tmp97,
	addi	a5,s0,-72	#, tmp98,
	mv	a3,a4	#, tmp97
	lla	a2,.LC0	#,
	li	a1,6		#,
	mv	a0,a5	#, tmp98
	call	func0		#
	mv	a5,a0	# tmp99,
	sw	a5,-116(s0)	# tmp99, count
# problem30.c:46:     assert(issame(result, count, expected, 3));
	ld	a5,-112(s0)		# result.3_4, result
	addi	a2,s0,-96	#, tmp100,
	lw	a4,-116(s0)		# tmp101, count
	li	a3,3		#,
	mv	a1,a4	#, tmp101
	mv	a0,a5	#, result.3_4
	call	issame		#
	mv	a5,a0	# tmp102,
	bne	a5,zero,.L14	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem30.c:47:     free(result);
	ld	a5,-112(s0)		# result.4_6, result
	mv	a0,a5	#, result.4_6
	call	free@plt	#
# problem30.c:49:     return 0;
	li	a5,0		# _25,
# problem30.c:50: }
	mv	a4,a5	# <retval>, _25
	la	a5,__stack_chk_guard		# tmp104,
	ld	a3, -24(s0)	# tmp107, D.2675
	ld	a5, 0(a5)	# tmp105, __stack_chk_guard
	xor	a5, a3, a5	# tmp105, tmp107
	li	a3, 0	# tmp107
	beq	a5,zero,.L16	#, tmp105,,
	call	__stack_chk_fail@plt	#
.L16:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
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
