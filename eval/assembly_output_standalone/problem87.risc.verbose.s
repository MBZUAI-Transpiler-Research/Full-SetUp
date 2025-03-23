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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-144	#,,
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)	# s, s
# eval/problem87//code.c:5: char* func0(const char* s) {
	la	a5,__stack_chk_guard		# tmp162,
	ld	a4, 0(a5)	# tmp244, __stack_chk_guard
	sd	a4, -24(s0)	# tmp244, D.3482
	li	a4, 0	# tmp244
# eval/problem87//code.c:6:     int len = strlen(s);
	ld	a0,-136(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem87//code.c:6:     int len = strlen(s);
	sw	a5,-92(s0)	# _1, len
# eval/problem87//code.c:7:     char* out = malloc(len + 2); 
	lw	a5,-92(s0)		# tmp165, len
	addiw	a5,a5,2	#, tmp163, tmp164
	sext.w	a5,a5	# _2, tmp163
# eval/problem87//code.c:7:     char* out = malloc(len + 2); 
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp166,
	sd	a5,-88(s0)	# tmp166, out
# eval/problem87//code.c:9:     int out_index = 0, current_index = 0;
	sw	zero,-116(s0)	#, out_index
# eval/problem87//code.c:9:     int out_index = 0, current_index = 0;
	sw	zero,-112(s0)	#, current_index
# eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	sw	zero,-108(s0)	#, i
# eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	j	.L2		#
.L14:
# eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	lw	a5,-108(s0)		# _4, i
	ld	a4,-136(s0)		# tmp167, s
	add	a5,a4,a5	# _4, _5, tmp167
	lbu	a5,0(a5)	# _6, *_5
# eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	mv	a4,a5	# tmp168, _6
	li	a5,32		# tmp169,
	beq	a4,a5,.L3	#, tmp168, tmp169,
# eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	lw	a5,-108(s0)		# _7, i
	ld	a4,-136(s0)		# tmp170, s
	add	a5,a4,a5	# _7, _8, tmp170
	lbu	a5,0(a5)	# _9, *_8
# eval/problem87//code.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	bne	a5,zero,.L4	#, _9,,
.L3:
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	sw	zero,-104(s0)	#, j
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	j	.L5		#
.L9:
# eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	lw	a5,-104(s0)		# tmp173, j
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-100(s0)	# tmp171, k
# eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	j	.L6		#
.L8:
# eval/problem87//code.c:15:                     if (current[j] > current[k]) {
	lw	a5,-104(s0)		# tmp174, j
	addi	a5,a5,-16	#, tmp248, tmp174
	add	a5,a5,s0	#, tmp175, tmp248
	lbu	a4,-64(a5)	# _10, current[j_34]
# eval/problem87//code.c:15:                     if (current[j] > current[k]) {
	lw	a5,-100(s0)		# tmp176, k
	addi	a5,a5,-16	#, tmp249, tmp176
	add	a5,a5,s0	#, tmp177, tmp249
	lbu	a5,-64(a5)	# _11, current[k_35]
# eval/problem87//code.c:15:                     if (current[j] > current[k]) {
	bleu	a4,a5,.L7	#, tmp178, tmp179,
# eval/problem87//code.c:16:                         char temp = current[j];
	lw	a5,-104(s0)		# tmp180, j
	addi	a5,a5,-16	#, tmp250, tmp180
	add	a5,a5,s0	#, tmp181, tmp250
	lbu	a5,-64(a5)	# tmp182, current[j_34]
	sb	a5,-117(s0)	# tmp182, temp
# eval/problem87//code.c:17:                         current[j] = current[k];
	lw	a5,-100(s0)		# tmp183, k
	addi	a5,a5,-16	#, tmp251, tmp183
	add	a5,a5,s0	#, tmp184, tmp251
	lbu	a4,-64(a5)	# _12, current[k_35]
# eval/problem87//code.c:17:                         current[j] = current[k];
	lw	a5,-104(s0)		# tmp185, j
	addi	a5,a5,-16	#, tmp252, tmp185
	add	a5,a5,s0	#, tmp186, tmp252
	sb	a4,-64(a5)	# _12, current[j_34]
# eval/problem87//code.c:18:                         current[k] = temp;
	lw	a5,-100(s0)		# tmp187, k
	addi	a5,a5,-16	#, tmp253, tmp187
	add	a5,a5,s0	#, tmp188, tmp253
	lbu	a4,-117(s0)	# tmp189, temp
	sb	a4,-64(a5)	# tmp189, current[k_35]
.L7:
# eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	lw	a5,-100(s0)		# tmp192, k
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-100(s0)	# tmp190, k
.L6:
# eval/problem87//code.c:14:                 for (int k = j + 1; k < current_index; k++) {
	lw	a5,-100(s0)		# tmp194, k
	mv	a4,a5	# tmp193, tmp194
	lw	a5,-112(s0)		# tmp196, current_index
	sext.w	a4,a4	# tmp197, tmp193
	sext.w	a5,a5	# tmp198, tmp195
	blt	a4,a5,.L8	#, tmp197, tmp198,
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	lw	a5,-104(s0)		# tmp201, j
	addiw	a5,a5,1	#, tmp199, tmp200
	sw	a5,-104(s0)	# tmp199, j
.L5:
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	lw	a5,-112(s0)		# tmp204, current_index
	addiw	a5,a5,-1	#, tmp202, tmp203
	sext.w	a4,a5	# _13, tmp202
# eval/problem87//code.c:13:             for (int j = 0; j < current_index - 1; j++) {
	lw	a5,-104(s0)		# tmp206, j
	sext.w	a5,a5	# tmp207, tmp205
	blt	a5,a4,.L9	#, tmp207, tmp208,
# eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	lw	a5,-116(s0)		# tmp210, out_index
	sext.w	a5,a5	# tmp211, tmp209
	ble	a5,zero,.L10	#, tmp211,,
# eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	lw	a5,-116(s0)		# out_index.0_14, out_index
	addiw	a4,a5,1	#, tmp212, out_index.0_14
	sw	a4,-116(s0)	# tmp212, out_index
	mv	a4,a5	# _15, out_index.0_14
# eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ld	a5,-88(s0)		# tmp213, out
	add	a5,a5,a4	# _15, _16, tmp213
# eval/problem87//code.c:22:             if (out_index > 0) out[out_index++] = ' ';
	li	a4,32		# tmp214,
	sb	a4,0(a5)	# tmp214, *_16
.L10:
# eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	sw	zero,-96(s0)	#, j
# eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	j	.L11		#
.L12:
# eval/problem87//code.c:24:                 out[out_index++] = current[j];
	lw	a5,-116(s0)		# out_index.1_17, out_index
	addiw	a4,a5,1	#, tmp215, out_index.1_17
	sw	a4,-116(s0)	# tmp215, out_index
	mv	a4,a5	# _18, out_index.1_17
# eval/problem87//code.c:24:                 out[out_index++] = current[j];
	ld	a5,-88(s0)		# tmp216, out
	add	a5,a5,a4	# _18, _19, tmp216
# eval/problem87//code.c:24:                 out[out_index++] = current[j];
	lw	a4,-96(s0)		# tmp217, j
	addi	a4,a4,-16	#, tmp254, tmp217
	add	a4,a4,s0	#, tmp218, tmp254
	lbu	a4,-64(a4)	# _20, current[j_36]
# eval/problem87//code.c:24:                 out[out_index++] = current[j];
	sb	a4,0(a5)	# _20, *_19
# eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	lw	a5,-96(s0)		# tmp221, j
	addiw	a5,a5,1	#, tmp219, tmp220
	sw	a5,-96(s0)	# tmp219, j
.L11:
# eval/problem87//code.c:23:             for (int j = 0; j < current_index; j++) {
	lw	a5,-96(s0)		# tmp223, j
	mv	a4,a5	# tmp222, tmp223
	lw	a5,-112(s0)		# tmp225, current_index
	sext.w	a4,a4	# tmp226, tmp222
	sext.w	a5,a5	# tmp227, tmp224
	blt	a4,a5,.L12	#, tmp226, tmp227,
# eval/problem87//code.c:26:             current_index = 0;
	sw	zero,-112(s0)	#, current_index
	j	.L13		#
.L4:
# eval/problem87//code.c:28:             current[current_index++] = s[i];
	lw	a5,-108(s0)		# _21, i
	ld	a4,-136(s0)		# tmp228, s
	add	a4,a4,a5	# _21, _22, tmp228
# eval/problem87//code.c:28:             current[current_index++] = s[i];
	lw	a5,-112(s0)		# current_index.2_23, current_index
	addiw	a3,a5,1	#, tmp229, current_index.2_23
	sw	a3,-112(s0)	# tmp229, current_index
# eval/problem87//code.c:28:             current[current_index++] = s[i];
	lbu	a4,0(a4)	# _24, *_22
# eval/problem87//code.c:28:             current[current_index++] = s[i];
	addi	a5,a5,-16	#, tmp255, current_index.2_23
	add	a5,a5,s0	#, tmp230, tmp255
	sb	a4,-64(a5)	# _24, current[current_index.2_23]
.L13:
# eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	lw	a5,-108(s0)		# tmp233, i
	addiw	a5,a5,1	#, tmp231, tmp232
	sw	a5,-108(s0)	# tmp231, i
.L2:
# eval/problem87//code.c:11:     for (int i = 0; i <= len; i++) {
	lw	a5,-108(s0)		# tmp235, i
	mv	a4,a5	# tmp234, tmp235
	lw	a5,-92(s0)		# tmp237, len
	sext.w	a4,a4	# tmp238, tmp234
	sext.w	a5,a5	# tmp239, tmp236
	ble	a4,a5,.L14	#, tmp238, tmp239,
# eval/problem87//code.c:32:     out[out_index] = '\0';
	lw	a5,-116(s0)		# _25, out_index
	ld	a4,-88(s0)		# tmp240, out
	add	a5,a4,a5	# _25, _26, tmp240
# eval/problem87//code.c:32:     out[out_index] = '\0';
	sb	zero,0(a5)	#, *_26
# eval/problem87//code.c:33:     return out;
	ld	a5,-88(s0)		# _53, out
	mv	a4,a5	# <retval>, _53
# eval/problem87//code.c:34: }
	la	a5,__stack_chk_guard		# tmp242,
	ld	a3, -24(s0)	# tmp245, D.3482
	ld	a5, 0(a5)	# tmp243, __stack_chk_guard
	xor	a5, a3, a5	# tmp243, tmp245
	li	a3, 0	# tmp245
	beq	a5,zero,.L16	#, tmp243,,
	call	__stack_chk_fail@plt	#
.L16:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	.cfi_restore 1
	ld	s0,128(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
