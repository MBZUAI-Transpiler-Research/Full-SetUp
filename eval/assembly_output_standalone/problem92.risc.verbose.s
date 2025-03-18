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
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# S, S
# eval/problem92//code.c:6:     int isstart = 1;
	li	a5,1		# tmp184,
	sw	a5,-32(s0)	# tmp184, isstart
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
# eval/problem92//code.c:10:         if (isspace(S[i]) && isi) {
	ld	a4,0(a5)		# _2, *_1
	lw	a5,-20(s0)		# _3, i
	ld	a3,-40(s0)		# tmp185, S
	add	a5,a3,a5	# _3, _4, tmp185
	lbu	a5,0(a5)	# _5, *_4
	slli	a5,a5,1	#, _7, _6
	add	a5,a4,a5	# _7, _8, _2
	lhu	a5,0(a5)	# _9, *_8
	sext.w	a4,a5	# _10, _9
	li	a5,8192		# tmp187,
	and	a5,a4,a5	# tmp187, tmp186, _10
	sext.w	a5,a5	# _11, tmp186
# eval/problem92//code.c:10:         if (isspace(S[i]) && isi) {
	beq	a5,zero,.L3	#, _11,,
# eval/problem92//code.c:10:         if (isspace(S[i]) && isi) {
	lw	a5,-28(s0)		# tmp189, isi
	sext.w	a5,a5	# tmp190, tmp188
	beq	a5,zero,.L3	#, tmp190,,
# eval/problem92//code.c:11:             isi = 0;
	sw	zero,-28(s0)	#, isi
# eval/problem92//code.c:12:             sum += 1;
	lw	a5,-24(s0)		# tmp193, sum
	addiw	a5,a5,1	#, tmp191, tmp192
	sw	a5,-24(s0)	# tmp191, sum
.L3:
# eval/problem92//code.c:14:         if (S[i] == 'I' && isstart) {
	lw	a5,-20(s0)		# _12, i
	ld	a4,-40(s0)		# tmp194, S
	add	a5,a4,a5	# _12, _13, tmp194
	lbu	a5,0(a5)	# _14, *_13
# eval/problem92//code.c:14:         if (S[i] == 'I' && isstart) {
	mv	a4,a5	# tmp195, _14
	li	a5,73		# tmp196,
	bne	a4,a5,.L4	#, tmp195, tmp196,
# eval/problem92//code.c:14:         if (S[i] == 'I' && isstart) {
	lw	a5,-32(s0)		# tmp198, isstart
	sext.w	a5,a5	# tmp199, tmp197
	beq	a5,zero,.L4	#, tmp199,,
# eval/problem92//code.c:15:             isi = 1;
	li	a5,1		# tmp200,
	sw	a5,-28(s0)	# tmp200, isi
	j	.L5		#
.L4:
# eval/problem92//code.c:16:         } else if (!isspace(S[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _15,
# eval/problem92//code.c:16:         } else if (!isspace(S[i])) {
	ld	a4,0(a5)		# _16, *_15
	lw	a5,-20(s0)		# _17, i
	ld	a3,-40(s0)		# tmp201, S
	add	a5,a3,a5	# _17, _18, tmp201
	lbu	a5,0(a5)	# _19, *_18
	slli	a5,a5,1	#, _21, _20
	add	a5,a4,a5	# _21, _22, _16
	lhu	a5,0(a5)	# _23, *_22
	sext.w	a4,a5	# _24, _23
	li	a5,8192		# tmp203,
	and	a5,a4,a5	# tmp203, tmp202, _24
	sext.w	a5,a5	# _25, tmp202
# eval/problem92//code.c:16:         } else if (!isspace(S[i])) {
	bne	a5,zero,.L5	#, _25,,
# eval/problem92//code.c:17:             isi = 0;
	sw	zero,-28(s0)	#, isi
.L5:
# eval/problem92//code.c:19:         if (!isspace(S[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _26,
# eval/problem92//code.c:19:         if (!isspace(S[i])) {
	ld	a4,0(a5)		# _27, *_26
	lw	a5,-20(s0)		# _28, i
	ld	a3,-40(s0)		# tmp204, S
	add	a5,a3,a5	# _28, _29, tmp204
	lbu	a5,0(a5)	# _30, *_29
	slli	a5,a5,1	#, _32, _31
	add	a5,a4,a5	# _32, _33, _27
	lhu	a5,0(a5)	# _34, *_33
	sext.w	a4,a5	# _35, _34
	li	a5,8192		# tmp206,
	and	a5,a4,a5	# tmp206, tmp205, _35
	sext.w	a5,a5	# _36, tmp205
# eval/problem92//code.c:19:         if (!isspace(S[i])) {
	bne	a5,zero,.L6	#, _36,,
# eval/problem92//code.c:20:             isstart = 0;
	sw	zero,-32(s0)	#, isstart
.L6:
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _37, i
	ld	a4,-40(s0)		# tmp207, S
	add	a5,a4,a5	# _37, _38, tmp207
	lbu	a5,0(a5)	# _39, *_38
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp208, _39
	li	a5,46		# tmp209,
	beq	a4,a5,.L7	#, tmp208, tmp209,
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _40, i
	ld	a4,-40(s0)		# tmp210, S
	add	a5,a4,a5	# _40, _41, tmp210
	lbu	a5,0(a5)	# _42, *_41
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp211, _42
	li	a5,63		# tmp212,
	beq	a4,a5,.L7	#, tmp211, tmp212,
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _43, i
	ld	a4,-40(s0)		# tmp213, S
	add	a5,a4,a5	# _43, _44, tmp213
	lbu	a5,0(a5)	# _45, *_44
# eval/problem92//code.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp214, _45
	li	a5,33		# tmp215,
	bne	a4,a5,.L8	#, tmp214, tmp215,
.L7:
# eval/problem92//code.c:23:             isstart = 1;
	li	a5,1		# tmp216,
	sw	a5,-32(s0)	# tmp216, isstart
.L8:
# eval/problem92//code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	lw	a5,-20(s0)		# tmp219, i
	addiw	a5,a5,1	#, tmp217, tmp218
	sw	a5,-20(s0)	# tmp217, i
.L2:
# eval/problem92//code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	lw	a5,-20(s0)		# _46, i
	ld	a4,-40(s0)		# tmp220, S
	add	a5,a4,a5	# _46, _47, tmp220
	lbu	a5,0(a5)	# _48, *_47
# eval/problem92//code.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	bne	a5,zero,.L9	#, _48,,
# eval/problem92//code.c:26:     return sum;
	lw	a5,-24(s0)		# _64, sum
# eval/problem92//code.c:27: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
