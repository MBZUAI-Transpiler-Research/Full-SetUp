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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-1088	#,,
	.cfi_def_cfa_offset 1088
	sd	ra,1080(sp)	#,
	sd	s0,1072(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1088	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-1080(s0)	# str, str
# eval/problem17//code.c:5: int func0(const char *str) {
	la	a5,__stack_chk_guard		# tmp155,
	ld	a4, 0(a5)	# tmp177, __stack_chk_guard
	sd	a4, -24(s0)	# tmp177, D.3039
	li	a4, 0	# tmp177
# eval/problem17//code.c:6:     int count = 0;
	sw	zero,-1056(s0)	#, count
# eval/problem17//code.c:7:     int char_map[256] = {0};
	addi	a5,s0,-1048	#, tmp156,
	li	a4,1024		# tmp157,
	mv	a2,a4	#, tmp157
	li	a1,0		#,
	mv	a0,a5	#, tmp156
	call	memset@plt	#
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	sw	zero,-1052(s0)	#, index
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	j	.L2		#
.L4:
# eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	lw	a5,-1052(s0)		# _1, index
	ld	a4,-1080(s0)		# tmp159, str
	add	a5,a4,a5	# _1, _2, tmp159
	lbu	a5,0(a5)	# _3, *_2
# eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	sext.w	a5,a5	# _4, _3
	mv	a0,a5	#, _4
	call	tolower@plt	#
	mv	a5,a0	# tmp160,
# eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	sb	a5,-1057(s0)	# _5, ch
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	lbu	a5,-1057(s0)	# tmp161, ch
	sext.w	a5,a5	# _6, tmp161
	slli	a5,a5,2	#, tmp162, _6
	addi	a5,a5,-16	#, tmp181, tmp162
	add	a5,a5,s0	#, tmp162, tmp181
	lw	a5,-1032(a5)		# _7, char_map[_6]
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	bne	a5,zero,.L3	#, _7,,
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _8,
	ld	a4,0(a5)		# _9, *_8
	lbu	a5,-1057(s0)	# _10, ch
	slli	a5,a5,1	#, _11, _10
	add	a5,a4,a5	# _11, _12, _9
	lhu	a5,0(a5)	# _13, *_12
	sext.w	a5,a5	# _14, _13
	andi	a5,a5,1024	#, tmp163, _14
	sext.w	a5,a5	# _15, tmp163
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	beq	a5,zero,.L3	#, _15,,
# eval/problem17//code.c:13:             char_map[ch] = 1;
	lbu	a5,-1057(s0)	# tmp164, ch
	sext.w	a5,a5	# _16, tmp164
# eval/problem17//code.c:13:             char_map[ch] = 1;
	slli	a5,a5,2	#, tmp165, _16
	addi	a5,a5,-16	#, tmp182, tmp165
	add	a5,a5,s0	#, tmp165, tmp182
	li	a4,1		# tmp166,
	sw	a4,-1032(a5)	# tmp166, char_map[_16]
# eval/problem17//code.c:14:             count++;
	lw	a5,-1056(s0)		# tmp169, count
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-1056(s0)	# tmp167, count
.L3:
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	lw	a5,-1052(s0)		# tmp172, index
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-1052(s0)	# tmp170, index
.L2:
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	lw	a5,-1052(s0)		# _17, index
	ld	a4,-1080(s0)		# tmp173, str
	add	a5,a4,a5	# _17, _18, tmp173
	lbu	a5,0(a5)	# _19, *_18
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	bne	a5,zero,.L4	#, _19,,
# eval/problem17//code.c:18:     return count;
	lw	a5,-1056(s0)		# _30, count
	mv	a4,a5	# <retval>, _30
# eval/problem17//code.c:19: }
	la	a5,__stack_chk_guard		# tmp175,
	ld	a3, -24(s0)	# tmp178, D.3039
	ld	a5, 0(a5)	# tmp176, __stack_chk_guard
	xor	a5, a3, a5	# tmp176, tmp178
	li	a3, 0	# tmp178
	beq	a5,zero,.L6	#, tmp176,,
	call	__stack_chk_fail@plt	#
.L6:
	mv	a0,a4	#, <retval>
	ld	ra,1080(sp)		#,
	.cfi_restore 1
	ld	s0,1072(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 1088
	addi	sp,sp,1088	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
