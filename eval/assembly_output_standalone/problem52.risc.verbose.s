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
	.string	"AEIOUaeiou"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# text, text
# eval/problem52//code.c:6:     const char *vowels = "AEIOUaeiou";
	lla	a5,.LC0	# tmp140,
	sd	a5,-24(s0)	# tmp140, vowels
# eval/problem52//code.c:7:     char *out = text;
	ld	a5,-40(s0)		# tmp141, text
	sd	a5,-32(s0)	# tmp141, out
# eval/problem52//code.c:8:     while (*text != '\0') {
	j	.L2		#
.L4:
# eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	ld	a5,-40(s0)		# tmp142, text
	lbu	a5,0(a5)	# _1, *text_7
# eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	sext.w	a5,a5	# _2, _1
	mv	a1,a5	#, _2
	ld	a0,-24(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _3,
# eval/problem52//code.c:9:         if (strchr(vowels, *text) == NULL) {
	bne	a5,zero,.L3	#, _3,,
# eval/problem52//code.c:10:             *out++ = *text;
	ld	a5,-32(s0)		# out.0_4, out
	addi	a4,a5,1	#, tmp143, out.0_4
	sd	a4,-32(s0)	# tmp143, out
# eval/problem52//code.c:10:             *out++ = *text;
	ld	a4,-40(s0)		# tmp144, text
	lbu	a4,0(a4)	# _5, *text_7
# eval/problem52//code.c:10:             *out++ = *text;
	sb	a4,0(a5)	# _5, *out.0_4
.L3:
# eval/problem52//code.c:12:         text++;
	ld	a5,-40(s0)		# tmp146, text
	addi	a5,a5,1	#, tmp145, tmp146
	sd	a5,-40(s0)	# tmp145, text
.L2:
# eval/problem52//code.c:8:     while (*text != '\0') {
	ld	a5,-40(s0)		# tmp147, text
	lbu	a5,0(a5)	# _6, *text_7
# eval/problem52//code.c:8:     while (*text != '\0') {
	bne	a5,zero,.L4	#, _6,,
# eval/problem52//code.c:14:     *out = '\0';
	ld	a5,-32(s0)		# tmp148, out
	sb	zero,0(a5)	#, *out_9
# eval/problem52//code.c:15: }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
