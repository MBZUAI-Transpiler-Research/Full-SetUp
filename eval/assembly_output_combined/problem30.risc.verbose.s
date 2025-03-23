	.file	"problem30.c"
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
	sd	a0,-40(s0)	# strings, strings
	mv	a5,a1	# tmp155, count
	sd	a2,-56(s0)	# prefix, prefix
	sd	a3,-64(s0)	# out, out
	sw	a5,-44(s0)	# tmp156, count
# problem30.c:6:     int prefix_length = strlen(prefix);
	ld	a0,-56(s0)		#, prefix
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem30.c:6:     int prefix_length = strlen(prefix);
	sw	a5,-20(s0)	# _1, prefix_length
# problem30.c:7:     *out = (char**)malloc(count * sizeof(char*));
	lw	a5,-44(s0)		# _2, count
	slli	a5,a5,3	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp157,
	mv	a4,a5	# _4, tmp157
# problem30.c:7:     *out = (char**)malloc(count * sizeof(char*));
	ld	a5,-64(s0)		# tmp158, out
	sd	a4,0(a5)	# _4, *out_30(D)
# problem30.c:8:     int out_count = 0;
	sw	zero,-28(s0)	#, out_count
# problem30.c:10:     for (int i = 0; i < count; i++) {
	sw	zero,-24(s0)	#, i
# problem30.c:10:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L4:
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-40(s0)		# tmp159, strings
	add	a5,a4,a5	# _6, _7, tmp159
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	ld	a5,0(a5)		# _8, *_7
	lw	a4,-20(s0)		# _9, prefix_length
	mv	a2,a4	#, _9
	ld	a1,-56(s0)		#, prefix
	mv	a0,a5	#, _8
	call	strncmp@plt	#
	mv	a5,a0	# tmp160,
# problem30.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	bne	a5,zero,.L3	#, _10,,
# problem30.c:12:             (*out)[out_count++] = strings[i];
	lw	a5,-24(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-40(s0)		# tmp161, strings
	add	a4,a4,a5	# _12, _13, tmp161
# problem30.c:12:             (*out)[out_count++] = strings[i];
	ld	a5,-64(s0)		# tmp162, out
	ld	a3,0(a5)		# _14, *out_30(D)
# problem30.c:12:             (*out)[out_count++] = strings[i];
	lw	a5,-28(s0)		# out_count.0_15, out_count
	addiw	a2,a5,1	#, tmp163, out_count.0_15
	sw	a2,-28(s0)	# tmp163, out_count
# problem30.c:12:             (*out)[out_count++] = strings[i];
	slli	a5,a5,3	#, _17, _16
	add	a5,a3,a5	# _17, _18, _14
# problem30.c:12:             (*out)[out_count++] = strings[i];
	ld	a4,0(a4)		# _19, *_13
# problem30.c:12:             (*out)[out_count++] = strings[i];
	sd	a4,0(a5)	# _19, *_18
.L3:
# problem30.c:10:     for (int i = 0; i < count; i++) {
	lw	a5,-24(s0)		# tmp166, i
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-24(s0)	# tmp164, i
.L2:
# problem30.c:10:     for (int i = 0; i < count; i++) {
	lw	a5,-24(s0)		# tmp168, i
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-44(s0)		# tmp170, count
	sext.w	a4,a4	# tmp171, tmp167
	sext.w	a5,a5	# tmp172, tmp169
	blt	a4,a5,.L4	#, tmp171, tmp172,
# problem30.c:16:     return out_count;
	lw	a5,-28(s0)		# _34, out_count
# problem30.c:17: }
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp145, a_count
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp147, b_count
	sw	a5,-44(s0)	# tmp146, a_count
	mv	a5,a4	# tmp148, tmp147
	sw	a5,-48(s0)	# tmp148, b_count
# problem30.c:28:     if (a_count != b_count) return 0;
	lw	a5,-44(s0)		# tmp150, a_count
	mv	a4,a5	# tmp149, tmp150
	lw	a5,-48(s0)		# tmp152, b_count
	sext.w	a4,a4	# tmp153, tmp149
	sext.w	a5,a5	# tmp154, tmp151
	beq	a4,a5,.L7	#, tmp153, tmp154,
# problem30.c:28:     if (a_count != b_count) return 0;
	li	a5,0		# _11,
# problem30.c:28:     if (a_count != b_count) return 0;
	j	.L8		#
.L7:
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	sw	zero,-20(s0)	#, i
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	j	.L9		#
.L11:
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp155, a
	add	a5,a4,a5	# _2, _3, tmp155
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp156, b
	add	a5,a4,a5	# _6, _7, tmp156
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp157,
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L10	#, _9,,
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
# problem30.c:30:         if (strcmp(a[i], b[i]) != 0) return 0;
	j	.L8		#
.L10:
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L9:
# problem30.c:29:     for (int i = 0; i < a_count; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, a_count
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L11	#, tmp165, tmp166,
# problem30.c:32:     return 1;
	li	a5,1		# _11,
.L8:
# problem30.c:33: }
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
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC6:
	.string	"john"
	.align	3
.LC7:
	.string	"problem30.c"
	.align	3
.LC8:
	.string	"issame(result, count, (char*[]){}, 0)"
	.align	3
.LC0:
	.string	"xxx"
	.align	3
.LC4:
	.string	"xxxAAA"
	.align	3
.LC10:
	.string	"issame(result, count, expected, 3)"
	.align	3
.LC1:
	.string	"asd"
	.align	3
.LC2:
	.string	"xxy"
	.align	3
.LC3:
	.string	"john doe"
	.data
	.align	3
.LC9:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC0
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem30.c:35: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp168, __stack_chk_guard
	sd	a4, -24(s0)	# tmp168, D.3527
	li	a4, 0	# tmp168
# problem30.c:39:     count = func0((char*[]){}, 0, "john", &result);
	addi	a4,s0,-112	#, tmp143,
	addi	a5,s0,-104	#, tmp144,
	mv	a3,a4	#, tmp143
	lla	a2,.LC6	#,
	li	a1,0		#,
	mv	a0,a5	#, tmp144
	call	func0		#
	mv	a5,a0	# tmp145,
	sw	a5,-116(s0)	# tmp145, count
# problem30.c:40:     assert(issame(result, count, (char*[]){}, 0));
	ld	a5,-112(s0)		# result.1_1, result
	addi	a2,s0,-72	#, tmp146,
	lw	a4,-116(s0)		# tmp147, count
	li	a3,0		#,
	mv	a1,a4	#, tmp147
	mv	a0,a5	#, result.1_1
	call	issame		#
	mv	a5,a0	# tmp148,
# problem30.c:40:     assert(issame(result, count, (char*[]){}, 0));
	bne	a5,zero,.L13	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC7	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem30.c:41:     free(result);
	ld	a5,-112(s0)		# result.2_3, result
	mv	a0,a5	#, result.2_3
	call	free@plt	#
# problem30.c:43:     char* strings[] = {"xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"};
	lla	a5,.LC9	# tmp149,
	ld	a0,0(a5)		# tmp150,
	ld	a1,8(a5)		# tmp151,
	ld	a2,16(a5)		# tmp152,
	ld	a3,24(a5)		# tmp153,
	ld	a4,32(a5)		# tmp154,
	ld	a5,40(a5)		# tmp155,
	sd	a0,-72(s0)	# tmp150, MEM[(char *[6] *)_30]
	sd	a1,-64(s0)	# tmp151, MEM[(char *[6] *)_30]
	sd	a2,-56(s0)	# tmp152, MEM[(char *[6] *)_30]
	sd	a3,-48(s0)	# tmp153, MEM[(char *[6] *)_30]
	sd	a4,-40(s0)	# tmp154, MEM[(char *[6] *)_30]
	sd	a5,-32(s0)	# tmp155, MEM[(char *[6] *)_30]
# problem30.c:44:     char* expected[] = {"xxx", "xxxAAA", "xxx"};
	lla	a5,.LC0	# tmp156,
	sd	a5,-96(s0)	# tmp156, expected[0]
	lla	a5,.LC4	# tmp157,
	sd	a5,-88(s0)	# tmp157, expected[1]
	lla	a5,.LC0	# tmp158,
	sd	a5,-80(s0)	# tmp158, expected[2]
# problem30.c:45:     count = func0(strings, 6, "xxx", &result);
	addi	a4,s0,-112	#, tmp159,
	addi	a5,s0,-72	#, tmp160,
	mv	a3,a4	#, tmp159
	lla	a2,.LC0	#,
	li	a1,6		#,
	mv	a0,a5	#, tmp160
	call	func0		#
	mv	a5,a0	# tmp161,
	sw	a5,-116(s0)	# tmp161, count
# problem30.c:46:     assert(issame(result, count, expected, 3));
	ld	a5,-112(s0)		# result.3_4, result
	addi	a2,s0,-96	#, tmp162,
	lw	a4,-116(s0)		# tmp163, count
	li	a3,3		#,
	mv	a1,a4	#, tmp163
	mv	a0,a5	#, result.3_4
	call	issame		#
	mv	a5,a0	# tmp164,
# problem30.c:46:     assert(issame(result, count, expected, 3));
	bne	a5,zero,.L14	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC7	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L14:
# problem30.c:47:     free(result);
	ld	a5,-112(s0)		# result.4_6, result
	mv	a0,a5	#, result.4_6
	call	free@plt	#
# problem30.c:49:     return 0;
	li	a5,0		# _23,
# problem30.c:50: }
	mv	a4,a5	# <retval>, _23
	la	a5,__stack_chk_guard		# tmp166,
	ld	a3, -24(s0)	# tmp169, D.3527
	ld	a5, 0(a5)	# tmp167, __stack_chk_guard
	xor	a5, a3, a5	# tmp167, tmp169
	li	a3, 0	# tmp169
	beq	a5,zero,.L16	#, tmp167,,
	call	__stack_chk_fail@plt	#
.L16:
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
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
