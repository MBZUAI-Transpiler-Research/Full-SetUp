	.file	"problem9.c"
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
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# numbers, numbers
	mv	a5,a1	# tmp143, size
	sd	a2,-56(s0)	# result, result
	sw	a5,-44(s0)	# tmp144, size
# problem9.c:4:     int sum = 0, product = 1;
	sw	zero,-28(s0)	#, sum
# problem9.c:4:     int sum = 0, product = 1;
	li	a5,1		# tmp145,
	sw	a5,-24(s0)	# tmp145, product
# problem9.c:5:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem9.c:5:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L3:
# problem9.c:6:         sum += numbers[i];
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, numbers
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a5,0(a5)		# _4, *_3
# problem9.c:6:         sum += numbers[i];
	lw	a4,-28(s0)		# tmp149, sum
	addw	a5,a4,a5	# _4, tmp147, tmp148
	sw	a5,-28(s0)	# tmp147, sum
# problem9.c:7:         product *= numbers[i];
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-40(s0)		# tmp150, numbers
	add	a5,a4,a5	# _6, _7, tmp150
	lw	a5,0(a5)		# _8, *_7
# problem9.c:7:         product *= numbers[i];
	lw	a4,-24(s0)		# tmp153, product
	mulw	a5,a4,a5	# tmp151, tmp152, _8
	sw	a5,-24(s0)	# tmp151, product
# problem9.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-20(s0)	# tmp154, i
.L2:
# problem9.c:5:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-44(s0)		# tmp160, size
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L3	#, tmp161, tmp162,
# problem9.c:9:     result[0] = sum;
	ld	a5,-56(s0)		# tmp163, result
	lw	a4,-28(s0)		# tmp164, sum
	sw	a4,0(a5)	# tmp164, *result_18(D)
# problem9.c:10:     result[1] = product;
	ld	a5,-56(s0)		# tmp165, result
	addi	a5,a5,4	#, _9, tmp165
# problem9.c:10:     result[1] = product;
	lw	a4,-24(s0)		# tmp166, product
	sw	a4,0(a5)	# tmp166, *_9
# problem9.c:11: }
	nop	
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp144, size
	sw	a5,-52(s0)	# tmp145, size
# problem9.c:18:     for (int i = 0; i < size; i++) {
	sw	zero,-20(s0)	#, i
# problem9.c:18:     for (int i = 0; i < size; i++) {
	j	.L5		#
.L8:
# problem9.c:19:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp146, a
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# problem9.c:19:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-48(s0)		# tmp147, b
	add	a5,a4,a5	# _6, _7, tmp147
	lw	a5,0(a5)		# _8, *_7
# problem9.c:19:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp148, _4
	beq	a4,a5,.L6	#, tmp148, tmp149,
# problem9.c:19:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem9.c:19:         if (a[i] != b[i]) return 0;
	j	.L7		#
.L6:
# problem9.c:18:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp152, i
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-20(s0)	# tmp150, i
.L5:
# problem9.c:18:     for (int i = 0; i < size; i++) {
	lw	a5,-20(s0)		# tmp154, i
	mv	a4,a5	# tmp153, tmp154
	lw	a5,-52(s0)		# tmp156, size
	sext.w	a4,a4	# tmp157, tmp153
	sext.w	a5,a5	# tmp158, tmp155
	blt	a4,a5,.L8	#, tmp157, tmp158,
# problem9.c:21:     return 1;
	li	a5,1		# _10,
.L7:
# problem9.c:22: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"problem9.c"
	.align	3
.LC1:
	.string	"issame(result, (const int[]){0, 1}, 2)"
	.align	3
.LC2:
	.string	"issame(result, (const int[]){3, 1}, 2)"
	.align	3
.LC3:
	.string	"issame(result, (const int[]){100, 0}, 2)"
	.align	3
.LC4:
	.string	"issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2)"
	.align	3
.LC5:
	.string	"issame(result, (const int[]){10, 10}, 2)"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
# problem9.c:24: int main() {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp186, __stack_chk_guard
	sd	a4, -24(s0)	# tmp186, D.2794
	li	a4, 0	# tmp186
# problem9.c:28:     func0((int[]){}, 0, result);
	addi	a4,s0,-80	#, tmp142,
	addi	a5,s0,-96	#, tmp143,
	mv	a2,a4	#, tmp142
	li	a1,0		#,
	mv	a0,a5	#, tmp143
	call	func0		#
# problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	sw	zero,-40(s0)	#, MEM[(int[2] *)_59][0]
	li	a5,1		# tmp144,
	sw	a5,-36(s0)	# tmp144, MEM[(int[2] *)_59][1]
	addi	a4,s0,-40	#, tmp145,
	addi	a5,s0,-80	#, tmp146,
	li	a2,2		#,
	mv	a1,a4	#, tmp145
	mv	a0,a5	#, tmp146
	call	issame		#
	mv	a5,a0	# tmp147,
# problem9.c:29:     assert(issame(result, (const int[]){0, 1}, 2));
	bne	a5,zero,.L10	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L10:
# problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	li	a5,1		# tmp148,
	sw	a5,-56(s0)	# tmp148, D.2755[0]
	li	a5,1		# tmp149,
	sw	a5,-52(s0)	# tmp149, D.2755[1]
	li	a5,1		# tmp150,
	sw	a5,-48(s0)	# tmp150, D.2755[2]
# problem9.c:32:     func0((int[]){1, 1, 1}, 3, result);
	addi	a4,s0,-80	#, tmp151,
	addi	a5,s0,-56	#, tmp152,
	mv	a2,a4	#, tmp151
	li	a1,3		#,
	mv	a0,a5	#, tmp152
	call	func0		#
# problem9.c:33:     assert(issame(result, (const int[]){3, 1}, 2));
	li	a5,3		# tmp153,
	sw	a5,-40(s0)	# tmp153, MEM[(int[2] *)_59][0]
	li	a5,1		# tmp154,
	sw	a5,-36(s0)	# tmp154, MEM[(int[2] *)_59][1]
	addi	a4,s0,-40	#, tmp155,
	addi	a5,s0,-80	#, tmp156,
	li	a2,2		#,
	mv	a1,a4	#, tmp155
	mv	a0,a5	#, tmp156
	call	issame		#
	mv	a5,a0	# tmp157,
# problem9.c:33:     assert(issame(result, (const int[]){3, 1}, 2));
	bne	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L11:
# problem9.c:36:     func0((int[]){100, 0}, 2, result);
	li	a5,100		# tmp158,
	sw	a5,-72(s0)	# tmp158, D.2758[0]
	sw	zero,-68(s0)	#, D.2758[1]
# problem9.c:36:     func0((int[]){100, 0}, 2, result);
	addi	a4,s0,-80	#, tmp159,
	addi	a5,s0,-72	#, tmp160,
	mv	a2,a4	#, tmp159
	li	a1,2		#,
	mv	a0,a5	#, tmp160
	call	func0		#
# problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	li	a5,100		# tmp161,
	sw	a5,-40(s0)	# tmp161, MEM[(int[2] *)_59][0]
	sw	zero,-36(s0)	#, MEM[(int[2] *)_59][1]
	addi	a4,s0,-40	#, tmp162,
	addi	a5,s0,-80	#, tmp163,
	li	a2,2		#,
	mv	a1,a4	#, tmp162
	mv	a0,a5	#, tmp163
	call	issame		#
	mv	a5,a0	# tmp164,
# problem9.c:37:     assert(issame(result, (const int[]){100, 0}, 2));
	bne	a5,zero,.L12	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L12:
# problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	li	a5,3		# tmp165,
	sw	a5,-40(s0)	# tmp165, MEM[(int[3] *)_59][0]
	li	a5,5		# tmp166,
	sw	a5,-36(s0)	# tmp166, MEM[(int[3] *)_59][1]
	li	a5,7		# tmp167,
	sw	a5,-32(s0)	# tmp167, MEM[(int[3] *)_59][2]
# problem9.c:40:     func0((int[]){3, 5, 7}, 3, result);
	addi	a4,s0,-80	#, tmp168,
	addi	a5,s0,-40	#, tmp169,
	mv	a2,a4	#, tmp168
	li	a1,3		#,
	mv	a0,a5	#, tmp169
	call	func0		#
# problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	li	a5,15		# tmp170,
	sw	a5,-64(s0)	# tmp170, MEM[(int[2] *)_60][0]
	li	a5,105		# tmp171,
	sw	a5,-60(s0)	# tmp171, MEM[(int[2] *)_60][1]
	addi	a4,s0,-64	#, tmp172,
	addi	a5,s0,-80	#, tmp173,
	li	a2,2		#,
	mv	a1,a4	#, tmp172
	mv	a0,a5	#, tmp173
	call	issame		#
	mv	a5,a0	# tmp174,
# problem9.c:41:     assert(issame(result, (const int[]){3 + 5 + 7, 3 * 5 * 7}, 2));
	bne	a5,zero,.L13	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem9.c:44:     func0((int[]){10}, 1, result);
	li	a5,10		# tmp175,
	sw	a5,-88(s0)	# tmp175, D.2764[0]
# problem9.c:44:     func0((int[]){10}, 1, result);
	addi	a4,s0,-80	#, tmp176,
	addi	a5,s0,-88	#, tmp177,
	mv	a2,a4	#, tmp176
	li	a1,1		#,
	mv	a0,a5	#, tmp177
	call	func0		#
# problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	li	a5,10		# tmp178,
	sw	a5,-64(s0)	# tmp178, MEM[(int[2] *)_60][0]
	li	a5,10		# tmp179,
	sw	a5,-60(s0)	# tmp179, MEM[(int[2] *)_60][1]
	addi	a4,s0,-64	#, tmp180,
	addi	a5,s0,-80	#, tmp181,
	li	a2,2		#,
	mv	a1,a4	#, tmp180
	mv	a0,a5	#, tmp181
	call	issame		#
	mv	a5,a0	# tmp182,
# problem9.c:45:     assert(issame(result, (const int[]){10, 10}, 2));
	bne	a5,zero,.L14	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L14:
# problem9.c:47:     return 0;
	li	a5,0		# _46,
# problem9.c:48: }
	mv	a4,a5	# <retval>, _46
	la	a5,__stack_chk_guard		# tmp184,
	ld	a3, -24(s0)	# tmp187, D.2794
	ld	a5, 0(a5)	# tmp185, __stack_chk_guard
	xor	a5, a3, a5	# tmp185, tmp187
	li	a3, 0	# tmp187
	beq	a5,zero,.L16	#, tmp185,,
	call	__stack_chk_fail@plt	#
.L16:
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
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
