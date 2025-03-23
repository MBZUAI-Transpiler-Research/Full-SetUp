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
	sd	a1,-48(s0)	# substring, substring
# eval/problem19//code.c:5:     int out = 0;
	sw	zero,-32(s0)	#, out
# eval/problem19//code.c:6:     int str_len = strlen(str);
	ld	a0,-40(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem19//code.c:6:     int str_len = strlen(str);
	sw	a5,-24(s0)	# _1, str_len
# eval/problem19//code.c:7:     int sub_len = strlen(substring);
	ld	a0,-48(s0)		#, substring
	call	strlen@plt	#
	mv	a5,a0	# _2,
# eval/problem19//code.c:7:     int sub_len = strlen(substring);
	sw	a5,-20(s0)	# _2, sub_len
# eval/problem19//code.c:8:     if (str_len == 0) return 0;
	lw	a5,-24(s0)		# tmp82, str_len
	sext.w	a5,a5	# tmp83, tmp81
	bne	a5,zero,.L2	#, tmp83,,
# eval/problem19//code.c:8:     if (str_len == 0) return 0;
	li	a5,0		# _11,
	j	.L3		#
.L2:
# eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	sw	zero,-28(s0)	#, i
# eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	j	.L4		#
.L6:
# eval/problem19//code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	lw	a5,-28(s0)		# _3, i
	ld	a4,-40(s0)		# tmp84, str
	add	a5,a4,a5	# _3, _4, tmp84
	lw	a4,-20(s0)		# _5, sub_len
	mv	a2,a4	#, _5
	ld	a1,-48(s0)		#, substring
	mv	a0,a5	#, _4
	call	strncmp@plt	#
	mv	a5,a0	# tmp85,
# eval/problem19//code.c:10:         if (strncmp(&str[i], substring, sub_len) == 0)
	bne	a5,zero,.L5	#, _6,,
# eval/problem19//code.c:11:             out++;
	lw	a5,-32(s0)		# tmp88, out
	addiw	a5,a5,1	#, tmp86, tmp87
	sw	a5,-32(s0)	# tmp86, out
.L5:
# eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	lw	a5,-28(s0)		# tmp91, i
	addiw	a5,a5,1	#, tmp89, tmp90
	sw	a5,-28(s0)	# tmp89, i
.L4:
# eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	lw	a5,-24(s0)		# tmp94, str_len
	mv	a4,a5	# tmp93, tmp94
	lw	a5,-20(s0)		# tmp96, sub_len
	subw	a5,a4,a5	# tmp92, tmp93, tmp95
	sext.w	a4,a5	# _7, tmp92
# eval/problem19//code.c:9:     for (int i = 0; i <= str_len - sub_len; i++) {
	lw	a5,-28(s0)		# tmp98, i
	sext.w	a5,a5	# tmp99, tmp97
	ble	a5,a4,.L6	#, tmp99, tmp100,
# eval/problem19//code.c:13:     return out;
	lw	a5,-32(s0)		# _11, out
.L3:
# eval/problem19//code.c:14: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
