	.file	"problem142.c"
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
# problem142.c:5:     int num_digit = 0, num_dot = 0;
	sw	zero,-40(s0)	#, num_digit
# problem142.c:5:     int num_digit = 0, num_dot = 0;
	sw	zero,-36(s0)	#, num_dot
# problem142.c:6:     int length = strlen(file_name);
	ld	a0,-56(s0)		#, file_name
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem142.c:6:     int length = strlen(file_name);
	sw	a5,-28(s0)	# _1, length
# problem142.c:7:     if (length < 5) return "No";
	lw	a5,-28(s0)		# tmp152, length
	sext.w	a4,a5	# tmp153, tmp151
	li	a5,4		# tmp154,
	bgt	a4,a5,.L2	#, tmp153, tmp154,
# problem142.c:7:     if (length < 5) return "No";
	lla	a5,.LC0	# _21,
# problem142.c:7:     if (length < 5) return "No";
	j	.L3		#
.L2:
# problem142.c:8:     char w = file_name[0];
	ld	a5,-56(s0)		# tmp155, file_name
	lbu	a5,0(a5)	# tmp156, *file_name_25(D)
	sb	a5,-41(s0)	# tmp156, w
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp158, w
	andi	a4,a5,0xff	# tmp159, tmp157
	li	a5,64		# tmp160,
	bleu	a4,a5,.L4	#, tmp159, tmp160,
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp162, w
	andi	a4,a5,0xff	# tmp163, tmp161
	li	a5,90		# tmp164,
	bleu	a4,a5,.L5	#, tmp163, tmp164,
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp166, w
	andi	a4,a5,0xff	# tmp167, tmp165
	li	a5,96		# tmp168,
	bleu	a4,a5,.L4	#, tmp167, tmp168,
.L5:
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lbu	a5,-41(s0)	# tmp170, w
	andi	a4,a5,0xff	# tmp171, tmp169
	li	a5,122		# tmp172,
	bleu	a4,a5,.L6	#, tmp171, tmp172,
.L4:
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	lla	a5,.LC0	# _21,
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	j	.L3		#
.L6:
# problem142.c:10:     const char* last = file_name + length - 4;
	lw	a5,-28(s0)		# _2, length
	addi	a5,a5,-4	#, _3, _2
# problem142.c:10:     const char* last = file_name + length - 4;
	ld	a4,-56(s0)		# tmp174, file_name
	add	a5,a4,a5	# _3, tmp173, tmp174
	sd	a5,-24(s0)	# tmp173, last
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a1,.LC1	#,
	ld	a0,-24(s0)		#, last
	call	strcmp@plt	#
	mv	a5,a0	# tmp175,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	beq	a5,zero,.L7	#, _4,,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a1,.LC2	#,
	ld	a0,-24(s0)		#, last
	call	strcmp@plt	#
	mv	a5,a0	# tmp176,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	beq	a5,zero,.L7	#, _5,,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a1,.LC3	#,
	ld	a0,-24(s0)		#, last
	call	strcmp@plt	#
	mv	a5,a0	# tmp177,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	beq	a5,zero,.L7	#, _6,,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	lla	a5,.LC0	# _21,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	j	.L3		#
.L7:
# problem142.c:12:     for (int i = 0; i < length; i++) {
	sw	zero,-32(s0)	#, i
# problem142.c:12:     for (int i = 0; i < length; i++) {
	j	.L8		#
.L11:
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	lw	a5,-32(s0)		# _7, i
	ld	a4,-56(s0)		# tmp178, file_name
	add	a5,a4,a5	# _7, _8, tmp178
	lbu	a5,0(a5)	# _9, *_8
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	mv	a4,a5	# tmp179, _9
	li	a5,47		# tmp180,
	bleu	a4,a5,.L9	#, tmp179, tmp180,
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	lw	a5,-32(s0)		# _10, i
	ld	a4,-56(s0)		# tmp181, file_name
	add	a5,a4,a5	# _10, _11, tmp181
	lbu	a5,0(a5)	# _12, *_11
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	mv	a4,a5	# tmp182, _12
	li	a5,57		# tmp183,
	bgtu	a4,a5,.L9	#, tmp182, tmp183,
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	lw	a5,-40(s0)		# tmp186, num_digit
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-40(s0)	# tmp184, num_digit
.L9:
# problem142.c:14:         if (file_name[i] == '.') num_dot++;
	lw	a5,-32(s0)		# _13, i
	ld	a4,-56(s0)		# tmp187, file_name
	add	a5,a4,a5	# _13, _14, tmp187
	lbu	a5,0(a5)	# _15, *_14
# problem142.c:14:         if (file_name[i] == '.') num_dot++;
	mv	a4,a5	# tmp188, _15
	li	a5,46		# tmp189,
	bne	a4,a5,.L10	#, tmp188, tmp189,
# problem142.c:14:         if (file_name[i] == '.') num_dot++;
	lw	a5,-36(s0)		# tmp192, num_dot
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-36(s0)	# tmp190, num_dot
.L10:
# problem142.c:12:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp195, i
	addiw	a5,a5,1	#, tmp193, tmp194
	sw	a5,-32(s0)	# tmp193, i
.L8:
# problem142.c:12:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp197, i
	mv	a4,a5	# tmp196, tmp197
	lw	a5,-28(s0)		# tmp199, length
	sext.w	a4,a4	# tmp200, tmp196
	sext.w	a5,a5	# tmp201, tmp198
	blt	a4,a5,.L11	#, tmp200, tmp201,
# problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	lw	a5,-40(s0)		# tmp203, num_digit
	sext.w	a4,a5	# tmp204, tmp202
	li	a5,3		# tmp205,
	bgt	a4,a5,.L12	#, tmp204, tmp205,
# problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	lw	a5,-36(s0)		# tmp207, num_dot
	sext.w	a4,a5	# tmp208, tmp206
	li	a5,1		# tmp209,
	beq	a4,a5,.L13	#, tmp208, tmp209,
.L12:
# problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	lla	a5,.LC0	# _21,
# problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	j	.L3		#
.L13:
# problem142.c:17:     return "Yes";
	lla	a5,.LC4	# _21,
.L3:
# problem142.c:18: }
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
	.section	.rodata
	.align	3
.LC5:
	.string	"example.txt"
	.align	3
.LC6:
	.string	"problem142.c"
	.align	3
.LC7:
	.string	"strcmp(func0(\"example.txt\"), \"Yes\") == 0"
	.align	3
.LC8:
	.string	"1example.dll"
	.align	3
.LC9:
	.string	"strcmp(func0(\"1example.dll\"), \"No\") == 0"
	.align	3
.LC10:
	.string	"s1sdf3.asd"
	.align	3
.LC11:
	.string	"strcmp(func0(\"s1sdf3.asd\"), \"No\") == 0"
	.align	3
.LC12:
	.string	"K.dll"
	.align	3
.LC13:
	.string	"strcmp(func0(\"K.dll\"), \"Yes\") == 0"
	.align	3
.LC14:
	.string	"MY16FILE3.exe"
	.align	3
.LC15:
	.string	"strcmp(func0(\"MY16FILE3.exe\"), \"Yes\") == 0"
	.align	3
.LC16:
	.string	"His12FILE94.exe"
	.align	3
.LC17:
	.string	"strcmp(func0(\"His12FILE94.exe\"), \"No\") == 0"
	.align	3
.LC18:
	.string	"_Y.txt"
	.align	3
.LC19:
	.string	"strcmp(func0(\"_Y.txt\"), \"No\") == 0"
	.align	3
.LC20:
	.string	"?aREYA.exe"
	.align	3
.LC21:
	.string	"strcmp(func0(\"?aREYA.exe\"), \"No\") == 0"
	.align	3
.LC22:
	.string	"/this_is_valid.dll"
	.align	3
.LC23:
	.string	"strcmp(func0(\"/this_is_valid.dll\"), \"No\") == 0"
	.align	3
.LC24:
	.string	"this_is_valid.wow"
	.align	3
.LC25:
	.string	"strcmp(func0(\"this_is_valid.wow\"), \"No\") == 0"
	.align	3
.LC26:
	.string	"this_is_valid.txt"
	.align	3
.LC27:
	.string	"strcmp(func0(\"this_is_valid.txt\"), \"Yes\") == 0"
	.align	3
.LC28:
	.string	"this_is_valid.txtexe"
	.align	3
.LC29:
	.string	"strcmp(func0(\"this_is_valid.txtexe\"), \"No\") == 0"
	.align	3
.LC30:
	.string	"#this2_i4s_5valid.ten"
	.align	3
.LC31:
	.string	"strcmp(func0(\"#this2_i4s_5valid.ten\"), \"No\") == 0"
	.align	3
.LC32:
	.string	"@this1_is6_valid.exe"
	.align	3
.LC33:
	.string	"strcmp(func0(\"@this1_is6_valid.exe\"), \"No\") == 0"
	.align	3
.LC34:
	.string	"this_is_12valid.6exe4.txt"
	.align	3
.LC35:
	.string	"strcmp(func0(\"this_is_12valid.6exe4.txt\"), \"No\") == 0"
	.align	3
.LC36:
	.string	"all.exe.txt"
	.align	3
.LC37:
	.string	"strcmp(func0(\"all.exe.txt\"), \"No\") == 0"
	.align	3
.LC38:
	.string	"I563_No.exe"
	.align	3
.LC39:
	.string	"strcmp(func0(\"I563_No.exe\"), \"Yes\") == 0"
	.align	3
.LC40:
	.string	"Is3youfault.txt"
	.align	3
.LC41:
	.string	"strcmp(func0(\"Is3youfault.txt\"), \"Yes\") == 0"
	.align	3
.LC42:
	.string	"no_one#knows.dll"
	.align	3
.LC43:
	.string	"strcmp(func0(\"no_one#knows.dll\"), \"Yes\") == 0"
	.align	3
.LC44:
	.string	"1I563_Yes3.exe"
	.align	3
.LC45:
	.string	"strcmp(func0(\"1I563_Yes3.exe\"), \"No\") == 0"
	.align	3
.LC46:
	.string	"I563_Yes3.txtt"
	.align	3
.LC47:
	.string	"strcmp(func0(\"I563_Yes3.txtt\"), \"No\") == 0"
	.align	3
.LC48:
	.string	"final..txt"
	.align	3
.LC49:
	.string	"strcmp(func0(\"final..txt\"), \"No\") == 0"
	.align	3
.LC50:
	.string	"final132"
	.align	3
.LC51:
	.string	"strcmp(func0(\"final132\"), \"No\") == 0"
	.align	3
.LC52:
	.string	"_f4indsartal132."
	.align	3
.LC53:
	.string	"strcmp(func0(\"_f4indsartal132.\"), \"No\") == 0"
	.align	3
.LC54:
	.string	"strcmp(func0(\".txt\"), \"No\") == 0"
	.align	3
.LC55:
	.string	"s."
	.align	3
.LC56:
	.string	"strcmp(func0(\"s.\"), \"No\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem142.c:26:     assert(strcmp(func0("example.txt"), "Yes") == 0);
	lla	a0,.LC5	#,
	call	func0		#
	mv	a5,a0	# _1,
# problem142.c:26:     assert(strcmp(func0("example.txt"), "Yes") == 0);
	lla	a1,.LC4	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp188,
# problem142.c:26:     assert(strcmp(func0("example.txt"), "Yes") == 0);
	beq	a5,zero,.L15	#, _2,,
# problem142.c:26:     assert(strcmp(func0("example.txt"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,26		#,
	lla	a1,.LC6	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L15:
# problem142.c:27:     assert(strcmp(func0("1example.dll"), "No") == 0);
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# _3,
# problem142.c:27:     assert(strcmp(func0("1example.dll"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp189,
# problem142.c:27:     assert(strcmp(func0("1example.dll"), "No") == 0);
	beq	a5,zero,.L16	#, _4,,
# problem142.c:27:     assert(strcmp(func0("1example.dll"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC6	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L16:
# problem142.c:28:     assert(strcmp(func0("s1sdf3.asd"), "No") == 0);
	lla	a0,.LC10	#,
	call	func0		#
	mv	a5,a0	# _5,
# problem142.c:28:     assert(strcmp(func0("s1sdf3.asd"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp190,
# problem142.c:28:     assert(strcmp(func0("s1sdf3.asd"), "No") == 0);
	beq	a5,zero,.L17	#, _6,,
# problem142.c:28:     assert(strcmp(func0("s1sdf3.asd"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC6	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L17:
# problem142.c:29:     assert(strcmp(func0("K.dll"), "Yes") == 0);
	lla	a0,.LC12	#,
	call	func0		#
	mv	a5,a0	# _7,
# problem142.c:29:     assert(strcmp(func0("K.dll"), "Yes") == 0);
	lla	a1,.LC4	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp191,
# problem142.c:29:     assert(strcmp(func0("K.dll"), "Yes") == 0);
	beq	a5,zero,.L18	#, _8,,
# problem142.c:29:     assert(strcmp(func0("K.dll"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC6	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L18:
# problem142.c:30:     assert(strcmp(func0("MY16FILE3.exe"), "Yes") == 0);
	lla	a0,.LC14	#,
	call	func0		#
	mv	a5,a0	# _9,
# problem142.c:30:     assert(strcmp(func0("MY16FILE3.exe"), "Yes") == 0);
	lla	a1,.LC4	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp192,
# problem142.c:30:     assert(strcmp(func0("MY16FILE3.exe"), "Yes") == 0);
	beq	a5,zero,.L19	#, _10,,
# problem142.c:30:     assert(strcmp(func0("MY16FILE3.exe"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC6	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L19:
# problem142.c:31:     assert(strcmp(func0("His12FILE94.exe"), "No") == 0);
	lla	a0,.LC16	#,
	call	func0		#
	mv	a5,a0	# _11,
# problem142.c:31:     assert(strcmp(func0("His12FILE94.exe"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp193,
# problem142.c:31:     assert(strcmp(func0("His12FILE94.exe"), "No") == 0);
	beq	a5,zero,.L20	#, _12,,
# problem142.c:31:     assert(strcmp(func0("His12FILE94.exe"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC6	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L20:
# problem142.c:32:     assert(strcmp(func0("_Y.txt"), "No") == 0);
	lla	a0,.LC18	#,
	call	func0		#
	mv	a5,a0	# _13,
# problem142.c:32:     assert(strcmp(func0("_Y.txt"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp194,
# problem142.c:32:     assert(strcmp(func0("_Y.txt"), "No") == 0);
	beq	a5,zero,.L21	#, _14,,
# problem142.c:32:     assert(strcmp(func0("_Y.txt"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC6	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L21:
# problem142.c:33:     assert(strcmp(func0("?aREYA.exe"), "No") == 0);
	lla	a0,.LC20	#,
	call	func0		#
	mv	a5,a0	# _15,
# problem142.c:33:     assert(strcmp(func0("?aREYA.exe"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp195,
# problem142.c:33:     assert(strcmp(func0("?aREYA.exe"), "No") == 0);
	beq	a5,zero,.L22	#, _16,,
# problem142.c:33:     assert(strcmp(func0("?aREYA.exe"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC6	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L22:
# problem142.c:34:     assert(strcmp(func0("/this_is_valid.dll"), "No") == 0);
	lla	a0,.LC22	#,
	call	func0		#
	mv	a5,a0	# _17,
# problem142.c:34:     assert(strcmp(func0("/this_is_valid.dll"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _17
	call	strcmp@plt	#
	mv	a5,a0	# tmp196,
# problem142.c:34:     assert(strcmp(func0("/this_is_valid.dll"), "No") == 0);
	beq	a5,zero,.L23	#, _18,,
# problem142.c:34:     assert(strcmp(func0("/this_is_valid.dll"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC6	#,
	lla	a0,.LC23	#,
	call	__assert_fail@plt	#
.L23:
# problem142.c:35:     assert(strcmp(func0("this_is_valid.wow"), "No") == 0);
	lla	a0,.LC24	#,
	call	func0		#
	mv	a5,a0	# _19,
# problem142.c:35:     assert(strcmp(func0("this_is_valid.wow"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _19
	call	strcmp@plt	#
	mv	a5,a0	# tmp197,
# problem142.c:35:     assert(strcmp(func0("this_is_valid.wow"), "No") == 0);
	beq	a5,zero,.L24	#, _20,,
# problem142.c:35:     assert(strcmp(func0("this_is_valid.wow"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC6	#,
	lla	a0,.LC25	#,
	call	__assert_fail@plt	#
.L24:
# problem142.c:36:     assert(strcmp(func0("this_is_valid.txt"), "Yes") == 0);
	lla	a0,.LC26	#,
	call	func0		#
	mv	a5,a0	# _21,
# problem142.c:36:     assert(strcmp(func0("this_is_valid.txt"), "Yes") == 0);
	lla	a1,.LC4	#,
	mv	a0,a5	#, _21
	call	strcmp@plt	#
	mv	a5,a0	# tmp198,
# problem142.c:36:     assert(strcmp(func0("this_is_valid.txt"), "Yes") == 0);
	beq	a5,zero,.L25	#, _22,,
# problem142.c:36:     assert(strcmp(func0("this_is_valid.txt"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC6	#,
	lla	a0,.LC27	#,
	call	__assert_fail@plt	#
.L25:
# problem142.c:37:     assert(strcmp(func0("this_is_valid.txtexe"), "No") == 0);
	lla	a0,.LC28	#,
	call	func0		#
	mv	a5,a0	# _23,
# problem142.c:37:     assert(strcmp(func0("this_is_valid.txtexe"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _23
	call	strcmp@plt	#
	mv	a5,a0	# tmp199,
# problem142.c:37:     assert(strcmp(func0("this_is_valid.txtexe"), "No") == 0);
	beq	a5,zero,.L26	#, _24,,
# problem142.c:37:     assert(strcmp(func0("this_is_valid.txtexe"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC6	#,
	lla	a0,.LC29	#,
	call	__assert_fail@plt	#
.L26:
# problem142.c:38:     assert(strcmp(func0("#this2_i4s_5valid.ten"), "No") == 0);
	lla	a0,.LC30	#,
	call	func0		#
	mv	a5,a0	# _25,
# problem142.c:38:     assert(strcmp(func0("#this2_i4s_5valid.ten"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _25
	call	strcmp@plt	#
	mv	a5,a0	# tmp200,
# problem142.c:38:     assert(strcmp(func0("#this2_i4s_5valid.ten"), "No") == 0);
	beq	a5,zero,.L27	#, _26,,
# problem142.c:38:     assert(strcmp(func0("#this2_i4s_5valid.ten"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC6	#,
	lla	a0,.LC31	#,
	call	__assert_fail@plt	#
.L27:
# problem142.c:39:     assert(strcmp(func0("@this1_is6_valid.exe"), "No") == 0);
	lla	a0,.LC32	#,
	call	func0		#
	mv	a5,a0	# _27,
# problem142.c:39:     assert(strcmp(func0("@this1_is6_valid.exe"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _27
	call	strcmp@plt	#
	mv	a5,a0	# tmp201,
# problem142.c:39:     assert(strcmp(func0("@this1_is6_valid.exe"), "No") == 0);
	beq	a5,zero,.L28	#, _28,,
# problem142.c:39:     assert(strcmp(func0("@this1_is6_valid.exe"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC6	#,
	lla	a0,.LC33	#,
	call	__assert_fail@plt	#
.L28:
# problem142.c:40:     assert(strcmp(func0("this_is_12valid.6exe4.txt"), "No") == 0);
	lla	a0,.LC34	#,
	call	func0		#
	mv	a5,a0	# _29,
# problem142.c:40:     assert(strcmp(func0("this_is_12valid.6exe4.txt"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _29
	call	strcmp@plt	#
	mv	a5,a0	# tmp202,
# problem142.c:40:     assert(strcmp(func0("this_is_12valid.6exe4.txt"), "No") == 0);
	beq	a5,zero,.L29	#, _30,,
# problem142.c:40:     assert(strcmp(func0("this_is_12valid.6exe4.txt"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,40		#,
	lla	a1,.LC6	#,
	lla	a0,.LC35	#,
	call	__assert_fail@plt	#
.L29:
# problem142.c:41:     assert(strcmp(func0("all.exe.txt"), "No") == 0);
	lla	a0,.LC36	#,
	call	func0		#
	mv	a5,a0	# _31,
# problem142.c:41:     assert(strcmp(func0("all.exe.txt"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _31
	call	strcmp@plt	#
	mv	a5,a0	# tmp203,
# problem142.c:41:     assert(strcmp(func0("all.exe.txt"), "No") == 0);
	beq	a5,zero,.L30	#, _32,,
# problem142.c:41:     assert(strcmp(func0("all.exe.txt"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC6	#,
	lla	a0,.LC37	#,
	call	__assert_fail@plt	#
.L30:
# problem142.c:42:     assert(strcmp(func0("I563_No.exe"), "Yes") == 0);
	lla	a0,.LC38	#,
	call	func0		#
	mv	a5,a0	# _33,
# problem142.c:42:     assert(strcmp(func0("I563_No.exe"), "Yes") == 0);
	lla	a1,.LC4	#,
	mv	a0,a5	#, _33
	call	strcmp@plt	#
	mv	a5,a0	# tmp204,
# problem142.c:42:     assert(strcmp(func0("I563_No.exe"), "Yes") == 0);
	beq	a5,zero,.L31	#, _34,,
# problem142.c:42:     assert(strcmp(func0("I563_No.exe"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC6	#,
	lla	a0,.LC39	#,
	call	__assert_fail@plt	#
.L31:
# problem142.c:43:     assert(strcmp(func0("Is3youfault.txt"), "Yes") == 0);
	lla	a0,.LC40	#,
	call	func0		#
	mv	a5,a0	# _35,
# problem142.c:43:     assert(strcmp(func0("Is3youfault.txt"), "Yes") == 0);
	lla	a1,.LC4	#,
	mv	a0,a5	#, _35
	call	strcmp@plt	#
	mv	a5,a0	# tmp205,
# problem142.c:43:     assert(strcmp(func0("Is3youfault.txt"), "Yes") == 0);
	beq	a5,zero,.L32	#, _36,,
# problem142.c:43:     assert(strcmp(func0("Is3youfault.txt"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,43		#,
	lla	a1,.LC6	#,
	lla	a0,.LC41	#,
	call	__assert_fail@plt	#
.L32:
# problem142.c:44:     assert(strcmp(func0("no_one#knows.dll"), "Yes") == 0);
	lla	a0,.LC42	#,
	call	func0		#
	mv	a5,a0	# _37,
# problem142.c:44:     assert(strcmp(func0("no_one#knows.dll"), "Yes") == 0);
	lla	a1,.LC4	#,
	mv	a0,a5	#, _37
	call	strcmp@plt	#
	mv	a5,a0	# tmp206,
# problem142.c:44:     assert(strcmp(func0("no_one#knows.dll"), "Yes") == 0);
	beq	a5,zero,.L33	#, _38,,
# problem142.c:44:     assert(strcmp(func0("no_one#knows.dll"), "Yes") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC6	#,
	lla	a0,.LC43	#,
	call	__assert_fail@plt	#
.L33:
# problem142.c:45:     assert(strcmp(func0("1I563_Yes3.exe"), "No") == 0);
	lla	a0,.LC44	#,
	call	func0		#
	mv	a5,a0	# _39,
# problem142.c:45:     assert(strcmp(func0("1I563_Yes3.exe"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _39
	call	strcmp@plt	#
	mv	a5,a0	# tmp207,
# problem142.c:45:     assert(strcmp(func0("1I563_Yes3.exe"), "No") == 0);
	beq	a5,zero,.L34	#, _40,,
# problem142.c:45:     assert(strcmp(func0("1I563_Yes3.exe"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC6	#,
	lla	a0,.LC45	#,
	call	__assert_fail@plt	#
.L34:
# problem142.c:46:     assert(strcmp(func0("I563_Yes3.txtt"), "No") == 0);
	lla	a0,.LC46	#,
	call	func0		#
	mv	a5,a0	# _41,
# problem142.c:46:     assert(strcmp(func0("I563_Yes3.txtt"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _41
	call	strcmp@plt	#
	mv	a5,a0	# tmp208,
# problem142.c:46:     assert(strcmp(func0("I563_Yes3.txtt"), "No") == 0);
	beq	a5,zero,.L35	#, _42,,
# problem142.c:46:     assert(strcmp(func0("I563_Yes3.txtt"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC6	#,
	lla	a0,.LC47	#,
	call	__assert_fail@plt	#
.L35:
# problem142.c:47:     assert(strcmp(func0("final..txt"), "No") == 0);
	lla	a0,.LC48	#,
	call	func0		#
	mv	a5,a0	# _43,
# problem142.c:47:     assert(strcmp(func0("final..txt"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _43
	call	strcmp@plt	#
	mv	a5,a0	# tmp209,
# problem142.c:47:     assert(strcmp(func0("final..txt"), "No") == 0);
	beq	a5,zero,.L36	#, _44,,
# problem142.c:47:     assert(strcmp(func0("final..txt"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC6	#,
	lla	a0,.LC49	#,
	call	__assert_fail@plt	#
.L36:
# problem142.c:48:     assert(strcmp(func0("final132"), "No") == 0);
	lla	a0,.LC50	#,
	call	func0		#
	mv	a5,a0	# _45,
# problem142.c:48:     assert(strcmp(func0("final132"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _45
	call	strcmp@plt	#
	mv	a5,a0	# tmp210,
# problem142.c:48:     assert(strcmp(func0("final132"), "No") == 0);
	beq	a5,zero,.L37	#, _46,,
# problem142.c:48:     assert(strcmp(func0("final132"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC6	#,
	lla	a0,.LC51	#,
	call	__assert_fail@plt	#
.L37:
# problem142.c:49:     assert(strcmp(func0("_f4indsartal132."), "No") == 0);
	lla	a0,.LC52	#,
	call	func0		#
	mv	a5,a0	# _47,
# problem142.c:49:     assert(strcmp(func0("_f4indsartal132."), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _47
	call	strcmp@plt	#
	mv	a5,a0	# tmp211,
# problem142.c:49:     assert(strcmp(func0("_f4indsartal132."), "No") == 0);
	beq	a5,zero,.L38	#, _48,,
# problem142.c:49:     assert(strcmp(func0("_f4indsartal132."), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,49		#,
	lla	a1,.LC6	#,
	lla	a0,.LC53	#,
	call	__assert_fail@plt	#
.L38:
# problem142.c:50:     assert(strcmp(func0(".txt"), "No") == 0);
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# _49,
# problem142.c:50:     assert(strcmp(func0(".txt"), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _49
	call	strcmp@plt	#
	mv	a5,a0	# tmp212,
# problem142.c:50:     assert(strcmp(func0(".txt"), "No") == 0);
	beq	a5,zero,.L39	#, _50,,
# problem142.c:50:     assert(strcmp(func0(".txt"), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC6	#,
	lla	a0,.LC54	#,
	call	__assert_fail@plt	#
.L39:
# problem142.c:51:     assert(strcmp(func0("s."), "No") == 0);
	lla	a0,.LC55	#,
	call	func0		#
	mv	a5,a0	# _51,
# problem142.c:51:     assert(strcmp(func0("s."), "No") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _51
	call	strcmp@plt	#
	mv	a5,a0	# tmp213,
# problem142.c:51:     assert(strcmp(func0("s."), "No") == 0);
	beq	a5,zero,.L40	#, _52,,
# problem142.c:51:     assert(strcmp(func0("s."), "No") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC6	#,
	lla	a0,.LC56	#,
	call	__assert_fail@plt	#
.L40:
# problem142.c:53:     return 0;
	li	a5,0		# _106,
# problem142.c:54: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
