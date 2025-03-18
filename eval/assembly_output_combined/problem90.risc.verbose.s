	.file	"problem90.c"
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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# s, s
	sd	a1,-48(s0)	# out, out
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	sw	zero,-24(s0)	#, i
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	j	.L2		#
.L3:
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	lw	a5,-24(s0)		# _1, i
	ld	a4,-40(s0)		# tmp148, s
	add	a5,a4,a5	# _1, _2, tmp148
	lbu	a5,0(a5)	# _3, *_2
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	sext.w	a5,a5	# _4, _3
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addiw	a5,a5,-93	#, tmp149, _4
	sext.w	a5,a5	# _5, tmp149
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	mv	a4,a5	# tmp151, _5
	li	a5,26		# tmp153,
	remw	a5,a4,a5	# tmp153, tmp152, tmp151
	sext.w	a5,a5	# _6, tmp152
# problem90.c:7:         int w = ((int)s[i] - 'a' + 4) % 26 + 'a';
	addiw	a5,a5,97	#, tmp154, _6
	sw	a5,-20(s0)	# tmp154, w
# problem90.c:8:         out[i] = (char)w;
	lw	a5,-24(s0)		# _7, i
	ld	a4,-48(s0)		# tmp155, out
	add	a5,a4,a5	# _7, _8, tmp155
# problem90.c:8:         out[i] = (char)w;
	lw	a4,-20(s0)		# tmp157, w
	andi	a4,a4,0xff	# _9, tmp156
# problem90.c:8:         out[i] = (char)w;
	sb	a4,0(a5)	# _9, *_8
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	lw	a5,-24(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-24(s0)	# tmp158, i
.L2:
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	lw	a5,-24(s0)		# _10, i
	ld	a4,-40(s0)		# tmp161, s
	add	a5,a4,a5	# _10, _11, tmp161
	lbu	a5,0(a5)	# _12, *_11
# problem90.c:6:     for (i = 0; s[i] != '\0'; i++) {
	bne	a5,zero,.L3	#, _12,,
# problem90.c:10:     out[i] = '\0';
	lw	a5,-24(s0)		# _13, i
	ld	a4,-48(s0)		# tmp162, out
	add	a5,a4,a5	# _13, _14, tmp162
# problem90.c:10:     out[i] = '\0';
	sb	zero,0(a5)	#, *_14
# problem90.c:11: }
	nop	
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem90.c:19: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp172, __stack_chk_guard
	sd	a4, -24(s0)	# tmp172, D.2979
	li	a4, 0	# tmp172
# problem90.c:22:     func0("hi", encrypted);
	addi	a5,s0,-128	#, tmp145,
	mv	a1,a5	#, tmp145
	lla	a0,.LC0	#,
	call	func0		#
# problem90.c:23:     assert(strcmp(encrypted, "lm") == 0);
	addi	a5,s0,-128	#, tmp146,
	lla	a1,.LC1	#,
	mv	a0,a5	#, tmp146
	call	strcmp@plt	#
	mv	a5,a0	# tmp147,
# problem90.c:23:     assert(strcmp(encrypted, "lm") == 0);
	beq	a5,zero,.L5	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,23		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L5:
# problem90.c:25:     func0("asdfghjkl", encrypted);
	addi	a5,s0,-128	#, tmp148,
	mv	a1,a5	#, tmp148
	lla	a0,.LC4	#,
	call	func0		#
# problem90.c:26:     assert(strcmp(encrypted, "ewhjklnop") == 0);
	addi	a5,s0,-128	#, tmp149,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp149
	call	strcmp@plt	#
	mv	a5,a0	# tmp150,
# problem90.c:26:     assert(strcmp(encrypted, "ewhjklnop") == 0);
	beq	a5,zero,.L6	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC2	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L6:
# problem90.c:28:     func0("gf", encrypted);
	addi	a5,s0,-128	#, tmp151,
	mv	a1,a5	#, tmp151
	lla	a0,.LC7	#,
	call	func0		#
# problem90.c:29:     assert(strcmp(encrypted, "kj") == 0);
	addi	a5,s0,-128	#, tmp152,
	lla	a1,.LC8	#,
	mv	a0,a5	#, tmp152
	call	strcmp@plt	#
	mv	a5,a0	# tmp153,
# problem90.c:29:     assert(strcmp(encrypted, "kj") == 0);
	beq	a5,zero,.L7	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L7:
# problem90.c:31:     func0("et", encrypted);
	addi	a5,s0,-128	#, tmp154,
	mv	a1,a5	#, tmp154
	lla	a0,.LC10	#,
	call	func0		#
# problem90.c:32:     assert(strcmp(encrypted, "ix") == 0);
	addi	a5,s0,-128	#, tmp155,
	lla	a1,.LC11	#,
	mv	a0,a5	#, tmp155
	call	strcmp@plt	#
	mv	a5,a0	# tmp156,
# problem90.c:32:     assert(strcmp(encrypted, "ix") == 0);
	beq	a5,zero,.L8	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC2	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L8:
# problem90.c:34:     func0("faewfawefaewg", encrypted);
	addi	a5,s0,-128	#, tmp157,
	mv	a1,a5	#, tmp157
	lla	a0,.LC13	#,
	call	func0		#
# problem90.c:35:     assert(strcmp(encrypted, "jeiajeaijeiak") == 0);
	addi	a5,s0,-128	#, tmp158,
	lla	a1,.LC14	#,
	mv	a0,a5	#, tmp158
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
# problem90.c:35:     assert(strcmp(encrypted, "jeiajeaijeiak") == 0);
	beq	a5,zero,.L9	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC2	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L9:
# problem90.c:37:     func0("hellomyfriend", encrypted);
	addi	a5,s0,-128	#, tmp160,
	mv	a1,a5	#, tmp160
	lla	a0,.LC16	#,
	call	func0		#
# problem90.c:38:     assert(strcmp(encrypted, "lippsqcjvmirh") == 0);
	addi	a5,s0,-128	#, tmp161,
	lla	a1,.LC17	#,
	mv	a0,a5	#, tmp161
	call	strcmp@plt	#
	mv	a5,a0	# tmp162,
# problem90.c:38:     assert(strcmp(encrypted, "lippsqcjvmirh") == 0);
	beq	a5,zero,.L10	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC2	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L10:
# problem90.c:40:     func0("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh", encrypted);
	addi	a5,s0,-128	#, tmp163,
	mv	a1,a5	#, tmp163
	lla	a0,.LC19	#,
	call	func0		#
# problem90.c:41:     assert(strcmp(encrypted, "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") == 0);
	addi	a5,s0,-128	#, tmp164,
	lla	a1,.LC20	#,
	mv	a0,a5	#, tmp164
	call	strcmp@plt	#
	mv	a5,a0	# tmp165,
# problem90.c:41:     assert(strcmp(encrypted, "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") == 0);
	beq	a5,zero,.L11	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC2	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L11:
# problem90.c:43:     func0("a", encrypted);
	addi	a5,s0,-128	#, tmp166,
	mv	a1,a5	#, tmp166
	lla	a0,.LC22	#,
	call	func0		#
# problem90.c:44:     assert(strcmp(encrypted, "e") == 0);
	addi	a5,s0,-128	#, tmp167,
	lla	a1,.LC23	#,
	mv	a0,a5	#, tmp167
	call	strcmp@plt	#
	mv	a5,a0	# tmp168,
# problem90.c:44:     assert(strcmp(encrypted, "e") == 0);
	beq	a5,zero,.L12	#, _8,,
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
	la	a5,__stack_chk_guard		# tmp170,
	ld	a3, -24(s0)	# tmp173, D.2979
	ld	a5, 0(a5)	# tmp171, __stack_chk_guard
	xor	a5, a3, a5	# tmp171, tmp173
	li	a3, 0	# tmp173
	beq	a5,zero,.L14	#, tmp171,,
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
