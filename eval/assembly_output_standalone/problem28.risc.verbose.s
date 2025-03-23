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
	sd	a0,-40(s0)	# str, str
	sd	a1,-48(s0)	# out, out
# eval/problem28//code.c:5:     int length = strlen(str);
	ld	a0,-40(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem28//code.c:5:     int length = strlen(str);
	sw	a5,-20(s0)	# _1, length
# eval/problem28//code.c:6:     for (int i = 0; i < length; i++) {
	sw	zero,-24(s0)	#, i
# eval/problem28//code.c:6:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L5:
# eval/problem28//code.c:7:         char w = str[i];
	lw	a5,-24(s0)		# _2, i
	ld	a4,-40(s0)		# tmp79, str
	add	a5,a4,a5	# _2, _3, tmp79
# eval/problem28//code.c:7:         char w = str[i];
	lbu	a5,0(a5)	# tmp80, *_3
	sb	a5,-25(s0)	# tmp80, w
# eval/problem28//code.c:8:         if (w >= 'a' && w <= 'z') {
	lbu	a5,-25(s0)	# tmp82, w
	andi	a4,a5,0xff	# tmp83, tmp81
	li	a5,96		# tmp84,
	bleu	a4,a5,.L3	#, tmp83, tmp84,
# eval/problem28//code.c:8:         if (w >= 'a' && w <= 'z') {
	lbu	a5,-25(s0)	# tmp86, w
	andi	a4,a5,0xff	# tmp87, tmp85
	li	a5,122		# tmp88,
	bgtu	a4,a5,.L3	#, tmp87, tmp88,
# eval/problem28//code.c:9:             w -= 32;
	lbu	a5,-25(s0)	# tmp90, w
	addiw	a5,a5,-32	#, tmp91, tmp89
	sb	a5,-25(s0)	# tmp91, w
	j	.L4		#
.L3:
# eval/problem28//code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	lbu	a5,-25(s0)	# tmp93, w
	andi	a4,a5,0xff	# tmp94, tmp92
	li	a5,64		# tmp95,
	bleu	a4,a5,.L4	#, tmp94, tmp95,
# eval/problem28//code.c:10:         } else if (w >= 'A' && w <= 'Z') {
	lbu	a5,-25(s0)	# tmp97, w
	andi	a4,a5,0xff	# tmp98, tmp96
	li	a5,90		# tmp99,
	bgtu	a4,a5,.L4	#, tmp98, tmp99,
# eval/problem28//code.c:11:             w += 32;
	lbu	a5,-25(s0)	# tmp101, w
	addiw	a5,a5,32	#, tmp102, tmp100
	sb	a5,-25(s0)	# tmp102, w
.L4:
# eval/problem28//code.c:13:         out[i] = w;
	lw	a5,-24(s0)		# _4, i
	ld	a4,-48(s0)		# tmp103, out
	add	a5,a4,a5	# _4, _5, tmp103
# eval/problem28//code.c:13:         out[i] = w;
	lbu	a4,-25(s0)	# tmp104, w
	sb	a4,0(a5)	# tmp104, *_5
# eval/problem28//code.c:6:     for (int i = 0; i < length; i++) {
	lw	a5,-24(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-24(s0)	# tmp105, i
.L2:
# eval/problem28//code.c:6:     for (int i = 0; i < length; i++) {
	lw	a5,-24(s0)		# tmp109, i
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-20(s0)		# tmp111, length
	sext.w	a4,a4	# tmp112, tmp108
	sext.w	a5,a5	# tmp113, tmp110
	blt	a4,a5,.L5	#, tmp112, tmp113,
# eval/problem28//code.c:15:     out[length] = '\0';
	lw	a5,-20(s0)		# _6, length
	ld	a4,-48(s0)		# tmp114, out
	add	a5,a4,a5	# _6, _7, tmp114
# eval/problem28//code.c:15:     out[length] = '\0';
	sb	zero,0(a5)	#, *_7
# eval/problem28//code.c:16: }
	nop	
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
