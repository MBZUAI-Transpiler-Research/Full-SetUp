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
	sd	a0,-56(s0)	# str, str
# eval/problem133//code.c:5:     int count = 0, maxcount = 0;
	sw	zero,-44(s0)	#, count
# eval/problem133//code.c:5:     int count = 0, maxcount = 0;
	sw	zero,-40(s0)	#, maxcount
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	sw	zero,-36(s0)	#, i
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	j	.L2		#
.L9:
# eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	lw	a5,-36(s0)		# _1, i
	ld	a4,-56(s0)		# tmp83, str
	add	a5,a4,a5	# _1, _2, tmp83
	lbu	a5,0(a5)	# _3, *_2
# eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	mv	a4,a5	# tmp84, _3
	li	a5,91		# tmp85,
	bne	a4,a5,.L3	#, tmp84, tmp85,
# eval/problem133//code.c:7:         if (str[i] == '[') count += 1;
	lw	a5,-44(s0)		# tmp88, count
	addiw	a5,a5,1	#, tmp86, tmp87
	sw	a5,-44(s0)	# tmp86, count
.L3:
# eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	lw	a5,-36(s0)		# _4, i
	ld	a4,-56(s0)		# tmp89, str
	add	a5,a4,a5	# _4, _5, tmp89
	lbu	a5,0(a5)	# _6, *_5
# eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	mv	a4,a5	# tmp90, _6
	li	a5,93		# tmp91,
	bne	a4,a5,.L4	#, tmp90, tmp91,
# eval/problem133//code.c:8:         if (str[i] == ']') count -= 1;
	lw	a5,-44(s0)		# tmp94, count
	addiw	a5,a5,-1	#, tmp92, tmp93
	sw	a5,-44(s0)	# tmp92, count
.L4:
# eval/problem133//code.c:9:         if (count < 0) count = 0;
	lw	a5,-44(s0)		# tmp96, count
	sext.w	a5,a5	# tmp97, tmp95
	bge	a5,zero,.L5	#, tmp97,,
# eval/problem133//code.c:9:         if (count < 0) count = 0;
	sw	zero,-44(s0)	#, count
.L5:
# eval/problem133//code.c:10:         if (count > maxcount) maxcount = count;
	lw	a5,-44(s0)		# tmp99, count
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-40(s0)		# tmp101, maxcount
	sext.w	a4,a4	# tmp102, tmp98
	sext.w	a5,a5	# tmp103, tmp100
	ble	a4,a5,.L6	#, tmp102, tmp103,
# eval/problem133//code.c:10:         if (count > maxcount) maxcount = count;
	lw	a5,-44(s0)		# tmp104, count
	sw	a5,-40(s0)	# tmp104, maxcount
.L6:
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	lw	a5,-40(s0)		# tmp107, maxcount
	addiw	a5,a5,-1	#, tmp105, tmp106
	sext.w	a4,a5	# _7, tmp105
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	lw	a5,-44(s0)		# tmp109, count
	sext.w	a5,a5	# tmp110, tmp108
	bge	a5,a4,.L7	#, tmp110, tmp111,
# eval/problem133//code.c:11:         if (count <= maxcount - 2) return 1;
	li	a5,1		# _17,
	j	.L8		#
.L7:
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	lw	a5,-36(s0)		# tmp114, i
	addiw	a5,a5,1	#, tmp112, tmp113
	sw	a5,-36(s0)	# tmp112, i
.L2:
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	lw	s1,-36(s0)		# _8, i
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	ld	a0,-56(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _9,
# eval/problem133//code.c:6:     for (int i = 0; i < strlen(str); i++) {
	bltu	s1,a5,.L9	#, _8, _9,
# eval/problem133//code.c:13:     return 0;
	li	a5,0		# _17,
.L8:
# eval/problem133//code.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
