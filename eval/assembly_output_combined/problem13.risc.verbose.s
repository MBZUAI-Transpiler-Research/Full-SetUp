	.file	"problem13.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# strings, strings
	mv	a5,a1	# tmp82, count
	sw	a5,-60(s0)	# tmp83, count
# problem13.c:5:     char *out = "";
	lla	a5,.LC7	# tmp84,
	sd	a5,-24(s0)	# tmp84, out
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
	ld	a4,-56(s0)		# tmp85, strings
	add	a5,a4,a5	# _2, _3, tmp85
# problem13.c:8:         int current_length = strlen(strings[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# problem13.c:8:         int current_length = strlen(strings[i]);
	sw	a5,-28(s0)	# _5, current_length
# problem13.c:9:         if (current_length > longest_length) {
	lw	a5,-28(s0)		# tmp87, current_length
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-36(s0)		# tmp89, longest_length
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	ble	a4,a5,.L3	#, tmp90, tmp91,
# problem13.c:10:             out = strings[i];
	lw	a5,-32(s0)		# _6, i
	slli	a5,a5,3	#, _7, _6
	ld	a4,-56(s0)		# tmp92, strings
	add	a5,a4,a5	# _7, _8, tmp92
# problem13.c:10:             out = strings[i];
	ld	a5,0(a5)		# tmp93, *_8
	sd	a5,-24(s0)	# tmp93, out
# problem13.c:11:             longest_length = current_length;
	lw	a5,-28(s0)		# tmp94, current_length
	sw	a5,-36(s0)	# tmp94, longest_length
.L3:
# problem13.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp97, i
	addiw	a5,a5,1	#, tmp95, tmp96
	sw	a5,-32(s0)	# tmp95, i
.L2:
# problem13.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp99, i
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-60(s0)		# tmp101, count
	sext.w	a4,a4	# tmp102, tmp98
	sext.w	a5,a5	# tmp103, tmp100
	blt	a4,a5,.L4	#, tmp102, tmp103,
# problem13.c:14:     return out;
	ld	a5,-24(s0)		# _18, out
# problem13.c:15: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
# problem13.c:23: int main() {
	la	a5,__stack_chk_guard		# tmp81,
	ld	a4, 0(a5)	# tmp101, __stack_chk_guard
	sd	a4, -24(s0)	# tmp101, D.2136
	li	a4, 0	# tmp101
# problem13.c:24:     char *empty_array[] = {""};
	lla	a5,.LC7	# tmp82,
	sd	a5,-104(s0)	# tmp82, empty_array[0]
# problem13.c:25:     char *array1[] = {"x", "y", "z"};
	lla	a5,.LC0	# tmp83,
	sd	a5,-96(s0)	# tmp83, array1[0]
	lla	a5,.LC8	# tmp84,
	sd	a5,-88(s0)	# tmp84, array1[1]
	lla	a5,.LC9	# tmp85,
	sd	a5,-80(s0)	# tmp85, array1[2]
# problem13.c:26:     char *array2[] = {"x", "yyy", "zzzz", "www", "kkkk", "abc"};
	lla	a5,.LC10	# tmp86,
	ld	a0,0(a5)		# tmp87,
	ld	a1,8(a5)		# tmp88,
	ld	a2,16(a5)		# tmp89,
	ld	a3,24(a5)		# tmp90,
	ld	a4,32(a5)		# tmp91,
	ld	a5,40(a5)		# tmp92,
	sd	a0,-72(s0)	# tmp87, array2
	sd	a1,-64(s0)	# tmp88, array2
	sd	a2,-56(s0)	# tmp89, array2
	sd	a3,-48(s0)	# tmp90, array2
	sd	a4,-40(s0)	# tmp91, array2
	sd	a5,-32(s0)	# tmp92, array2
# problem13.c:28:     assert(strcmp(func0(empty_array, 0), "") == 0);
	addi	a5,s0,-104	#, tmp93,
	li	a1,0		#,
	mv	a0,a5	#, tmp93
	call	func0		#
	mv	a5,a0	# _1,
	lbu	a5,0(a5)	# _14, MEM[(const unsigned char * {ref-all})_1]
	sext.w	a5,a5	# _2, _14
	beq	a5,zero,.L7	#, _2,,
# problem13.c:28:     assert(strcmp(func0(empty_array, 0), "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC11	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L7:
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	addi	a5,s0,-96	#, tmp94,
	li	a1,3		#,
	mv	a0,a5	#, tmp94
	call	func0		#
	mv	a5,a0	# _3,
	lla	a1,.LC0	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
	beq	a5,zero,.L8	#, _4,,
# problem13.c:29:     assert(strcmp(func0(array1, 3), "x") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC11	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L8:
# problem13.c:30:     assert(strcmp(func0(array2, 6), "zzzz") == 0);
	addi	a5,s0,-72	#, tmp96,
	li	a1,6		#,
	mv	a0,a5	#, tmp96
	call	func0		#
	mv	a5,a0	# _5,
	lla	a1,.LC2	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp97,
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
	la	a5,__stack_chk_guard		# tmp99,
	ld	a3, -24(s0)	# tmp102, D.2136
	ld	a5, 0(a5)	# tmp100, __stack_chk_guard
	xor	a5, a3, a5	# tmp100, tmp102
	li	a3, 0	# tmp102
	beq	a5,zero,.L11	#, tmp100,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	addi	sp,sp,112	#,,
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
