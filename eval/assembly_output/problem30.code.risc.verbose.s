	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# strings, strings
	mv	a5,a1	# tmp155, count
	sd	a2,-56(s0)	# prefix, prefix
	sd	a3,-64(s0)	# out, out
	sw	a5,-44(s0)	# tmp156, count
# code.c:6:     int prefix_length = strlen(prefix);
	ld	a0,-56(s0)		#, prefix
	call	strlen@plt	#
	mv	a5,a0	# _1,
# code.c:6:     int prefix_length = strlen(prefix);
	sw	a5,-20(s0)	# _1, prefix_length
# code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	lw	a5,-44(s0)		# _2, count
	slli	a5,a5,3	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp157,
	mv	a4,a5	# _4, tmp157
# code.c:7:     *out = (char**)malloc(count * sizeof(char*));
	ld	a5,-64(s0)		# tmp158, out
	sd	a4,0(a5)	# _4, *out_30(D)
# code.c:8:     int out_count = 0;
	sw	zero,-28(s0)	#, out_count
# code.c:10:     for (int i = 0; i < count; i++) {
	sw	zero,-24(s0)	#, i
# code.c:10:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L4:
# code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	lw	a5,-24(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-40(s0)		# tmp159, strings
	add	a5,a4,a5	# _6, _7, tmp159
# code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	ld	a5,0(a5)		# _8, *_7
	lw	a4,-20(s0)		# _9, prefix_length
	mv	a2,a4	#, _9
	ld	a1,-56(s0)		#, prefix
	mv	a0,a5	#, _8
	call	strncmp@plt	#
	mv	a5,a0	# tmp160,
# code.c:11:         if (strncmp(strings[i], prefix, prefix_length) == 0) {
	bne	a5,zero,.L3	#, _10,,
# code.c:12:             (*out)[out_count++] = strings[i];
	lw	a5,-24(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-40(s0)		# tmp161, strings
	add	a4,a4,a5	# _12, _13, tmp161
# code.c:12:             (*out)[out_count++] = strings[i];
	ld	a5,-64(s0)		# tmp162, out
	ld	a3,0(a5)		# _14, *out_30(D)
# code.c:12:             (*out)[out_count++] = strings[i];
	lw	a5,-28(s0)		# out_count.0_15, out_count
	addiw	a2,a5,1	#, tmp163, out_count.0_15
	sw	a2,-28(s0)	# tmp163, out_count
# code.c:12:             (*out)[out_count++] = strings[i];
	slli	a5,a5,3	#, _17, _16
	add	a5,a3,a5	# _17, _18, _14
# code.c:12:             (*out)[out_count++] = strings[i];
	ld	a4,0(a4)		# _19, *_13
# code.c:12:             (*out)[out_count++] = strings[i];
	sd	a4,0(a5)	# _19, *_18
.L3:
# code.c:10:     for (int i = 0; i < count; i++) {
	lw	a5,-24(s0)		# tmp166, i
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-24(s0)	# tmp164, i
.L2:
# code.c:10:     for (int i = 0; i < count; i++) {
	lw	a5,-24(s0)		# tmp168, i
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-44(s0)		# tmp170, count
	sext.w	a4,a4	# tmp171, tmp167
	sext.w	a5,a5	# tmp172, tmp169
	blt	a4,a5,.L4	#, tmp171, tmp172,
# code.c:16:     return out_count;
	lw	a5,-28(s0)		# _34, out_count
# code.c:17: }
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
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
