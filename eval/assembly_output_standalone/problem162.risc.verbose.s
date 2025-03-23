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
	sd	a0,-56(s0)	# s, s
# eval/problem162//code.c:6:     int nletter = 0;
	sw	zero,-32(s0)	#, nletter
# eval/problem162//code.c:7:     int length = strlen(s);
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem162//code.c:7:     int length = strlen(s);
	sw	a5,-20(s0)	# _1, length
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L6:
# eval/problem162//code.c:9:         if (isalpha((unsigned char)s[i])) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _2,
	ld	a4,0(a5)		# _3, *_2
	lw	a5,-28(s0)		# _4, i
	ld	a3,-56(s0)		# tmp138, s
	add	a5,a3,a5	# _4, _5, tmp138
	lbu	a5,0(a5)	# _6, *_5
	slli	a5,a5,1	#, _8, _7
	add	a5,a4,a5	# _8, _9, _3
	lhu	a5,0(a5)	# _10, *_9
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1024	#, tmp139, _11
	sext.w	a5,a5	# _12, tmp139
# eval/problem162//code.c:9:         if (isalpha((unsigned char)s[i])) {
	beq	a5,zero,.L3	#, _12,,
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _13,
	ld	a4,0(a5)		# _14, *_13
	lw	a5,-28(s0)		# _15, i
	ld	a3,-56(s0)		# tmp140, s
	add	a5,a3,a5	# _15, _16, tmp140
	lbu	a5,0(a5)	# _17, *_16
	slli	a5,a5,1	#, _19, _18
	add	a5,a4,a5	# _19, _20, _14
	lhu	a5,0(a5)	# _21, *_20
	sext.w	a5,a5	# _22, _21
	andi	a5,a5,256	#, tmp141, _22
	sext.w	a5,a5	# _23, tmp141
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	beq	a5,zero,.L4	#, _23,,
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	lw	a5,-28(s0)		# _24, i
	ld	a4,-56(s0)		# tmp142, s
	add	a5,a4,a5	# _24, _25, tmp142
	lbu	a5,0(a5)	# _26, *_25
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	sext.w	a5,a5	# _27, _26
	mv	a0,a5	#, _27
	call	tolower@plt	#
	mv	a5,a0	# tmp143,
	mv	a3,a5	# _28, tmp143
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	lw	a5,-28(s0)		# _29, i
	ld	a4,-56(s0)		# tmp144, s
	add	a5,a4,a5	# _29, _30, tmp144
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	andi	a4,a3,0xff	# _31, _28
	sb	a4,0(a5)	# _31, *_30
	j	.L5		#
.L4:
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _32,
	ld	a4,0(a5)		# _33, *_32
	lw	a5,-28(s0)		# _34, i
	ld	a3,-56(s0)		# tmp145, s
	add	a5,a3,a5	# _34, _35, tmp145
	lbu	a5,0(a5)	# _36, *_35
	slli	a5,a5,1	#, _38, _37
	add	a5,a4,a5	# _38, _39, _33
	lhu	a5,0(a5)	# _40, *_39
	sext.w	a5,a5	# _41, _40
	andi	a5,a5,512	#, tmp146, _41
	sext.w	a5,a5	# _42, tmp146
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	beq	a5,zero,.L5	#, _42,,
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	lw	a5,-28(s0)		# _43, i
	ld	a4,-56(s0)		# tmp147, s
	add	a5,a4,a5	# _43, _44, tmp147
	lbu	a5,0(a5)	# _45, *_44
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	sext.w	a5,a5	# _46, _45
	mv	a0,a5	#, _46
	call	toupper@plt	#
	mv	a5,a0	# tmp148,
	mv	a3,a5	# _47, tmp148
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	lw	a5,-28(s0)		# _48, i
	ld	a4,-56(s0)		# tmp149, s
	add	a5,a4,a5	# _48, _49, tmp149
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	andi	a4,a3,0xff	# _50, _47
	sb	a4,0(a5)	# _50, *_49
	j	.L5		#
.L3:
# eval/problem162//code.c:13:             nletter += 1;
	lw	a5,-32(s0)		# tmp152, nletter
	addiw	a5,a5,1	#, tmp150, tmp151
	sw	a5,-32(s0)	# tmp150, nletter
.L5:
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	lw	a5,-28(s0)		# tmp155, i
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-28(s0)	# tmp153, i
.L2:
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	lw	a5,-28(s0)		# tmp157, i
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-20(s0)		# tmp159, length
	sext.w	a4,a4	# tmp160, tmp156
	sext.w	a5,a5	# tmp161, tmp158
	blt	a4,a5,.L6	#, tmp160, tmp161,
# eval/problem162//code.c:16:     if (nletter == length) {
	lw	a5,-32(s0)		# tmp163, nletter
	mv	a4,a5	# tmp162, tmp163
	lw	a5,-20(s0)		# tmp165, length
	sext.w	a4,a4	# tmp166, tmp162
	sext.w	a5,a5	# tmp167, tmp164
	bne	a4,a5,.L7	#, tmp166, tmp167,
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	j	.L8		#
.L9:
# eval/problem162//code.c:18:             char temp = s[i];
	lw	a5,-24(s0)		# _51, i
	ld	a4,-56(s0)		# tmp168, s
	add	a5,a4,a5	# _51, _52, tmp168
# eval/problem162//code.c:18:             char temp = s[i];
	lbu	a5,0(a5)	# tmp169, *_52
	sb	a5,-33(s0)	# tmp169, temp
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	lw	a5,-20(s0)		# tmp172, length
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-24(s0)		# tmp174, i
	subw	a5,a4,a5	# tmp170, tmp171, tmp173
	sext.w	a5,a5	# _53, tmp170
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	addi	a5,a5,-1	#, _55, _54
	ld	a4,-56(s0)		# tmp175, s
	add	a4,a4,a5	# _55, _56, tmp175
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	lw	a5,-24(s0)		# _57, i
	ld	a3,-56(s0)		# tmp176, s
	add	a5,a3,a5	# _57, _58, tmp176
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	lbu	a4,0(a4)	# _59, *_56
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	sb	a4,0(a5)	# _59, *_58
# eval/problem162//code.c:20:             s[length - i - 1] = temp;
	lw	a5,-20(s0)		# tmp179, length
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-24(s0)		# tmp181, i
	subw	a5,a4,a5	# tmp177, tmp178, tmp180
	sext.w	a5,a5	# _60, tmp177
# eval/problem162//code.c:20:             s[length - i - 1] = temp;
	addi	a5,a5,-1	#, _62, _61
	ld	a4,-56(s0)		# tmp182, s
	add	a5,a4,a5	# _62, _63, tmp182
# eval/problem162//code.c:20:             s[length - i - 1] = temp;
	lbu	a4,-33(s0)	# tmp183, temp
	sb	a4,0(a5)	# tmp183, *_63
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-24(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-24(s0)	# tmp184, i
.L8:
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-20(s0)		# tmp189, length
	srliw	a4,a5,31	#, tmp190, tmp188
	addw	a5,a4,a5	# tmp188, tmp191, tmp190
	sraiw	a5,a5,1	#, tmp192, tmp191
	sext.w	a4,a5	# _64, tmp192
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-24(s0)		# tmp194, i
	sext.w	a5,a5	# tmp195, tmp193
	blt	a5,a4,.L9	#, tmp195, tmp196,
.L7:
# eval/problem162//code.c:23:     return s;
	ld	a5,-56(s0)		# _83, s
# eval/problem162//code.c:24: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
