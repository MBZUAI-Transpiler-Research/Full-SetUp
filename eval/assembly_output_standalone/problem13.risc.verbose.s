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
	.string	""
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# strings, strings
	mv	a5,a1	# tmp82, count
	sw	a5,-60(s0)	# tmp83, count
# eval/problem13//code.c:5:     char *out = "";
	lla	a5,.LC0	# tmp84,
	sd	a5,-24(s0)	# tmp84, out
# eval/problem13//code.c:6:     int longest_length = 0;
	sw	zero,-36(s0)	#, longest_length
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L4:
# eval/problem13//code.c:8:         int current_length = strlen(strings[i]);
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp85, strings
	add	a5,a4,a5	# _2, _3, tmp85
# eval/problem13//code.c:8:         int current_length = strlen(strings[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# eval/problem13//code.c:8:         int current_length = strlen(strings[i]);
	sw	a5,-28(s0)	# _5, current_length
# eval/problem13//code.c:9:         if (current_length > longest_length) {
	lw	a5,-28(s0)		# tmp87, current_length
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-36(s0)		# tmp89, longest_length
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	ble	a4,a5,.L3	#, tmp90, tmp91,
# eval/problem13//code.c:10:             out = strings[i];
	lw	a5,-32(s0)		# _6, i
	slli	a5,a5,3	#, _7, _6
	ld	a4,-56(s0)		# tmp92, strings
	add	a5,a4,a5	# _7, _8, tmp92
# eval/problem13//code.c:10:             out = strings[i];
	ld	a5,0(a5)		# tmp93, *_8
	sd	a5,-24(s0)	# tmp93, out
# eval/problem13//code.c:11:             longest_length = current_length;
	lw	a5,-28(s0)		# tmp94, current_length
	sw	a5,-36(s0)	# tmp94, longest_length
.L3:
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp97, i
	addiw	a5,a5,1	#, tmp95, tmp96
	sw	a5,-32(s0)	# tmp95, i
.L2:
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp99, i
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-60(s0)		# tmp101, count
	sext.w	a4,a4	# tmp102, tmp98
	sext.w	a5,a5	# tmp103, tmp100
	blt	a4,a5,.L4	#, tmp102, tmp103,
# eval/problem13//code.c:14:     return out;
	ld	a5,-24(s0)		# _18, out
# eval/problem13//code.c:15: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
