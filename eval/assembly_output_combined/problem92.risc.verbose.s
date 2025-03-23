	.file	"problem92.c"
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
# problem92.c:6:     int isstart = 1;
	li	a5,1		# tmp184,
	sw	a5,-32(s0)	# tmp184, isstart
# problem92.c:7:     int isi = 0;
	sw	zero,-28(s0)	#, isi
# problem92.c:8:     int sum = 0;
	sw	zero,-24(s0)	#, sum
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	sw	zero,-20(s0)	#, i
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	j	.L2		#
.L9:
# problem92.c:10:         if (isspace(S[i]) && isi) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _1,
# problem92.c:10:         if (isspace(S[i]) && isi) {
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
# problem92.c:10:         if (isspace(S[i]) && isi) {
	beq	a5,zero,.L3	#, _11,,
# problem92.c:10:         if (isspace(S[i]) && isi) {
	lw	a5,-28(s0)		# tmp189, isi
	sext.w	a5,a5	# tmp190, tmp188
	beq	a5,zero,.L3	#, tmp190,,
# problem92.c:11:             isi = 0;
	sw	zero,-28(s0)	#, isi
# problem92.c:12:             sum += 1;
	lw	a5,-24(s0)		# tmp193, sum
	addiw	a5,a5,1	#, tmp191, tmp192
	sw	a5,-24(s0)	# tmp191, sum
.L3:
# problem92.c:14:         if (S[i] == 'I' && isstart) {
	lw	a5,-20(s0)		# _12, i
	ld	a4,-40(s0)		# tmp194, S
	add	a5,a4,a5	# _12, _13, tmp194
	lbu	a5,0(a5)	# _14, *_13
# problem92.c:14:         if (S[i] == 'I' && isstart) {
	mv	a4,a5	# tmp195, _14
	li	a5,73		# tmp196,
	bne	a4,a5,.L4	#, tmp195, tmp196,
# problem92.c:14:         if (S[i] == 'I' && isstart) {
	lw	a5,-32(s0)		# tmp198, isstart
	sext.w	a5,a5	# tmp199, tmp197
	beq	a5,zero,.L4	#, tmp199,,
# problem92.c:15:             isi = 1;
	li	a5,1		# tmp200,
	sw	a5,-28(s0)	# tmp200, isi
	j	.L5		#
.L4:
# problem92.c:16:         } else if (!isspace(S[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _15,
# problem92.c:16:         } else if (!isspace(S[i])) {
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
# problem92.c:16:         } else if (!isspace(S[i])) {
	bne	a5,zero,.L5	#, _25,,
# problem92.c:17:             isi = 0;
	sw	zero,-28(s0)	#, isi
.L5:
# problem92.c:19:         if (!isspace(S[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _26,
# problem92.c:19:         if (!isspace(S[i])) {
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
# problem92.c:19:         if (!isspace(S[i])) {
	bne	a5,zero,.L6	#, _36,,
# problem92.c:20:             isstart = 0;
	sw	zero,-32(s0)	#, isstart
.L6:
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _37, i
	ld	a4,-40(s0)		# tmp207, S
	add	a5,a4,a5	# _37, _38, tmp207
	lbu	a5,0(a5)	# _39, *_38
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp208, _39
	li	a5,46		# tmp209,
	beq	a4,a5,.L7	#, tmp208, tmp209,
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _40, i
	ld	a4,-40(s0)		# tmp210, S
	add	a5,a4,a5	# _40, _41, tmp210
	lbu	a5,0(a5)	# _42, *_41
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp211, _42
	li	a5,63		# tmp212,
	beq	a4,a5,.L7	#, tmp211, tmp212,
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _43, i
	ld	a4,-40(s0)		# tmp213, S
	add	a5,a4,a5	# _43, _44, tmp213
	lbu	a5,0(a5)	# _45, *_44
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp214, _45
	li	a5,33		# tmp215,
	bne	a4,a5,.L8	#, tmp214, tmp215,
.L7:
# problem92.c:23:             isstart = 1;
	li	a5,1		# tmp216,
	sw	a5,-32(s0)	# tmp216, isstart
.L8:
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	lw	a5,-20(s0)		# tmp219, i
	addiw	a5,a5,1	#, tmp217, tmp218
	sw	a5,-20(s0)	# tmp217, i
.L2:
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	lw	a5,-20(s0)		# _46, i
	ld	a4,-40(s0)		# tmp220, S
	add	a5,a4,a5	# _46, _47, tmp220
	lbu	a5,0(a5)	# _48, *_47
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	bne	a5,zero,.L9	#, _48,,
# problem92.c:26:     return sum;
	lw	a5,-24(s0)		# _64, sum
# problem92.c:27: }
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
	.section	.rodata
	.align	3
.LC0:
	.string	"Hello world"
	.align	3
.LC1:
	.string	"problem92.c"
	.align	3
.LC2:
	.string	"func0(\"Hello world\") == 0"
	.align	3
.LC3:
	.string	"Is the sky blue?"
	.align	3
.LC4:
	.string	"func0(\"Is the sky blue?\") == 0"
	.align	3
.LC5:
	.string	"I love It !"
	.align	3
.LC6:
	.string	"func0(\"I love It !\") == 1"
	.align	3
.LC7:
	.string	"bIt"
	.align	3
.LC8:
	.string	"func0(\"bIt\") == 0"
	.align	3
.LC9:
	.string	"I feel good today. I will be productive. will kill It"
	.align	3
.LC10:
	.string	"func0(\"I feel good today. I will be productive. will kill It\") == 2"
	.align	3
.LC11:
	.string	"You and I are going for a walk"
	.align	3
.LC12:
	.string	"func0(\"You and I are going for a walk\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem92.c:34:     assert(func0("Hello world") == 0);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp142,
# problem92.c:34:     assert(func0("Hello world") == 0);
	beq	a5,zero,.L12	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L12:
# problem92.c:35:     assert(func0("Is the sky blue?") == 0);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem92.c:35:     assert(func0("Is the sky blue?") == 0);
	beq	a5,zero,.L13	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem92.c:36:     assert(func0("I love It !") == 1);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp144,
# problem92.c:36:     assert(func0("I love It !") == 1);
	mv	a4,a5	# tmp145, _3
	li	a5,1		# tmp146,
	beq	a4,a5,.L14	#, tmp145, tmp146,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem92.c:37:     assert(func0("bIt") == 0);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp147,
# problem92.c:37:     assert(func0("bIt") == 0);
	beq	a5,zero,.L15	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L15:
# problem92.c:38:     assert(func0("I feel good today. I will be productive. will kill It") == 2);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp148,
# problem92.c:38:     assert(func0("I feel good today. I will be productive. will kill It") == 2);
	mv	a4,a5	# tmp149, _5
	li	a5,2		# tmp150,
	beq	a4,a5,.L16	#, tmp149, tmp150,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L16:
# problem92.c:39:     assert(func0("You and I are going for a walk") == 0);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp151,
# problem92.c:39:     assert(func0("You and I are going for a walk") == 0);
	beq	a5,zero,.L17	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L17:
# problem92.c:41:     return 0;
	li	a5,0		# _20,
# problem92.c:42: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
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
