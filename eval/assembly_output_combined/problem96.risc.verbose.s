	.file	"problem96.c"
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# dict, dict
	mv	a5,a1	# tmp114, size
	sw	a5,-60(s0)	# tmp115, size
# problem96.c:7:     if (size == 0) return 0;
	lw	a5,-60(s0)		# tmp117, size
	sext.w	a5,a5	# tmp118, tmp116
	bne	a5,zero,.L2	#, tmp118,,
# problem96.c:7:     if (size == 0) return 0;
	li	a5,0		# _49,
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
	ld	a4,-56(s0)		# tmp119, dict
	add	a5,a4,a5	# _2, _3, tmp119
# problem96.c:10:         char* key = dict[i][0];
	ld	a5,0(a5)		# tmp120, (*_3)[0]
	sd	a5,-24(s0)	# tmp120, key
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	sw	zero,-28(s0)	#, j
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	j	.L5		#
.L10:
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _4,
	ld	a4,0(a5)		# _5, *_4
	lw	a5,-28(s0)		# _6, j
	ld	a3,-24(s0)		# tmp121, key
	add	a5,a3,a5	# _6, _7, tmp121
	lbu	a5,0(a5)	# _8, *_7
	slli	a5,a5,1	#, _10, _9
	add	a5,a4,a5	# _10, _11, _5
	lhu	a5,0(a5)	# _12, *_11
	sext.w	a5,a5	# _13, _12
	andi	a5,a5,1024	#, tmp122, _13
	sext.w	a5,a5	# _14, tmp122
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	bne	a5,zero,.L6	#, _14,,
# problem96.c:12:             if (!isalpha((unsigned char)key[j])) return 0;
	li	a5,0		# _49,
	j	.L3		#
.L6:
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _15,
	ld	a4,0(a5)		# _16, *_15
	lw	a5,-28(s0)		# _17, j
	ld	a3,-24(s0)		# tmp123, key
	add	a5,a3,a5	# _17, _18, tmp123
	lbu	a5,0(a5)	# _19, *_18
	slli	a5,a5,1	#, _21, _20
	add	a5,a4,a5	# _21, _22, _16
	lhu	a5,0(a5)	# _23, *_22
	sext.w	a5,a5	# _24, _23
	andi	a5,a5,256	#, tmp124, _24
	sext.w	a5,a5	# _25, tmp124
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	beq	a5,zero,.L7	#, _25,,
# problem96.c:13:             if (isupper((unsigned char)key[j])) has_upper = 1;
	li	a5,1		# tmp125,
	sw	a5,-36(s0)	# tmp125, has_upper
.L7:
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _26,
	ld	a4,0(a5)		# _27, *_26
	lw	a5,-28(s0)		# _28, j
	ld	a3,-24(s0)		# tmp126, key
	add	a5,a3,a5	# _28, _29, tmp126
	lbu	a5,0(a5)	# _30, *_29
	slli	a5,a5,1	#, _32, _31
	add	a5,a4,a5	# _32, _33, _27
	lhu	a5,0(a5)	# _34, *_33
	sext.w	a5,a5	# _35, _34
	andi	a5,a5,512	#, tmp127, _35
	sext.w	a5,a5	# _36, tmp127
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	beq	a5,zero,.L8	#, _36,,
# problem96.c:14:             if (islower((unsigned char)key[j])) has_lower = 1;
	li	a5,1		# tmp128,
	sw	a5,-40(s0)	# tmp128, has_lower
.L8:
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	lw	a5,-36(s0)		# tmp131, has_upper
	mv	a4,a5	# tmp130, tmp131
	lw	a5,-40(s0)		# tmp133, has_lower
	addw	a5,a4,a5	# tmp132, tmp129, tmp130
	sext.w	a5,a5	# _37, tmp129
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	mv	a4,a5	# tmp134, _37
	li	a5,2		# tmp135,
	bne	a4,a5,.L9	#, tmp134, tmp135,
# problem96.c:15:             if (has_upper + has_lower == 2) return 0;
	li	a5,0		# _49,
	j	.L3		#
.L9:
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	lw	a5,-28(s0)		# tmp138, j
	addiw	a5,a5,1	#, tmp136, tmp137
	sw	a5,-28(s0)	# tmp136, j
.L5:
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	lw	a5,-28(s0)		# _38, j
	ld	a4,-24(s0)		# tmp139, key
	add	a5,a4,a5	# _38, _39, tmp139
	lbu	a5,0(a5)	# _40, *_39
# problem96.c:11:         for (int j = 0; key[j]; ++j) {
	bne	a5,zero,.L10	#, _40,,
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp142, i
	addiw	a5,a5,1	#, tmp140, tmp141
	sw	a5,-32(s0)	# tmp140, i
.L4:
# problem96.c:9:     for (int i = 0; i < size; ++i) {
	lw	a5,-32(s0)		# tmp144, i
	mv	a4,a5	# tmp143, tmp144
	lw	a5,-60(s0)		# tmp146, size
	sext.w	a4,a4	# tmp147, tmp143
	sext.w	a5,a5	# tmp148, tmp145
	blt	a4,a5,.L11	#, tmp147, tmp148,
# problem96.c:18:     return 1;
	li	a5,1		# _49,
.L3:
# problem96.c:19: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-272	#,,
	sd	ra,264(sp)	#,
	sd	s0,256(sp)	#,
	addi	s0,sp,272	#,,
# problem96.c:26: int main() {
	la	a5,__stack_chk_guard		# tmp81,
	ld	a4, 0(a5)	# tmp140, __stack_chk_guard
	sd	a4, -24(s0)	# tmp140, D.2809
	li	a4, 0	# tmp140
# problem96.c:27:     char* test1[][2] = {{"p","pineapple"}, {"b","banana"}};
	lla	a5,.LC29	# tmp82,
	ld	a2,0(a5)		# tmp83,
	ld	a3,8(a5)		# tmp84,
	ld	a4,16(a5)		# tmp85,
	ld	a5,24(a5)		# tmp86,
	sd	a2,-264(s0)	# tmp83, test1
	sd	a3,-256(s0)	# tmp84, test1
	sd	a4,-248(s0)	# tmp85, test1
	sd	a5,-240(s0)	# tmp86, test1
# problem96.c:28:     assert(func0(test1, 2) == 1);
	addi	a5,s0,-264	#, tmp87,
	li	a1,2		#,
	mv	a0,a5	#, tmp87
	call	func0		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# tmp89, _1
	li	a5,1		# tmp90,
	beq	a4,a5,.L13	#, tmp89, tmp90,
# problem96.c:28:     assert(func0(test1, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC30	#,
	lla	a0,.LC31	#,
	call	__assert_fail@plt	#
.L13:
# problem96.c:30:     char* test2[][2] = {{"p","pineapple"}, {"A","banana"}, {"B","banana"}};
	lla	a5,.LC32	# tmp91,
	ld	a0,0(a5)		# tmp92,
	ld	a1,8(a5)		# tmp93,
	ld	a2,16(a5)		# tmp94,
	ld	a3,24(a5)		# tmp95,
	ld	a4,32(a5)		# tmp96,
	ld	a5,40(a5)		# tmp97,
	sd	a0,-168(s0)	# tmp92, test2
	sd	a1,-160(s0)	# tmp93, test2
	sd	a2,-152(s0)	# tmp94, test2
	sd	a3,-144(s0)	# tmp95, test2
	sd	a4,-136(s0)	# tmp96, test2
	sd	a5,-128(s0)	# tmp97, test2
# problem96.c:31:     assert(func0(test2, 3) == 0);
	addi	a5,s0,-168	#, tmp98,
	li	a1,3		#,
	mv	a0,a5	#, tmp98
	call	func0		#
	mv	a5,a0	# tmp99,
	beq	a5,zero,.L14	#, _2,,
# problem96.c:31:     assert(func0(test2, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC30	#,
	lla	a0,.LC33	#,
	call	__assert_fail@plt	#
.L14:
# problem96.c:33:     char* test3[][2] = {{"p","pineapple"}, {"5","banana"}, {"a","apple"}};
	lla	a5,.LC34	# tmp100,
	ld	a0,0(a5)		# tmp101,
	ld	a1,8(a5)		# tmp102,
	ld	a2,16(a5)		# tmp103,
	ld	a3,24(a5)		# tmp104,
	ld	a4,32(a5)		# tmp105,
	ld	a5,40(a5)		# tmp106,
	sd	a0,-120(s0)	# tmp101, test3
	sd	a1,-112(s0)	# tmp102, test3
	sd	a2,-104(s0)	# tmp103, test3
	sd	a3,-96(s0)	# tmp104, test3
	sd	a4,-88(s0)	# tmp105, test3
	sd	a5,-80(s0)	# tmp106, test3
# problem96.c:34:     assert(func0(test3, 3) == 0);
	addi	a5,s0,-120	#, tmp107,
	li	a1,3		#,
	mv	a0,a5	#, tmp107
	call	func0		#
	mv	a5,a0	# tmp108,
	beq	a5,zero,.L15	#, _3,,
# problem96.c:34:     assert(func0(test3, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC30	#,
	lla	a0,.LC35	#,
	call	__assert_fail@plt	#
.L15:
# problem96.c:36:     char* test4[][2] = {{"Name","John"}, {"Age","36"}, {"City","Houston"}};
	lla	a5,.LC36	# tmp109,
	ld	a0,0(a5)		# tmp110,
	ld	a1,8(a5)		# tmp111,
	ld	a2,16(a5)		# tmp112,
	ld	a3,24(a5)		# tmp113,
	ld	a4,32(a5)		# tmp114,
	ld	a5,40(a5)		# tmp115,
	sd	a0,-72(s0)	# tmp110, test4
	sd	a1,-64(s0)	# tmp111, test4
	sd	a2,-56(s0)	# tmp112, test4
	sd	a3,-48(s0)	# tmp113, test4
	sd	a4,-40(s0)	# tmp114, test4
	sd	a5,-32(s0)	# tmp115, test4
# problem96.c:37:     assert(func0(test4, 3) == 0);
	addi	a5,s0,-72	#, tmp116,
	li	a1,3		#,
	mv	a0,a5	#, tmp116
	call	func0		#
	mv	a5,a0	# tmp117,
	beq	a5,zero,.L16	#, _4,,
# problem96.c:37:     assert(func0(test4, 3) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC30	#,
	lla	a0,.LC37	#,
	call	__assert_fail@plt	#
.L16:
# problem96.c:39:     char* test5[][2] = {{"STATE","NC"}, {"ZIP","12345"}};
	lla	a5,.LC38	# tmp118,
	ld	a2,0(a5)		# tmp119,
	ld	a3,8(a5)		# tmp120,
	ld	a4,16(a5)		# tmp121,
	ld	a5,24(a5)		# tmp122,
	sd	a2,-232(s0)	# tmp119, test5
	sd	a3,-224(s0)	# tmp120, test5
	sd	a4,-216(s0)	# tmp121, test5
	sd	a5,-208(s0)	# tmp122, test5
# problem96.c:40:     assert(func0(test5, 2) == 1);
	addi	a5,s0,-232	#, tmp123,
	li	a1,2		#,
	mv	a0,a5	#, tmp123
	call	func0		#
	mv	a5,a0	# tmp124,
	mv	a4,a5	# tmp125, _5
	li	a5,1		# tmp126,
	beq	a4,a5,.L17	#, tmp125, tmp126,
# problem96.c:40:     assert(func0(test5, 2) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC30	#,
	lla	a0,.LC39	#,
	call	__assert_fail@plt	#
.L17:
# problem96.c:42:     char* test6[][2] = {{"fruit","Orange"}, {"taste","Sweet"}};
	lla	a5,.LC40	# tmp127,
	ld	a2,0(a5)		# tmp128,
	ld	a3,8(a5)		# tmp129,
	ld	a4,16(a5)		# tmp130,
	ld	a5,24(a5)		# tmp131,
	sd	a2,-200(s0)	# tmp128, test6
	sd	a3,-192(s0)	# tmp129, test6
	sd	a4,-184(s0)	# tmp130, test6
	sd	a5,-176(s0)	# tmp131, test6
# problem96.c:43:     assert(func0(test6, 2) == 1);
	addi	a5,s0,-200	#, tmp132,
	li	a1,2		#,
	mv	a0,a5	#, tmp132
	call	func0		#
	mv	a5,a0	# tmp133,
	mv	a4,a5	# tmp134, _6
	li	a5,1		# tmp135,
	beq	a4,a5,.L18	#, tmp134, tmp135,
# problem96.c:43:     assert(func0(test6, 2) == 1);
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
	mv	a5,a0	# tmp136,
	beq	a5,zero,.L19	#, _7,,
# problem96.c:45:     assert(func0(NULL, 0) == 0);
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
	la	a5,__stack_chk_guard		# tmp138,
	ld	a3, -24(s0)	# tmp141, D.2809
	ld	a5, 0(a5)	# tmp139, __stack_chk_guard
	xor	a5, a3, a5	# tmp139, tmp141
	li	a3, 0	# tmp141
	beq	a5,zero,.L21	#, tmp139,,
	call	__stack_chk_fail@plt	#
.L21:
	mv	a0,a4	#, <retval>
	ld	ra,264(sp)		#,
	ld	s0,256(sp)		#,
	addi	sp,sp,272	#,,
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
