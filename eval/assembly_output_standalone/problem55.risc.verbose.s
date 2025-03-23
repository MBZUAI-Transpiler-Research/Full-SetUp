	.file	"code.c"
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
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# s0, s0
	sd	a1,-64(s0)	# s1, s1
# eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	ld	a0,-56(s0)		#, s0
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	sw	a5,-24(s0)	# _1, len0
# eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	ld	a0,-64(s0)		#, s1
	call	strlen@plt	#
	mv	a5,a0	# _2,
# eval/problem55//code.c:6:     int len0 = strlen(s0), len1 = strlen(s1);
	sw	a5,-20(s0)	# _2, len1
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	sw	zero,-40(s0)	#, i
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	j	.L2		#
.L9:
# eval/problem55//code.c:8:         bool found = false;
	sb	zero,-42(s0)	#, found
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	sw	zero,-36(s0)	#, j
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	j	.L3		#
.L6:
# eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	lw	a5,-40(s0)		# _3, i
	ld	a4,-56(s0)		# tmp152, s0
	add	a5,a4,a5	# _3, _4, tmp152
	lbu	a3,0(a5)	# _5, *_4
# eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	lw	a5,-36(s0)		# _6, j
	ld	a4,-64(s0)		# tmp153, s1
	add	a5,a4,a5	# _6, _7, tmp153
	lbu	a5,0(a5)	# _8, *_7
# eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	mv	a4,a3	# tmp154, _5
	bne	a4,a5,.L4	#, tmp154, tmp155,
# eval/problem55//code.c:11:                 found = true;
	li	a5,1		# tmp156,
	sb	a5,-42(s0)	# tmp156, found
# eval/problem55//code.c:12:                 break;
	j	.L5		#
.L4:
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	lw	a5,-36(s0)		# tmp159, j
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-36(s0)	# tmp157, j
.L3:
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	lw	a5,-36(s0)		# tmp161, j
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-20(s0)		# tmp163, len1
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	blt	a4,a5,.L6	#, tmp164, tmp165,
.L5:
# eval/problem55//code.c:15:         if (!found) return false;
	lbu	a5,-42(s0)	# tmp167, found
	xori	a5,a5,1	#, tmp168, tmp166
	andi	a5,a5,0xff	# _9, tmp168
# eval/problem55//code.c:15:         if (!found) return false;
	beq	a5,zero,.L7	#, _9,,
# eval/problem55//code.c:15:         if (!found) return false;
	li	a5,0		# _23,
# eval/problem55//code.c:15:         if (!found) return false;
	j	.L8		#
.L7:
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	lw	a5,-40(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-40(s0)	# tmp169, i
.L2:
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	lw	a5,-40(s0)		# tmp173, i
	mv	a4,a5	# tmp172, tmp173
	lw	a5,-24(s0)		# tmp175, len0
	sext.w	a4,a4	# tmp176, tmp172
	sext.w	a5,a5	# tmp177, tmp174
	blt	a4,a5,.L9	#, tmp176, tmp177,
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	j	.L10		#
.L16:
# eval/problem55//code.c:18:         bool found = false;
	sb	zero,-41(s0)	#, found
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	sw	zero,-28(s0)	#, j
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	j	.L11		#
.L14:
# eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	lw	a5,-32(s0)		# _10, i
	ld	a4,-64(s0)		# tmp178, s1
	add	a5,a4,a5	# _10, _11, tmp178
	lbu	a3,0(a5)	# _12, *_11
# eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	lw	a5,-28(s0)		# _13, j
	ld	a4,-56(s0)		# tmp179, s0
	add	a5,a4,a5	# _13, _14, tmp179
	lbu	a5,0(a5)	# _15, *_14
# eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	mv	a4,a3	# tmp180, _12
	bne	a4,a5,.L12	#, tmp180, tmp181,
# eval/problem55//code.c:21:                 found = true;
	li	a5,1		# tmp182,
	sb	a5,-41(s0)	# tmp182, found
# eval/problem55//code.c:22:                 break;
	j	.L13		#
.L12:
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	lw	a5,-28(s0)		# tmp185, j
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-28(s0)	# tmp183, j
.L11:
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	lw	a5,-28(s0)		# tmp187, j
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-24(s0)		# tmp189, len0
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L14	#, tmp190, tmp191,
.L13:
# eval/problem55//code.c:25:         if (!found) return false;
	lbu	a5,-41(s0)	# tmp193, found
	xori	a5,a5,1	#, tmp194, tmp192
	andi	a5,a5,0xff	# _16, tmp194
# eval/problem55//code.c:25:         if (!found) return false;
	beq	a5,zero,.L15	#, _16,,
# eval/problem55//code.c:25:         if (!found) return false;
	li	a5,0		# _23,
# eval/problem55//code.c:25:         if (!found) return false;
	j	.L8		#
.L15:
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp197, i
	addiw	a5,a5,1	#, tmp195, tmp196
	sw	a5,-32(s0)	# tmp195, i
.L10:
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp199, i
	mv	a4,a5	# tmp198, tmp199
	lw	a5,-20(s0)		# tmp201, len1
	sext.w	a4,a4	# tmp202, tmp198
	sext.w	a5,a5	# tmp203, tmp200
	blt	a4,a5,.L16	#, tmp202, tmp203,
# eval/problem55//code.c:27:     return true;
	li	a5,1		# _23,
.L8:
# eval/problem55//code.c:28: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
