	.file	"problem13.c"
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
.LC7:
	.string	""
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# strings, strings
	mv	a5,a1	# tmp144, count
	sw	a5,-60(s0)	# tmp145, count
# problem13.c:5:     char *out = "";
	lla	a5,.LC7	# tmp146,
	sd	a5,-24(s0)	# tmp146, out
# problem13.c:6:     int longest_length = 0;
	sw	zero,-36(s0)	#, longest_length
# problem13.c:7:     for (int i = 0; i < count; i++) {
	sw	zero,-32(s0)	#, i
# problem13.c:7:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L4:
# problem13.c:8:         int current_length = strlen(strings[i]);
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp147, strings
	add	a5,a4,a5	# _2, _3, tmp147
# problem13.c:8:         int current_length = strlen(strings[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# problem13.c:8:         int current_length = strlen(strings[i]);
	sw	a5,-28(s0)	# _5, current_length
# problem13.c:9:         if (current_length > longest_length) {
	lw	a5,-28(s0)		# tmp149, current_length
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-36(s0)		# tmp151, longest_length
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	ble	a4,a5,.L3	#, tmp152, tmp153,
# problem13.c:10:             out = strings[i];
	lw	a5,-32(s0)		# _6, i
	slli	a5,a5,3	#, _7, _6
	ld	a4,-56(s0)		# tmp154, strings
	add	a5,a4,a5	# _7, _8, tmp154
# problem13.c:10:             out = strings[i];
	ld	a5,0(a5)		# tmp155, *_8
	sd	a5,-24(s0)	# tmp155, out
# problem13.c:11:             longest_length = current_length;
	lw	a5,-28(s0)		# tmp156, current_length
	sw	a5,-36(s0)	# tmp156, longest_length
.L3:
# problem13.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp159, i
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-32(s0)	# tmp157, i
.L2:
# problem13.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp161, i
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-60(s0)		# tmp163, count
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	blt	a4,a5,.L4	#, tmp164, tmp165,
# problem13.c:14:     return out;
	ld	a5,-24(s0)		# _18, out
# problem13.c:15: }
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
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC8:
	.string	"y"
	.align	3
.LC9:
	.string	"z"
	.align	3
.LC11:
	.string	"problem13.c"
	.align	3
.LC12:
	.string	"strcmp(func0(empty_array, 0), \"\") == 0"
	.align	3
.LC13:
	.string	"strcmp(func0(array1, 3), \"x\") == 0"
	.align	3
.LC2:
	.string	"zzzz"
	.align	3
.LC14:
	.string	"strcmp(func0(array2, 6), \"zzzz\") == 0"
	.align	3
.LC1:
	.string	"yyy"
	.align	3
.LC3:
	.string	"www"
	.align	3
.LC4:
	.string	"kkkk"
	.align	3
.LC5:
	.string	"abc"
	.data
	.align	3
.LC10:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
# problem13.c:23: int main() {
	la	a5,__stack_chk_guard		# tmp143,
	ld	a4, 0(a5)	# tmp163, __stack_chk_guard
	sd	a4, -24(s0)	# tmp163, D.2981
	li	a4, 0	# tmp163
# problem13.c:24:     char *empty_array[] = {""};
	lla	a5,.LC7	# tmp144,
	sd	a5,-104(s0)	# tmp144, empty_array[0]
# problem13.c:25:     char *array1[] = {"x", "y", "z"};
	lla	a5,.LC0	# tmp145,
	sd	a5,-96(s0)	# tmp145, array1[0]
	lla	a5,.LC8	# tmp146,
	sd	a5,-88(s0)	# tmp146, array1[1]
	lla	a5,.LC9	# tmp147,
	sd	a5,-80(s0)	# tmp147, array1[2]
# problem13.c:26:     char *array2[] = {"x", "yyy", "zzzz", "www", "kkkk", "abc"};
	lla	a5,.LC10	# tmp148,
	ld	a0,0(a5)		# tmp149,
	ld	a1,8(a5)		# tmp150,
	ld	a2,16(a5)		# tmp151,
	ld	a3,24(a5)		# tmp152,
	ld	a4,32(a5)		# tmp153,
	ld	a5,40(a5)		# tmp154,
	sd	a0,-72(s0)	# tmp149, array2
	sd	a1,-64(s0)	# tmp150, array2
	sd	a2,-56(s0)	# tmp151, array2
	sd	a3,-48(s0)	# tmp152, array2
	sd	a4,-40(s0)	# tmp153, array2
	sd	a5,-32(s0)	# tmp154, array2
# problem13.c:28:     assert(strcmp(func0(empty_array, 0), "") == 0);
	addi	a5,s0,-104	#, tmp155,
	li	a1,0		#,
	mv	a0,a5	#, tmp155
	call	func0		#
	mv	a5,a0	# _1,
# problem13.c:28:     assert(strcmp(func0(empty_array, 0), "") == 0);
	lbu	a5,0(a5)	# _14, MEM[(const unsigned char * {ref-all})_1]
	sext.w	a5,a5	# _2, _14
	beq	a5,zero,.L7	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC11	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L7:
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	addi	a5,s0,-96	#, tmp156,
	li	a1,3		#,
	mv	a0,a5	#, tmp156
	call	func0		#
	mv	a5,a0	# _3,
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp157,
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	beq	a5,zero,.L8	#, _4,,
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC11	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L8:
# problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	addi	a5,s0,-72	#, tmp158,
	li	a1,6		#,
	mv	a0,a5	#, tmp158
	call	func0		#
	mv	a5,a0	# _5,
# problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	lla	a1,.LC2	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
# problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	beq	a5,zero,.L9	#, _6,,
# problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC11	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L9:
# problem13.c:32:     return 0;
	li	a5,0		# _20,
# problem13.c:33: }
	mv	a4,a5	# <retval>, _20
	la	a5,__stack_chk_guard		# tmp161,
	ld	a3, -24(s0)	# tmp164, D.2981
	ld	a5, 0(a5)	# tmp162, __stack_chk_guard
	xor	a5, a3, a5	# tmp162, tmp164
	li	a3, 0	# tmp164
	beq	a5,zero,.L11	#, tmp162,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112	#,,
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
