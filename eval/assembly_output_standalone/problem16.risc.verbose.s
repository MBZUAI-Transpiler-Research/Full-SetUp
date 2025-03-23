	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	" %d"
	.align	3
.LC1:
	.string	"0"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp80, n
	sw	a5,-52(s0)	# tmp81, n
# eval/problem16//code.c:5:     int len = 2; 
	li	a5,2		# tmp82,
	sw	a5,-44(s0)	# tmp82, len
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	li	a5,1		# tmp83,
	sw	a5,-40(s0)	# tmp83, i
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	j	.L2		#
.L3:
# eval/problem16//code.c:7:         len += snprintf(NULL, 0, " %d", i);
	lw	a5,-40(s0)		# tmp84, i
	mv	a3,a5	#, tmp84
	lla	a2,.LC0	#,
	li	a1,0		#,
	li	a0,0		#,
	call	snprintf@plt	#
	mv	a5,a0	# tmp85,
# eval/problem16//code.c:7:         len += snprintf(NULL, 0, " %d", i);
	lw	a4,-44(s0)		# tmp88, len
	addw	a5,a4,a5	# _30, tmp86, tmp87
	sw	a5,-44(s0)	# tmp86, len
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	lw	a5,-40(s0)		# tmp91, i
	addiw	a5,a5,1	#, tmp89, tmp90
	sw	a5,-40(s0)	# tmp89, i
.L2:
# eval/problem16//code.c:6:     for (int i = 1; i <= n; ++i) {
	lw	a5,-40(s0)		# tmp93, i
	mv	a4,a5	# tmp92, tmp93
	lw	a5,-52(s0)		# tmp95, n
	sext.w	a4,a4	# tmp96, tmp92
	sext.w	a5,a5	# tmp97, tmp94
	ble	a4,a5,.L3	#, tmp96, tmp97,
# eval/problem16//code.c:10:     char *out = malloc(len);
	lw	a5,-44(s0)		# _1, len
	mv	a0,a5	#, _1
	call	malloc@plt	#
	mv	a5,a0	# tmp98,
	sd	a5,-24(s0)	# tmp98, out
# eval/problem16//code.c:11:     if (!out) {
	ld	a5,-24(s0)		# tmp99, out
	bne	a5,zero,.L4	#, tmp99,,
# eval/problem16//code.c:12:         return NULL;
	li	a5,0		# _8,
	j	.L5		#
.L4:
# eval/problem16//code.c:15:     char *ptr = out;
	ld	a5,-24(s0)		# tmp100, out
	sd	a5,-32(s0)	# tmp100, ptr
# eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	lla	a1,.LC1	#,
	ld	a0,-32(s0)		#, ptr
	call	sprintf@plt	#
	mv	a5,a0	# tmp101,
	mv	a4,a5	# _2, _20
# eval/problem16//code.c:16:     ptr += sprintf(ptr, "0");
	ld	a5,-32(s0)		# tmp103, ptr
	add	a5,a5,a4	# _2, tmp102, tmp103
	sd	a5,-32(s0)	# tmp102, ptr
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	li	a5,1		# tmp104,
	sw	a5,-36(s0)	# tmp104, i
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	j	.L6		#
.L7:
# eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	lw	a5,-36(s0)		# tmp105, i
	mv	a2,a5	#, tmp105
	lla	a1,.LC0	#,
	ld	a0,-32(s0)		#, ptr
	call	sprintf@plt	#
	mv	a5,a0	# tmp106,
	mv	a4,a5	# _3, _25
# eval/problem16//code.c:18:         ptr += sprintf(ptr, " %d", i);
	ld	a5,-32(s0)		# tmp108, ptr
	add	a5,a5,a4	# _3, tmp107, tmp108
	sd	a5,-32(s0)	# tmp107, ptr
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	lw	a5,-36(s0)		# tmp111, i
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-36(s0)	# tmp109, i
.L6:
# eval/problem16//code.c:17:     for (int i = 1; i <= n; ++i) {
	lw	a5,-36(s0)		# tmp113, i
	mv	a4,a5	# tmp112, tmp113
	lw	a5,-52(s0)		# tmp115, n
	sext.w	a4,a4	# tmp116, tmp112
	sext.w	a5,a5	# tmp117, tmp114
	ble	a4,a5,.L7	#, tmp116, tmp117,
# eval/problem16//code.c:20:     return out;
	ld	a5,-24(s0)		# _8, out
.L5:
# eval/problem16//code.c:21: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
