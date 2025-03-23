	.file	"problem104.c"
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
	.string	"-1"
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
	mv	a5,a0	# tmp148, n
	mv	a4,a1	# tmp150, m
	sw	a5,-36(s0)	# tmp149, n
	mv	a5,a4	# tmp151, tmp150
	sw	a5,-40(s0)	# tmp151, m
# problem104.c:5:     if (n > m) return "-1";
	lw	a5,-36(s0)		# tmp153, n
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-40(s0)		# tmp155, m
	sext.w	a4,a4	# tmp156, tmp152
	sext.w	a5,a5	# tmp157, tmp154
	ble	a4,a5,.L2	#, tmp156, tmp157,
# problem104.c:5:     if (n > m) return "-1";
	lla	a5,.LC0	# _15,
# problem104.c:5:     if (n > m) return "-1";
	j	.L3		#
.L2:
# problem104.c:6:     int num = (m + n) / 2;
	lw	a5,-40(s0)		# tmp160, m
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-36(s0)		# tmp162, n
	addw	a5,a4,a5	# tmp161, tmp158, tmp159
	sext.w	a5,a5	# _1, tmp158
# problem104.c:6:     int num = (m + n) / 2;
	srliw	a4,a5,31	#, tmp164, tmp163
	addw	a5,a4,a5	# tmp163, tmp165, tmp164
	sraiw	a5,a5,1	#, tmp166, tmp165
	sw	a5,-32(s0)	# tmp166, num
# problem104.c:7:     char* out = (char*)malloc(33);
	li	a0,33		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp167,
	sd	a5,-24(s0)	# tmp167, out
# problem104.c:8:     out[0] = '\0';
	ld	a5,-24(s0)		# tmp168, out
	sb	zero,0(a5)	#, *out_23
# problem104.c:10:     int index = 32;
	li	a5,32		# tmp169,
	sw	a5,-28(s0)	# tmp169, index
# problem104.c:11:     out[index--] = '\0';
	lw	a5,-28(s0)		# index.0_2, index
	addiw	a4,a5,-1	#, tmp170, index.0_2
	sw	a4,-28(s0)	# tmp170, index
	mv	a4,a5	# _3, index.0_2
# problem104.c:11:     out[index--] = '\0';
	ld	a5,-24(s0)		# tmp171, out
	add	a5,a5,a4	# _3, _4, tmp171
# problem104.c:11:     out[index--] = '\0';
	sb	zero,0(a5)	#, *_4
.L4:
# problem104.c:14:         out[index--] = '0' + num % 2;
	lw	a5,-32(s0)		# tmp174, num
	mv	a4,a5	# tmp173, tmp174
	sraiw	a5,a4,31	#, tmp175, tmp173
	srliw	a5,a5,31	#, tmp176, tmp175
	addw	a4,a4,a5	# tmp176, tmp177, tmp173
	andi	a4,a4,1	#, tmp178, tmp177
	subw	a5,a4,a5	# tmp179, tmp178, tmp176
	sext.w	a5,a5	# _5, tmp179
# problem104.c:14:         out[index--] = '0' + num % 2;
	andi	a4,a5,0xff	# _6, _5
# problem104.c:14:         out[index--] = '0' + num % 2;
	lw	a5,-28(s0)		# index.1_7, index
	addiw	a3,a5,-1	#, tmp180, index.1_7
	sw	a3,-28(s0)	# tmp180, index
	mv	a3,a5	# _8, index.1_7
# problem104.c:14:         out[index--] = '0' + num % 2;
	ld	a5,-24(s0)		# tmp181, out
	add	a5,a5,a3	# _8, _9, tmp181
# problem104.c:14:         out[index--] = '0' + num % 2;
	addiw	a4,a4,48	#, tmp182, _6
	andi	a4,a4,0xff	# _10, tmp182
# problem104.c:14:         out[index--] = '0' + num % 2;
	sb	a4,0(a5)	# _10, *_9
# problem104.c:15:         num /= 2;
	lw	a5,-32(s0)		# tmp185, num
	srliw	a4,a5,31	#, tmp186, tmp184
	addw	a5,a4,a5	# tmp184, tmp187, tmp186
	sraiw	a5,a5,1	#, tmp188, tmp187
	sw	a5,-32(s0)	# tmp188, num
# problem104.c:16:     } while (num > 0);
	lw	a5,-32(s0)		# tmp190, num
	sext.w	a5,a5	# tmp191, tmp189
	bgt	a5,zero,.L4	#, tmp191,,
# problem104.c:18:     return &out[index + 1]; 
	lw	a5,-28(s0)		# _11, index
	addi	a5,a5,1	#, _12, _11
# problem104.c:18:     return &out[index + 1]; 
	ld	a4,-24(s0)		# tmp192, out
	add	a5,a4,a5	# _12, _15, tmp192
.L3:
# problem104.c:19: }
	mv	a0,a5	#, <retval>
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
	.section	.rodata
	.align	3
.LC1:
	.string	"11"
	.align	3
.LC2:
	.string	"problem104.c"
	.align	3
.LC3:
	.string	"strcmp(func0(1, 5), \"11\") == 0"
	.align	3
.LC4:
	.string	"1010"
	.align	3
.LC5:
	.string	"strcmp(func0(7, 13), \"1010\") == 0"
	.align	3
.LC6:
	.string	"1111001010"
	.align	3
.LC7:
	.string	"strcmp(func0(964, 977), \"1111001010\") == 0"
	.align	3
.LC8:
	.string	"1111100100"
	.align	3
.LC9:
	.string	"strcmp(func0(996, 997), \"1111100100\") == 0"
	.align	3
.LC10:
	.string	"1011000001"
	.align	3
.LC11:
	.string	"strcmp(func0(560, 851), \"1011000001\") == 0"
	.align	3
.LC12:
	.string	"101101101"
	.align	3
.LC13:
	.string	"strcmp(func0(185, 546), \"101101101\") == 0"
	.align	3
.LC14:
	.string	"110101101"
	.align	3
.LC15:
	.string	"strcmp(func0(362, 496), \"110101101\") == 0"
	.align	3
.LC16:
	.string	"1001110010"
	.align	3
.LC17:
	.string	"strcmp(func0(350, 902), \"1001110010\") == 0"
	.align	3
.LC18:
	.string	"11010111"
	.align	3
.LC19:
	.string	"strcmp(func0(197, 233), \"11010111\") == 0"
	.align	3
.LC20:
	.string	"strcmp(func0(7, 5), \"-1\") == 0"
	.align	3
.LC21:
	.string	"strcmp(func0(5, 1), \"-1\") == 0"
	.align	3
.LC22:
	.string	"101"
	.align	3
.LC23:
	.string	"strcmp(func0(5, 5), \"101\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem104.c:27:     assert(strcmp(func0(1, 5), "11") == 0);
	li	a1,5		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# _1,
# problem104.c:27:     assert(strcmp(func0(1, 5), "11") == 0);
	lla	a1,.LC1	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp160,
# problem104.c:27:     assert(strcmp(func0(1, 5), "11") == 0);
	beq	a5,zero,.L6	#, _2,,
# problem104.c:27:     assert(strcmp(func0(1, 5), "11") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L6:
# problem104.c:28:     assert(strcmp(func0(7, 13), "1010") == 0);
	li	a1,13		#,
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# _3,
# problem104.c:28:     assert(strcmp(func0(7, 13), "1010") == 0);
	lla	a1,.LC4	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp161,
# problem104.c:28:     assert(strcmp(func0(7, 13), "1010") == 0);
	beq	a5,zero,.L7	#, _4,,
# problem104.c:28:     assert(strcmp(func0(7, 13), "1010") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L7:
# problem104.c:29:     assert(strcmp(func0(964, 977), "1111001010") == 0);
	li	a1,977		#,
	li	a0,964		#,
	call	func0		#
	mv	a5,a0	# _5,
# problem104.c:29:     assert(strcmp(func0(964, 977), "1111001010") == 0);
	lla	a1,.LC6	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp162,
# problem104.c:29:     assert(strcmp(func0(964, 977), "1111001010") == 0);
	beq	a5,zero,.L8	#, _6,,
# problem104.c:29:     assert(strcmp(func0(964, 977), "1111001010") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L8:
# problem104.c:30:     assert(strcmp(func0(996, 997), "1111100100") == 0);
	li	a1,997		#,
	li	a0,996		#,
	call	func0		#
	mv	a5,a0	# _7,
# problem104.c:30:     assert(strcmp(func0(996, 997), "1111100100") == 0);
	lla	a1,.LC8	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp163,
# problem104.c:30:     assert(strcmp(func0(996, 997), "1111100100") == 0);
	beq	a5,zero,.L9	#, _8,,
# problem104.c:30:     assert(strcmp(func0(996, 997), "1111100100") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L9:
# problem104.c:31:     assert(strcmp(func0(560, 851), "1011000001") == 0);
	li	a1,851		#,
	li	a0,560		#,
	call	func0		#
	mv	a5,a0	# _9,
# problem104.c:31:     assert(strcmp(func0(560, 851), "1011000001") == 0);
	lla	a1,.LC10	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp164,
# problem104.c:31:     assert(strcmp(func0(560, 851), "1011000001") == 0);
	beq	a5,zero,.L10	#, _10,,
# problem104.c:31:     assert(strcmp(func0(560, 851), "1011000001") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L10:
# problem104.c:32:     assert(strcmp(func0(185, 546), "101101101") == 0);
	li	a1,546		#,
	li	a0,185		#,
	call	func0		#
	mv	a5,a0	# _11,
# problem104.c:32:     assert(strcmp(func0(185, 546), "101101101") == 0);
	lla	a1,.LC12	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp165,
# problem104.c:32:     assert(strcmp(func0(185, 546), "101101101") == 0);
	beq	a5,zero,.L11	#, _12,,
# problem104.c:32:     assert(strcmp(func0(185, 546), "101101101") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC2	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L11:
# problem104.c:33:     assert(strcmp(func0(362, 496), "110101101") == 0);
	li	a1,496		#,
	li	a0,362		#,
	call	func0		#
	mv	a5,a0	# _13,
# problem104.c:33:     assert(strcmp(func0(362, 496), "110101101") == 0);
	lla	a1,.LC14	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp166,
# problem104.c:33:     assert(strcmp(func0(362, 496), "110101101") == 0);
	beq	a5,zero,.L12	#, _14,,
# problem104.c:33:     assert(strcmp(func0(362, 496), "110101101") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC2	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L12:
# problem104.c:34:     assert(strcmp(func0(350, 902), "1001110010") == 0);
	li	a1,902		#,
	li	a0,350		#,
	call	func0		#
	mv	a5,a0	# _15,
# problem104.c:34:     assert(strcmp(func0(350, 902), "1001110010") == 0);
	lla	a1,.LC16	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp167,
# problem104.c:34:     assert(strcmp(func0(350, 902), "1001110010") == 0);
	beq	a5,zero,.L13	#, _16,,
# problem104.c:34:     assert(strcmp(func0(350, 902), "1001110010") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC2	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L13:
# problem104.c:35:     assert(strcmp(func0(197, 233), "11010111") == 0);
	li	a1,233		#,
	li	a0,197		#,
	call	func0		#
	mv	a5,a0	# _17,
# problem104.c:35:     assert(strcmp(func0(197, 233), "11010111") == 0);
	lla	a1,.LC18	#,
	mv	a0,a5	#, _17
	call	strcmp@plt	#
	mv	a5,a0	# tmp168,
# problem104.c:35:     assert(strcmp(func0(197, 233), "11010111") == 0);
	beq	a5,zero,.L14	#, _18,,
# problem104.c:35:     assert(strcmp(func0(197, 233), "11010111") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC2	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L14:
# problem104.c:36:     assert(strcmp(func0(7, 5), "-1") == 0);
	li	a1,5		#,
	li	a0,7		#,
	call	func0		#
	mv	a5,a0	# _19,
# problem104.c:36:     assert(strcmp(func0(7, 5), "-1") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _19
	call	strcmp@plt	#
	mv	a5,a0	# tmp169,
# problem104.c:36:     assert(strcmp(func0(7, 5), "-1") == 0);
	beq	a5,zero,.L15	#, _20,,
# problem104.c:36:     assert(strcmp(func0(7, 5), "-1") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,36		#,
	lla	a1,.LC2	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L15:
# problem104.c:37:     assert(strcmp(func0(5, 1), "-1") == 0);
	li	a1,1		#,
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# _21,
# problem104.c:37:     assert(strcmp(func0(5, 1), "-1") == 0);
	lla	a1,.LC0	#,
	mv	a0,a5	#, _21
	call	strcmp@plt	#
	mv	a5,a0	# tmp170,
# problem104.c:37:     assert(strcmp(func0(5, 1), "-1") == 0);
	beq	a5,zero,.L16	#, _22,,
# problem104.c:37:     assert(strcmp(func0(5, 1), "-1") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,37		#,
	lla	a1,.LC2	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L16:
# problem104.c:38:     assert(strcmp(func0(5, 5), "101") == 0);
	li	a1,5		#,
	li	a0,5		#,
	call	func0		#
	mv	a5,a0	# _23,
# problem104.c:38:     assert(strcmp(func0(5, 5), "101") == 0);
	lla	a1,.LC22	#,
	mv	a0,a5	#, _23
	call	strcmp@plt	#
	mv	a5,a0	# tmp171,
# problem104.c:38:     assert(strcmp(func0(5, 5), "101") == 0);
	beq	a5,zero,.L17	#, _24,,
# problem104.c:38:     assert(strcmp(func0(5, 5), "101") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC2	#,
	lla	a0,.LC23	#,
	call	__assert_fail@plt	#
.L17:
# problem104.c:40:     return 0;
	li	a5,0		# _50,
# problem104.c:41: }
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
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
