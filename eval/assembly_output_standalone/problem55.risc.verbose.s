	.file	"code.c"
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
	ld	a4,-56(s0)		# tmp90, s0
	add	a5,a4,a5	# _3, _4, tmp90
	lbu	a3,0(a5)	# _5, *_4
# eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	lw	a5,-36(s0)		# _6, j
	ld	a4,-64(s0)		# tmp91, s1
	add	a5,a4,a5	# _6, _7, tmp91
	lbu	a5,0(a5)	# _8, *_7
# eval/problem55//code.c:10:             if (s0[i] == s1[j]) {
	mv	a4,a3	# tmp92, _5
	bne	a4,a5,.L4	#, tmp92, tmp93,
# eval/problem55//code.c:11:                 found = true;
	li	a5,1		# tmp94,
	sb	a5,-42(s0)	# tmp94, found
# eval/problem55//code.c:12:                 break;
	j	.L5		#
.L4:
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	lw	a5,-36(s0)		# tmp97, j
	addiw	a5,a5,1	#, tmp95, tmp96
	sw	a5,-36(s0)	# tmp95, j
.L3:
# eval/problem55//code.c:9:         for (int j = 0; j < len1; j++) {
	lw	a5,-36(s0)		# tmp99, j
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-20(s0)		# tmp101, len1
	sext.w	a4,a4	# tmp102, tmp98
	sext.w	a5,a5	# tmp103, tmp100
	blt	a4,a5,.L6	#, tmp102, tmp103,
.L5:
# eval/problem55//code.c:15:         if (!found) return false;
	lbu	a5,-42(s0)	# tmp105, found
	xori	a5,a5,1	#, tmp106, tmp104
	andi	a5,a5,0xff	# _9, tmp106
# eval/problem55//code.c:15:         if (!found) return false;
	beq	a5,zero,.L7	#, _9,,
# eval/problem55//code.c:15:         if (!found) return false;
	li	a5,0		# _23,
	j	.L8		#
.L7:
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	lw	a5,-40(s0)		# tmp109, i
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-40(s0)	# tmp107, i
.L2:
# eval/problem55//code.c:7:     for (int i = 0; i < len0; i++) {
	lw	a5,-40(s0)		# tmp111, i
	mv	a4,a5	# tmp110, tmp111
	lw	a5,-24(s0)		# tmp113, len0
	sext.w	a4,a4	# tmp114, tmp110
	sext.w	a5,a5	# tmp115, tmp112
	blt	a4,a5,.L9	#, tmp114, tmp115,
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
	ld	a4,-64(s0)		# tmp116, s1
	add	a5,a4,a5	# _10, _11, tmp116
	lbu	a3,0(a5)	# _12, *_11
# eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	lw	a5,-28(s0)		# _13, j
	ld	a4,-56(s0)		# tmp117, s0
	add	a5,a4,a5	# _13, _14, tmp117
	lbu	a5,0(a5)	# _15, *_14
# eval/problem55//code.c:20:             if (s1[i] == s0[j]) {
	mv	a4,a3	# tmp118, _12
	bne	a4,a5,.L12	#, tmp118, tmp119,
# eval/problem55//code.c:21:                 found = true;
	li	a5,1		# tmp120,
	sb	a5,-41(s0)	# tmp120, found
# eval/problem55//code.c:22:                 break;
	j	.L13		#
.L12:
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	lw	a5,-28(s0)		# tmp123, j
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-28(s0)	# tmp121, j
.L11:
# eval/problem55//code.c:19:         for (int j = 0; j < len0; j++) {
	lw	a5,-28(s0)		# tmp125, j
	mv	a4,a5	# tmp124, tmp125
	lw	a5,-24(s0)		# tmp127, len0
	sext.w	a4,a4	# tmp128, tmp124
	sext.w	a5,a5	# tmp129, tmp126
	blt	a4,a5,.L14	#, tmp128, tmp129,
.L13:
# eval/problem55//code.c:25:         if (!found) return false;
	lbu	a5,-41(s0)	# tmp131, found
	xori	a5,a5,1	#, tmp132, tmp130
	andi	a5,a5,0xff	# _16, tmp132
# eval/problem55//code.c:25:         if (!found) return false;
	beq	a5,zero,.L15	#, _16,,
# eval/problem55//code.c:25:         if (!found) return false;
	li	a5,0		# _23,
	j	.L8		#
.L15:
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp135, i
	addiw	a5,a5,1	#, tmp133, tmp134
	sw	a5,-32(s0)	# tmp133, i
.L10:
# eval/problem55//code.c:17:     for (int i = 0; i < len1; i++) {
	lw	a5,-32(s0)		# tmp137, i
	mv	a4,a5	# tmp136, tmp137
	lw	a5,-20(s0)		# tmp139, len1
	sext.w	a4,a4	# tmp140, tmp136
	sext.w	a5,a5	# tmp141, tmp138
	blt	a4,a5,.L16	#, tmp140, tmp141,
# eval/problem55//code.c:27:     return true;
	li	a5,1		# _23,
.L8:
# eval/problem55//code.c:28: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
