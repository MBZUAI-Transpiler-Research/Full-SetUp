	.file	"problem90.c"
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
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# s, s
	sd	a1,-48(s0)	# out, out
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	sw	zero,-24(s0)	#, i
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L3:
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	lw	a5,-24(s0)		# _1, i
	ld	a4,-40(s0)		# tmp86, s
	add	a5,a4,a5	# _1, _2, tmp86
	lbu	a5,0(a5)	# _3, *_2
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	sext.w	a5,a5	# _4, _3
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addiw	a5,a5,-93	#, tmp87, _4
	sext.w	a5,a5	# _5, tmp87
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	mv	a4,a5	# tmp89, _5
	li	a5,26		# tmp91,
	remw	a5,a4,a5	# tmp91, tmp90, tmp89
	sext.w	a5,a5	# _6, tmp90
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addiw	a5,a5,97	#, tmp92, _6
	sw	a5,-20(s0)	# tmp92, w
# problem90.c:8:         out[i] = (char)w;
	lw	a5,-24(s0)		# _7, i
	ld	a4,-48(s0)		# tmp93, out
	add	a5,a4,a5	# _7, _8, tmp93
# problem90.c:8:         out[i] = (char)w;
	lw	a4,-20(s0)		# tmp95, w
	andi	a4,a4,0xff	# _9, tmp94
# problem90.c:8:         out[i] = (char)w;
	sb	a4,0(a5)	# _9, *_8
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	lw	a5,-24(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-24(s0)	# tmp96, i
.L2:
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	lw	a5,-24(s0)		# _10, i
	ld	a4,-40(s0)		# tmp99, s
	add	a5,a4,a5	# _10, _11, tmp99
	lbu	a5,0(a5)	# _12, *_11
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L3	#, _12,,
# problem90.c:10:     out[i] = '\0';
	lw	a5,-24(s0)		# _13, i
	ld	a4,-48(s0)		# tmp100, out
	add	a5,a4,a5	# _13, _14, tmp100
# problem90.c:10:     out[i] = '\0';
	sb	zero,0(a5)	#, *_14
# problem90.c:11: }
	nop	
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"hi"
	.align	3
.LC1:
	.string	"lm"
	.align	3
.LC2:
	.string	"problem90.c"
	.align	3
.LC3:
	.string	"strcmp(encrypted, \"lm\") == 0"
	.align	3
.LC4:
	.string	"asdfghjkl"
	.align	3
.LC5:
	.string	"ewhjklnop"
	.align	3
.LC6:
	.string	"strcmp(encrypted, \"ewhjklnop\") == 0"
	.align	3
.LC7:
	.string	"gf"
	.align	3
.LC8:
	.string	"kj"
	.align	3
.LC9:
	.string	"strcmp(encrypted, \"kj\") == 0"
	.align	3
.LC10:
	.string	"et"
	.align	3
.LC11:
	.string	"ix"
	.align	3
.LC12:
	.string	"strcmp(encrypted, \"ix\") == 0"
	.align	3
.LC13:
	.string	"faewfawefaewg"
	.align	3
.LC14:
	.string	"jeiajeaijeiak"
	.align	3
.LC15:
	.string	"strcmp(encrypted, \"jeiajeaijeiak\") == 0"
	.align	3
.LC16:
	.string	"hellomyfriend"
	.align	3
.LC17:
	.string	"lippsqcjvmirh"
	.align	3
.LC18:
	.string	"strcmp(encrypted, \"lippsqcjvmirh\") == 0"
	.align	3
.LC19:
	.string	"dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh"
	.align	3
.LC20:
	.string	"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl"
	.align	3
.LC21:
	.string	"strcmp(encrypted, \"hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl\") == 0"
	.align	3
.LC22:
	.string	"a"
	.align	3
.LC23:
	.string	"e"
	.align	3
.LC24:
	.string	"strcmp(encrypted, \"e\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem90.c:19: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp110, __stack_chk_guard
	sd	a4, -24(s0)	# tmp110, D.2134
	li	a4, 0	# tmp110
# problem90.c:22:     func0("hi", encrypted);
	addi	a5,s0,-128	#, tmp83,
	mv	a1,a5	#, tmp83
	lla	a0,.LC0	#,
	call	func0		#
# problem90.c:23:     assert(strcmp(encrypted, "lm") == 0);
	addi	a5,s0,-128	#, tmp84,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp84
	call	strcmp@plt	#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L5	#, _1,,
# problem90.c:23:     assert(strcmp(encrypted, "lm") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L5:
# problem90.c:25:     func0("asdfghjkl", encrypted);
	addi	a5,s0,-128	#, tmp86,
	mv	a1,a5	#, tmp86
	lla	a0,.LC4	#,
	call	func0		#
# problem90.c:26:     assert(strcmp(encrypted, "ewhjklnop") == 0);
	addi	a5,s0,-128	#, tmp87,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp87
	call	strcmp@plt	#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L6	#, _2,,
# problem90.c:26:     assert(strcmp(encrypted, "ewhjklnop") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L6:
# problem90.c:28:     func0("gf", encrypted);
	addi	a5,s0,-128	#, tmp89,
	mv	a1,a5	#, tmp89
	lla	a0,.LC7	#,
	call	func0		#
# problem90.c:29:     assert(strcmp(encrypted, "kj") == 0);
	addi	a5,s0,-128	#, tmp90,
	lla	a1,.LC8	#,
	mv	a0,a5	#, tmp90
	call	strcmp@plt	#
	mv	a5,a0	# tmp91,
	beq	a5,zero,.L7	#, _3,,
# problem90.c:29:     assert(strcmp(encrypted, "kj") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L7:
# problem90.c:31:     func0("et", encrypted);
	addi	a5,s0,-128	#, tmp92,
	mv	a1,a5	#, tmp92
	lla	a0,.LC10	#,
	call	func0		#
# problem90.c:32:     assert(strcmp(encrypted, "ix") == 0);
	addi	a5,s0,-128	#, tmp93,
	lla	a1,.LC11	#,
	mv	a0,a5	#, tmp93
	call	strcmp@plt	#
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L8	#, _4,,
# problem90.c:32:     assert(strcmp(encrypted, "ix") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC2	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L8:
# problem90.c:34:     func0("faewfawefaewg", encrypted);
	addi	a5,s0,-128	#, tmp95,
	mv	a1,a5	#, tmp95
	lla	a0,.LC13	#,
	call	func0		#
# problem90.c:35:     assert(strcmp(encrypted, "jeiajeaijeiak") == 0);
	addi	a5,s0,-128	#, tmp96,
	lla	a1,.LC14	#,
	mv	a0,a5	#, tmp96
	call	strcmp@plt	#
	mv	a5,a0	# tmp97,
	beq	a5,zero,.L9	#, _5,,
# problem90.c:35:     assert(strcmp(encrypted, "jeiajeaijeiak") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC2	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L9:
# problem90.c:37:     func0("hellomyfriend", encrypted);
	addi	a5,s0,-128	#, tmp98,
	mv	a1,a5	#, tmp98
	lla	a0,.LC16	#,
	call	func0		#
# problem90.c:38:     assert(strcmp(encrypted, "lippsqcjvmirh") == 0);
	addi	a5,s0,-128	#, tmp99,
	lla	a1,.LC17	#,
	mv	a0,a5	#, tmp99
	call	strcmp@plt	#
	mv	a5,a0	# tmp100,
	beq	a5,zero,.L10	#, _6,,
# problem90.c:38:     assert(strcmp(encrypted, "lippsqcjvmirh") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC2	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L10:
# problem90.c:40:     func0("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh", encrypted);
	addi	a5,s0,-128	#, tmp101,
	mv	a1,a5	#, tmp101
	lla	a0,.LC19	#,
	call	func0		#
# problem90.c:41:     assert(strcmp(encrypted, "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") == 0);
	addi	a5,s0,-128	#, tmp102,
	lla	a1,.LC20	#,
	mv	a0,a5	#, tmp102
	call	strcmp@plt	#
	mv	a5,a0	# tmp103,
	beq	a5,zero,.L11	#, _7,,
# problem90.c:41:     assert(strcmp(encrypted, "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC2	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L11:
# problem90.c:43:     func0("a", encrypted);
	addi	a5,s0,-128	#, tmp104,
	mv	a1,a5	#, tmp104
	lla	a0,.LC22	#,
	call	func0		#
# problem90.c:44:     assert(strcmp(encrypted, "e") == 0);
	addi	a5,s0,-128	#, tmp105,
	lla	a1,.LC23	#,
	mv	a0,a5	#, tmp105
	call	strcmp@plt	#
	mv	a5,a0	# tmp106,
	beq	a5,zero,.L12	#, _8,,
# problem90.c:44:     assert(strcmp(encrypted, "e") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC2	#,
	lla	a0,.LC24	#,
	call	__assert_fail@plt	#
.L12:
# problem90.c:46:     return 0;
	li	a5,0		# _26,
# problem90.c:47: }
	mv	a4,a5	# <retval>, _26
	la	a5,__stack_chk_guard		# tmp108,
	ld	a3, -24(s0)	# tmp111, D.2134
	ld	a5, 0(a5)	# tmp109, __stack_chk_guard
	xor	a5, a3, a5	# tmp109, tmp111
	li	a3, 0	# tmp111
	beq	a5,zero,.L14	#, tmp109,,
	call	__stack_chk_fail@plt	#
.L14:
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
