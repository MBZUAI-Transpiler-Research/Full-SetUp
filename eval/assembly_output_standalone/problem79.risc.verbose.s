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
	.string	"2357BD"
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
	sd	a0,-56(s0)	# num, num
# eval/problem79//code.c:5:     const char* key = "2357BD";
	lla	a5,.LC0	# tmp81,
	sd	a5,-40(s0)	# tmp81, key
# eval/problem79//code.c:6:     int out = 0;
	sw	zero,-48(s0)	#, out
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	sw	zero,-44(s0)	#, i
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	j	.L2		#
.L4:
# eval/problem79//code.c:8:         if (strchr(key, num[i])) out += 1;
	lw	a5,-44(s0)		# _1, i
	ld	a4,-56(s0)		# tmp82, num
	add	a5,a4,a5	# _1, _2, tmp82
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
	lw	a5,-48(s0)		# tmp85, out
	addiw	a5,a5,1	#, tmp83, tmp84
	sw	a5,-48(s0)	# tmp83, out
.L3:
# eval/problem79//code.c:7:     for (int i = 0; i < strlen(num); i++) {
	lw	a5,-44(s0)		# tmp88, i
	addiw	a5,a5,1	#, tmp86, tmp87
	sw	a5,-44(s0)	# tmp86, i
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
	ld	s0,48(sp)		#,
	ld	s1,40(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
