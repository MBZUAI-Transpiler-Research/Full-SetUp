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
	sd	a0,-56(s0)	# strings, strings
	mv	a5,a1	# tmp150, count
	sw	a5,-60(s0)	# tmp151, count
# code.c:6:     int length = 0;
	sw	zero,-36(s0)	#, length
# code.c:7:     for (int i = 0; i < count; i++) {
	sw	zero,-32(s0)	#, i
# code.c:7:     for (int i = 0; i < count; i++) {
	j	.L2		#
.L3:
# code.c:8:         length += strlen(strings[i]);
	lw	a5,-32(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-56(s0)		# tmp152, strings
	add	a5,a4,a5	# _2, _3, tmp152
# code.c:8:         length += strlen(strings[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# code.c:8:         length += strlen(strings[i]);
	sext.w	a4,a5	# _6, _5
	lw	a5,-36(s0)		# length.0_7, length
	addw	a5,a4,a5	# length.0_7, tmp153, _6
	sext.w	a5,a5	# _8, tmp153
	sw	a5,-36(s0)	# _8, length
# code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp156, i
	addiw	a5,a5,1	#, tmp154, tmp155
	sw	a5,-32(s0)	# tmp154, i
.L2:
# code.c:7:     for (int i = 0; i < count; i++) {
	lw	a5,-32(s0)		# tmp158, i
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-60(s0)		# tmp160, count
	sext.w	a4,a4	# tmp161, tmp157
	sext.w	a5,a5	# tmp162, tmp159
	blt	a4,a5,.L3	#, tmp161, tmp162,
# code.c:11:     char* out = (char*)malloc(length + 1);
	lw	a5,-36(s0)		# tmp165, length
	addiw	a5,a5,1	#, tmp163, tmp164
	sext.w	a5,a5	# _9, tmp163
# code.c:11:     char* out = (char*)malloc(length + 1);
	mv	a0,a5	#, _10
	call	malloc@plt	#
	mv	a5,a0	# tmp166,
	sd	a5,-24(s0)	# tmp166, out
# code.c:12:     if (!out) {
	ld	a5,-24(s0)		# tmp167, out
	bne	a5,zero,.L4	#, tmp167,,
# code.c:13:         return NULL; 
	li	a5,0		# _18,
	j	.L5		#
.L4:
# code.c:16:     out[0] = '\0';
	ld	a5,-24(s0)		# tmp168, out
	sb	zero,0(a5)	#, *out_26
# code.c:18:     for (int i = 0; i < count; i++) {
	sw	zero,-28(s0)	#, i
# code.c:18:     for (int i = 0; i < count; i++) {
	j	.L6		#
.L7:
# code.c:19:         strcat(out, strings[i]);
	lw	a5,-28(s0)		# _11, i
	slli	a5,a5,3	#, _12, _11
	ld	a4,-56(s0)		# tmp169, strings
	add	a5,a4,a5	# _12, _13, tmp169
# code.c:19:         strcat(out, strings[i]);
	ld	a5,0(a5)		# _14, *_13
	mv	a1,a5	#, _14
	ld	a0,-24(s0)		#, out
	call	strcat@plt	#
# code.c:18:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp172, i
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-28(s0)	# tmp170, i
.L6:
# code.c:18:     for (int i = 0; i < count; i++) {
	lw	a5,-28(s0)		# tmp174, i
	mv	a4,a5	# tmp173, tmp174
	lw	a5,-60(s0)		# tmp176, count
	sext.w	a4,a4	# tmp177, tmp173
	sext.w	a5,a5	# tmp178, tmp175
	blt	a4,a5,.L7	#, tmp177, tmp178,
# code.c:22:     return out;
	ld	a5,-24(s0)		# _18, out
.L5:
# code.c:23: }
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
