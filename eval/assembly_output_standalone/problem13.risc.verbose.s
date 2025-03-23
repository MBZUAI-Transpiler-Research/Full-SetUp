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
	.section	.rodata
	.align	3
.LC0:
	.string	""
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
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# strings, strings
	mv	a5,a1	# tmp144, count
	sw	a5,-60(s0)	# tmp145, count
# eval/problem13//code.c:5:     char *out = "";
	lla	a5,.LC0	# tmp146,
	sd	a5,-24(s0)	# tmp146, out
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
	ld	a4,-56(s0)		# tmp147, strings
	add	a5,a4,a5	# _2, _3, tmp147
# eval/problem13//code.c:8:         int current_length = strlen(strings[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# eval/problem13//code.c:8:         int current_length = strlen(strings[i]);
	sw	a5,-28(s0)	# _5, current_length
# eval/problem13//code.c:9:         if (current_length > longest_length) {
	lw	a5,-28(s0)		# tmp149, current_length
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-36(s0)		# tmp151, longest_length
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	ble	a4,a5,.L3	#, tmp152, tmp153,
# eval/problem13//code.c:10:             out = strings[i];
	lw	a5,-32(s0)		# _6, i
	slli	a5,a5,3	#, _7, _6
	ld	a4,-56(s0)		# tmp154, strings
	add	a5,a4,a5	# _7, _8, tmp154
# eval/problem13//code.c:10:             out = strings[i];
	ld	a5,0(a5)		# tmp155, *_8
	sd	a5,-24(s0)	# tmp155, out
# eval/problem13//code.c:11:             longest_length = current_length;
	lw	a5,-28(s0)		# tmp156, current_length
	sw	a5,-36(s0)	# tmp156, longest_length
.L3:
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp159, i
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-32(s0)	# tmp157, i
.L2:
# eval/problem13//code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp161, i
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-60(s0)		# tmp163, count
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	blt	a4,a5,.L4	#, tmp164, tmp165,
# eval/problem13//code.c:14:     return out;
	ld	a5,-24(s0)		# _18, out
# eval/problem13//code.c:15: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
