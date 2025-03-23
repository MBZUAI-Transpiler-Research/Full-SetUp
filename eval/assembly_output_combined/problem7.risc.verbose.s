	.file	"problem7.c"
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
	sd	a0,-56(s0)	# paren_string, paren_string
	sd	a1,-64(s0)	# returnSize, returnSize
# problem7.c:6:     int* all_levels = NULL;
	sd	zero,-24(s0)	#, all_levels
# problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	sw	zero,-40(s0)	#, level
# problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	sw	zero,-36(s0)	#, max_level
# problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	sw	zero,-32(s0)	#, i
# problem7.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	sw	zero,-28(s0)	#, count
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	sw	zero,-32(s0)	#, i
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	j	.L2		#
.L5:
# problem7.c:10:         chr = paren_string[i];
	lw	a5,-32(s0)		# _1, i
	ld	a4,-56(s0)		# tmp86, paren_string
	add	a5,a4,a5	# _1, _2, tmp86
# problem7.c:10:         chr = paren_string[i];
	lbu	a5,0(a5)	# tmp87, *_2
	sb	a5,-41(s0)	# tmp87, chr
# problem7.c:11:         if (chr == '(') {
	lbu	a5,-41(s0)	# tmp89, chr
	andi	a4,a5,0xff	# tmp90, tmp88
	li	a5,40		# tmp91,
	bne	a4,a5,.L3	#, tmp90, tmp91,
# problem7.c:12:             level += 1;
	lw	a5,-40(s0)		# tmp94, level
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-40(s0)	# tmp92, level
# problem7.c:13:             if (level > max_level) max_level = level;
	lw	a5,-40(s0)		# tmp96, level
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-36(s0)		# tmp98, max_level
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	ble	a4,a5,.L4	#, tmp99, tmp100,
# problem7.c:13:             if (level > max_level) max_level = level;
	lw	a5,-40(s0)		# tmp101, level
	sw	a5,-36(s0)	# tmp101, max_level
	j	.L4		#
.L3:
# problem7.c:14:         } else if (chr == ')') {
	lbu	a5,-41(s0)	# tmp103, chr
	andi	a4,a5,0xff	# tmp104, tmp102
	li	a5,41		# tmp105,
	bne	a4,a5,.L4	#, tmp104, tmp105,
# problem7.c:15:             level -= 1;
	lw	a5,-40(s0)		# tmp108, level
	addiw	a5,a5,-1	#, tmp106, tmp107
	sw	a5,-40(s0)	# tmp106, level
# problem7.c:16:             if (level == 0) {
	lw	a5,-40(s0)		# tmp110, level
	sext.w	a5,a5	# tmp111, tmp109
	bne	a5,zero,.L4	#, tmp111,,
# problem7.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	lw	a5,-28(s0)		# tmp114, count
	addiw	a5,a5,1	#, tmp112, tmp113
	sext.w	a5,a5	# _3, tmp112
# problem7.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	slli	a5,a5,2	#, _5, _4
	mv	a1,a5	#, _5
	ld	a0,-24(s0)		#, all_levels
	call	realloc@plt	#
	sd	a0,-24(s0)	#, all_levels
# problem7.c:18:                 all_levels[count++] = max_level;
	lw	a5,-28(s0)		# count.0_6, count
	addiw	a4,a5,1	#, tmp115, count.0_6
	sw	a4,-28(s0)	# tmp115, count
# problem7.c:18:                 all_levels[count++] = max_level;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp116, all_levels
	add	a5,a4,a5	# _8, _9, tmp116
# problem7.c:18:                 all_levels[count++] = max_level;
	lw	a4,-36(s0)		# tmp117, max_level
	sw	a4,0(a5)	# tmp117, *_9
# problem7.c:19:                 max_level = 0;
	sw	zero,-36(s0)	#, max_level
.L4:
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	lw	a5,-32(s0)		# tmp120, i
	addiw	a5,a5,1	#, tmp118, tmp119
	sw	a5,-32(s0)	# tmp118, i
.L2:
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	lw	a5,-32(s0)		# _10, i
	ld	a4,-56(s0)		# tmp121, paren_string
	add	a5,a4,a5	# _10, _11, tmp121
	lbu	a5,0(a5)	# _12, *_11
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	bne	a5,zero,.L5	#, _12,,
# problem7.c:23:     *returnSize = count;
	ld	a5,-64(s0)		# tmp122, returnSize
	lw	a4,-28(s0)		# tmp123, count
	sw	a4,0(a5)	# tmp123, *returnSize_32(D)
# problem7.c:24:     return all_levels;
	ld	a5,-24(s0)		# _34, all_levels
# problem7.c:25: }
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
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp82, size_a
	mv	a4,a3	# tmp84, size_b
	sw	a5,-52(s0)	# tmp83, size_a
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-56(s0)	# tmp85, size_b
# problem7.c:33:     if (size_a != size_b) return 0;
	lw	a5,-52(s0)		# tmp87, size_a
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-56(s0)		# tmp89, size_b
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L8	#, tmp90, tmp91,
# problem7.c:33:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
	j	.L9		#
.L8:
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	sw	zero,-20(s0)	#, i
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	j	.L10		#
.L12:
# problem7.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem7.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem7.c:35:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L11	#, tmp94, tmp95,
# problem7.c:35:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L9		#
.L11:
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L10:
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-52(s0)		# tmp102, size_a
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L12	#, tmp103, tmp104,
# problem7.c:37:     return 1;
	li	a5,1		# _10,
.L9:
# problem7.c:38: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"(()()) ((())) () ((())()())"
	.align	3
.LC3:
	.string	"problem7.c"
	.align	3
.LC4:
	.string	"issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4)"
	.align	3
.LC5:
	.string	"() (()) ((())) (((())))"
	.align	3
.LC6:
	.string	"issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4)"
	.align	3
.LC7:
	.string	"(()(())((())))"
	.align	3
.LC8:
	.string	"issame(result, (const int[]){4}, returnSize, 1)"
	.align	3
.LC0:
	.word	2
	.word	3
	.word	1
	.word	3
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem7.c:40: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp100, __stack_chk_guard
	sd	a4, -24(s0)	# tmp100, D.2679
	li	a4, 0	# tmp100
# problem7.c:44:     result = func0("(()()) ((())) () ((())()())", &returnSize);
	addi	a5,s0,-52	#, tmp81,
	mv	a1,a5	#, tmp81
	lla	a0,.LC2	#,
	call	func0		#
	sd	a0,-48(s0)	#, result
# problem7.c:45:     assert(issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4));
	lla	a5,.LC0	# tmp82,
	ld	a4,0(a5)		# tmp83,
	sd	a4,-40(s0)	# tmp83, MEM[(int[4] *)_35]
	ld	a5,8(a5)		# tmp84,
	sd	a5,-32(s0)	# tmp84, MEM[(int[4] *)_35]
	lw	a4,-52(s0)		# returnSize.1_1, returnSize
	addi	a5,s0,-40	#, tmp85,
	li	a3,4		#,
	mv	a2,a4	#, returnSize.1_1
	mv	a1,a5	#, tmp85
	ld	a0,-48(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp86,
	bne	a5,zero,.L14	#, _2,,
# problem7.c:45:     assert(issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L14:
# problem7.c:46:     free(result);
	ld	a0,-48(s0)		#, result
	call	free@plt	#
# problem7.c:48:     result = func0("() (()) ((())) (((())))", &returnSize);
	addi	a5,s0,-52	#, tmp87,
	mv	a1,a5	#, tmp87
	lla	a0,.LC5	#,
	call	func0		#
	sd	a0,-48(s0)	#, result
# problem7.c:49:     assert(issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4));
	lla	a5,.LC1	# tmp88,
	ld	a4,0(a5)		# tmp89,
	sd	a4,-40(s0)	# tmp89, MEM[(int[4] *)_35]
	ld	a5,8(a5)		# tmp90,
	sd	a5,-32(s0)	# tmp90, MEM[(int[4] *)_35]
	lw	a4,-52(s0)		# returnSize.2_3, returnSize
	addi	a5,s0,-40	#, tmp91,
	li	a3,4		#,
	mv	a2,a4	#, returnSize.2_3
	mv	a1,a5	#, tmp91
	ld	a0,-48(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp92,
	bne	a5,zero,.L15	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC3	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L15:
# problem7.c:50:     free(result);
	ld	a0,-48(s0)		#, result
	call	free@plt	#
# problem7.c:52:     result = func0("(()(())((())))", &returnSize);
	addi	a5,s0,-52	#, tmp93,
	mv	a1,a5	#, tmp93
	lla	a0,.LC7	#,
	call	func0		#
	sd	a0,-48(s0)	#, result
# problem7.c:53:     assert(issame(result, (const int[]){4}, returnSize, 1));
	li	a5,4		# tmp94,
	sw	a5,-40(s0)	# tmp94, MEM[(int[1] *)_35][0]
	lw	a4,-52(s0)		# returnSize.3_5, returnSize
	addi	a5,s0,-40	#, tmp95,
	li	a3,1		#,
	mv	a2,a4	#, returnSize.3_5
	mv	a1,a5	#, tmp95
	ld	a0,-48(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp96,
	bne	a5,zero,.L16	#, _6,,
# problem7.c:53:     assert(issame(result, (const int[]){4}, returnSize, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC3	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L16:
# problem7.c:54:     free(result);
	ld	a0,-48(s0)		#, result
	call	free@plt	#
# problem7.c:56:     return 0;
	li	a5,0		# _29,
# problem7.c:57: }
	mv	a4,a5	# <retval>, _29
	la	a5,__stack_chk_guard		# tmp98,
	ld	a3, -24(s0)	# tmp101, D.2679
	ld	a5, 0(a5)	# tmp99, __stack_chk_guard
	xor	a5, a3, a5	# tmp99, tmp101
	li	a3, 0	# tmp101
	beq	a5,zero,.L18	#, tmp99,,
# problem7.c:57: }
	call	__stack_chk_fail@plt	#
.L18:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
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
