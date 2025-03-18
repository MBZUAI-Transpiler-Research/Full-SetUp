	.file	"problem7.c"
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
	ld	a4,-56(s0)		# tmp148, paren_string
	add	a5,a4,a5	# _1, _2, tmp148
# problem7.c:10:         chr = paren_string[i];
	lbu	a5,0(a5)	# tmp149, *_2
	sb	a5,-41(s0)	# tmp149, chr
# problem7.c:11:         if (chr == '(') {
	lbu	a5,-41(s0)	# tmp151, chr
	andi	a4,a5,0xff	# tmp152, tmp150
	li	a5,40		# tmp153,
	bne	a4,a5,.L3	#, tmp152, tmp153,
# problem7.c:12:             level += 1;
	lw	a5,-40(s0)		# tmp156, level
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-40(s0)	# tmp154, level
# problem7.c:13:             if (level > max_level) max_level = level;
	lw	a5,-40(s0)		# tmp158, level
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-36(s0)		# tmp160, max_level
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	ble	a4,a5,.L4	#, tmp161, tmp162,
# problem7.c:13:             if (level > max_level) max_level = level;
	lw	a5,-40(s0)		# tmp163, level
	sw	a5,-36(s0)	# tmp163, max_level
	j	.L4		#
.L3:
# problem7.c:14:         } else if (chr == ')') {
	lbu	a5,-41(s0)	# tmp165, chr
	andi	a4,a5,0xff	# tmp166, tmp164
	li	a5,41		# tmp167,
	bne	a4,a5,.L4	#, tmp166, tmp167,
# problem7.c:15:             level -= 1;
	lw	a5,-40(s0)		# tmp170, level
	addiw	a5,a5,-1	#, tmp168, tmp169
	sw	a5,-40(s0)	# tmp168, level
# problem7.c:16:             if (level == 0) {
	lw	a5,-40(s0)		# tmp172, level
	sext.w	a5,a5	# tmp173, tmp171
	bne	a5,zero,.L4	#, tmp173,,
# problem7.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	lw	a5,-28(s0)		# tmp176, count
	addiw	a5,a5,1	#, tmp174, tmp175
	sext.w	a5,a5	# _3, tmp174
# problem7.c:17:                 all_levels = (int*)realloc(all_levels, sizeof(int) * (count + 1));
	slli	a5,a5,2	#, _5, _4
	mv	a1,a5	#, _5
	ld	a0,-24(s0)		#, all_levels
	call	realloc@plt	#
	sd	a0,-24(s0)	#, all_levels
# problem7.c:18:                 all_levels[count++] = max_level;
	lw	a5,-28(s0)		# count.0_6, count
	addiw	a4,a5,1	#, tmp177, count.0_6
	sw	a4,-28(s0)	# tmp177, count
# problem7.c:18:                 all_levels[count++] = max_level;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp178, all_levels
	add	a5,a4,a5	# _8, _9, tmp178
# problem7.c:18:                 all_levels[count++] = max_level;
	lw	a4,-36(s0)		# tmp179, max_level
	sw	a4,0(a5)	# tmp179, *_9
# problem7.c:19:                 max_level = 0;
	sw	zero,-36(s0)	#, max_level
.L4:
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	lw	a5,-32(s0)		# tmp182, i
	addiw	a5,a5,1	#, tmp180, tmp181
	sw	a5,-32(s0)	# tmp180, i
.L2:
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	lw	a5,-32(s0)		# _10, i
	ld	a4,-56(s0)		# tmp183, paren_string
	add	a5,a4,a5	# _10, _11, tmp183
	lbu	a5,0(a5)	# _12, *_11
# problem7.c:9:     for (i = 0; paren_string[i] != '\0'; i++) {
	bne	a5,zero,.L5	#, _12,,
# problem7.c:23:     *returnSize = count;
	ld	a5,-64(s0)		# tmp184, returnSize
	lw	a4,-28(s0)		# tmp185, count
	sw	a4,0(a5)	# tmp185, *returnSize_32(D)
# problem7.c:24:     return all_levels;
	ld	a5,-24(s0)		# _34, all_levels
# problem7.c:25: }
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
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp144, size_a
	mv	a4,a3	# tmp146, size_b
	sw	a5,-52(s0)	# tmp145, size_a
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-56(s0)	# tmp147, size_b
# problem7.c:33:     if (size_a != size_b) return 0;
	lw	a5,-52(s0)		# tmp149, size_a
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-56(s0)		# tmp151, size_b
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L8	#, tmp152, tmp153,
# problem7.c:33:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
# problem7.c:33:     if (size_a != size_b) return 0;
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
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem7.c:35:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem7.c:35:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L11	#, tmp156, tmp157,
# problem7.c:35:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem7.c:35:         if (a[i] != b[i]) return 0;
	j	.L9		#
.L11:
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L10:
# problem7.c:34:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-52(s0)		# tmp164, size_a
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L12	#, tmp165, tmp166,
# problem7.c:37:     return 1;
	li	a5,1		# _10,
.L9:
# problem7.c:38: }
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
# problem7.c:40: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp162, __stack_chk_guard
	sd	a4, -24(s0)	# tmp162, D.3531
	li	a4, 0	# tmp162
# problem7.c:44:     result = func0("(()()) ((())) () ((())()())", &returnSize);
	addi	a5,s0,-52	#, tmp143,
	mv	a1,a5	#, tmp143
	lla	a0,.LC2	#,
	call	func0		#
	sd	a0,-48(s0)	#, result
# problem7.c:45:     assert(issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4));
	lla	a5,.LC0	# tmp144,
	ld	a4,0(a5)		# tmp145,
	sd	a4,-40(s0)	# tmp145, MEM[(int[4] *)_35]
	ld	a5,8(a5)		# tmp146,
	sd	a5,-32(s0)	# tmp146, MEM[(int[4] *)_35]
	lw	a4,-52(s0)		# returnSize.1_1, returnSize
	addi	a5,s0,-40	#, tmp147,
	li	a3,4		#,
	mv	a2,a4	#, returnSize.1_1
	mv	a1,a5	#, tmp147
	ld	a0,-48(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp148,
# problem7.c:45:     assert(issame(result, (const int[]){2, 3, 1, 3}, returnSize, 4));
	bne	a5,zero,.L14	#, _2,,
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
	addi	a5,s0,-52	#, tmp149,
	mv	a1,a5	#, tmp149
	lla	a0,.LC5	#,
	call	func0		#
	sd	a0,-48(s0)	#, result
# problem7.c:49:     assert(issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4));
	lla	a5,.LC1	# tmp150,
	ld	a4,0(a5)		# tmp151,
	sd	a4,-40(s0)	# tmp151, MEM[(int[4] *)_35]
	ld	a5,8(a5)		# tmp152,
	sd	a5,-32(s0)	# tmp152, MEM[(int[4] *)_35]
	lw	a4,-52(s0)		# returnSize.2_3, returnSize
	addi	a5,s0,-40	#, tmp153,
	li	a3,4		#,
	mv	a2,a4	#, returnSize.2_3
	mv	a1,a5	#, tmp153
	ld	a0,-48(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp154,
# problem7.c:49:     assert(issame(result, (const int[]){1, 2, 3, 4}, returnSize, 4));
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
	addi	a5,s0,-52	#, tmp155,
	mv	a1,a5	#, tmp155
	lla	a0,.LC7	#,
	call	func0		#
	sd	a0,-48(s0)	#, result
# problem7.c:53:     assert(issame(result, (const int[]){4}, returnSize, 1));
	li	a5,4		# tmp156,
	sw	a5,-40(s0)	# tmp156, MEM[(int[1] *)_35][0]
	lw	a4,-52(s0)		# returnSize.3_5, returnSize
	addi	a5,s0,-40	#, tmp157,
	li	a3,1		#,
	mv	a2,a4	#, returnSize.3_5
	mv	a1,a5	#, tmp157
	ld	a0,-48(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp158,
# problem7.c:53:     assert(issame(result, (const int[]){4}, returnSize, 1));
	bne	a5,zero,.L16	#, _6,,
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
	la	a5,__stack_chk_guard		# tmp160,
	ld	a3, -24(s0)	# tmp163, D.3531
	ld	a5, 0(a5)	# tmp161, __stack_chk_guard
	xor	a5, a3, a5	# tmp161, tmp163
	li	a3, 0	# tmp163
	beq	a5,zero,.L18	#, tmp161,,
	call	__stack_chk_fail@plt	#
.L18:
	mv	a0,a4	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
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
