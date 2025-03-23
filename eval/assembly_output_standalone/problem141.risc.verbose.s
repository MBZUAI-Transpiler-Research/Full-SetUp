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
	sd	s1,40(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# text, text
	sd	a1,-64(s0)	# out, out
# eval/problem141//code.c:5:     int space_len = 0;
	sw	zero,-44(s0)	#, space_len
# eval/problem141//code.c:6:     int j = 0;
	sw	zero,-40(s0)	#, j
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	sw	zero,-36(s0)	#, i
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	j	.L2		#
.L8:
# eval/problem141//code.c:8:         if (text[i] == ' ') {
	lw	a5,-36(s0)		# _1, i
	ld	a4,-56(s0)		# tmp109, text
	add	a5,a4,a5	# _1, _2, tmp109
	lbu	a5,0(a5)	# _3, *_2
# eval/problem141//code.c:8:         if (text[i] == ' ') {
	mv	a4,a5	# tmp110, _3
	li	a5,32		# tmp111,
	bne	a4,a5,.L3	#, tmp110, tmp111,
# eval/problem141//code.c:9:             space_len++;
	lw	a5,-44(s0)		# tmp114, space_len
	addiw	a5,a5,1	#, tmp112, tmp113
	sw	a5,-44(s0)	# tmp112, space_len
	j	.L4		#
.L3:
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	lw	a5,-44(s0)		# tmp116, space_len
	sext.w	a4,a5	# tmp117, tmp115
	li	a5,1		# tmp118,
	bne	a4,a5,.L5	#, tmp117, tmp118,
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	lw	a5,-40(s0)		# j.0_4, j
	addiw	a4,a5,1	#, tmp119, j.0_4
	sw	a4,-40(s0)	# tmp119, j
	mv	a4,a5	# _5, j.0_4
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	ld	a5,-64(s0)		# tmp120, out
	add	a5,a5,a4	# _5, _6, tmp120
# eval/problem141//code.c:11:             if (space_len == 1) out[j++] = '_';
	li	a4,95		# tmp121,
	sb	a4,0(a5)	# tmp121, *_6
.L5:
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-44(s0)		# tmp123, space_len
	sext.w	a4,a5	# tmp124, tmp122
	li	a5,2		# tmp125,
	bne	a4,a5,.L6	#, tmp124, tmp125,
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.1_7, j
	addiw	a4,a5,1	#, tmp126, j.1_7
	sw	a4,-40(s0)	# tmp126, j
	mv	a4,a5	# _8, j.1_7
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp127, out
	add	a5,a5,a4	# _8, _9, tmp127
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp128,
	sb	a4,0(a5)	# tmp128, *_9
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.2_10, j
	addiw	a4,a5,1	#, tmp129, j.2_10
	sw	a4,-40(s0)	# tmp129, j
	mv	a4,a5	# _11, j.2_10
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp130, out
	add	a5,a5,a4	# _11, _12, tmp130
# eval/problem141//code.c:12:             if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp131,
	sb	a4,0(a5)	# tmp131, *_12
.L6:
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	lw	a5,-44(s0)		# tmp133, space_len
	sext.w	a4,a5	# tmp134, tmp132
	li	a5,2		# tmp135,
	ble	a4,a5,.L7	#, tmp134, tmp135,
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	lw	a5,-40(s0)		# j.3_13, j
	addiw	a4,a5,1	#, tmp136, j.3_13
	sw	a4,-40(s0)	# tmp136, j
	mv	a4,a5	# _14, j.3_13
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	ld	a5,-64(s0)		# tmp137, out
	add	a5,a5,a4	# _14, _15, tmp137
# eval/problem141//code.c:13:             if (space_len > 2) out[j++] = '-';
	li	a4,45		# tmp138,
	sb	a4,0(a5)	# tmp138, *_15
.L7:
# eval/problem141//code.c:14:             space_len = 0;
	sw	zero,-44(s0)	#, space_len
# eval/problem141//code.c:15:             out[j++] = text[i];
	lw	a5,-36(s0)		# _16, i
	ld	a4,-56(s0)		# tmp139, text
	add	a4,a4,a5	# _16, _17, tmp139
# eval/problem141//code.c:15:             out[j++] = text[i];
	lw	a5,-40(s0)		# j.4_18, j
	addiw	a3,a5,1	#, tmp140, j.4_18
	sw	a3,-40(s0)	# tmp140, j
	mv	a3,a5	# _19, j.4_18
# eval/problem141//code.c:15:             out[j++] = text[i];
	ld	a5,-64(s0)		# tmp141, out
	add	a5,a5,a3	# _19, _20, tmp141
# eval/problem141//code.c:15:             out[j++] = text[i];
	lbu	a4,0(a4)	# _21, *_17
# eval/problem141//code.c:15:             out[j++] = text[i];
	sb	a4,0(a5)	# _21, *_20
.L4:
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	lw	a5,-36(s0)		# tmp144, i
	addiw	a5,a5,1	#, tmp142, tmp143
	sw	a5,-36(s0)	# tmp142, i
.L2:
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	lw	s1,-36(s0)		# _22, i
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	ld	a0,-56(s0)		#, text
	call	strlen@plt	#
	mv	a5,a0	# _23,
# eval/problem141//code.c:7:     for (int i = 0; i < strlen(text); i++) {
	bltu	s1,a5,.L8	#, _22, _23,
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	lw	a5,-44(s0)		# tmp146, space_len
	sext.w	a4,a5	# tmp147, tmp145
	li	a5,1		# tmp148,
	bne	a4,a5,.L9	#, tmp147, tmp148,
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	lw	a5,-40(s0)		# j.5_24, j
	addiw	a4,a5,1	#, tmp149, j.5_24
	sw	a4,-40(s0)	# tmp149, j
	mv	a4,a5	# _25, j.5_24
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	ld	a5,-64(s0)		# tmp150, out
	add	a5,a5,a4	# _25, _26, tmp150
# eval/problem141//code.c:18:     if (space_len == 1) out[j++] = '_';
	li	a4,95		# tmp151,
	sb	a4,0(a5)	# tmp151, *_26
.L9:
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-44(s0)		# tmp153, space_len
	sext.w	a4,a5	# tmp154, tmp152
	li	a5,2		# tmp155,
	bne	a4,a5,.L10	#, tmp154, tmp155,
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.6_27, j
	addiw	a4,a5,1	#, tmp156, j.6_27
	sw	a4,-40(s0)	# tmp156, j
	mv	a4,a5	# _28, j.6_27
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp157, out
	add	a5,a5,a4	# _28, _29, tmp157
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp158,
	sb	a4,0(a5)	# tmp158, *_29
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	lw	a5,-40(s0)		# j.7_30, j
	addiw	a4,a5,1	#, tmp159, j.7_30
	sw	a4,-40(s0)	# tmp159, j
	mv	a4,a5	# _31, j.7_30
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	ld	a5,-64(s0)		# tmp160, out
	add	a5,a5,a4	# _31, _32, tmp160
# eval/problem141//code.c:19:     if (space_len == 2) out[j++] = '_', out[j++] = '_';
	li	a4,95		# tmp161,
	sb	a4,0(a5)	# tmp161, *_32
.L10:
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	lw	a5,-44(s0)		# tmp163, space_len
	sext.w	a4,a5	# tmp164, tmp162
	li	a5,2		# tmp165,
	ble	a4,a5,.L11	#, tmp164, tmp165,
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	lw	a5,-40(s0)		# j.8_33, j
	addiw	a4,a5,1	#, tmp166, j.8_33
	sw	a4,-40(s0)	# tmp166, j
	mv	a4,a5	# _34, j.8_33
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	ld	a5,-64(s0)		# tmp167, out
	add	a5,a5,a4	# _34, _35, tmp167
# eval/problem141//code.c:20:     if (space_len > 2) out[j++] = '-';
	li	a4,45		# tmp168,
	sb	a4,0(a5)	# tmp168, *_35
.L11:
# eval/problem141//code.c:21:     out[j] = '\0';
	lw	a5,-40(s0)		# _36, j
	ld	a4,-64(s0)		# tmp169, out
	add	a5,a4,a5	# _36, _37, tmp169
# eval/problem141//code.c:21:     out[j] = '\0';
	sb	zero,0(a5)	#, *_37
# eval/problem141//code.c:22: }
	nop	
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
