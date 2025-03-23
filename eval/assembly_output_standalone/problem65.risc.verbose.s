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
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# s, s
# eval/problem65//code.c:6:     const char *vowels = "aeiouAEIOU";
	lla	a5,.LC0	# tmp88,
	sd	a5,-24(s0)	# tmp88, vowels
# eval/problem65//code.c:7:     int count = 0;
	sw	zero,-36(s0)	#, count
# eval/problem65//code.c:8:     int length = strlen(s);
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem65//code.c:8:     int length = strlen(s);
	sw	a5,-28(s0)	# _1, length
# eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L4:
# eval/problem65//code.c:11:         if (strchr(vowels, s[i])) {
	lw	a5,-32(s0)		# _2, i
	ld	a4,-56(s0)		# tmp89, s
	add	a5,a4,a5	# _2, _3, tmp89
	lbu	a5,0(a5)	# _4, *_3
# eval/problem65//code.c:11:         if (strchr(vowels, s[i])) {
	sext.w	a5,a5	# _5, _4
	mv	a1,a5	#, _5
	ld	a0,-24(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _6,
# eval/problem65//code.c:11:         if (strchr(vowels, s[i])) {
	beq	a5,zero,.L3	#, _6,,
# eval/problem65//code.c:12:             count++;
	lw	a5,-36(s0)		# tmp92, count
	addiw	a5,a5,1	#, tmp90, tmp91
	sw	a5,-36(s0)	# tmp90, count
.L3:
# eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp95, i
	addiw	a5,a5,1	#, tmp93, tmp94
	sw	a5,-32(s0)	# tmp93, i
.L2:
# eval/problem65//code.c:10:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp97, i
	mv	a4,a5	# tmp96, tmp97
	lw	a5,-28(s0)		# tmp99, length
	sext.w	a4,a4	# tmp100, tmp96
	sext.w	a5,a5	# tmp101, tmp98
	blt	a4,a5,.L4	#, tmp100, tmp101,
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# tmp103, length
	sext.w	a5,a5	# tmp104, tmp102
	ble	a5,zero,.L5	#, tmp104,,
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# _7, length
	addi	a5,a5,-1	#, _8, _7
	ld	a4,-56(s0)		# tmp105, s
	add	a5,a4,a5	# _8, _9, tmp105
	lbu	a5,0(a5)	# _10, *_9
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	mv	a4,a5	# tmp106, _10
	li	a5,121		# tmp107,
	beq	a4,a5,.L6	#, tmp106, tmp107,
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# _11, length
	addi	a5,a5,-1	#, _12, _11
	ld	a4,-56(s0)		# tmp108, s
	add	a5,a4,a5	# _12, _13, tmp108
	lbu	a5,0(a5)	# _14, *_13
# eval/problem65//code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	mv	a4,a5	# tmp109, _14
	li	a5,89		# tmp110,
	bne	a4,a5,.L5	#, tmp109, tmp110,
.L6:
# eval/problem65//code.c:17:         count++;
	lw	a5,-36(s0)		# tmp113, count
	addiw	a5,a5,1	#, tmp111, tmp112
	sw	a5,-36(s0)	# tmp111, count
.L5:
# eval/problem65//code.c:20:     return count;
	lw	a5,-36(s0)		# _26, count
# eval/problem65//code.c:21: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
