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
	.string	"AEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	sd	s1,40(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# s, s
# eval/problem99//code.c:5:     const char *uvowel = "AEIOU";
	lla	a5,.LC0	# tmp86,
	sd	a5,-40(s0)	# tmp86, uvowel
# eval/problem99//code.c:6:     int count = 0;
	sw	zero,-48(s0)	#, count
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	sw	zero,-44(s0)	#, i
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	j	.L2		#
.L5:
# eval/problem99//code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	lw	a5,-44(s0)		# tmp89, i
	slliw	a5,a5,1	#, tmp87, tmp88
	sext.w	a5,a5	# _1, tmp87
	mv	a4,a5	# _2, _1
# eval/problem99//code.c:8:         if (strchr(uvowel, s[i * 2]) != NULL) {
	ld	a5,-56(s0)		# tmp90, s
	add	a5,a5,a4	# _2, _3, tmp90
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
	lw	a5,-48(s0)		# tmp93, count
	addiw	a5,a5,1	#, tmp91, tmp92
	sw	a5,-48(s0)	# tmp91, count
.L3:
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	lw	a5,-44(s0)		# tmp96, i
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-44(s0)	# tmp94, i
.L2:
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	lw	a5,-44(s0)		# _7, i
	ld	a4,-56(s0)		# tmp97, s
	add	a5,a4,a5	# _7, _8, tmp97
	lbu	a5,0(a5)	# _9, *_8
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	beq	a5,zero,.L4	#, _9,,
# eval/problem99//code.c:7:     for (int i = 0; s[i] != '\0' && i * 2 < strlen(s); i++) {
	lw	a5,-44(s0)		# tmp100, i
	slliw	a5,a5,1	#, tmp98, tmp99
	sext.w	a5,a5	# _10, tmp98
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
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
