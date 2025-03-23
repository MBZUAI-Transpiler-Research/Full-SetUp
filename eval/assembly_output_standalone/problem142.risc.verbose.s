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
	lw	a5,-28(s0)		# tmp152, length
	sext.w	a4,a5	# tmp153, tmp151
	li	a5,4		# tmp154,
	bgt	a4,a5,.L2	#, tmp153, tmp154,
# eval/problem142//code.c:7:     if (length < 5) return "No";
	lla	a5,.LC0	# _21,
# eval/problem142//code.c:7:     if (length < 5) return "No";
	j	.L3		#
.L2:
# eval/problem142//code.c:8:     char w = file_name[0];
	ld	a5,-56(s0)		# tmp155, file_name
	lbu	a5,0(a5)	# tmp156, *file_name_25(D)
	sb	a5,-41(s0)	# tmp156, w
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp158, w
	andi	a4,a5,0xff	# tmp159, tmp157
	li	a5,64		# tmp160,
	bleu	a4,a5,.L4	#, tmp159, tmp160,
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp162, w
	andi	a4,a5,0xff	# tmp163, tmp161
	li	a5,90		# tmp164,
	bleu	a4,a5,.L5	#, tmp163, tmp164,
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp166, w
	andi	a4,a5,0xff	# tmp167, tmp165
	li	a5,96		# tmp168,
	bleu	a4,a5,.L4	#, tmp167, tmp168,
.L5:
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp170, w
	andi	a4,a5,0xff	# tmp171, tmp169
	li	a5,122		# tmp172,
	bleu	a4,a5,.L6	#, tmp171, tmp172,
.L4:
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lla	a5,.LC0	# _21,
# eval/problem142//code.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	j	.L3		#
.L6:
# eval/problem142//code.c:10:     const char* last = file_name + length - 4;
	lw	a5,-28(s0)		# _2, length
	addi	a5,a5,-4	#, _3, _2
# eval/problem142//code.c:10:     const char* last = file_name + length - 4;
	ld	a4,-56(s0)		# tmp174, file_name
	add	a5,a4,a5	# _3, tmp173, tmp174
	sd	a5,-24(s0)	# tmp173, last
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a1,.LC1	#,
	ld	a0,-24(s0)		#, last
	call	strcmp@plt	#
	mv	a5,a0	# tmp175,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	beq	a5,zero,.L7	#, _4,,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a1,.LC2	#,
	ld	a0,-24(s0)		#, last
	call	strcmp@plt	#
	mv	a5,a0	# tmp176,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	beq	a5,zero,.L7	#, _5,,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a1,.LC3	#,
	ld	a0,-24(s0)		#, last
	call	strcmp@plt	#
	mv	a5,a0	# tmp177,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	beq	a5,zero,.L7	#, _6,,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a5,.LC0	# _21,
# eval/problem142//code.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	j	.L3		#
.L7:
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	sw	zero,-32(s0)	#, i
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	j	.L8		#
.L11:
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	lw	a5,-32(s0)		# _7, i
	ld	a4,-56(s0)		# tmp178, file_name
	add	a5,a4,a5	# _7, _8, tmp178
	lbu	a5,0(a5)	# _9, *_8
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	mv	a4,a5	# tmp179, _9
	li	a5,47		# tmp180,
	bleu	a4,a5,.L9	#, tmp179, tmp180,
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	lw	a5,-32(s0)		# _10, i
	ld	a4,-56(s0)		# tmp181, file_name
	add	a5,a4,a5	# _10, _11, tmp181
	lbu	a5,0(a5)	# _12, *_11
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	mv	a4,a5	# tmp182, _12
	li	a5,57		# tmp183,
	bgtu	a4,a5,.L9	#, tmp182, tmp183,
# eval/problem142//code.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	lw	a5,-40(s0)		# tmp186, num_digit
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-40(s0)	# tmp184, num_digit
.L9:
# eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	lw	a5,-32(s0)		# _13, i
	ld	a4,-56(s0)		# tmp187, file_name
	add	a5,a4,a5	# _13, _14, tmp187
	lbu	a5,0(a5)	# _15, *_14
# eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	mv	a4,a5	# tmp188, _15
	li	a5,46		# tmp189,
	bne	a4,a5,.L10	#, tmp188, tmp189,
# eval/problem142//code.c:14:         if (file_name[i] == '.') num_dot++;
	lw	a5,-36(s0)		# tmp192, num_dot
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-36(s0)	# tmp190, num_dot
.L10:
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp195, i
	addiw	a5,a5,1	#, tmp193, tmp194
	sw	a5,-32(s0)	# tmp193, i
.L8:
# eval/problem142//code.c:12:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp197, i
	mv	a4,a5	# tmp196, tmp197
	lw	a5,-28(s0)		# tmp199, length
	sext.w	a4,a4	# tmp200, tmp196
	sext.w	a5,a5	# tmp201, tmp198
	blt	a4,a5,.L11	#, tmp200, tmp201,
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	lw	a5,-40(s0)		# tmp203, num_digit
	sext.w	a4,a5	# tmp204, tmp202
	li	a5,3		# tmp205,
	bgt	a4,a5,.L12	#, tmp204, tmp205,
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	lw	a5,-36(s0)		# tmp207, num_dot
	sext.w	a4,a5	# tmp208, tmp206
	li	a5,1		# tmp209,
	beq	a4,a5,.L13	#, tmp208, tmp209,
.L12:
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	lla	a5,.LC0	# _21,
# eval/problem142//code.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	j	.L3		#
.L13:
# eval/problem142//code.c:17:     return "Yes";
	lla	a5,.LC4	# _21,
.L3:
# eval/problem142//code.c:18: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
