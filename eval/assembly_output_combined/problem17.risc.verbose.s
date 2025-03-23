	.file	"problem17.c"
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
# problem17.c:5: int func0(const char *str) {
	la	a5,__stack_chk_guard		# tmp93,
	ld	a4, 0(a5)	# tmp115, __stack_chk_guard
	sd	a4, -24(s0)	# tmp115, D.2232
	li	a4, 0	# tmp115
# problem17.c:6:     int count = 0;
	sw	zero,-1056(s0)	#, count
# problem17.c:7:     int char_map[256] = {0};
	addi	a5,s0,-1048	#, tmp94,
	li	a4,1024		# tmp95,
	mv	a2,a4	#, tmp95
	li	a1,0		#,
	mv	a0,a5	#, tmp94
	call	memset@plt	#
# problem17.c:10:     for (index = 0; str[index]; index++) {
	sw	zero,-1052(s0)	#, index
# problem17.c:10:     for (index = 0; str[index]; index++) {
	j	.L2		#
.L4:
# problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	lw	a5,-1052(s0)		# _1, index
	ld	a4,-1080(s0)		# tmp97, str
	add	a5,a4,a5	# _1, _2, tmp97
	lbu	a5,0(a5)	# _3, *_2
# problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	sext.w	a5,a5	# _4, _3
	mv	a0,a5	#, _4
	call	tolower@plt	#
	mv	a5,a0	# tmp98,
# problem17.c:11:         char ch = tolower((unsigned char)str[index]);
	sb	a5,-1057(s0)	# _5, ch
# problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	lbu	a5,-1057(s0)	# tmp99, ch
	sext.w	a5,a5	# _6, tmp99
	slli	a5,a5,2	#, tmp100, _6
	addi	a5,a5,-16	#, tmp119, tmp100
	add	a5,a5,s0	#, tmp100, tmp119
	lw	a5,-1032(a5)		# _7, char_map[_6]
# problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	bne	a5,zero,.L3	#, _7,,
# problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
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
# problem17.c:12:         if (char_map[ch] == 0 && isalpha((unsigned char)ch)) {
	beq	a5,zero,.L3	#, _15,,
# problem17.c:13:             char_map[ch] = 1;
	lbu	a5,-1057(s0)	# tmp102, ch
	sext.w	a5,a5	# _16, tmp102
# problem17.c:13:             char_map[ch] = 1;
	slli	a5,a5,2	#, tmp103, _16
	addi	a5,a5,-16	#, tmp120, tmp103
	add	a5,a5,s0	#, tmp103, tmp120
	li	a4,1		# tmp104,
	sw	a4,-1032(a5)	# tmp104, char_map[_16]
# problem17.c:14:             count++;
	lw	a5,-1056(s0)		# tmp107, count
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-1056(s0)	# tmp105, count
.L3:
# problem17.c:10:     for (index = 0; str[index]; index++) {
	lw	a5,-1052(s0)		# tmp110, index
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-1052(s0)	# tmp108, index
.L2:
# problem17.c:10:     for (index = 0; str[index]; index++) {
	lw	a5,-1052(s0)		# _17, index
	ld	a4,-1080(s0)		# tmp111, str
	add	a5,a4,a5	# _17, _18, tmp111
	lbu	a5,0(a5)	# _19, *_18
# problem17.c:10:     for (index = 0; str[index]; index++) {
	bne	a5,zero,.L4	#, _19,,
# problem17.c:18:     return count;
	lw	a5,-1056(s0)		# _30, count
	mv	a4,a5	# <retval>, _30
# problem17.c:19: }
	la	a5,__stack_chk_guard		# tmp113,
	ld	a3, -24(s0)	# tmp116, D.2232
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
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem17.c"
	.align	3
.LC2:
	.string	"func0(\"\") == 0"
	.align	3
.LC3:
	.string	"abcde"
	.align	3
.LC4:
	.string	"func0(\"abcde\") == 5"
	.align	3
.LC5:
	.string	"abcdecadeCADE"
	.align	3
.LC6:
	.string	"func0(\"abcdecadeCADE\") == 5"
	.align	3
.LC7:
	.string	"aaaaAAAAaaaa"
	.align	3
.LC8:
	.string	"func0(\"aaaaAAAAaaaa\") == 1"
	.align	3
.LC9:
	.string	"Jerry jERRY JeRRRY"
	.align	3
.LC10:
	.string	"func0(\"Jerry jERRY JeRRRY\") == 4"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem17.c:26:     assert(func0("") == 0);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp79,
	beq	a5,zero,.L8	#, _1,,
# problem17.c:26:     assert(func0("") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem17.c:27:     assert(func0("abcde") == 5);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp80,
	mv	a4,a5	# tmp81, _2
	li	a5,5		# tmp82,
	beq	a4,a5,.L9	#, tmp81, tmp82,
# problem17.c:27:     assert(func0("abcde") == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem17.c:28:     assert(func0("abcdecadeCADE") == 5);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp83,
	mv	a4,a5	# tmp84, _3
	li	a5,5		# tmp85,
	beq	a4,a5,.L10	#, tmp84, tmp85,
# problem17.c:28:     assert(func0("abcdecadeCADE") == 5);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem17.c:29:     assert(func0("aaaaAAAAaaaa") == 1);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# tmp87, _4
	li	a5,1		# tmp88,
	beq	a4,a5,.L11	#, tmp87, tmp88,
# problem17.c:29:     assert(func0("aaaaAAAAaaaa") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem17.c:30:     assert(func0("Jerry jERRY JeRRRY") == 4);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp89,
	mv	a4,a5	# tmp90, _5
	li	a5,4		# tmp91,
	beq	a4,a5,.L12	#, tmp90, tmp91,
# problem17.c:30:     assert(func0("Jerry jERRY JeRRRY") == 4);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem17.c:32:     return 0;
	li	a5,0		# _17,
# problem17.c:33: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
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
