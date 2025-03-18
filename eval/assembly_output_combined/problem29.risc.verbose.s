	.file	"problem29.c"
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
	sd	a0,-56(s0)	# strings, strings
	mv	a5,a1	# tmp150, count
	sw	a5,-60(s0)	# tmp151, count
# problem29.c:6:     int length = 0;
	sw	zero,-36(s0)	#, length
# problem29.c:7:     for (int i = 0; i < count; i++) {
	sw	zero,-32(s0)	#, i
# problem29.c:7:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L3:
# problem29.c:8:         length += strlen(strings[i]);
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp152, strings
	add	a5,a4,a5	# _2, _3, tmp152
# problem29.c:8:         length += strlen(strings[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# problem29.c:8:         length += strlen(strings[i]);
	sext.w	a4,a5	# _6, _5
	lw	a5,-36(s0)		# length.0_7, length
	addw	a5,a4,a5	# length.0_7, tmp153, _6
	sext.w	a5,a5	# _8, tmp153
	sw	a5,-36(s0)	# _8, length
# problem29.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-32(s0)	# tmp154, i
.L2:
# problem29.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-60(s0)		# tmp160, count
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L3	#, tmp161, tmp162,
# problem29.c:11:     char* out = (char*)malloc(length + 1);
	lw	a5,-36(s0)		# tmp165, length
	addiw	a5,a5,1	#, tmp163, tmp164
	sext.w	a5,a5	# _9, tmp163
# problem29.c:11:     char* out = (char*)malloc(length + 1);
	mv	a0,a5	#, _10
	call	malloc@plt	#
	mv	a5,a0	# tmp166,
	sd	a5,-24(s0)	# tmp166, out
# problem29.c:12:     if (!out) {
	ld	a5,-24(s0)		# tmp167, out
	bne	a5,zero,.L4	#, tmp167,,
# problem29.c:13:         return NULL; 
	li	a5,0		# _18,
	j	.L5		#
.L4:
# problem29.c:16:     out[0] = '\0';
	ld	a5,-24(s0)		# tmp168, out
	sb	zero,0(a5)	#, *out_26
# problem29.c:18:     for (int i = 0; i < count; i++) {
	sw	zero,-28(s0)	#, i
# problem29.c:18:     for (int i = 0; i < count; i++) {
	j	.L6		#
.L7:
# problem29.c:19:         strcat(out, strings[i]);
	lw	a5,-28(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-56(s0)		# tmp169, strings
	add	a5,a4,a5	# _12, _13, tmp169
# problem29.c:19:         strcat(out, strings[i]);
	ld	a5,0(a5)		# _14, *_13
	mv	a1,a5	#, _14
	ld	a0,-24(s0)		#, out
	call	strcat@plt	#
# problem29.c:18:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-28(s0)	# tmp170, i
.L6:
# problem29.c:18:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp174, i
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-60(s0)		# tmp176, count
	sext.w	a4,a4	# tmp177, tmp173
	sext.w	a5,a5	# tmp178, tmp175
	blt	a4,a5,.L7	#, tmp177, tmp178,
# problem29.c:22:     return out;
	ld	a5,-24(s0)		# _18, out
.L5:
# problem29.c:23: }
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
.LC6:
	.string	"problem29.c"
	.align	3
.LC7:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC0:
	.string	"x"
	.align	3
.LC1:
	.string	"y"
	.align	3
.LC2:
	.string	"z"
	.align	3
.LC8:
	.string	"xyz"
	.align	3
.LC9:
	.string	"strcmp(result, \"xyz\") == 0"
	.align	3
.LC11:
	.string	"xyzwk"
	.align	3
.LC12:
	.string	"strcmp(result, \"xyzwk\") == 0"
	.align	3
.LC3:
	.string	"w"
	.align	3
.LC4:
	.string	"k"
	.data
	.align	3
.LC10:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
# problem29.c:31: int main() {
	la	a5,__stack_chk_guard		# tmp140,
	ld	a4, 0(a5)	# tmp159, __stack_chk_guard
	sd	a4, -24(s0)	# tmp159, D.3508
	li	a4, 0	# tmp159
# problem29.c:34:     result = func0(empty_strings, 0);
	addi	a5,s0,-96	#, tmp141,
	li	a1,0		#,
	mv	a0,a5	#, tmp141
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem29.c:35:     assert(strcmp(result, "") == 0);
	ld	a5,-104(s0)		# tmp142, result
	lbu	a5,0(a5)	# _7, MEM[(const unsigned char * {ref-all})result_6]
	sext.w	a5,a5	# _1, _7
	beq	a5,zero,.L9	#, _1,,
# problem29.c:35:     assert(strcmp(result, "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L9:
# problem29.c:36:     free(result);
	ld	a0,-104(s0)		#, result
	call	free@plt	#
# problem29.c:38:     char* strings1[] = {"x", "y", "z"};
	lla	a5,.LC0	# tmp143,
	sd	a5,-88(s0)	# tmp143, strings1[0]
	lla	a5,.LC1	# tmp144,
	sd	a5,-80(s0)	# tmp144, strings1[1]
	lla	a5,.LC2	# tmp145,
	sd	a5,-72(s0)	# tmp145, strings1[2]
# problem29.c:39:     result = func0(strings1, 3);
	addi	a5,s0,-88	#, tmp146,
	li	a1,3		#,
	mv	a0,a5	#, tmp146
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem29.c:40:     assert(strcmp(result, "xyz") == 0);
	lla	a1,.LC8	#,
	ld	a0,-104(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp147,
# problem29.c:40:     assert(strcmp(result, "xyz") == 0);
	beq	a5,zero,.L10	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L10:
# problem29.c:41:     free(result);
	ld	a0,-104(s0)		#, result
	call	free@plt	#
# problem29.c:43:     char* strings2[] = {"x", "y", "z", "w", "k"};
	lla	a5,.LC10	# tmp148,
	ld	a1,0(a5)		# tmp149,
	ld	a2,8(a5)		# tmp150,
	ld	a3,16(a5)		# tmp151,
	ld	a4,24(a5)		# tmp152,
	ld	a5,32(a5)		# tmp153,
	sd	a1,-64(s0)	# tmp149, strings2
	sd	a2,-56(s0)	# tmp150, strings2
	sd	a3,-48(s0)	# tmp151, strings2
	sd	a4,-40(s0)	# tmp152, strings2
	sd	a5,-32(s0)	# tmp153, strings2
# problem29.c:44:     result = func0(strings2, 5);
	addi	a5,s0,-64	#, tmp154,
	li	a1,5		#,
	mv	a0,a5	#, tmp154
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem29.c:45:     assert(strcmp(result, "xyzwk") == 0);
	lla	a1,.LC11	#,
	ld	a0,-104(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp155,
# problem29.c:45:     assert(strcmp(result, "xyzwk") == 0);
	beq	a5,zero,.L11	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC6	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L11:
# problem29.c:46:     free(result);
	ld	a0,-104(s0)		#, result
	call	free@plt	#
# problem29.c:48:     return 0;
	li	a5,0		# _22,
# problem29.c:49: }
	mv	a4,a5	# <retval>, _22
	la	a5,__stack_chk_guard		# tmp157,
	ld	a3, -24(s0)	# tmp160, D.3508
	ld	a5, 0(a5)	# tmp158, __stack_chk_guard
	xor	a5, a3, a5	# tmp158, tmp160
	li	a3, 0	# tmp160
	beq	a5,zero,.L13	#, tmp158,,
	call	__stack_chk_fail@plt	#
.L13:
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
