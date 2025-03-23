	.file	"problem99.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# s, s
# problem99.c:5:     const char *uvowel = "AEIOU";
	lla	a5,.LC0	# tmp86,
	sd	a5,-40(s0)	# tmp86, uvowel
# problem99.c:6:     int count = 0;
	sw	zero,-48(s0)	#, count
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	sw	zero,-44(s0)	#, i
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	j	.L2		#
.L5:
# problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	lw	a5,-44(s0)		# tmp89, i
	slliw	a5,a5,1	#, tmp87, tmp88
	sext.w	a5,a5	# _1, tmp87
	mv	a4,a5	# _2, _1
# problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	ld	a5,-56(s0)		# tmp90, s
	add	a5,a5,a4	# _2, _3, tmp90
	lbu	a5,0(a5)	# _4, *_3
# problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	sext.w	a5,a5	# _5, _4
	mv	a1,a5	#, _5
	ld	a0,-40(s0)		#, uvowel
	call	strchr@plt	#
	mv	a5,a0	# _6,
# problem99.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	beq	a5,zero,.L3	#, _6,,
# problem99.c:9:             count += 1;
	lw	a5,-48(s0)		# tmp93, count
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-48(s0)	# tmp91, count
.L3:
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	lw	a5,-44(s0)		# tmp96, i
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-44(s0)	# tmp94, i
.L2:
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	lw	a5,-44(s0)		# _7, i
	ld	a4,-56(s0)		# tmp97, s
	add	a5,a4,a5	# _7, _8, tmp97
	lbu	a5,0(a5)	# _9, *_8
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	beq	a5,zero,.L4	#, _9,,
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	lw	a5,-44(s0)		# tmp100, i
	slliw	a5,a5,1	#, tmp98, tmp99
	sext.w	a5,a5	# _10, tmp98
	mv	s1,a5	# _11, _10
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _12,
# problem99.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	bltu	s1,a5,.L5	#, _11, _12,
.L4:
# problem99.c:12:     return count;
	lw	a5,-48(s0)		# _23, count
# problem99.c:13: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"aBCdEf"
	.align	3
.LC2:
	.string	"problem99.c"
	.align	3
.LC3:
	.string	"func0(\"aBCdEf\") == 1"
	.align	3
.LC4:
	.string	"abcdefg"
	.align	3
.LC5:
	.string	"func0(\"abcdefg\") == 0"
	.align	3
.LC6:
	.string	"dBBE"
	.align	3
.LC7:
	.string	"func0(\"dBBE\") == 0"
	.align	3
.LC8:
	.string	"B"
	.align	3
.LC9:
	.string	"func0(\"B\") == 0"
	.align	3
.LC10:
	.string	"U"
	.align	3
.LC11:
	.string	"func0(\"U\") == 1"
	.align	3
.LC12:
	.string	""
	.align	3
.LC13:
	.string	"func0(\"\") == 0"
	.align	3
.LC14:
	.string	"EEEE"
	.align	3
.LC15:
	.string	"func0(\"EEEE\") == 2"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem99.c:20:     assert(func0("aBCdEf") == 1);
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp81,
	mv	a4,a5	# tmp82, _1
	li	a5,1		# tmp83,
	beq	a4,a5,.L8	#, tmp82, tmp83,
# problem99.c:20:     assert(func0("aBCdEf") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L8:
# problem99.c:21:     assert(func0("abcdefg") == 0);
	lla	a0,.LC4	#,
	call	func0		#
	mv	a5,a0	# tmp84,
	beq	a5,zero,.L9	#, _2,,
# problem99.c:21:     assert(func0("abcdefg") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L9:
# problem99.c:22:     assert(func0("dBBE") == 0);
	lla	a0,.LC6	#,
	call	func0		#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L10	#, _3,,
# problem99.c:22:     assert(func0("dBBE") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,22		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L10:
# problem99.c:23:     assert(func0("B") == 0);
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp86,
	beq	a5,zero,.L11	#, _4,,
# problem99.c:23:     assert(func0("B") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L11:
# problem99.c:24:     assert(func0("U") == 1);
	lla	a0,.LC10	#,
	call	func0		#
	mv	a5,a0	# tmp87,
	mv	a4,a5	# tmp88, _5
	li	a5,1		# tmp89,
	beq	a4,a5,.L12	#, tmp88, tmp89,
# problem99.c:24:     assert(func0("U") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,24		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L12:
# problem99.c:25:     assert(func0("") == 0);
	lla	a0,.LC12	#,
	call	func0		#
	mv	a5,a0	# tmp90,
	beq	a5,zero,.L13	#, _6,,
# problem99.c:25:     assert(func0("") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,25		#,
	lla	a1,.LC2	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L13:
# problem99.c:26:     assert(func0("EEEE") == 2);
	lla	a0,.LC14	#,
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _7
	li	a5,2		# tmp93,
	beq	a4,a5,.L14	#, tmp92, tmp93,
# problem99.c:26:     assert(func0("EEEE") == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC2	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L14:
# problem99.c:28:     return 0;
	li	a5,0		# _23,
# problem99.c:29: }
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
