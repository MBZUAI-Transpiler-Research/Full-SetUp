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
	.string	"AEIOU"
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
	sd	s1,40(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# s, s
# eval/problem99//code.c:5:     const char *uvowel = "AEIOU";
	lla	a5,.LC0	# tmp148,
	sd	a5,-40(s0)	# tmp148, uvowel
# eval/problem99//code.c:6:     int count = 0;
	sw	zero,-48(s0)	#, count
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	sw	zero,-44(s0)	#, i
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	j	.L2		#
.L5:
# eval/problem99//code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	lw	a5,-44(s0)		# tmp151, i
	slliw	a5,a5,1	#, tmp149, tmp150
	sext.w	a5,a5	# _1, tmp149
	mv	a4,a5	# _2, _1
# eval/problem99//code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	ld	a5,-56(s0)		# tmp152, s
	add	a5,a5,a4	# _2, _3, tmp152
	lbu	a5,0(a5)	# _4, *_3
# eval/problem99//code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	sext.w	a5,a5	# _5, _4
	mv	a1,a5	#, _5
	ld	a0,-40(s0)		#, uvowel
	call	strchr@plt	#
	mv	a5,a0	# _6,
# eval/problem99//code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	beq	a5,zero,.L3	#, _6,,
# eval/problem99//code.c:9:             count += 1;
	lw	a5,-48(s0)		# tmp155, count
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-48(s0)	# tmp153, count
.L3:
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	lw	a5,-44(s0)		# tmp158, i
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-44(s0)	# tmp156, i
.L2:
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	lw	a5,-44(s0)		# _7, i
	ld	a4,-56(s0)		# tmp159, s
	add	a5,a4,a5	# _7, _8, tmp159
	lbu	a5,0(a5)	# _9, *_8
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	beq	a5,zero,.L4	#, _9,,
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	lw	a5,-44(s0)		# tmp162, i
	slliw	a5,a5,1	#, tmp160, tmp161
	sext.w	a5,a5	# _10, tmp160
	mv	s1,a5	# _11, _10
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _12,
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	bltu	s1,a5,.L5	#, _11, _12,
.L4:
# eval/problem99//code.c:12:     return count;
	lw	a5,-48(s0)		# _23, count
# eval/problem99//code.c:13: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)		#,
	.cfi_restore 9
	addi	sp,sp,64	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
