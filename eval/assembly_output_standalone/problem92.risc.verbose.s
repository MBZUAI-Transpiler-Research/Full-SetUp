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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# S, S
# eval/problem92//code.c:6:     int isstart = 1;
	li	a5,1		# tmp122,
	sw	a5,-32(s0)	# tmp122, isstart
# eval/problem92//code.c:7:     int isi = 0;
	sw	zero,-28(s0)	#, isi
# eval/problem92//code.c:8:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# eval/problem92//code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	sw	zero,-20(s0)	#, i
# eval/problem92//code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	j	.L2		#
.L9:
# eval/problem92//code.c:10:         if (isspace(S[i]) && isi) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _1,
	ld	a4,0(a5)		# _2, *_1
	lw	a5,-20(s0)		# _3, i
	ld	a3,-40(s0)		# tmp123, S
	add	a5,a3,a5	# _3, _4, tmp123
	lbu	a5,0(a5)	# _5, *_4
	slli	a5,a5,1	#, _7, _6
	add	a5,a4,a5	# _7, _8, _2
	lhu	a5,0(a5)	# _9, *_8
	sext.w	a4,a5	# _10, _9
	li	a5,8192		# tmp125,
	and	a5,a4,a5	# tmp125, tmp124, _10
	sext.w	a5,a5	# _11, tmp124
# eval/problem92//code.c:10:         if (isspace(S[i]) && isi) {
	beq	a5,zero,.L3	#, _11,,
# eval/problem92//code.c:10:         if (isspace(S[i]) && isi) {
	lw	a5,-28(s0)		# tmp127, isi
	sext.w	a5,a5	# tmp128, tmp126
	beq	a5,zero,.L3	#, tmp128,,
# eval/problem92//code.c:11:             isi = 0;
	sw	zero,-28(s0)	#, isi
# eval/problem92//code.c:12:             sum += 1;
	lw	a5,-24(s0)		# tmp131, sum
	addiw	a5,a5,1	#, tmp129, tmp130
	sw	a5,-24(s0)	# tmp129, sum
.L3:
# eval/problem92//code.c:14:         if (S[i] == 'I' && isstart) {
	lw	a5,-20(s0)		# _12, i
	ld	a4,-40(s0)		# tmp132, S
	add	a5,a4,a5	# _12, _13, tmp132
	lbu	a5,0(a5)	# _14, *_13
# eval/problem92//code.c:14:         if (S[i] == 'I' && isstart) {
	mv	a4,a5	# tmp133, _14
	li	a5,73		# tmp134,
	bne	a4,a5,.L4	#, tmp133, tmp134,
# eval/problem92//code.c:14:         if (S[i] == 'I' && isstart) {
	lw	a5,-32(s0)		# tmp136, isstart
	sext.w	a5,a5	# tmp137, tmp135
	beq	a5,zero,.L4	#, tmp137,,
# eval/problem92//code.c:15:             isi = 1;
	li	a5,1		# tmp138,
	sw	a5,-28(s0)	# tmp138, isi
	j	.L5		#
.L4:
# eval/problem92//code.c:16:         } else if (!isspace(S[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _15,
	ld	a4,0(a5)		# _16, *_15
	lw	a5,-20(s0)		# _17, i
	ld	a3,-40(s0)		# tmp139, S
	add	a5,a3,a5	# _17, _18, tmp139
	lbu	a5,0(a5)	# _19, *_18
	slli	a5,a5,1	#, _21, _20
	add	a5,a4,a5	# _21, _22, _16
	lhu	a5,0(a5)	# _23, *_22
	sext.w	a4,a5	# _24, _23
	li	a5,8192		# tmp141,
	and	a5,a4,a5	# tmp141, tmp140, _24
	sext.w	a5,a5	# _25, tmp140
# eval/problem92//code.c:16:         } else if (!isspace(S[i])) {
	bne	a5,zero,.L5	#, _25,,
# eval/problem92//code.c:17:             isi = 0;
	sw	zero,-28(s0)	#, isi
.L5:
# eval/problem92//code.c:19:         if (!isspace(S[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _26,
	ld	a4,0(a5)		# _27, *_26
	lw	a5,-20(s0)		# _28, i
	ld	a3,-40(s0)		# tmp142, S
	add	a5,a3,a5	# _28, _29, tmp142
	lbu	a5,0(a5)	# _30, *_29
	slli	a5,a5,1	#, _32, _31
	add	a5,a4,a5	# _32, _33, _27
	lhu	a5,0(a5)	# _34, *_33
	sext.w	a4,a5	# _35, _34
	li	a5,8192		# tmp144,
	and	a5,a4,a5	# tmp144, tmp143, _35
	sext.w	a5,a5	# _36, tmp143
# eval/problem92//code.c:19:         if (!isspace(S[i])) {
	bne	a5,zero,.L6	#, _36,,
# eval/problem92//code.c:20:             isstart = 0;
	sw	zero,-32(s0)	#, isstart
.L6:
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _37, i
	ld	a4,-40(s0)		# tmp145, S
	add	a5,a4,a5	# _37, _38, tmp145
	lbu	a5,0(a5)	# _39, *_38
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp146, _39
	li	a5,46		# tmp147,
	beq	a4,a5,.L7	#, tmp146, tmp147,
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _40, i
	ld	a4,-40(s0)		# tmp148, S
	add	a5,a4,a5	# _40, _41, tmp148
	lbu	a5,0(a5)	# _42, *_41
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp149, _42
	li	a5,63		# tmp150,
	beq	a4,a5,.L7	#, tmp149, tmp150,
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _43, i
	ld	a4,-40(s0)		# tmp151, S
	add	a5,a4,a5	# _43, _44, tmp151
	lbu	a5,0(a5)	# _45, *_44
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp152, _45
	li	a5,33		# tmp153,
	bne	a4,a5,.L8	#, tmp152, tmp153,
.L7:
# eval/problem92//code.c:23:             isstart = 1;
	li	a5,1		# tmp154,
	sw	a5,-32(s0)	# tmp154, isstart
.L8:
# eval/problem92//code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	lw	a5,-20(s0)		# tmp157, i
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-20(s0)	# tmp155, i
.L2:
# eval/problem92//code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	lw	a5,-20(s0)		# _46, i
	ld	a4,-40(s0)		# tmp158, S
	add	a5,a4,a5	# _46, _47, tmp158
	lbu	a5,0(a5)	# _48, *_47
# eval/problem92//code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	bne	a5,zero,.L9	#, _48,,
# eval/problem92//code.c:26:     return sum;
	lw	a5,-24(s0)		# _64, sum
# eval/problem92//code.c:27: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
