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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# paren_string, paren_string
	sd	a1,-64(s0)	# returnSize, returnSize
# eval/problem7//code.c:6:     int* all_levels = NULL;
	sd	zero,-24(s0)	#, all_levels
# eval/problem7//code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	sw	zero,-40(s0)	#, level
# eval/problem7//code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	sw	zero,-36(s0)	#, max_level
# eval/problem7//code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	sw	zero,-32(s0)	#, i
# eval/problem7//code.c:7:     int level = 0, max_level = 0, i = 0, count = 0;
	sw	zero,-28(s0)	#, count
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	j	.L2		#
.L5:
# eval/problem7//code.c:10:         chr = paren_string[i];
	lw	a5,-32(s0)		# _1, i
	ld	a4,-56(s0)		# tmp86, paren_string
	add	a5,a4,a5	# _1, _2, tmp86
# eval/problem7//code.c:10:         chr = paren_string[i];
	lbu	a5,0(a5)	# tmp87, *_2
	sb	a5,-41(s0)	# tmp87, chr
# eval/problem7//code.c:11:         if (chr == '(') {
	lbu	a5,-41(s0)	# tmp89, chr
	andi	a4,a5,0xff	# tmp90, tmp88
	li	a5,40		# tmp91,
	bne	a4,a5,.L3	#, tmp90, tmp91,
# eval/problem7//code.c:12:             level += 1;
	lw	a5,-40(s0)		# tmp94, level
	addiw	a5,a5,1	#, tmp92, tmp93
	sw	a5,-40(s0)	# tmp92, level
# eval/problem7//code.c:13:             if (level > max_level) max_level = level;
	lw	a5,-40(s0)		# tmp96, level
	mv	a4,a5	# tmp95, tmp96
	lw	a5,-36(s0)		# tmp98, max_level
	sext.w	a4,a4	# tmp99, tmp95
	sext.w	a5,a5	# tmp100, tmp97
	ble	a4,a5,.L4	#, tmp99, tmp100,
# eval/problem7//code.c:13:             if (level > max_level) max_level = level;
	lw	a5,-40(s0)		# tmp101, level
	sw	a5,-36(s0)	# tmp101, max_level
	j	.L4		#
.L3:
# eval/problem7//code.c:14:         } else if (chr == ')') {
	lbu	a5,-41(s0)	# tmp103, chr
	andi	a4,a5,0xff	# tmp104, tmp102
	li	a5,41		# tmp105,
	bne	a4,a5,.L4	#, tmp104, tmp105,
# eval/problem7//code.c:15:             level -= 1;
	lw	a5,-40(s0)		# tmp108, level
	addiw	a5,a5,-1	#, tmp106, tmp107
	sw	a5,-40(s0)	# tmp106, level
# eval/problem7//code.c:16:             if (level == 0) {
	lw	a5,-40(s0)		# tmp110, level
	sext.w	a5,a5	# tmp111, tmp109
	bne	a5,zero,.L4	#, tmp111,,
# eval/problem7//code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	lw	a5,-28(s0)		# tmp114, count
	addiw	a5,a5,1	#, tmp112, tmp113
	sext.w	a5,a5	# _3, tmp112
# eval/problem7//code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	slli	a5,a5,2	#, _5, _4
	mv	a1,a5	#, _5
	ld	a0,-24(s0)		#, all_levels
	call	realloc@plt	#
	sd	a0,-24(s0)	#, all_levels
# eval/problem7//code.c:18:                 all_levels[count++] = max_level;
	lw	a5,-28(s0)		# count.0_6, count
	addiw	a4,a5,1	#, tmp115, count.0_6
	sw	a4,-28(s0)	# tmp115, count
# eval/problem7//code.c:18:                 all_levels[count++] = max_level;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp116, all_levels
	add	a5,a4,a5	# _8, _9, tmp116
# eval/problem7//code.c:18:                 all_levels[count++] = max_level;
	lw	a4,-36(s0)		# tmp117, max_level
	sw	a4,0(a5)	# tmp117, *_9
# eval/problem7//code.c:19:                 max_level = 0;
	sw	zero,-36(s0)	#, max_level
.L4:
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	lw	a5,-32(s0)		# tmp120, i
	addiw	a5,a5,1	#, tmp118, tmp119
	sw	a5,-32(s0)	# tmp118, i
.L2:
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	lw	a5,-32(s0)		# _10, i
	ld	a4,-56(s0)		# tmp121, paren_string
	add	a5,a4,a5	# _10, _11, tmp121
	lbu	a5,0(a5)	# _12, *_11
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	bne	a5,zero,.L5	#, _12,,
# eval/problem7//code.c:23:     *returnSize = count;
	ld	a5,-64(s0)		# tmp122, returnSize
	lw	a4,-28(s0)		# tmp123, count
	sw	a4,0(a5)	# tmp123, *returnSize_32(D)
# eval/problem7//code.c:24:     return all_levels;
	ld	a5,-24(s0)		# _34, all_levels
# eval/problem7//code.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
