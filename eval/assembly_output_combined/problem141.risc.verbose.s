	.file	"problem141.c"
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
	sd	s1,40(sp)	#,
	addi	s0,sp,64	#,,
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
	ld	a4,-56(s0)		# tmp109, text
	add	a5,a4,a5	# _1, _2, tmp109
	lbu	a5,0(a5)	# _3, *_2
# problem141.c:8:         if (text[i] == ' ') {
	mv	a4,a5	# tmp110, _3
	li	a5,32		# tmp111,
	bne	a4,a5,.L3	#, tmp110, tmp111,
# problem141.c:9:             space_len++;
	lw	a5,-44(s0)		# tmp114, space_len
	addiw	a5,a5,1	#, tmp112, tmp113
	sw	a5,-44(s0)	# tmp112, space_len
	j	.L4		#
.L3:
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	lw	a5,-44(s0)		# tmp116, space_len
	sext.w	a4,a5	# tmp117, tmp115
	li	a5,1		# tmp118,
	bne	a4,a5,.L5	#, tmp117, tmp118,
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	lw	a5,-40(s0)		# j.0_4, j
	addiw	a4,a5,1	#, tmp119, j.0_4
	sw	a4,-40(s0)	# tmp119, j
	mv	a4,a5	# _5, j.0_4
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	ld	a5,-64(s0)		# tmp120, out
	add	a5,a5,a4	# _5, _6, tmp120
# problem141.c:11:             if (space_len == 1) out[j++] = '_';
	li	a4,95		# tmp121,
	sb	a4,0(a5)	# tmp121, *_6
.L5:
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-44(s0)		# tmp123, space_len
	sext.w	a4,a5	# tmp124, tmp122
	li	a5,2		# tmp125,
	bne	a4,a5,.L6	#, tmp124, tmp125,
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.1_7, j
	addiw	a4,a5,1	#, tmp126, j.1_7
	sw	a4,-40(s0)	# tmp126, j
	mv	a4,a5	# _8, j.1_7
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp127, out
	add	a5,a5,a4	# _8, _9, tmp127
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp128,
	sb	a4,0(a5)	# tmp128, *_9
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.2_10, j
	addiw	a4,a5,1	#, tmp129, j.2_10
	sw	a4,-40(s0)	# tmp129, j
	mv	a4,a5	# _11, j.2_10
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp130, out
	add	a5,a5,a4	# _11, _12, tmp130
# problem141.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp131,
	sb	a4,0(a5)	# tmp131, *_12
.L6:
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	lw	a5,-44(s0)		# tmp133, space_len
	sext.w	a4,a5	# tmp134, tmp132
	li	a5,2		# tmp135,
	ble	a4,a5,.L7	#, tmp134, tmp135,
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	lw	a5,-40(s0)		# j.3_13, j
	addiw	a4,a5,1	#, tmp136, j.3_13
	sw	a4,-40(s0)	# tmp136, j
	mv	a4,a5	# _14, j.3_13
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	ld	a5,-64(s0)		# tmp137, out
	add	a5,a5,a4	# _14, _15, tmp137
# problem141.c:13:             if (space_len > 2) out[j++] = '-';
	li	a4,45		# tmp138,
	sb	a4,0(a5)	# tmp138, *_15
.L7:
# problem141.c:14:             space_len = 0;
	sw	zero,-44(s0)	#, space_len
# problem141.c:15:             out[j++] = text[i];
	lw	a5,-36(s0)		# _16, i
	ld	a4,-56(s0)		# tmp139, text
	add	a4,a4,a5	# _16, _17, tmp139
# problem141.c:15:             out[j++] = text[i];
	lw	a5,-40(s0)		# j.4_18, j
	addiw	a3,a5,1	#, tmp140, j.4_18
	sw	a3,-40(s0)	# tmp140, j
	mv	a3,a5	# _19, j.4_18
# problem141.c:15:             out[j++] = text[i];
	ld	a5,-64(s0)		# tmp141, out
	add	a5,a5,a3	# _19, _20, tmp141
# problem141.c:15:             out[j++] = text[i];
	lbu	a4,0(a4)	# _21, *_17
# problem141.c:15:             out[j++] = text[i];
	sb	a4,0(a5)	# _21, *_20
.L4:
# problem141.c:7:     for (int i = 0; i < strlen(text); i++) {
	lw	a5,-36(s0)		# tmp144, i
	addiw	a5,a5,1	#, tmp142, tmp143
	sw	a5,-36(s0)	# tmp142, i
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
	lw	a5,-44(s0)		# tmp146, space_len
	sext.w	a4,a5	# tmp147, tmp145
	li	a5,1		# tmp148,
	bne	a4,a5,.L9	#, tmp147, tmp148,
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	lw	a5,-40(s0)		# j.5_24, j
	addiw	a4,a5,1	#, tmp149, j.5_24
	sw	a4,-40(s0)	# tmp149, j
	mv	a4,a5	# _25, j.5_24
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	ld	a5,-64(s0)		# tmp150, out
	add	a5,a5,a4	# _25, _26, tmp150
# problem141.c:18:     if (space_len == 1) out[j++] = '_';
	li	a4,95		# tmp151,
	sb	a4,0(a5)	# tmp151, *_26
.L9:
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-44(s0)		# tmp153, space_len
	sext.w	a4,a5	# tmp154, tmp152
	li	a5,2		# tmp155,
	bne	a4,a5,.L10	#, tmp154, tmp155,
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.6_27, j
	addiw	a4,a5,1	#, tmp156, j.6_27
	sw	a4,-40(s0)	# tmp156, j
	mv	a4,a5	# _28, j.6_27
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp157, out
	add	a5,a5,a4	# _28, _29, tmp157
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp158,
	sb	a4,0(a5)	# tmp158, *_29
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.7_30, j
	addiw	a4,a5,1	#, tmp159, j.7_30
	sw	a4,-40(s0)	# tmp159, j
	mv	a4,a5	# _31, j.7_30
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp160, out
	add	a5,a5,a4	# _31, _32, tmp160
# problem141.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp161,
	sb	a4,0(a5)	# tmp161, *_32
.L10:
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	lw	a5,-44(s0)		# tmp163, space_len
	sext.w	a4,a5	# tmp164, tmp162
	li	a5,2		# tmp165,
	ble	a4,a5,.L11	#, tmp164, tmp165,
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	lw	a5,-40(s0)		# j.8_33, j
	addiw	a4,a5,1	#, tmp166, j.8_33
	sw	a4,-40(s0)	# tmp166, j
	mv	a4,a5	# _34, j.8_33
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	ld	a5,-64(s0)		# tmp167, out
	add	a5,a5,a4	# _34, _35, tmp167
# problem141.c:20:     if (space_len > 2) out[j++] = '-';
	li	a4,45		# tmp168,
	sb	a4,0(a5)	# tmp168, *_35
.L11:
# problem141.c:21:     out[j] = '\0';
	lw	a5,-40(s0)		# _36, j
	ld	a4,-64(s0)		# tmp169, out
	add	a5,a4,a5	# _36, _37, tmp169
# problem141.c:21:     out[j] = '\0';
	sb	zero,0(a5)	#, *_37
# problem141.c:22: }
	nop	
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem141.c:29: int main() {
	la	a5,__stack_chk_guard		# tmp79,
	ld	a4, 0(a5)	# tmp98, __stack_chk_guard
	sd	a4, -24(s0)	# tmp98, D.2141
	li	a4, 0	# tmp98
# problem141.c:32:     func0("Example", output);
	addi	a5,s0,-128	#, tmp80,
	mv	a1,a5	#, tmp80
	lla	a0,.LC0	#,
	call	func0		#
# problem141.c:33:     assert(strcmp(output, "Example") == 0);
	addi	a5,s0,-128	#, tmp81,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp81
	call	strcmp@plt	#
	mv	a5,a0	# tmp82,
	beq	a5,zero,.L13	#, _1,,
# problem141.c:33:     assert(strcmp(output, "Example") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L13:
# problem141.c:35:     func0("Mudasir Hanif ", output);
	addi	a5,s0,-128	#, tmp83,
	mv	a1,a5	#, tmp83
	lla	a0,.LC3	#,
	call	func0		#
# problem141.c:36:     assert(strcmp(output, "Mudasir_Hanif_") == 0);
	addi	a5,s0,-128	#, tmp84,
	lla	a1,.LC4	#,
	mv	a0,a5	#, tmp84
	call	strcmp@plt	#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L14	#, _2,,
# problem141.c:36:     assert(strcmp(output, "Mudasir_Hanif_") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L14:
# problem141.c:38:     func0("Yellow Yellow  Dirty  Fellow", output);
	addi	a5,s0,-128	#, tmp86,
	mv	a1,a5	#, tmp86
	lla	a0,.LC6	#,
	call	func0		#
# problem141.c:39:     assert(strcmp(output, "Yellow_Yellow__Dirty__Fellow") == 0);
	addi	a5,s0,-128	#, tmp87,
	lla	a1,.LC7	#,
	mv	a0,a5	#, tmp87
	call	strcmp@plt	#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L15	#, _3,,
# problem141.c:39:     assert(strcmp(output, "Yellow_Yellow__Dirty__Fellow") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L15:
# problem141.c:41:     func0("Exa   mple", output);
	addi	a5,s0,-128	#, tmp89,
	mv	a1,a5	#, tmp89
	lla	a0,.LC9	#,
	call	func0		#
# problem141.c:42:     assert(strcmp(output, "Exa-mple") == 0);
	addi	a5,s0,-128	#, tmp90,
	lla	a1,.LC10	#,
	mv	a0,a5	#, tmp90
	call	strcmp@plt	#
	mv	a5,a0	# tmp91,
	beq	a5,zero,.L16	#, _4,,
# problem141.c:42:     assert(strcmp(output, "Exa-mple") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC1	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L16:
# problem141.c:44:     func0("   Exa 1 2 2 mple", output);
	addi	a5,s0,-128	#, tmp92,
	mv	a1,a5	#, tmp92
	lla	a0,.LC12	#,
	call	func0		#
# problem141.c:45:     assert(strcmp(output, "-Exa_1_2_2_mple") == 0);
	addi	a5,s0,-128	#, tmp93,
	lla	a1,.LC13	#,
	mv	a0,a5	#, tmp93
	call	strcmp@plt	#
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L17	#, _5,,
# problem141.c:45:     assert(strcmp(output, "-Exa_1_2_2_mple") == 0);
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
	la	a5,__stack_chk_guard		# tmp96,
	ld	a3, -24(s0)	# tmp99, D.2141
	ld	a5, 0(a5)	# tmp97, __stack_chk_guard
	xor	a5, a3, a5	# tmp97, tmp99
	li	a3, 0	# tmp99
	beq	a5,zero,.L19	#, tmp97,,
	call	__stack_chk_fail@plt	#
.L19:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
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
