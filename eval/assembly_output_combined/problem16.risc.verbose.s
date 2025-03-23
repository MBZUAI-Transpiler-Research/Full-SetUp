	.file	"problem16.c"
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
# problem16.c:5:     int len = 2; 
	li	a5,2		# tmp82,
	sw	a5,-44(s0)	# tmp82, len
# problem16.c:6:     for (int i = 1; i <= n; ++i) {
	li	a5,1		# tmp83,
	sw	a5,-40(s0)	# tmp83, i
# problem16.c:6:     for (int i = 1; i <= n; ++i) {
	j	.L2		#
.L3:
# problem16.c:7:         len += snprintf(NULL, 0, " %d", i);
	lw	a5,-40(s0)		# tmp84, i
	mv	a3,a5	#, tmp84
	lla	a2,.LC0	#,
	li	a1,0		#,
	li	a0,0		#,
	call	snprintf@plt	#
	mv	a5,a0	# tmp85,
# problem16.c:7:         len += snprintf(NULL, 0, " %d", i);
	lw	a4,-44(s0)		# tmp88, len
	addw	a5,a4,a5	# _30, tmp86, tmp87
	sw	a5,-44(s0)	# tmp86, len
# problem16.c:6:     for (int i = 1; i <= n; ++i) {
	lw	a5,-40(s0)		# tmp91, i
	addiw	a5,a5,1	#, tmp89, tmp90
	sw	a5,-40(s0)	# tmp89, i
.L2:
# problem16.c:6:     for (int i = 1; i <= n; ++i) {
	lw	a5,-40(s0)		# tmp93, i
	mv	a4,a5	# tmp92, tmp93
	lw	a5,-52(s0)		# tmp95, n
	sext.w	a4,a4	# tmp96, tmp92
	sext.w	a5,a5	# tmp97, tmp94
	ble	a4,a5,.L3	#, tmp96, tmp97,
# problem16.c:10:     char *out = malloc(len);
	lw	a5,-44(s0)		# _1, len
	mv	a0,a5	#, _1
	call	malloc@plt	#
	mv	a5,a0	# tmp98,
	sd	a5,-24(s0)	# tmp98, out
# problem16.c:11:     if (!out) {
	ld	a5,-24(s0)		# tmp99, out
	bne	a5,zero,.L4	#, tmp99,,
# problem16.c:12:         return NULL;
	li	a5,0		# _8,
	j	.L5		#
.L4:
# problem16.c:15:     char *ptr = out;
	ld	a5,-24(s0)		# tmp100, out
	sd	a5,-32(s0)	# tmp100, ptr
# problem16.c:16:     ptr += sprintf(ptr, "0");
	lla	a1,.LC1	#,
	ld	a0,-32(s0)		#, ptr
	call	sprintf@plt	#
	mv	a5,a0	# tmp101,
	mv	a4,a5	# _2, _20
# problem16.c:16:     ptr += sprintf(ptr, "0");
	ld	a5,-32(s0)		# tmp103, ptr
	add	a5,a5,a4	# _2, tmp102, tmp103
	sd	a5,-32(s0)	# tmp102, ptr
# problem16.c:17:     for (int i = 1; i <= n; ++i) {
	li	a5,1		# tmp104,
	sw	a5,-36(s0)	# tmp104, i
# problem16.c:17:     for (int i = 1; i <= n; ++i) {
	j	.L6		#
.L7:
# problem16.c:18:         ptr += sprintf(ptr, " %d", i);
	lw	a5,-36(s0)		# tmp105, i
	mv	a2,a5	#, tmp105
	lla	a1,.LC0	#,
	ld	a0,-32(s0)		#, ptr
	call	sprintf@plt	#
	mv	a5,a0	# tmp106,
	mv	a4,a5	# _3, _25
# problem16.c:18:         ptr += sprintf(ptr, " %d", i);
	ld	a5,-32(s0)		# tmp108, ptr
	add	a5,a5,a4	# _3, tmp107, tmp108
	sd	a5,-32(s0)	# tmp107, ptr
# problem16.c:17:     for (int i = 1; i <= n; ++i) {
	lw	a5,-36(s0)		# tmp111, i
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-36(s0)	# tmp109, i
.L6:
# problem16.c:17:     for (int i = 1; i <= n; ++i) {
	lw	a5,-36(s0)		# tmp113, i
	mv	a4,a5	# tmp112, tmp113
	lw	a5,-52(s0)		# tmp115, n
	sext.w	a4,a4	# tmp116, tmp112
	sext.w	a5,a5	# tmp117, tmp114
	ble	a4,a5,.L7	#, tmp116, tmp117,
# problem16.c:20:     return out;
	ld	a5,-24(s0)		# _8, out
.L5:
# problem16.c:21: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem16.c"
	.align	3
.LC3:
	.string	"strcmp(result, \"0\") == 0"
	.align	3
.LC4:
	.string	"0 1 2 3"
	.align	3
.LC5:
	.string	"strcmp(result, \"0 1 2 3\") == 0"
	.align	3
.LC6:
	.string	"0 1 2 3 4 5 6 7 8 9 10"
	.align	3
.LC7:
	.string	"strcmp(result, \"0 1 2 3 4 5 6 7 8 9 10\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem16.c:32:     result = func0(0);
	li	a0,0		#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem16.c:33:     assert(strcmp(result, "0") == 0);
	lla	a1,.LC1	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp77,
	beq	a5,zero,.L9	#, _1,,
# problem16.c:33:     assert(strcmp(result, "0") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem16.c:34:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem16.c:36:     result = func0(3);
	li	a0,3		#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem16.c:37:     assert(strcmp(result, "0 1 2 3") == 0);
	lla	a1,.LC4	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp78,
	beq	a5,zero,.L10	#, _2,,
# problem16.c:37:     assert(strcmp(result, "0 1 2 3") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem16.c:38:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem16.c:40:     result = func0(10);
	li	a0,10		#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem16.c:41:     assert(strcmp(result, "0 1 2 3 4 5 6 7 8 9 10") == 0);
	lla	a1,.LC6	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp79,
	beq	a5,zero,.L11	#, _3,,
# problem16.c:41:     assert(strcmp(result, "0 1 2 3 4 5 6 7 8 9 10") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L11:
# problem16.c:42:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem16.c:44:     return 0;
	li	a5,0		# _17,
# problem16.c:45: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
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
