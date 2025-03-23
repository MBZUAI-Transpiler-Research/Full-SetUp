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
	addi	sp,sp,-1088	#,,
	sd	ra,1080(sp)	#,
	sd	s0,1072(sp)	#,
	addi	s0,sp,1088	#,,
	sd	a0,-1080(s0)	# str, str
# eval/problem17//code.c:5: int func0(const char *str) {
	la	a5,__stack_chk_guard		# tmp93,
	ld	a4, 0(a5)	# tmp115, __stack_chk_guard
	sd	a4, -24(s0)	# tmp115, D.2194
	li	a4, 0	# tmp115
# eval/problem17//code.c:6:     int count = 0;
	sw	zero,-1056(s0)	#, count
# eval/problem17//code.c:7:     int char_map[256] = {0};
	addi	a5,s0,-1048	#, tmp94,
	li	a4,1024		# tmp95,
	mv	a2,a4	#, tmp95
	li	a1,0		#,
	mv	a0,a5	#, tmp94
	call	memset@plt	#
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	sw	zero,-1052(s0)	#, index
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	j	.L2		#
.L4:
# eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	lw	a5,-1052(s0)		# _1, index
	ld	a4,-1080(s0)		# tmp97, str
	add	a5,a4,a5	# _1, _2, tmp97
	lbu	a5,0(a5)	# _3, *_2
# eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	sext.w	a5,a5	# _4, _3
	mv	a0,a5	#, _4
	call	tolower@plt	#
	mv	a5,a0	# tmp98,
# eval/problem17//code.c:11:         char ch = tolower((unsigned char)str[index]);
	sb	a5,-1057(s0)	# _5, ch
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	lbu	a5,-1057(s0)	# tmp99, ch
	sext.w	a5,a5	# _6, tmp99
	slli	a5,a5,2	#, tmp100, _6
	addi	a5,a5,-16	#, tmp119, tmp100
	add	a5,a5,s0	#, tmp100, tmp119
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
	andi	a5,a5,1024	#, tmp101, _14
	sext.w	a5,a5	# _15, tmp101
# eval/problem17//code.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	beq	a5,zero,.L3	#, _15,,
# eval/problem17//code.c:13:             char_map[ch] = 1;
	lbu	a5,-1057(s0)	# tmp102, ch
	sext.w	a5,a5	# _16, tmp102
# eval/problem17//code.c:13:             char_map[ch] = 1;
	slli	a5,a5,2	#, tmp103, _16
	addi	a5,a5,-16	#, tmp120, tmp103
	add	a5,a5,s0	#, tmp103, tmp120
	li	a4,1		# tmp104,
	sw	a4,-1032(a5)	# tmp104, char_map[_16]
# eval/problem17//code.c:14:             count++;
	lw	a5,-1056(s0)		# tmp107, count
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-1056(s0)	# tmp105, count
.L3:
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	lw	a5,-1052(s0)		# tmp110, index
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-1052(s0)	# tmp108, index
.L2:
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	lw	a5,-1052(s0)		# _17, index
	ld	a4,-1080(s0)		# tmp111, str
	add	a5,a4,a5	# _17, _18, tmp111
	lbu	a5,0(a5)	# _19, *_18
# eval/problem17//code.c:10:     for (index = 0; str[index]; index++) {
	bne	a5,zero,.L4	#, _19,,
# eval/problem17//code.c:18:     return count;
	lw	a5,-1056(s0)		# _30, count
	mv	a4,a5	# <retval>, _30
# eval/problem17//code.c:19: }
	la	a5,__stack_chk_guard		# tmp113,
	ld	a3, -24(s0)	# tmp116, D.2194
	ld	a5, 0(a5)	# tmp114, __stack_chk_guard
	xor	a5, a3, a5	# tmp114, tmp116
	li	a3, 0	# tmp116
	beq	a5,zero,.L6	#, tmp114,,
	call	__stack_chk_fail@plt	#
.L6:
	mv	a0,a4	#, <retval>
	ld	ra,1080(sp)		#,
	ld	s0,1072(sp)		#,
	addi	sp,sp,1088	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
