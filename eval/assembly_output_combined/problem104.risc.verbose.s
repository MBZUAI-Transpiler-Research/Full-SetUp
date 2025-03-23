	.file	"problem104.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp86, n
	mv	a4,a1	# tmp88, m
	sw	a5,-36(s0)	# tmp87, n
	mv	a5,a4	# tmp89, tmp88
	sw	a5,-40(s0)	# tmp89, m
# problem104.c:5:     if (n > m) return "-1";
	lw	a5,-36(s0)		# tmp91, n
	mv	a4,a5	# tmp90, tmp91
	lw	a5,-40(s0)		# tmp93, m
	sext.w	a4,a4	# tmp94, tmp90
	sext.w	a5,a5	# tmp95, tmp92
	ble	a4,a5,.L2	#, tmp94, tmp95,
# problem104.c:5:     if (n > m) return "-1";
	lla	a5,.LC0	# _15,
	j	.L3		#
.L2:
# problem104.c:6:     int num = (m + n) / 2;
	lw	a5,-40(s0)		# tmp98, m
	mv	a4,a5	# tmp97, tmp98
	lw	a5,-36(s0)		# tmp100, n
	addw	a5,a4,a5	# tmp99, tmp96, tmp97
	sext.w	a5,a5	# _1, tmp96
# problem104.c:6:     int num = (m + n) / 2;
	srliw	a4,a5,31	#, tmp102, tmp101
	addw	a5,a4,a5	# tmp101, tmp103, tmp102
	sraiw	a5,a5,1	#, tmp104, tmp103
	sw	a5,-32(s0)	# tmp104, num
# problem104.c:7:     char* out = (char*)malloc(33);
	li	a0,33		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp105,
	sd	a5,-24(s0)	# tmp105, out
# problem104.c:8:     out[0] = '\0';
	ld	a5,-24(s0)		# tmp106, out
	sb	zero,0(a5)	#, *out_23
# problem104.c:10:     int index = 32;
	li	a5,32		# tmp107,
	sw	a5,-28(s0)	# tmp107, index
# problem104.c:11:     out[index--] = '\0';
	lw	a5,-28(s0)		# index.0_2, index
	addiw	a4,a5,-1	#, tmp108, index.0_2
	sw	a4,-28(s0)	# tmp108, index
	mv	a4,a5	# _3, index.0_2
# problem104.c:11:     out[index--] = '\0';
	ld	a5,-24(s0)		# tmp109, out
	add	a5,a5,a4	# _3, _4, tmp109
# problem104.c:11:     out[index--] = '\0';
	sb	zero,0(a5)	#, *_4
.L4:
# problem104.c:14:         out[index--] = '0' + num % 2;
	lw	a5,-32(s0)		# tmp112, num
	mv	a4,a5	# tmp111, tmp112
	sraiw	a5,a4,31	#, tmp113, tmp111
	srliw	a5,a5,31	#, tmp114, tmp113
	addw	a4,a4,a5	# tmp114, tmp115, tmp111
	andi	a4,a4,1	#, tmp116, tmp115
	subw	a5,a4,a5	# tmp117, tmp116, tmp114
	sext.w	a5,a5	# _5, tmp117
# problem104.c:14:         out[index--] = '0' + num % 2;
	andi	a4,a5,0xff	# _6, _5
# problem104.c:14:         out[index--] = '0' + num % 2;
	lw	a5,-28(s0)		# index.1_7, index
	addiw	a3,a5,-1	#, tmp118, index.1_7
	sw	a3,-28(s0)	# tmp118, index
	mv	a3,a5	# _8, index.1_7
# problem104.c:14:         out[index--] = '0' + num % 2;
	ld	a5,-24(s0)		# tmp119, out
	add	a5,a5,a3	# _8, _9, tmp119
# problem104.c:14:         out[index--] = '0' + num % 2;
	addiw	a4,a4,48	#, tmp120, _6
	andi	a4,a4,0xff	# _10, tmp120
# problem104.c:14:         out[index--] = '0' + num % 2;
	sb	a4,0(a5)	# _10, *_9
# problem104.c:15:         num /= 2;
	lw	a5,-32(s0)		# tmp123, num
	srliw	a4,a5,31	#, tmp124, tmp122
	addw	a5,a4,a5	# tmp122, tmp125, tmp124
	sraiw	a5,a5,1	#, tmp126, tmp125
	sw	a5,-32(s0)	# tmp126, num
# problem104.c:16:     } while (num > 0);
	lw	a5,-32(s0)		# tmp128, num
	sext.w	a5,a5	# tmp129, tmp127
	bgt	a5,zero,.L4	#, tmp129,,
# problem104.c:18:     return &out[index + 1]; 
	lw	a5,-28(s0)		# _11, index
	addi	a5,a5,1	#, _12, _11
# problem104.c:18:     return &out[index + 1]; 
	ld	a4,-24(s0)		# tmp130, out
	add	a5,a4,a5	# _12, _15, tmp130
.L3:
# problem104.c:19: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
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
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem104.c:27:     assert(strcmp(func0(1, 5), "11") == 0);
	li	a1,5		#,
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# _1,
	lla	a1,.LC1	#,
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp98,
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
	lla	a1,.LC4	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp99,
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
	lla	a1,.LC6	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp100,
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
	lla	a1,.LC8	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp101,
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
	lla	a1,.LC10	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp102,
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
	lla	a1,.LC12	#,
	mv	a0,a5	#, _11
	call	strcmp@plt	#
	mv	a5,a0	# tmp103,
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
	lla	a1,.LC14	#,
	mv	a0,a5	#, _13
	call	strcmp@plt	#
	mv	a5,a0	# tmp104,
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
	lla	a1,.LC16	#,
	mv	a0,a5	#, _15
	call	strcmp@plt	#
	mv	a5,a0	# tmp105,
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
	lla	a1,.LC18	#,
	mv	a0,a5	#, _17
	call	strcmp@plt	#
	mv	a5,a0	# tmp106,
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
	lla	a1,.LC0	#,
	mv	a0,a5	#, _19
	call	strcmp@plt	#
	mv	a5,a0	# tmp107,
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
	lla	a1,.LC0	#,
	mv	a0,a5	#, _21
	call	strcmp@plt	#
	mv	a5,a0	# tmp108,
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
	lla	a1,.LC22	#,
	mv	a0,a5	#, _23
	call	strcmp@plt	#
	mv	a5,a0	# tmp109,
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
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
