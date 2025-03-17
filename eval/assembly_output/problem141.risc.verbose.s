	.file	"problem141.c"
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
	sd	s1,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# text, text
	sd	a1,-64(s0)	# out, out
# problem141.c:5:     int space_len = 0;
	sw	zero,-44(s0)	#, space_len
# problem141.c:6:     int j = 0;
	sw	zero,-40(s0)	#, j
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	sw	zero,-36(s0)	#, i
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	j	.L2		#
.L8:
# problem141.c:8:         if (text[i] == ' ') {
	lw	a5,-36(s0)		# _1, i
	ld	a4,-56(s0)		# tmp171, text
	add	a5,a4,a5	# _1, _2, tmp171
	lbu	a5,0(a5)	# _3, *_2
# problem141.c:8:         if (text[i] == ' ') {
	mv	a4,a5	# tmp172, _3
	li	a5,32		# tmp173,
	bne	a4,a5,.L3	#, tmp172, tmp173,
# problem141.c:9:             space_len++;
	lw	a5,-44(s0)		# tmp176, space_len
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-44(s0)	# tmp174, space_len
	j	.L4		#
.L3:
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	lw	a5,-44(s0)		# tmp178, space_len
	sext.w	a4,a5	# tmp179, tmp177
	li	a5,1		# tmp180,
	bne	a4,a5,.L5	#, tmp179, tmp180,
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	lw	a5,-40(s0)		# j.0_4, j
	addiw	a4,a5,1	#, tmp181, j.0_4
	sw	a4,-40(s0)	# tmp181, j
	mv	a4,a5	# _5, j.0_4
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	ld	a5,-64(s0)		# tmp182, out
	add	a5,a5,a4	# _5, _6, tmp182
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	li	a4,95		# tmp183,
	sb	a4,0(a5)	# tmp183, *_6
.L5:
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-44(s0)		# tmp185, space_len
	sext.w	a4,a5	# tmp186, tmp184
	li	a5,2		# tmp187,
	bne	a4,a5,.L6	#, tmp186, tmp187,
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.1_7, j
	addiw	a4,a5,1	#, tmp188, j.1_7
	sw	a4,-40(s0)	# tmp188, j
	mv	a4,a5	# _8, j.1_7
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp189, out
	add	a5,a5,a4	# _8, _9, tmp189
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp190,
	sb	a4,0(a5)	# tmp190, *_9
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.2_10, j
	addiw	a4,a5,1	#, tmp191, j.2_10
	sw	a4,-40(s0)	# tmp191, j
	mv	a4,a5	# _11, j.2_10
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp192, out
	add	a5,a5,a4	# _11, _12, tmp192
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp193,
	sb	a4,0(a5)	# tmp193, *_12
.L6:
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	lw	a5,-44(s0)		# tmp195, space_len
	sext.w	a4,a5	# tmp196, tmp194
	li	a5,2		# tmp197,
	ble	a4,a5,.L7	#, tmp196, tmp197,
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	lw	a5,-40(s0)		# j.3_13, j
	addiw	a4,a5,1	#, tmp198, j.3_13
	sw	a4,-40(s0)	# tmp198, j
	mv	a4,a5	# _14, j.3_13
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	ld	a5,-64(s0)		# tmp199, out
	add	a5,a5,a4	# _14, _15, tmp199
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	li	a4,45		# tmp200,
	sb	a4,0(a5)	# tmp200, *_15
.L7:
# problem141.c:14:             space_len = 0;
	sw	zero,-44(s0)	#, space_len
# problem141.c:15:             out[j++] = text[i];
	lw	a5,-36(s0)		# _16, i
	ld	a4,-56(s0)		# tmp201, text
	add	a4,a4,a5	# _16, _17, tmp201
# problem141.c:15:             out[j++] = text[i];
	lw	a5,-40(s0)		# j.4_18, j
	addiw	a3,a5,1	#, tmp202, j.4_18
	sw	a3,-40(s0)	# tmp202, j
	mv	a3,a5	# _19, j.4_18
# problem141.c:15:             out[j++] = text[i];
	ld	a5,-64(s0)		# tmp203, out
	add	a5,a5,a3	# _19, _20, tmp203
# problem141.c:15:             out[j++] = text[i];
	lbu	a4,0(a4)	# _21, *_17
# problem141.c:15:             out[j++] = text[i];
	sb	a4,0(a5)	# _21, *_20
.L4:
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	lw	a5,-36(s0)		# tmp206, i
	addiw	a5,a5,1	#, tmp204, tmp205
	sw	a5,-36(s0)	# tmp204, i
.L2:
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	lw	s1,-36(s0)		# _22, i
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	ld	a0,-56(s0)		#, text
	call	strlen@plt	#
	mv	a5,a0	# _23,
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	bltu	s1,a5,.L8	#, _22, _23,
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	lw	a5,-44(s0)		# tmp208, space_len
	sext.w	a4,a5	# tmp209, tmp207
	li	a5,1		# tmp210,
	bne	a4,a5,.L9	#, tmp209, tmp210,
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	lw	a5,-40(s0)		# j.5_24, j
	addiw	a4,a5,1	#, tmp211, j.5_24
	sw	a4,-40(s0)	# tmp211, j
	mv	a4,a5	# _25, j.5_24
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	ld	a5,-64(s0)		# tmp212, out
	add	a5,a5,a4	# _25, _26, tmp212
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	li	a4,95		# tmp213,
	sb	a4,0(a5)	# tmp213, *_26
.L9:
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-44(s0)		# tmp215, space_len
	sext.w	a4,a5	# tmp216, tmp214
	li	a5,2		# tmp217,
	bne	a4,a5,.L10	#, tmp216, tmp217,
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.6_27, j
	addiw	a4,a5,1	#, tmp218, j.6_27
	sw	a4,-40(s0)	# tmp218, j
	mv	a4,a5	# _28, j.6_27
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp219, out
	add	a5,a5,a4	# _28, _29, tmp219
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp220,
	sb	a4,0(a5)	# tmp220, *_29
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.7_30, j
	addiw	a4,a5,1	#, tmp221, j.7_30
	sw	a4,-40(s0)	# tmp221, j
	mv	a4,a5	# _31, j.7_30
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp222, out
	add	a5,a5,a4	# _31, _32, tmp222
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp223,
	sb	a4,0(a5)	# tmp223, *_32
.L10:
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	lw	a5,-44(s0)		# tmp225, space_len
	sext.w	a4,a5	# tmp226, tmp224
	li	a5,2		# tmp227,
	ble	a4,a5,.L11	#, tmp226, tmp227,
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	lw	a5,-40(s0)		# j.8_33, j
	addiw	a4,a5,1	#, tmp228, j.8_33
	sw	a4,-40(s0)	# tmp228, j
	mv	a4,a5	# _34, j.8_33
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	ld	a5,-64(s0)		# tmp229, out
	add	a5,a5,a4	# _34, _35, tmp229
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	li	a4,45		# tmp230,
	sb	a4,0(a5)	# tmp230, *_35
.L11:
# problem141.c:21:     out[j] = '\0';
	lw	a5,-40(s0)		# _36, j
	ld	a4,-64(s0)		# tmp231, out
	add	a5,a4,a5	# _36, _37, tmp231
# problem141.c:21:     out[j] = '\0';
	sb	zero,0(a5)	#, *_37
# problem141.c:22: }
	nop	
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Example"
	.align	3
.LC1:
	.string	"problem141.c"
	.align	3
.LC2:
	.string	"strcmp(output, \"Example\") == 0"
	.align	3
.LC3:
	.string	"Mudasir Hanif "
	.align	3
.LC4:
	.string	"Mudasir_Hanif_"
	.align	3
.LC5:
	.string	"strcmp(output, \"Mudasir_Hanif_\") == 0"
	.align	3
.LC6:
	.string	"Yellow Yellow  Dirty  Fellow"
	.align	3
.LC7:
	.string	"Yellow_Yellow__Dirty__Fellow"
	.align	3
.LC8:
	.string	"strcmp(output, \"Yellow_Yellow__Dirty__Fellow\") == 0"
	.align	3
.LC9:
	.string	"Exa   mple"
	.align	3
.LC10:
	.string	"Exa-mple"
	.align	3
.LC11:
	.string	"strcmp(output, \"Exa-mple\") == 0"
	.align	3
.LC12:
	.string	"   Exa 1 2 2 mple"
	.align	3
.LC13:
	.string	"-Exa_1_2_2_mple"
	.align	3
.LC14:
	.string	"strcmp(output, \"-Exa_1_2_2_mple\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem141.c:29: int main() {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp160, __stack_chk_guard
	sd	a4, -24(s0)	# tmp160, D.2986
	li	a4, 0	# tmp160
# problem141.c:32:     func0("Example", output);
	addi	a5,s0,-128	#, tmp142,
	mv	a1,a5	#, tmp142
	lla	a0,.LC0	#,
	call	func0		#
# problem141.c:33:     assert(strcmp(output, "Example") == 0);
	addi	a5,s0,-128	#, tmp143,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp143
	call	strcmp@plt	#
	mv	a5,a0	# tmp144,
# problem141.c:33:     assert(strcmp(output, "Example") == 0);
	beq	a5,zero,.L13	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L13:
# problem141.c:35:     func0("Mudasir Hanif ", output);
	addi	a5,s0,-128	#, tmp145,
	mv	a1,a5	#, tmp145
	lla	a0,.LC3	#,
	call	func0		#
# problem141.c:36:     assert(strcmp(output, "Mudasir_Hanif_") == 0);
	addi	a5,s0,-128	#, tmp146,
	lla	a1,.LC4	#,
	mv	a0,a5	#, tmp146
	call	strcmp@plt	#
	mv	a5,a0	# tmp147,
# problem141.c:36:     assert(strcmp(output, "Mudasir_Hanif_") == 0);
	beq	a5,zero,.L14	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L14:
# problem141.c:38:     func0("Yellow Yellow  Dirty  Fellow", output);
	addi	a5,s0,-128	#, tmp148,
	mv	a1,a5	#, tmp148
	lla	a0,.LC6	#,
	call	func0		#
# problem141.c:39:     assert(strcmp(output, "Yellow_Yellow__Dirty__Fellow") == 0);
	addi	a5,s0,-128	#, tmp149,
	lla	a1,.LC7	#,
	mv	a0,a5	#, tmp149
	call	strcmp@plt	#
	mv	a5,a0	# tmp150,
# problem141.c:39:     assert(strcmp(output, "Yellow_Yellow__Dirty__Fellow") == 0);
	beq	a5,zero,.L15	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L15:
# problem141.c:41:     func0("Exa   mple", output);
	addi	a5,s0,-128	#, tmp151,
	mv	a1,a5	#, tmp151
	lla	a0,.LC9	#,
	call	func0		#
# problem141.c:42:     assert(strcmp(output, "Exa-mple") == 0);
	addi	a5,s0,-128	#, tmp152,
	lla	a1,.LC10	#,
	mv	a0,a5	#, tmp152
	call	strcmp@plt	#
	mv	a5,a0	# tmp153,
# problem141.c:42:     assert(strcmp(output, "Exa-mple") == 0);
	beq	a5,zero,.L16	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC1	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem141.c:44:     func0("   Exa 1 2 2 mple", output);
	addi	a5,s0,-128	#, tmp154,
	mv	a1,a5	#, tmp154
	lla	a0,.LC12	#,
	call	func0		#
# problem141.c:45:     assert(strcmp(output, "-Exa_1_2_2_mple") == 0);
	addi	a5,s0,-128	#, tmp155,
	lla	a1,.LC13	#,
	mv	a0,a5	#, tmp155
	call	strcmp@plt	#
	mv	a5,a0	# tmp156,
# problem141.c:45:     assert(strcmp(output, "-Exa_1_2_2_mple") == 0);
	beq	a5,zero,.L17	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L17:
# problem141.c:47:     return 0;
	li	a5,0		# _17,
# problem141.c:48: }
	mv	a4,a5	# <retval>, _17
	la	a5,__stack_chk_guard		# tmp158,
	ld	a3, -24(s0)	# tmp161, D.2986
	ld	a5, 0(a5)	# tmp159, __stack_chk_guard
	xor	a5, a3, a5	# tmp159, tmp161
	li	a3, 0	# tmp161
	beq	a5,zero,.L19	#, tmp159,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
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
