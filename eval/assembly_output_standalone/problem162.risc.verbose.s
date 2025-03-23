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
# eval/problem162//code.c:9:         if (isalpha((unsigned char)s[i])) {
	ld	a4,0(a5)		# _3, *_2
	lw	a5,-28(s0)		# _4, i
	ld	a3,-56(s0)		# tmp200, s
	add	a5,a3,a5	# _4, _5, tmp200
	lbu	a5,0(a5)	# _6, *_5
	slli	a5,a5,1	#, _8, _7
	add	a5,a4,a5	# _8, _9, _3
	lhu	a5,0(a5)	# _10, *_9
	sext.w	a5,a5	# _11, _10
	andi	a5,a5,1024	#, tmp201, _11
	sext.w	a5,a5	# _12, tmp201
# eval/problem162//code.c:9:         if (isalpha((unsigned char)s[i])) {
	beq	a5,zero,.L3	#, _12,,
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _13,
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	ld	a4,0(a5)		# _14, *_13
	lw	a5,-28(s0)		# _15, i
	ld	a3,-56(s0)		# tmp202, s
	add	a5,a3,a5	# _15, _16, tmp202
	lbu	a5,0(a5)	# _17, *_16
	slli	a5,a5,1	#, _19, _18
	add	a5,a4,a5	# _19, _20, _14
	lhu	a5,0(a5)	# _21, *_20
	sext.w	a5,a5	# _22, _21
	andi	a5,a5,256	#, tmp203, _22
	sext.w	a5,a5	# _23, tmp203
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	beq	a5,zero,.L4	#, _23,,
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	lw	a5,-28(s0)		# _24, i
	ld	a4,-56(s0)		# tmp204, s
	add	a5,a4,a5	# _24, _25, tmp204
	lbu	a5,0(a5)	# _26, *_25
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	sext.w	a5,a5	# _27, _26
	mv	a0,a5	#, _27
	call	tolower@plt	#
	mv	a5,a0	# tmp205,
	mv	a3,a5	# _28, tmp205
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	lw	a5,-28(s0)		# _29, i
	ld	a4,-56(s0)		# tmp206, s
	add	a5,a4,a5	# _29, _30, tmp206
# eval/problem162//code.c:10:             if (isupper((unsigned char)s[i])) s[i] = tolower((unsigned char)s[i]);
	andi	a4,a3,0xff	# _31, _28
	sb	a4,0(a5)	# _31, *_30
	j	.L5		#
.L4:
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _32,
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	ld	a4,0(a5)		# _33, *_32
	lw	a5,-28(s0)		# _34, i
	ld	a3,-56(s0)		# tmp207, s
	add	a5,a3,a5	# _34, _35, tmp207
	lbu	a5,0(a5)	# _36, *_35
	slli	a5,a5,1	#, _38, _37
	add	a5,a4,a5	# _38, _39, _33
	lhu	a5,0(a5)	# _40, *_39
	sext.w	a5,a5	# _41, _40
	andi	a5,a5,512	#, tmp208, _41
	sext.w	a5,a5	# _42, tmp208
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	beq	a5,zero,.L5	#, _42,,
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	lw	a5,-28(s0)		# _43, i
	ld	a4,-56(s0)		# tmp209, s
	add	a5,a4,a5	# _43, _44, tmp209
	lbu	a5,0(a5)	# _45, *_44
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	sext.w	a5,a5	# _46, _45
	mv	a0,a5	#, _46
	call	toupper@plt	#
	mv	a5,a0	# tmp210,
	mv	a3,a5	# _47, tmp210
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	lw	a5,-28(s0)		# _48, i
	ld	a4,-56(s0)		# tmp211, s
	add	a5,a4,a5	# _48, _49, tmp211
# eval/problem162//code.c:11:             else if (islower((unsigned char)s[i])) s[i] = toupper((unsigned char)s[i]);
	andi	a4,a3,0xff	# _50, _47
	sb	a4,0(a5)	# _50, *_49
	j	.L5		#
.L3:
# eval/problem162//code.c:13:             nletter += 1;
	lw	a5,-32(s0)		# tmp214, nletter
	addiw	a5,a5,1	#, tmp212, tmp213
	sw	a5,-32(s0)	# tmp212, nletter
.L5:
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	lw	a5,-28(s0)		# tmp217, i
	addiw	a5,a5,1	#, tmp215, tmp216
	sw	a5,-28(s0)	# tmp215, i
.L2:
# eval/problem162//code.c:8:     for (int i = 0; i < length; i++) {
	lw	a5,-28(s0)		# tmp219, i
	mv	a4,a5	# tmp218, tmp219
	lw	a5,-20(s0)		# tmp221, length
	sext.w	a4,a4	# tmp222, tmp218
	sext.w	a5,a5	# tmp223, tmp220
	blt	a4,a5,.L6	#, tmp222, tmp223,
# eval/problem162//code.c:16:     if (nletter == length) {
	lw	a5,-32(s0)		# tmp225, nletter
	mv	a4,a5	# tmp224, tmp225
	lw	a5,-20(s0)		# tmp227, length
	sext.w	a4,a4	# tmp228, tmp224
	sext.w	a5,a5	# tmp229, tmp226
	bne	a4,a5,.L7	#, tmp228, tmp229,
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	j	.L8		#
.L9:
# eval/problem162//code.c:18:             char temp = s[i];
	lw	a5,-24(s0)		# _51, i
	ld	a4,-56(s0)		# tmp230, s
	add	a5,a4,a5	# _51, _52, tmp230
# eval/problem162//code.c:18:             char temp = s[i];
	lbu	a5,0(a5)	# tmp231, *_52
	sb	a5,-33(s0)	# tmp231, temp
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	lw	a5,-20(s0)		# tmp234, length
	mv	a4,a5	# tmp233, tmp234
	lw	a5,-24(s0)		# tmp236, i
	subw	a5,a4,a5	# tmp232, tmp233, tmp235
	sext.w	a5,a5	# _53, tmp232
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	addi	a5,a5,-1	#, _55, _54
	ld	a4,-56(s0)		# tmp237, s
	add	a4,a4,a5	# _55, _56, tmp237
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	lw	a5,-24(s0)		# _57, i
	ld	a3,-56(s0)		# tmp238, s
	add	a5,a3,a5	# _57, _58, tmp238
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	lbu	a4,0(a4)	# _59, *_56
# eval/problem162//code.c:19:             s[i] = s[length - i - 1];
	sb	a4,0(a5)	# _59, *_58
# eval/problem162//code.c:20:             s[length - i - 1] = temp;
	lw	a5,-20(s0)		# tmp241, length
	mv	a4,a5	# tmp240, tmp241
	lw	a5,-24(s0)		# tmp243, i
	subw	a5,a4,a5	# tmp239, tmp240, tmp242
	sext.w	a5,a5	# _60, tmp239
# eval/problem162//code.c:20:             s[length - i - 1] = temp;
	addi	a5,a5,-1	#, _62, _61
	ld	a4,-56(s0)		# tmp244, s
	add	a5,a4,a5	# _62, _63, tmp244
# eval/problem162//code.c:20:             s[length - i - 1] = temp;
	lbu	a4,-33(s0)	# tmp245, temp
	sb	a4,0(a5)	# tmp245, *_63
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-24(s0)		# tmp248, i
	addiw	a5,a5,1	#, tmp246, tmp247
	sw	a5,-24(s0)	# tmp246, i
.L8:
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-20(s0)		# tmp251, length
	srliw	a4,a5,31	#, tmp252, tmp250
	addw	a5,a4,a5	# tmp250, tmp253, tmp252
	sraiw	a5,a5,1	#, tmp254, tmp253
	sext.w	a4,a5	# _64, tmp254
# eval/problem162//code.c:17:         for (int i = 0; i < length / 2; i++) {
	lw	a5,-24(s0)		# tmp256, i
	sext.w	a5,a5	# tmp257, tmp255
	blt	a5,a4,.L9	#, tmp257, tmp258,
.L7:
# eval/problem162//code.c:23:     return s;
	ld	a5,-56(s0)		# _83, s
# eval/problem162//code.c:24: }
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
