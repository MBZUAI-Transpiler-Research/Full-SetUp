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
	.string	"2357BD"
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
	sd	a0,-56(s0)	# num, num
# eval/problem79//code.c:5:     const char* key = "2357BD";
	lla	a5,.LC0	# tmp143,
	sd	a5,-40(s0)	# tmp143, key
# eval/problem79//code.c:6:     int out = 0;
	sw	zero,-48(s0)	#, out
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	sw	zero,-44(s0)	#, i
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	j	.L2		#
.L4:
# eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	lw	a5,-44(s0)		# _1, i
	ld	a4,-56(s0)		# tmp144, num
	add	a5,a4,a5	# _1, _2, tmp144
	lbu	a5,0(a5)	# _3, *_2
# eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	sext.w	a5,a5	# _4, _3
	mv	a1,a5	#, _4
	ld	a0,-40(s0)		#, key
	call	strchr@plt	#
	mv	a5,a0	# _5,
# eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	beq	a5,zero,.L3	#, _5,,
# eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	lw	a5,-48(s0)		# tmp147, out
	addiw	a5,a5,1	#, tmp145, tmp146
	sw	a5,-48(s0)	# tmp145, out
.L3:
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	lw	a5,-44(s0)		# tmp150, i
	addiw	a5,a5,1	#, tmp148, tmp149
	sw	a5,-44(s0)	# tmp148, i
.L2:
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	lw	s1,-44(s0)		# _6, i
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	ld	a0,-56(s0)		#, num
	call	strlen@plt	#
	mv	a5,a0	# _7,
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	bltu	s1,a5,.L4	#, _6, _7,
# eval/problem79//code.c:10:     return out;
	lw	a5,-48(s0)		# _16, out
# eval/problem79//code.c:11: }
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
