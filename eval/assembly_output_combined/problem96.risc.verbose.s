	.file	"problem96.c"
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
	sd	a0,-56(s0)	# dict, dict
	mv	a5,a1	# tmp176, size
	sw	a5,-60(s0)	# tmp177, size
# problem96.c:7:     if (size == 0) return 0;
	lw	a5,-60(s0)		# tmp179, size
	sext.w	a5,a5	# tmp180, tmp178
	bne	a5,zero,.L2	#, tmp180,,
# problem96.c:7:     if (size == 0) return 0;
	li	a5,0		# _49,
# problem96.c:7:     if (size == 0) return 0;
	j	.L3		#
.L2:
# problem96.c:8:     int has_lower = 0, has_upper = 0;
	sw	zero,-40(s0)	#, has_lower
# problem96.c:8:     int has_lower = 0, has_upper = 0;
	sw	zero,-36(s0)	#, has_upper
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	sw	zero,-32(s0)	#, i
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	j	.L4		#
.L11:
# problem96.c:10:         char* key = dict[i][0];
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,4	#, _2, _1
	ld	a4,-56(s0)		# tmp181, dict
	add	a5,a4,a5	# _2, _3, tmp181
# problem96.c:10:         char* key = dict[i][0];
	ld	a5,0(a5)		# tmp182, (*_3)[0]
	sd	a5,-24(s0)	# tmp182, key
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	sw	zero,-28(s0)	#, j
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	j	.L5		#
.L10:
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _4,
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	ld	a4,0(a5)		# _5, *_4
	lw	a5,-28(s0)		# _6, j
	ld	a3,-24(s0)		# tmp183, key
	add	a5,a3,a5	# _6, _7, tmp183
	lbu	a5,0(a5)	# _8, *_7
	slli	a5,a5,1	#, _10, _9
	add	a5,a4,a5	# _10, _11, _5
	lhu	a5,0(a5)	# _12, *_11
	sext.w	a5,a5	# _13, _12
	andi	a5,a5,1024	#, tmp184, _13
	sext.w	a5,a5	# _14, tmp184
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	bne	a5,zero,.L6	#, _14,,
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	li	a5,0		# _49,
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	j	.L3		#
.L6:
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _15,
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	ld	a4,0(a5)		# _16, *_15
	lw	a5,-28(s0)		# _17, j
	ld	a3,-24(s0)		# tmp185, key
	add	a5,a3,a5	# _17, _18, tmp185
	lbu	a5,0(a5)	# _19, *_18
	slli	a5,a5,1	#, _21, _20
	add	a5,a4,a5	# _21, _22, _16
	lhu	a5,0(a5)	# _23, *_22
	sext.w	a5,a5	# _24, _23
	andi	a5,a5,256	#, tmp186, _24
	sext.w	a5,a5	# _25, tmp186
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	beq	a5,zero,.L7	#, _25,,
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	li	a5,1		# tmp187,
	sw	a5,-36(s0)	# tmp187, has_upper
.L7:
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _26,
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	ld	a4,0(a5)		# _27, *_26
	lw	a5,-28(s0)		# _28, j
	ld	a3,-24(s0)		# tmp188, key
	add	a5,a3,a5	# _28, _29, tmp188
	lbu	a5,0(a5)	# _30, *_29
	slli	a5,a5,1	#, _32, _31
	add	a5,a4,a5	# _32, _33, _27
	lhu	a5,0(a5)	# _34, *_33
	sext.w	a5,a5	# _35, _34
	andi	a5,a5,512	#, tmp189, _35
	sext.w	a5,a5	# _36, tmp189
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	beq	a5,zero,.L8	#, _36,,
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	li	a5,1		# tmp190,
	sw	a5,-40(s0)	# tmp190, has_lower
.L8:
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	lw	a5,-36(s0)		# tmp193, has_upper
	mv	a4,a5	# tmp192, tmp193
	lw	a5,-40(s0)		# tmp195, has_lower
	addw	a5,a4,a5	# tmp194, tmp191, tmp192
	sext.w	a5,a5	# _37, tmp191
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	mv	a4,a5	# tmp196, _37
	li	a5,2		# tmp197,
	bne	a4,a5,.L9	#, tmp196, tmp197,
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	li	a5,0		# _49,
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	j	.L3		#
.L9:
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	lw	a5,-28(s0)		# tmp200, j
	addiw	a5,a5,1	#, tmp198, tmp199
	sw	a5,-28(s0)	# tmp198, j
.L5:
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	lw	a5,-28(s0)		# _38, j
	ld	a4,-24(s0)		# tmp201, key
	add	a5,a4,a5	# _38, _39, tmp201
	lbu	a5,0(a5)	# _40, *_39
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	bne	a5,zero,.L10	#, _40,,
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp204, i
	addiw	a5,a5,1	#, tmp202, tmp203
	sw	a5,-32(s0)	# tmp202, i
.L4:
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp206, i
	mv	a4,a5	# tmp205, tmp206
	lw	a5,-60(s0)		# tmp208, size
	sext.w	a4,a4	# tmp209, tmp205
	sext.w	a5,a5	# tmp210, tmp207
	blt	a4,a5,.L11	#, tmp209, tmp210,
# problem96.c:18:     return 1;
	li	a5,1		# _49,
.L3:
# problem96.c:19: }
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
	.section	.rodata
	.align	3
.LC30:
	.string	"problem96.c"
	.align	3
.LC31:
	.string	"func0(test1, 2) == 1"
	.align	3
.LC33:
	.string	"func0(test2, 3) == 0"
	.align	3
.LC35:
	.string	"func0(test3, 3) == 0"
	.align	3
.LC37:
	.string	"func0(test4, 3) == 0"
	.align	3
.LC39:
	.string	"func0(test5, 2) == 1"
	.align	3
.LC41:
	.string	"func0(test6, 2) == 1"
	.align	3
.LC42:
	.string	"func0(NULL, 0) == 0"
	.align	3
.LC0:
	.string	"p"
	.align	3
.LC1:
	.string	"pineapple"
	.align	3
.LC2:
	.string	"b"
	.align	3
.LC3:
	.string	"banana"
	.data
	.align	3
.LC29:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.section	.rodata
	.align	3
.LC5:
	.string	"A"
	.align	3
.LC6:
	.string	"B"
	.data
	.align	3
.LC32:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC5
	.dword	.LC3
	.dword	.LC6
	.dword	.LC3
	.section	.rodata
	.align	3
.LC8:
	.string	"5"
	.align	3
.LC9:
	.string	"a"
	.align	3
.LC10:
	.string	"apple"
	.data
	.align	3
.LC34:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC8
	.dword	.LC3
	.dword	.LC9
	.dword	.LC10
	.section	.rodata
	.align	3
.LC12:
	.string	"Name"
	.align	3
.LC13:
	.string	"John"
	.align	3
.LC14:
	.string	"Age"
	.align	3
.LC15:
	.string	"36"
	.align	3
.LC16:
	.string	"City"
	.align	3
.LC17:
	.string	"Houston"
	.data
	.align	3
.LC36:
	.dword	.LC12
	.dword	.LC13
	.dword	.LC14
	.dword	.LC15
	.dword	.LC16
	.dword	.LC17
	.section	.rodata
	.align	3
.LC19:
	.string	"STATE"
	.align	3
.LC20:
	.string	"NC"
	.align	3
.LC21:
	.string	"ZIP"
	.align	3
.LC22:
	.string	"12345"
	.data
	.align	3
.LC38:
	.dword	.LC19
	.dword	.LC20
	.dword	.LC21
	.dword	.LC22
	.section	.rodata
	.align	3
.LC24:
	.string	"fruit"
	.align	3
.LC25:
	.string	"Orange"
	.align	3
.LC26:
	.string	"taste"
	.align	3
.LC27:
	.string	"Sweet"
	.data
	.align	3
.LC40:
	.dword	.LC24
	.dword	.LC25
	.dword	.LC26
	.dword	.LC27
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-272	#,,
	.cfi_def_cfa_offset 272
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,272	#,,
	.cfi_def_cfa 8, 0
# problem96.c:26: int main() {
	la	a5,__stack_chk_guard		# tmp143,
	ld	a4, 0(a5)	# tmp202, __stack_chk_guard
	sd	a4, -24(s0)	# tmp202, D.3661
	li	a4, 0	# tmp202
# problem96.c:27:     char* test1[][2] = {{"p","pineapple"}, {"b","banana"}};
	lla	a5,.LC29	# tmp144,
	ld	a2,0(a5)		# tmp145,
	ld	a3,8(a5)		# tmp146,
	ld	a4,16(a5)		# tmp147,
	ld	a5,24(a5)		# tmp148,
	sd	a2,-264(s0)	# tmp145, test1
	sd	a3,-256(s0)	# tmp146, test1
	sd	a4,-248(s0)	# tmp147, test1
	sd	a5,-240(s0)	# tmp148, test1
# problem96.c:28:     assert(func0(test1, 2) == 1);
	addi	a5,s0,-264	#, tmp149,
	li	a1,2		#,
	mv	a0,a5	#, tmp149
	call	func0		#
	mv	a5,a0	# tmp150,
# problem96.c:28:     assert(func0(test1, 2) == 1);
	mv	a4,a5	# tmp151, _1
	li	a5,1		# tmp152,
	beq	a4,a5,.L13	#, tmp151, tmp152,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC30	#,
	lla	a0,.LC31	#,
	call	__assert_fail@plt	#
.L13:
# problem96.c:30:     char* test2[][2] = {{"p","pineapple"}, {"A","banana"}, {"B","banana"}};
	lla	a5,.LC32	# tmp153,
	ld	a0,0(a5)		# tmp154,
	ld	a1,8(a5)		# tmp155,
	ld	a2,16(a5)		# tmp156,
	ld	a3,24(a5)		# tmp157,
	ld	a4,32(a5)		# tmp158,
	ld	a5,40(a5)		# tmp159,
	sd	a0,-168(s0)	# tmp154, test2
	sd	a1,-160(s0)	# tmp155, test2
	sd	a2,-152(s0)	# tmp156, test2
	sd	a3,-144(s0)	# tmp157, test2
	sd	a4,-136(s0)	# tmp158, test2
	sd	a5,-128(s0)	# tmp159, test2
# problem96.c:31:     assert(func0(test2, 3) == 0);
	addi	a5,s0,-168	#, tmp160,
	li	a1,3		#,
	mv	a0,a5	#, tmp160
	call	func0		#
	mv	a5,a0	# tmp161,
# problem96.c:31:     assert(func0(test2, 3) == 0);
	beq	a5,zero,.L14	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC30	#,
	lla	a0,.LC33	#,
	call	__assert_fail@plt	#
.L14:
# problem96.c:33:     char* test3[][2] = {{"p","pineapple"}, {"5","banana"}, {"a","apple"}};
	lla	a5,.LC34	# tmp162,
	ld	a0,0(a5)		# tmp163,
	ld	a1,8(a5)		# tmp164,
	ld	a2,16(a5)		# tmp165,
	ld	a3,24(a5)		# tmp166,
	ld	a4,32(a5)		# tmp167,
	ld	a5,40(a5)		# tmp168,
	sd	a0,-120(s0)	# tmp163, test3
	sd	a1,-112(s0)	# tmp164, test3
	sd	a2,-104(s0)	# tmp165, test3
	sd	a3,-96(s0)	# tmp166, test3
	sd	a4,-88(s0)	# tmp167, test3
	sd	a5,-80(s0)	# tmp168, test3
# problem96.c:34:     assert(func0(test3, 3) == 0);
	addi	a5,s0,-120	#, tmp169,
	li	a1,3		#,
	mv	a0,a5	#, tmp169
	call	func0		#
	mv	a5,a0	# tmp170,
# problem96.c:34:     assert(func0(test3, 3) == 0);
	beq	a5,zero,.L15	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC30	#,
	lla	a0,.LC35	#,
	call	__assert_fail@plt	#
.L15:
# problem96.c:36:     char* test4[][2] = {{"Name","John"}, {"Age","36"}, {"City","Houston"}};
	lla	a5,.LC36	# tmp171,
	ld	a0,0(a5)		# tmp172,
	ld	a1,8(a5)		# tmp173,
	ld	a2,16(a5)		# tmp174,
	ld	a3,24(a5)		# tmp175,
	ld	a4,32(a5)		# tmp176,
	ld	a5,40(a5)		# tmp177,
	sd	a0,-72(s0)	# tmp172, test4
	sd	a1,-64(s0)	# tmp173, test4
	sd	a2,-56(s0)	# tmp174, test4
	sd	a3,-48(s0)	# tmp175, test4
	sd	a4,-40(s0)	# tmp176, test4
	sd	a5,-32(s0)	# tmp177, test4
# problem96.c:37:     assert(func0(test4, 3) == 0);
	addi	a5,s0,-72	#, tmp178,
	li	a1,3		#,
	mv	a0,a5	#, tmp178
	call	func0		#
	mv	a5,a0	# tmp179,
# problem96.c:37:     assert(func0(test4, 3) == 0);
	beq	a5,zero,.L16	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC30	#,
	lla	a0,.LC37	#,
	call	__assert_fail@plt	#
.L16:
# problem96.c:39:     char* test5[][2] = {{"STATE","NC"}, {"ZIP","12345"}};
	lla	a5,.LC38	# tmp180,
	ld	a2,0(a5)		# tmp181,
	ld	a3,8(a5)		# tmp182,
	ld	a4,16(a5)		# tmp183,
	ld	a5,24(a5)		# tmp184,
	sd	a2,-232(s0)	# tmp181, test5
	sd	a3,-224(s0)	# tmp182, test5
	sd	a4,-216(s0)	# tmp183, test5
	sd	a5,-208(s0)	# tmp184, test5
# problem96.c:40:     assert(func0(test5, 2) == 1);
	addi	a5,s0,-232	#, tmp185,
	li	a1,2		#,
	mv	a0,a5	#, tmp185
	call	func0		#
	mv	a5,a0	# tmp186,
# problem96.c:40:     assert(func0(test5, 2) == 1);
	mv	a4,a5	# tmp187, _5
	li	a5,1		# tmp188,
	beq	a4,a5,.L17	#, tmp187, tmp188,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC30	#,
	lla	a0,.LC39	#,
	call	__assert_fail@plt	#
.L17:
# problem96.c:42:     char* test6[][2] = {{"fruit","Orange"}, {"taste","Sweet"}};
	lla	a5,.LC40	# tmp189,
	ld	a2,0(a5)		# tmp190,
	ld	a3,8(a5)		# tmp191,
	ld	a4,16(a5)		# tmp192,
	ld	a5,24(a5)		# tmp193,
	sd	a2,-200(s0)	# tmp190, test6
	sd	a3,-192(s0)	# tmp191, test6
	sd	a4,-184(s0)	# tmp192, test6
	sd	a5,-176(s0)	# tmp193, test6
# problem96.c:43:     assert(func0(test6, 2) == 1);
	addi	a5,s0,-200	#, tmp194,
	li	a1,2		#,
	mv	a0,a5	#, tmp194
	call	func0		#
	mv	a5,a0	# tmp195,
# problem96.c:43:     assert(func0(test6, 2) == 1);
	mv	a4,a5	# tmp196, _6
	li	a5,1		# tmp197,
	beq	a4,a5,.L18	#, tmp196, tmp197,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC30	#,
	lla	a0,.LC41	#,
	call	__assert_fail@plt	#
.L18:
# problem96.c:45:     assert(func0(NULL, 0) == 0);
	li	a1,0		#,
	li	a0,0		#,
	call	func0		#
	mv	a5,a0	# tmp198,
# problem96.c:45:     assert(func0(NULL, 0) == 0);
	beq	a5,zero,.L19	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC30	#,
	lla	a0,.LC42	#,
	call	__assert_fail@plt	#
.L19:
# problem96.c:47:     return 0;
	li	a5,0		# _29,
# problem96.c:48: }
	mv	a4,a5	# <retval>, _29
	la	a5,__stack_chk_guard		# tmp200,
	ld	a3, -24(s0)	# tmp203, D.3661
	ld	a5, 0(a5)	# tmp201, __stack_chk_guard
	xor	a5, a3, a5	# tmp201, tmp203
	li	a3, 0	# tmp203
	beq	a5,zero,.L21	#, tmp201,,
	call	__stack_chk_fail@plt	#
.L21:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	.cfi_restore 1
	ld	s0,256(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 272
	addi	sp,sp,272	#,,
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
