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
	mv	a5,a1	# tmp151, size
	sd	a2,-56(s0)	# substring, substring
	sd	a3,-64(s0)	# out_size, out_size
	sw	a5,-44(s0)	# tmp152, size
# code.c:6:     char **out = NULL;
	sd	zero,-24(s0)	#, out
# code.c:7:     int count = 0;
	sw	zero,-32(s0)	#, count
# code.c:8:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# code.c:8:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L4:
# code.c:9:         if (strstr(strings[i], substring) != NULL) {
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp153, strings
	add	a5,a4,a5	# _2, _3, tmp153
# code.c:9:         if (strstr(strings[i], substring) != NULL) {
	ld	a5,0(a5)		# _4, *_3
	ld	a1,-56(s0)		#, substring
	mv	a0,a5	#, _4
	call	strstr@plt	#
	mv	a5,a0	# _5,
# code.c:9:         if (strstr(strings[i], substring) != NULL) {
	beq	a5,zero,.L3	#, _5,,
# code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	lw	a5,-32(s0)		# tmp156, count
	addiw	a5,a5,1	#, tmp154, tmp155
	sext.w	a5,a5	# _6, tmp154
# code.c:10:             out = (char **)realloc(out, sizeof(char *) * (count + 1));
	slli	a5,a5,3	#, _8, _7
	mv	a1,a5	#, _8
	ld	a0,-24(s0)		#, out
	call	realloc@plt	#
	sd	a0,-24(s0)	#, out
# code.c:11:             out[count] = strings[i];
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-40(s0)		# tmp157, strings
	add	a4,a4,a5	# _10, _11, tmp157
# code.c:11:             out[count] = strings[i];
	lw	a5,-32(s0)		# _12, count
	slli	a5,a5,3	#, _13, _12
	ld	a3,-24(s0)		# tmp158, out
	add	a5,a3,a5	# _13, _14, tmp158
# code.c:11:             out[count] = strings[i];
	ld	a4,0(a4)		# _15, *_11
# code.c:11:             out[count] = strings[i];
	sd	a4,0(a5)	# _15, *_14
# code.c:12:             count++;
	lw	a5,-32(s0)		# tmp161, count
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-32(s0)	# tmp159, count
.L3:
# code.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp164, i
	addiw	a5,a5,1	#, tmp162, tmp163
	sw	a5,-28(s0)	# tmp162, i
.L2:
# code.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp166, i
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-44(s0)		# tmp168, size
	sext.w	a4,a4	# tmp169, tmp165
	sext.w	a5,a5	# tmp170, tmp167
	blt	a4,a5,.L4	#, tmp169, tmp170,
# code.c:15:     *out_size = count;
	ld	a5,-64(s0)		# tmp171, out_size
	lw	a4,-32(s0)		# tmp172, count
	sw	a4,0(a5)	# tmp172, *out_size_28(D)
# code.c:16:     return out;
	ld	a5,-24(s0)		# _30, out
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
