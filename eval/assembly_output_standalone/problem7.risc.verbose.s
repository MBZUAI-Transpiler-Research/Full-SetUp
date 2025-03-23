	.file	"code.c"
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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
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
	ld	a4,-56(s0)		# tmp148, paren_string
	add	a5,a4,a5	# _1, _2, tmp148
# eval/problem7//code.c:10:         chr = paren_string[i];
	lbu	a5,0(a5)	# tmp149, *_2
	sb	a5,-41(s0)	# tmp149, chr
# eval/problem7//code.c:11:         if (chr == '(') {
	lbu	a5,-41(s0)	# tmp151, chr
	andi	a4,a5,0xff	# tmp152, tmp150
	li	a5,40		# tmp153,
	bne	a4,a5,.L3	#, tmp152, tmp153,
# eval/problem7//code.c:12:             level += 1;
	lw	a5,-40(s0)		# tmp156, level
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-40(s0)	# tmp154, level
# eval/problem7//code.c:13:             if (level > max_level) max_level = level;
	lw	a5,-40(s0)		# tmp158, level
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-36(s0)		# tmp160, max_level
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	ble	a4,a5,.L4	#, tmp161, tmp162,
# eval/problem7//code.c:13:             if (level > max_level) max_level = level;
	lw	a5,-40(s0)		# tmp163, level
	sw	a5,-36(s0)	# tmp163, max_level
	j	.L4		#
.L3:
# eval/problem7//code.c:14:         } else if (chr == ')') {
	lbu	a5,-41(s0)	# tmp165, chr
	andi	a4,a5,0xff	# tmp166, tmp164
	li	a5,41		# tmp167,
	bne	a4,a5,.L4	#, tmp166, tmp167,
# eval/problem7//code.c:15:             level -= 1;
	lw	a5,-40(s0)		# tmp170, level
	addiw	a5,a5,-1	#, tmp168, tmp169
	sw	a5,-40(s0)	# tmp168, level
# eval/problem7//code.c:16:             if (level == 0) {
	lw	a5,-40(s0)		# tmp172, level
	sext.w	a5,a5	# tmp173, tmp171
	bne	a5,zero,.L4	#, tmp173,,
# eval/problem7//code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	lw	a5,-28(s0)		# tmp176, count
	addiw	a5,a5,1	#, tmp174, tmp175
	sext.w	a5,a5	# _3, tmp174
# eval/problem7//code.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	slli	a5,a5,2	#, _5, _4
	mv	a1,a5	#, _5
	ld	a0,-24(s0)		#, all_levels
	call	realloc@plt	#
	sd	a0,-24(s0)	#, all_levels
# eval/problem7//code.c:18:                 all_levels[count++] = max_level;
	lw	a5,-28(s0)		# count.0_6, count
	addiw	a4,a5,1	#, tmp177, count.0_6
	sw	a4,-28(s0)	# tmp177, count
# eval/problem7//code.c:18:                 all_levels[count++] = max_level;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp178, all_levels
	add	a5,a4,a5	# _8, _9, tmp178
# eval/problem7//code.c:18:                 all_levels[count++] = max_level;
	lw	a4,-36(s0)		# tmp179, max_level
	sw	a4,0(a5)	# tmp179, *_9
# eval/problem7//code.c:19:                 max_level = 0;
	sw	zero,-36(s0)	#, max_level
.L4:
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	lw	a5,-32(s0)		# tmp182, i
	addiw	a5,a5,1	#, tmp180, tmp181
	sw	a5,-32(s0)	# tmp180, i
.L2:
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	lw	a5,-32(s0)		# _10, i
	ld	a4,-56(s0)		# tmp183, paren_string
	add	a5,a4,a5	# _10, _11, tmp183
	lbu	a5,0(a5)	# _12, *_11
# eval/problem7//code.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	bne	a5,zero,.L5	#, _12,,
# eval/problem7//code.c:23:     *returnSize = count;
	ld	a5,-64(s0)		# tmp184, returnSize
	lw	a4,-28(s0)		# tmp185, count
	sw	a4,0(a5)	# tmp185, *returnSize_32(D)
# eval/problem7//code.c:24:     return all_levels;
	ld	a5,-24(s0)		# _34, all_levels
# eval/problem7//code.c:25: }
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
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
