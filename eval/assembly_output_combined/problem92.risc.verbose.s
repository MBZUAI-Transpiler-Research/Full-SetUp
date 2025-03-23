	.file	"problem92.c"
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
# problem92.c:6:     int isstart = 1;
	li	a5,1		# tmp122,
	sw	a5,-32(s0)	# tmp122, isstart
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
# problem92.c:10:         if (isspace(S[i]) && isi) {
	beq	a5,zero,.L3	#, _11,,
# problem92.c:10:         if (isspace(S[i]) && isi) {
	lw	a5,-28(s0)		# tmp127, isi
	sext.w	a5,a5	# tmp128, tmp126
	beq	a5,zero,.L3	#, tmp128,,
# problem92.c:11:             isi = 0;
	sw	zero,-28(s0)	#, isi
# problem92.c:12:             sum += 1;
	lw	a5,-24(s0)		# tmp131, sum
	addiw	a5,a5,1	#, tmp129, tmp130
	sw	a5,-24(s0)	# tmp129, sum
.L3:
# problem92.c:14:         if (S[i] == 'I' && isstart) {
	lw	a5,-20(s0)		# _12, i
	ld	a4,-40(s0)		# tmp132, S
	add	a5,a4,a5	# _12, _13, tmp132
	lbu	a5,0(a5)	# _14, *_13
# problem92.c:14:         if (S[i] == 'I' && isstart) {
	mv	a4,a5	# tmp133, _14
	li	a5,73		# tmp134,
	bne	a4,a5,.L4	#, tmp133, tmp134,
# problem92.c:14:         if (S[i] == 'I' && isstart) {
	lw	a5,-32(s0)		# tmp136, isstart
	sext.w	a5,a5	# tmp137, tmp135
	beq	a5,zero,.L4	#, tmp137,,
# problem92.c:15:             isi = 1;
	li	a5,1		# tmp138,
	sw	a5,-28(s0)	# tmp138, isi
	j	.L5		#
.L4:
# problem92.c:16:         } else if (!isspace(S[i])) {
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
# problem92.c:16:         } else if (!isspace(S[i])) {
	bne	a5,zero,.L5	#, _25,,
# problem92.c:17:             isi = 0;
	sw	zero,-28(s0)	#, isi
.L5:
# problem92.c:19:         if (!isspace(S[i])) {
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
# problem92.c:19:         if (!isspace(S[i])) {
	bne	a5,zero,.L6	#, _36,,
# problem92.c:20:             isstart = 0;
	sw	zero,-32(s0)	#, isstart
.L6:
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _37, i
	ld	a4,-40(s0)		# tmp145, S
	add	a5,a4,a5	# _37, _38, tmp145
	lbu	a5,0(a5)	# _39, *_38
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp146, _39
	li	a5,46		# tmp147,
	beq	a4,a5,.L7	#, tmp146, tmp147,
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _40, i
	ld	a4,-40(s0)		# tmp148, S
	add	a5,a4,a5	# _40, _41, tmp148
	lbu	a5,0(a5)	# _42, *_41
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp149, _42
	li	a5,63		# tmp150,
	beq	a4,a5,.L7	#, tmp149, tmp150,
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	lw	a5,-20(s0)		# _43, i
	ld	a4,-40(s0)		# tmp151, S
	add	a5,a4,a5	# _43, _44, tmp151
	lbu	a5,0(a5)	# _45, *_44
# problem92.c:22:         if (S[i] == '.' || S[i] == '?' || S[i] == '!') {
	mv	a4,a5	# tmp152, _45
	li	a5,33		# tmp153,
	bne	a4,a5,.L8	#, tmp152, tmp153,
.L7:
# problem92.c:23:             isstart = 1;
	li	a5,1		# tmp154,
	sw	a5,-32(s0)	# tmp154, isstart
.L8:
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	lw	a5,-20(s0)		# tmp157, i
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-20(s0)	# tmp155, i
.L2:
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	lw	a5,-20(s0)		# _46, i
	ld	a4,-40(s0)		# tmp158, S
	add	a5,a4,a5	# _46, _47, tmp158
	lbu	a5,0(a5)	# _48, *_47
# problem92.c:9:     for (int i = 0; S[i] != '\0'; i++) {
	bne	a5,zero,.L9	#, _48,,
# problem92.c:26:     return sum;
	lw	a5,-24(s0)		# _64, sum
# problem92.c:27: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem92.c:34:     assert(func0("Hello world") == 0);
	lla	a0,.LC0	#,
	call	func0		#
	mv	a5,a0	# tmp80,
	beq	a5,zero,.L12	#, _1,,
# problem92.c:34:     assert(func0("Hello world") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L12:
# problem92.c:35:     assert(func0("Is the sky blue?") == 0);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# tmp81,
	beq	a5,zero,.L13	#, _2,,
# problem92.c:35:     assert(func0("Is the sky blue?") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem92.c:36:     assert(func0("I love It !") == 1);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _3
	li	a5,1		# tmp84,
	beq	a4,a5,.L14	#, tmp83, tmp84,
# problem92.c:36:     assert(func0("I love It !") == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L14:
# problem92.c:37:     assert(func0("bIt") == 0);
	lla	a0,.LC7	#,
	call	func0		#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L15	#, _4,,
# problem92.c:37:     assert(func0("bIt") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L15:
# problem92.c:38:     assert(func0("I feel good today. I will be productive. will kill It") == 2);
	lla	a0,.LC9	#,
	call	func0		#
	mv	a5,a0	# tmp86,
	mv	a4,a5	# tmp87, _5
	li	a5,2		# tmp88,
	beq	a4,a5,.L16	#, tmp87, tmp88,
# problem92.c:38:     assert(func0("I feel good today. I will be productive. will kill It") == 2);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L16:
# problem92.c:39:     assert(func0("You and I are going for a walk") == 0);
	lla	a0,.LC11	#,
	call	func0		#
	mv	a5,a0	# tmp89,
	beq	a5,zero,.L17	#, _6,,
# problem92.c:39:     assert(func0("You and I are going for a walk") == 0);
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
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
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
