	.file	"problem52.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# text, text
# problem52.c:6:     const char *vowels = "AEIOUaeiou";
	lla	a5,.LC0	# tmp140,
	sd	a5,-24(s0)	# tmp140, vowels
# problem52.c:7:     char *out = text;
	ld	a5,-40(s0)		# tmp141, text
	sd	a5,-32(s0)	# tmp141, out
# problem52.c:8:     while (*text != '\0') {
	j	.L2		#
.L4:
# problem52.c:9:         if (strchr(vowels, *text) == NULL) {
	ld	a5,-40(s0)		# tmp142, text
	lbu	a5,0(a5)	# _1, *text_7
# problem52.c:9:         if (strchr(vowels, *text) == NULL) {
	sext.w	a5,a5	# _2, _1
	mv	a1,a5	#, _2
	ld	a0,-24(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _3,
# problem52.c:9:         if (strchr(vowels, *text) == NULL) {
	bne	a5,zero,.L3	#, _3,,
# problem52.c:10:             *out++ = *text;
	ld	a5,-32(s0)		# out.0_4, out
	addi	a4,a5,1	#, tmp143, out.0_4
	sd	a4,-32(s0)	# tmp143, out
# problem52.c:10:             *out++ = *text;
	ld	a4,-40(s0)		# tmp144, text
	lbu	a4,0(a4)	# _5, *text_7
# problem52.c:10:             *out++ = *text;
	sb	a4,0(a5)	# _5, *out.0_4
.L3:
# problem52.c:12:         text++;
	ld	a5,-40(s0)		# tmp146, text
	addi	a5,a5,1	#, tmp145, tmp146
	sd	a5,-40(s0)	# tmp145, text
.L2:
# problem52.c:8:     while (*text != '\0') {
	ld	a5,-40(s0)		# tmp147, text
	lbu	a5,0(a5)	# _6, *text_7
# problem52.c:8:     while (*text != '\0') {
	bne	a5,zero,.L4	#, _6,,
# problem52.c:14:     *out = '\0';
	ld	a5,-32(s0)		# tmp148, out
	sb	zero,0(a5)	#, *out_9
# problem52.c:15: }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC1:
	.string	"problem52.c"
	.align	3
.LC2:
	.string	"strcmp(test1, \"\") == 0"
	.align	3
.LC4:
	.string	"bcdf\nghjklm"
	.align	3
.LC5:
	.string	"strcmp(test2, \"bcdf\\nghjklm\") == 0"
	.align	3
.LC6:
	.string	"fdcb"
	.align	3
.LC7:
	.string	"strcmp(test3, \"fdcb\") == 0"
	.align	3
.LC8:
	.string	"strcmp(test4, \"\") == 0"
	.align	3
.LC9:
	.string	"cB"
	.align	3
.LC10:
	.string	"strcmp(test5, \"cB\") == 0"
	.align	3
.LC11:
	.string	"strcmp(test6, \"cB\") == 0"
	.align	3
.LC12:
	.string	"ybcd"
	.align	3
.LC13:
	.string	"strcmp(test7, \"ybcd\") == 0"
	.align	3
.LC3:
	.string	"abcdef\nghijklm"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem52.c:23: int main() {
	la	a5,__stack_chk_guard		# tmp145,
	ld	a4, 0(a5)	# tmp186, __stack_chk_guard
	sd	a4, -24(s0)	# tmp186, D.3507
	li	a4, 0	# tmp186
# problem52.c:24:     char test1[] = "";
	sb	zero,-88(s0)	#, test1
# problem52.c:25:     func0(test1);
	addi	a5,s0,-88	#, tmp146,
	mv	a0,a5	#, tmp146
	call	func0		#
# problem52.c:26:     assert(strcmp(test1, "") == 0);
	lbu	a5,-88(s0)	# _11, MEM[(const unsigned char * {ref-all})&test1]
	sext.w	a5,a5	# _1, _11
	beq	a5,zero,.L6	#, _1,,
# problem52.c:26:     assert(strcmp(test1, "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L6:
# problem52.c:28:     char test2[] = "abcdef\nghijklm";
	lla	a5,.LC3	# tmp147,
	ld	a4,0(a5)		# tmp148,
	sd	a4,-40(s0)	# tmp148, test2
	lw	a4,8(a5)		# tmp149,
	sw	a4,-32(s0)	# tmp149, test2
	lhu	a4,12(a5)	# tmp150,
	sh	a4,-28(s0)	# tmp150, test2
	lbu	a5,14(a5)	# tmp151,
	sb	a5,-26(s0)	# tmp151, test2
# problem52.c:29:     func0(test2);
	addi	a5,s0,-40	#, tmp152,
	mv	a0,a5	#, tmp152
	call	func0		#
# problem52.c:30:     assert(strcmp(test2, "bcdf\nghjklm") == 0);
	addi	a5,s0,-40	#, tmp153,
	lla	a1,.LC4	#,
	mv	a0,a5	#, tmp153
	call	strcmp@plt	#
	mv	a5,a0	# tmp154,
# problem52.c:30:     assert(strcmp(test2, "bcdf\nghjklm") == 0);
	beq	a5,zero,.L7	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L7:
# problem52.c:32:     char test3[] = "fedcba";
	li	a5,1667522560		# tmp156,
	addi	a5,a5,1382	#, tmp155, tmp156
	sw	a5,-48(s0)	# tmp155, test3
	li	a5,24576		# tmp158,
	addi	a5,a5,354	#, tmp157, tmp158
	sh	a5,-44(s0)	# tmp157, test3
	sb	zero,-42(s0)	#, test3
# problem52.c:33:     func0(test3);
	addi	a5,s0,-48	#, tmp159,
	mv	a0,a5	#, tmp159
	call	func0		#
# problem52.c:34:     assert(strcmp(test3, "fdcb") == 0);
	addi	a5,s0,-48	#, tmp160,
	lla	a1,.LC6	#,
	mv	a0,a5	#, tmp160
	call	strcmp@plt	#
	mv	a5,a0	# tmp161,
# problem52.c:34:     assert(strcmp(test3, "fdcb") == 0);
	beq	a5,zero,.L8	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC1	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L8:
# problem52.c:36:     char test4[] = "eeeee";
	li	a5,1701142528		# tmp163,
	addi	a5,a5,1381	#, tmp162, tmp163
	sw	a5,-72(s0)	# tmp162, test4
	li	a5,101		# tmp164,
	sh	a5,-68(s0)	# tmp164, test4
# problem52.c:37:     func0(test4);
	addi	a5,s0,-72	#, tmp165,
	mv	a0,a5	#, tmp165
	call	func0		#
# problem52.c:38:     assert(strcmp(test4, "") == 0);
	lbu	a5,-72(s0)	# _21, MEM[(const unsigned char * {ref-all})&test4]
	sext.w	a5,a5	# _4, _21
	beq	a5,zero,.L9	#, _4,,
# problem52.c:38:     assert(strcmp(test4, "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem52.c:40:     char test5[] = "acBAA";
	li	a5,1094868992		# tmp167,
	addi	a5,a5,865	#, tmp166, tmp167
	sw	a5,-64(s0)	# tmp166, test5
	li	a5,65		# tmp168,
	sh	a5,-60(s0)	# tmp168, test5
# problem52.c:41:     func0(test5);
	addi	a5,s0,-64	#, tmp169,
	mv	a0,a5	#, tmp169
	call	func0		#
# problem52.c:42:     assert(strcmp(test5, "cB") == 0);
	addi	a5,s0,-64	#, tmp170,
	lla	a1,.LC9	#,
	mv	a0,a5	#, tmp170
	call	strcmp@plt	#
	mv	a5,a0	# tmp171,
# problem52.c:42:     assert(strcmp(test5, "cB") == 0);
	beq	a5,zero,.L10	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L10:
# problem52.c:44:     char test6[] = "EcBOO";
	li	a5,1329750016		# tmp173,
	addi	a5,a5,837	#, tmp172, tmp173
	sw	a5,-56(s0)	# tmp172, test6
	li	a5,79		# tmp174,
	sh	a5,-52(s0)	# tmp174, test6
# problem52.c:45:     func0(test6);
	addi	a5,s0,-56	#, tmp175,
	mv	a0,a5	#, tmp175
	call	func0		#
# problem52.c:46:     assert(strcmp(test6, "cB") == 0);
	addi	a5,s0,-56	#, tmp176,
	lla	a1,.LC9	#,
	mv	a0,a5	#, tmp176
	call	strcmp@plt	#
	mv	a5,a0	# tmp177,
# problem52.c:46:     assert(strcmp(test6, "cB") == 0);
	beq	a5,zero,.L11	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC1	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L11:
# problem52.c:48:     char test7[] = "ybcd";
	li	a5,1684234240		# tmp179,
	addi	a5,a5,633	#, tmp178, tmp179
	sw	a5,-80(s0)	# tmp178, test7
	sb	zero,-76(s0)	#, test7
# problem52.c:49:     func0(test7);
	addi	a5,s0,-80	#, tmp180,
	mv	a0,a5	#, tmp180
	call	func0		#
# problem52.c:50:     assert(strcmp(test7, "ybcd") == 0);
	addi	a5,s0,-80	#, tmp181,
	lla	a1,.LC12	#,
	mv	a0,a5	#, tmp181
	call	strcmp@plt	#
	mv	a5,a0	# tmp182,
# problem52.c:50:     assert(strcmp(test7, "ybcd") == 0);
	beq	a5,zero,.L12	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC1	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L12:
# problem52.c:52:     return 0;
	li	a5,0		# _32,
# problem52.c:53: }
	mv	a4,a5	# <retval>, _32
	la	a5,__stack_chk_guard		# tmp184,
	ld	a3, -24(s0)	# tmp187, D.3507
	ld	a5, 0(a5)	# tmp185, __stack_chk_guard
	xor	a5, a3, a5	# tmp185, tmp187
	li	a3, 0	# tmp187
	beq	a5,zero,.L14	#, tmp185,,
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
