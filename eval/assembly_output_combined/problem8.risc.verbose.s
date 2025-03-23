	.file	"problem8.c"
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
	mv	a5,a1	# tmp89, size
	sd	a2,-56(s0)	# substring, substring
	sd	a3,-64(s0)	# out_size, out_size
	sw	a5,-44(s0)	# tmp90, size
# problem8.c:6:     char **out = NULL;
	sd	zero,-24(s0)	#, out
# problem8.c:7:     int count = 0;
	sw	zero,-32(s0)	#, count
# problem8.c:8:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# problem8.c:8:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L4:
# problem8.c:9:         if (strstr(strings[i], substring) != NULL) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp91, strings
	add	a5,a4,a5	# _2, _3, tmp91
# problem8.c:9:         if (strstr(strings[i], substring) != NULL) {
	ld	a5,0(a5)		# _4, *_3
	ld	a1,-56(s0)		#, substring
	mv	a0,a5	#, _4
	call	strstr@plt	#
	mv	a5,a0	# _5,
# problem8.c:9:         if (strstr(strings[i], substring) != NULL) {
	beq	a5,zero,.L3	#, _5,,
# problem8.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	lw	a5,-32(s0)		# tmp94, count
	addiw	a5,a5,1	#, tmp92, tmp93
	sext.w	a5,a5	# _6, tmp92
# problem8.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	slli	a5,a5,3	#, _8, _7
	mv	a1,a5	#, _8
	ld	a0,-24(s0)		#, out
	call	realloc@plt	#
	sd	a0,-24(s0)	#, out
# problem8.c:11:             out[count] = strings[i];
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-40(s0)		# tmp95, strings
	add	a4,a4,a5	# _10, _11, tmp95
# problem8.c:11:             out[count] = strings[i];
	lw	a5,-32(s0)		# _12, count
	slli	a5,a5,3	#, _13, _12
	ld	a3,-24(s0)		# tmp96, out
	add	a5,a3,a5	# _13, _14, tmp96
# problem8.c:11:             out[count] = strings[i];
	ld	a4,0(a4)		# _15, *_11
# problem8.c:11:             out[count] = strings[i];
	sd	a4,0(a5)	# _15, *_14
# problem8.c:12:             count++;
	lw	a5,-32(s0)		# tmp99, count
	addiw	a5,a5,1	#, tmp97, tmp98
	sw	a5,-32(s0)	# tmp97, count
.L3:
# problem8.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp102, i
	addiw	a5,a5,1	#, tmp100, tmp101
	sw	a5,-28(s0)	# tmp100, i
.L2:
# problem8.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp104, i
	mv	a4,a5	# tmp103, tmp104
	lw	a5,-44(s0)		# tmp106, size
	sext.w	a4,a4	# tmp107, tmp103
	sext.w	a5,a5	# tmp108, tmp105
	blt	a4,a5,.L4	#, tmp107, tmp108,
# problem8.c:15:     *out_size = count;
	ld	a5,-64(s0)		# tmp109, out_size
	lw	a4,-32(s0)		# tmp110, count
	sw	a4,0(a5)	# tmp110, *out_size_28(D)
# problem8.c:16:     return out;
	ld	a5,-24(s0)		# _30, out
# problem8.c:17: }
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
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp83, size_a
	mv	a4,a3	# tmp85, size_b
	sw	a5,-52(s0)	# tmp84, size_a
	mv	a5,a4	# tmp86, tmp85
	sw	a5,-56(s0)	# tmp86, size_b
# problem8.c:27:     if (size_a != size_b) return 0;
	lw	a5,-52(s0)		# tmp88, size_a
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-56(s0)		# tmp90, size_b
	sext.w	a4,a4	# tmp91, tmp87
	sext.w	a5,a5	# tmp92, tmp89
	beq	a4,a5,.L7	#, tmp91, tmp92,
# problem8.c:27:     if (size_a != size_b) return 0;
	li	a5,0		# _11,
	j	.L8		#
.L7:
# problem8.c:28:     for (int i = 0; i < size_a; i++) {
	sw	zero,-20(s0)	#, i
# problem8.c:28:     for (int i = 0; i < size_a; i++) {
	j	.L9		#
.L11:
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp93, a
	add	a5,a4,a5	# _2, _3, tmp93
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-48(s0)		# tmp94, b
	add	a5,a4,a5	# _6, _7, tmp94
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L10	#, _9,,
# problem8.c:29:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
	j	.L8		#
.L10:
# problem8.c:28:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L9:
# problem8.c:28:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-52(s0)		# tmp102, size_a
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L11	#, tmp103, tmp104,
# problem8.c:31:     return 1;
	li	a5,1		# _11,
.L8:
# problem8.c:32: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC14:
	.string	"john"
	.align	3
.LC15:
	.string	"problem8.c"
	.align	3
.LC16:
	.string	"out_size == 0 && result == NULL"
	.align	3
.LC0:
	.string	"xxx"
	.align	3
.LC4:
	.string	"xxxAAA"
	.align	3
.LC18:
	.string	"issame(result, expected1, out_size, 3)"
	.align	3
.LC21:
	.string	"xx"
	.align	3
.LC22:
	.string	"issame(result, expected2, out_size, 4)"
	.align	3
.LC9:
	.string	"grunt"
	.align	3
.LC11:
	.string	"prune"
	.align	3
.LC24:
	.string	"run"
	.align	3
.LC25:
	.string	"issame(result, expected3, out_size, 2)"
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
.LC17:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC0
	.section	.rodata
	.align	3
.LC6:
	.string	"aaaxxy"
	.data
	.align	3
.LC19:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC6
	.dword	.LC3
	.dword	.LC4
	.dword	.LC0
	.align	3
.LC20:
	.dword	.LC0
	.dword	.LC6
	.dword	.LC4
	.dword	.LC0
	.section	.rodata
	.align	3
.LC10:
	.string	"trumpet"
	.align	3
.LC12:
	.string	"gruesome"
	.data
	.align	3
.LC23:
	.dword	.LC9
	.dword	.LC10
	.dword	.LC11
	.dword	.LC12
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-240	#,,
	sd	ra,232(sp)	#,
	sd	s0,224(sp)	#,
	addi	s0,sp,240	#,,
# problem8.c:34: int main() {
	la	a5,__stack_chk_guard		# tmp81,
	ld	a4, 0(a5)	# tmp128, __stack_chk_guard
	sd	a4, -24(s0)	# tmp128, D.2690
	li	a4, 0	# tmp128
# problem8.c:39:     result = func0(NULL, 0, "john", &out_size);
	addi	a5,s0,-236	#, tmp82,
	mv	a3,a5	#, tmp82
	lla	a2,.LC14	#,
	li	a1,0		#,
	li	a0,0		#,
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem8.c:40:     assert(out_size == 0 && result == NULL);
	lw	a5,-236(s0)		# out_size.0_1, out_size
	bne	a5,zero,.L13	#, out_size.0_1,,
# problem8.c:40:     assert(out_size == 0 && result == NULL);
	ld	a5,-232(s0)		# tmp83, result
	beq	a5,zero,.L20	#, tmp83,,
.L13:
# problem8.c:40:     assert(out_size == 0 && result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC15	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L20:
# problem8.c:43:     char *strings1[] = {"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"};
	lla	a5,.LC17	# tmp84,
	ld	a0,0(a5)		# tmp85,
	ld	a1,8(a5)		# tmp86,
	ld	a2,16(a5)		# tmp87,
	ld	a3,24(a5)		# tmp88,
	ld	a4,32(a5)		# tmp89,
	ld	a5,40(a5)		# tmp90,
	sd	a0,-120(s0)	# tmp85, strings1
	sd	a1,-112(s0)	# tmp86, strings1
	sd	a2,-104(s0)	# tmp87, strings1
	sd	a3,-96(s0)	# tmp88, strings1
	sd	a4,-88(s0)	# tmp89, strings1
	sd	a5,-80(s0)	# tmp90, strings1
# problem8.c:44:     char *expected1[] = {"xxx", "xxxAAA", "xxx"};
	lla	a5,.LC0	# tmp91,
	sd	a5,-208(s0)	# tmp91, expected1[0]
	lla	a5,.LC4	# tmp92,
	sd	a5,-200(s0)	# tmp92, expected1[1]
	lla	a5,.LC0	# tmp93,
	sd	a5,-192(s0)	# tmp93, expected1[2]
# problem8.c:45:     result = func0(strings1, 6, "xxx", &out_size);
	addi	a4,s0,-236	#, tmp94,
	addi	a5,s0,-120	#, tmp95,
	mv	a3,a4	#, tmp94
	lla	a2,.LC0	#,
	li	a1,6		#,
	mv	a0,a5	#, tmp95
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem8.c:46:     assert(issame(result, expected1, out_size, 3));
	lw	a4,-236(s0)		# out_size.1_2, out_size
	addi	a5,s0,-208	#, tmp96,
	li	a3,3		#,
	mv	a2,a4	#, out_size.1_2
	mv	a1,a5	#, tmp96
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp97,
	bne	a5,zero,.L15	#, _3,,
# problem8.c:46:     assert(issame(result, expected1, out_size, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC15	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L15:
# problem8.c:47:     free(result);
	ld	a0,-232(s0)		#, result
	call	free@plt	#
# problem8.c:50:     char *strings2[] = {"xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"};
	lla	a5,.LC19	# tmp98,
	ld	a0,0(a5)		# tmp99,
	ld	a1,8(a5)		# tmp100,
	ld	a2,16(a5)		# tmp101,
	ld	a3,24(a5)		# tmp102,
	ld	a4,32(a5)		# tmp103,
	ld	a5,40(a5)		# tmp104,
	sd	a0,-72(s0)	# tmp99, strings2
	sd	a1,-64(s0)	# tmp100, strings2
	sd	a2,-56(s0)	# tmp101, strings2
	sd	a3,-48(s0)	# tmp102, strings2
	sd	a4,-40(s0)	# tmp103, strings2
	sd	a5,-32(s0)	# tmp104, strings2
# problem8.c:51:     char *expected2[] = {"xxx", "aaaxxy", "xxxAAA", "xxx"};
	lla	a5,.LC20	# tmp105,
	ld	a2,0(a5)		# tmp106,
	ld	a3,8(a5)		# tmp107,
	ld	a4,16(a5)		# tmp108,
	ld	a5,24(a5)		# tmp109,
	sd	a2,-184(s0)	# tmp106, expected2
	sd	a3,-176(s0)	# tmp107, expected2
	sd	a4,-168(s0)	# tmp108, expected2
	sd	a5,-160(s0)	# tmp109, expected2
# problem8.c:52:     result = func0(strings2, 6, "xx", &out_size);
	addi	a4,s0,-236	#, tmp110,
	addi	a5,s0,-72	#, tmp111,
	mv	a3,a4	#, tmp110
	lla	a2,.LC21	#,
	li	a1,6		#,
	mv	a0,a5	#, tmp111
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem8.c:53:     assert(issame(result, expected2, out_size, 4));
	lw	a4,-236(s0)		# out_size.2_4, out_size
	addi	a5,s0,-184	#, tmp112,
	li	a3,4		#,
	mv	a2,a4	#, out_size.2_4
	mv	a1,a5	#, tmp112
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp113,
	bne	a5,zero,.L16	#, _5,,
# problem8.c:53:     assert(issame(result, expected2, out_size, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC15	#,
	lla	a0,.LC22	#,
	call	__assert_fail@plt	#
.L16:
# problem8.c:54:     free(result);
	ld	a0,-232(s0)		#, result
	call	free@plt	#
# problem8.c:57:     char *strings3[] = {"grunt", "trumpet", "prune", "gruesome"};
	lla	a5,.LC23	# tmp114,
	ld	a2,0(a5)		# tmp115,
	ld	a3,8(a5)		# tmp116,
	ld	a4,16(a5)		# tmp117,
	ld	a5,24(a5)		# tmp118,
	sd	a2,-152(s0)	# tmp115, strings3
	sd	a3,-144(s0)	# tmp116, strings3
	sd	a4,-136(s0)	# tmp117, strings3
	sd	a5,-128(s0)	# tmp118, strings3
# problem8.c:58:     char *expected3[] = {"grunt", "prune"};
	lla	a5,.LC9	# tmp119,
	sd	a5,-224(s0)	# tmp119, expected3[0]
	lla	a5,.LC11	# tmp120,
	sd	a5,-216(s0)	# tmp120, expected3[1]
# problem8.c:59:     result = func0(strings3, 4, "run", &out_size);
	addi	a4,s0,-236	#, tmp121,
	addi	a5,s0,-152	#, tmp122,
	mv	a3,a4	#, tmp121
	lla	a2,.LC24	#,
	li	a1,4		#,
	mv	a0,a5	#, tmp122
	call	func0		#
	sd	a0,-232(s0)	#, result
# problem8.c:60:     assert(issame(result, expected3, out_size, 2));
	lw	a4,-236(s0)		# out_size.3_6, out_size
	addi	a5,s0,-224	#, tmp123,
	li	a3,2		#,
	mv	a2,a4	#, out_size.3_6
	mv	a1,a5	#, tmp123
	ld	a0,-232(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp124,
	bne	a5,zero,.L17	#, _7,,
# problem8.c:60:     assert(issame(result, expected3, out_size, 2));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC15	#,
	lla	a0,.LC25	#,
	call	__assert_fail@plt	#
.L17:
# problem8.c:61:     free(result);
	ld	a0,-232(s0)		#, result
	call	free@plt	#
# problem8.c:63:     return 0;
	li	a5,0		# _35,
# problem8.c:64: }
	mv	a4,a5	# <retval>, _35
	la	a5,__stack_chk_guard		# tmp126,
	ld	a3, -24(s0)	# tmp129, D.2690
	ld	a5, 0(a5)	# tmp127, __stack_chk_guard
	xor	a5, a3, a5	# tmp127, tmp129
	li	a3, 0	# tmp129
	beq	a5,zero,.L19	#, tmp127,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,232(sp)		#,
	ld	s0,224(sp)		#,
	addi	sp,sp,240	#,,
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
