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
	.string	"No"
	.align	3
.LC1:
	.string	".txt"
	.align	3
.LC2:
	.string	".exe"
	.align	3
.LC3:
	.string	".dll"
	.align	3
.LC4:
	.string	"Yes"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-56(s0)	# file_name, file_name
# eval/problem142//code.c:5:     int num_digit = 0, num_dot = 0;
	sw	zero,-40(s0)	#, num_digit
# eval/problem142//code.c:5:     int num_digit = 0, num_dot = 0;
	sw	zero,-36(s0)	#, num_dot
# eval/problem142//code.c:6:     int length = strlen(file_name);
	ld	a0,-56(s0)		#, file_name
	call	strlen@plt	#
	mv	a5,a0	# _1,
# eval/problem142//code.c:6:     int length = strlen(file_name);
	sw	a5,-28(s0)	# _1, length
# eval/problem142//code.c:7:     if (length < 5) return "No";
	lw	a5,-28(s0)		# tmp90, length
	sext.w	a4,a5	# tmp91, tmp89
	li	a5,4		# tmp92,
	bgt	a4,a5,.L2	#, tmp91, tmp92,
# eval/problem142//code.c:7:     if (length < 5) return "No";
	lla	a5,.LC0	# _21,
	j	.L3		#
.L2:
# eval/problem142//code.c:8:     char w = file_name[0];
	ld	a5,-56(s0)		# tmp93, file_name
	lbu	a5,0(a5)	# tmp94, *file_name_25(D)
	sb	a5,-41(s0)	# tmp94, w
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp96, w
	andi	a4,a5,0xff	# tmp97, tmp95
	li	a5,64		# tmp98,
	bleu	a4,a5,.L4	#, tmp97, tmp98,
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp100, w
	andi	a4,a5,0xff	# tmp101, tmp99
	li	a5,90		# tmp102,
	bleu	a4,a5,.L5	#, tmp101, tmp102,
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp104, w
	andi	a4,a5,0xff	# tmp105, tmp103
	li	a5,96		# tmp106,
	bleu	a4,a5,.L4	#, tmp105, tmp106,
.L5:
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp108, w
	andi	a4,a5,0xff	# tmp109, tmp107
	li	a5,122		# tmp110,
	bleu	a4,a5,.L6	#, tmp109, tmp110,
.L4:
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lla	a5,.LC0	# _21,
	j	.L3		#
.L6:
# eval/problem142//code.c:10:     const char* last = file_name + length - 4;
	lw	a5,-28(s0)		# _2, length
	addi	a5,a5,-4	#, _3, _2
# eval/problem142//code.c:10:     const char* last = file_name + length - 4;
	ld	a4,-56(s0)		# tmp112, file_name
	add	a5,a4,a5	# _3, tmp111, tmp112
	sd	a5,-24(s0)	# tmp111, last
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a1,.LC1	#,
	ld	a0,-24(s0)		#, last
	call	strcmp@plt	#
	mv	a5,a0	# tmp113,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	beq	a5,zero,.L7	#, _4,,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a1,.LC2	#,
	ld	a0,-24(s0)		#, last
	call	strcmp@plt	#
	mv	a5,a0	# tmp114,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	beq	a5,zero,.L7	#, _5,,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a1,.LC3	#,
	ld	a0,-24(s0)		#, last
	call	strcmp@plt	#
	mv	a5,a0	# tmp115,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	beq	a5,zero,.L7	#, _6,,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a5,.LC0	# _21,
	j	.L3		#
.L7:
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	j	.L8		#
.L11:
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	lw	a5,-32(s0)		# _7, i
	ld	a4,-56(s0)		# tmp116, file_name
	add	a5,a4,a5	# _7, _8, tmp116
	lbu	a5,0(a5)	# _9, *_8
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	mv	a4,a5	# tmp117, _9
	li	a5,47		# tmp118,
	bleu	a4,a5,.L9	#, tmp117, tmp118,
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	lw	a5,-32(s0)		# _10, i
	ld	a4,-56(s0)		# tmp119, file_name
	add	a5,a4,a5	# _10, _11, tmp119
	lbu	a5,0(a5)	# _12, *_11
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	mv	a4,a5	# tmp120, _12
	li	a5,57		# tmp121,
	bgtu	a4,a5,.L9	#, tmp120, tmp121,
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	lw	a5,-40(s0)		# tmp124, num_digit
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-40(s0)	# tmp122, num_digit
.L9:
# eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	lw	a5,-32(s0)		# _13, i
	ld	a4,-56(s0)		# tmp125, file_name
	add	a5,a4,a5	# _13, _14, tmp125
	lbu	a5,0(a5)	# _15, *_14
# eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	mv	a4,a5	# tmp126, _15
	li	a5,46		# tmp127,
	bne	a4,a5,.L10	#, tmp126, tmp127,
# eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	lw	a5,-36(s0)		# tmp130, num_dot
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-36(s0)	# tmp128, num_dot
.L10:
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp133, i
	addiw	a5,a5,1	#, tmp131, tmp132
	sw	a5,-32(s0)	# tmp131, i
.L8:
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp135, i
	mv	a4,a5	# tmp134, tmp135
	lw	a5,-28(s0)		# tmp137, length
	sext.w	a4,a4	# tmp138, tmp134
	sext.w	a5,a5	# tmp139, tmp136
	blt	a4,a5,.L11	#, tmp138, tmp139,
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	lw	a5,-40(s0)		# tmp141, num_digit
	sext.w	a4,a5	# tmp142, tmp140
	li	a5,3		# tmp143,
	bgt	a4,a5,.L12	#, tmp142, tmp143,
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	lw	a5,-36(s0)		# tmp145, num_dot
	sext.w	a4,a5	# tmp146, tmp144
	li	a5,1		# tmp147,
	beq	a4,a5,.L13	#, tmp146, tmp147,
.L12:
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	lla	a5,.LC0	# _21,
	j	.L3		#
.L13:
# eval/problem142//code.c:17:     return "Yes";
	lla	a5,.LC4	# _21,
.L3:
# eval/problem142//code.c:18: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
