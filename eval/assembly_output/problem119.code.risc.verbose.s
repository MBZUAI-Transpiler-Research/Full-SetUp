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
	.section	.rodata
	.align	3
.LC0:
	.string	"AEIOUaeiou"
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
	sd	a0,-56(s0)	# word, word
# code.c:6:     const char *vowels = "AEIOUaeiou";
	lla	a5,.LC0	# tmp158,
	sd	a5,-32(s0)	# tmp158, vowels
# code.c:7:     size_t len = strlen(word);
	ld	a0,-56(s0)		#, word
	call	strlen@plt	#
	sd	a0,-24(s0)	#, len
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	ld	a5,-24(s0)		# tmp159, len
	sext.w	a5,a5	# _1, tmp159
	addiw	a5,a5,-2	#, tmp160, _1
	sext.w	a5,a5	# _2, tmp160
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	sw	a5,-36(s0)	# _2, i
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	j	.L2		#
.L5:
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	lw	a5,-36(s0)		# _3, i
	ld	a4,-56(s0)		# tmp161, word
	add	a5,a4,a5	# _3, _4, tmp161
	lbu	a5,0(a5)	# _5, *_4
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	sext.w	a5,a5	# _6, _5
	mv	a1,a5	#, _6
	ld	a0,-32(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _7,
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	beq	a5,zero,.L3	#, _7,,
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	lw	a5,-36(s0)		# _8, i
	addi	a5,a5,1	#, _9, _8
	ld	a4,-56(s0)		# tmp162, word
	add	a5,a4,a5	# _9, _10, tmp162
	lbu	a5,0(a5)	# _11, *_10
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	sext.w	a5,a5	# _12, _11
	mv	a1,a5	#, _12
	ld	a0,-32(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _13,
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	bne	a5,zero,.L3	#, _13,,
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	lw	a5,-36(s0)		# _14, i
	addi	a5,a5,-1	#, _15, _14
	ld	a4,-56(s0)		# tmp163, word
	add	a5,a4,a5	# _15, _16, tmp163
	lbu	a5,0(a5)	# _17, *_16
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	sext.w	a5,a5	# _18, _17
	mv	a1,a5	#, _18
	ld	a0,-32(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _19,
# code.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	bne	a5,zero,.L3	#, _19,,
# code.c:11:             out[0] = word[i];
	lw	a5,-36(s0)		# _20, i
	ld	a4,-56(s0)		# tmp164, word
	add	a5,a4,a5	# _20, _21, tmp164
	lbu	a4,0(a5)	# _22, *_21
# code.c:11:             out[0] = word[i];
	lla	a5,out.0	# tmp165,
	sb	a4,0(a5)	# _22, out[0]
# code.c:12:             return out;
	lla	a5,out.0	# _24,
	j	.L4		#
.L3:
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	lw	a5,-36(s0)		# tmp168, i
	addiw	a5,a5,-1	#, tmp166, tmp167
	sw	a5,-36(s0)	# tmp166, i
.L2:
# code.c:9:     for (int i = len - 2; i >= 1; i--) {
	lw	a5,-36(s0)		# tmp170, i
	sext.w	a5,a5	# tmp171, tmp169
	bgt	a5,zero,.L5	#, tmp171,,
# code.c:15:     out[0] = '\0';
	lla	a5,out.0	# tmp172,
	sb	zero,0(a5)	#, out[0]
# code.c:16:     return out;
	lla	a5,out.0	# _24,
.L4:
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
.LFE0:
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,2,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
