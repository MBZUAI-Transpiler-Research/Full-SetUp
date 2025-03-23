	.file	"problem56.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-2032	#,,
	sd	ra,2024(sp)	#,
	sd	s0,2016(sp)	#,
	addi	s0,sp,2032	#,,
	addi	sp,sp,-2016	#,,
	mv	a4,a0	# tmp79, n
	li	a5,-4096		# tmp80,
	addi	a5,a5,-16	#, tmp150, tmp80
	add	a5,a5,s0	#, tmp81, tmp150
	sw	a4,76(a5)	# tmp82, n
# problem56.c:3: int func0(int n) {
	la	a5,__stack_chk_guard		# tmp83,
	ld	a4, 0(a5)	# tmp147, __stack_chk_guard
	sd	a4, -24(s0)	# tmp147, D.1939
	li	a4, 0	# tmp147
# problem56.c:4:     int f[1000] = {0};
	li	a5,-4096		# tmp84,
	addi	a5,a5,-16	#, tmp152, tmp84
	add	a5,a5,s0	#, tmp85, tmp152
	addi	a4,a5,88	#, tmp86, tmp85
	li	a5,4096		# tmp88,
	addi	a5,a5,-96	#, tmp87, tmp88
	mv	a2,a5	#, tmp87
	li	a1,0		#,
	mv	a0,a4	#, tmp86
	call	memset@plt	#
# problem56.c:5:     f[0] = 0;
	li	a5,-4096		# tmp90,
	addi	a5,a5,-16	#, tmp153, tmp90
	add	a5,a5,s0	#, tmp91, tmp153
	sw	zero,88(a5)	#, f[0]
# problem56.c:6:     f[1] = 1;
	li	a5,-4096		# tmp92,
	addi	a5,a5,-16	#, tmp154, tmp92
	add	a5,a5,s0	#, tmp93, tmp154
	li	a4,1		# tmp94,
	sw	a4,92(a5)	# tmp94, f[1]
# problem56.c:7:     for (int i = 2; i <= n; i++)
	li	a5,-4096		# tmp95,
	addi	a5,a5,-16	#, tmp155, tmp95
	add	a5,a5,s0	#, tmp96, tmp155
	li	a4,2		# tmp97,
	sw	a4,84(a5)	# tmp97, i
# problem56.c:7:     for (int i = 2; i <= n; i++)
	j	.L2		#
.L3:
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a5,-4096		# tmp98,
	addi	a5,a5,-16	#, tmp156, tmp98
	add	a5,a5,s0	#, tmp99, tmp156
	lw	a5,84(a5)		# tmp102, i
	addiw	a5,a5,-1	#, tmp100, tmp101
	sext.w	a5,a5	# _1, tmp100
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a4,-4096		# tmp103,
	addi	a4,a4,-16	#, tmp157, tmp103
	add	a4,a4,s0	#, tmp104, tmp157
	slli	a5,a5,2	#, tmp105, _1
	add	a5,a4,a5	# tmp105, tmp105, tmp104
	lw	a4,88(a5)		# _2, f[_1]
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a5,-4096		# tmp106,
	addi	a5,a5,-16	#, tmp158, tmp106
	add	a5,a5,s0	#, tmp107, tmp158
	lw	a5,84(a5)		# tmp110, i
	addiw	a5,a5,-2	#, tmp108, tmp109
	sext.w	a5,a5	# _3, tmp108
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a3,-4096		# tmp111,
	addi	a3,a3,-16	#, tmp159, tmp111
	add	a3,a3,s0	#, tmp112, tmp159
	slli	a5,a5,2	#, tmp113, _3
	add	a5,a3,a5	# tmp113, tmp113, tmp112
	lw	a5,88(a5)		# _4, f[_3]
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	addw	a5,a4,a5	# _4, tmp114, _2
	sext.w	a4,a5	# _5, tmp114
# problem56.c:8:         f[i] = f[i - 1] + f[i - 2];
	li	a5,-4096		# tmp115,
	addi	a5,a5,-16	#, tmp160, tmp115
	add	a3,a5,s0	#, tmp116, tmp160
	li	a5,-4096		# tmp117,
	addi	a5,a5,-16	#, tmp161, tmp117
	add	a5,a5,s0	#, tmp118, tmp161
	lw	a5,84(a5)		# tmp119, i
	slli	a5,a5,2	#, tmp120, tmp119
	add	a5,a3,a5	# tmp120, tmp120, tmp116
	sw	a4,88(a5)	# _5, f[i_6]
# problem56.c:7:     for (int i = 2; i <= n; i++)
	li	a5,-4096		# tmp121,
	addi	a5,a5,-16	#, tmp162, tmp121
	add	a5,a5,s0	#, tmp122, tmp162
	li	a4,-4096		# tmp123,
	addi	a4,a4,-16	#, tmp163, tmp123
	add	a4,a4,s0	#, tmp124, tmp163
	lw	a4,84(a4)		# tmp127, i
	addiw	a4,a4,1	#, tmp125, tmp126
	sw	a4,84(a5)	# tmp125, i
.L2:
# problem56.c:7:     for (int i = 2; i <= n; i++)
	li	a5,-4096		# tmp128,
	addi	a5,a5,-16	#, tmp164, tmp128
	add	a4,a5,s0	#, tmp129, tmp164
	li	a5,-4096		# tmp130,
	addi	a5,a5,-16	#, tmp165, tmp130
	add	a5,a5,s0	#, tmp131, tmp165
	lw	a4,84(a4)		# tmp133, i
	lw	a5,76(a5)		# tmp135, n
	sext.w	a4,a4	# tmp136, tmp132
	sext.w	a5,a5	# tmp137, tmp134
	ble	a4,a5,.L3	#, tmp136, tmp137,
# problem56.c:9:     return f[n];
	li	a5,-4096		# tmp138,
	addi	a5,a5,-16	#, tmp166, tmp138
	add	a4,a5,s0	#, tmp139, tmp166
	li	a5,-4096		# tmp140,
	addi	a5,a5,-16	#, tmp167, tmp140
	add	a5,a5,s0	#, tmp141, tmp167
	lw	a5,76(a5)		# tmp142, n
	slli	a5,a5,2	#, tmp143, tmp142
	add	a5,a4,a5	# tmp143, tmp143, tmp139
	lw	a5,88(a5)		# _14, f[n_13(D)]
	mv	a4,a5	# <retval>, _14
# problem56.c:10: }
	la	a5,__stack_chk_guard		# tmp145,
	ld	a3, -24(s0)	# tmp148, D.1939
	ld	a5, 0(a5)	# tmp146, __stack_chk_guard
	xor	a5, a3, a5	# tmp146, tmp148
	li	a3, 0	# tmp148
	beq	a5,zero,.L5	#, tmp146,,
	call	__stack_chk_fail@plt	#
.L5:
	mv	a0,a4	#, <retval>
	addi	sp,sp,2016	#,,
	ld	ra,2024(sp)		#,
	ld	s0,2016(sp)		#,
	addi	sp,sp,2032	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem56.c"
	.align	3
.LC1:
	.string	"func0(10) == 55"
	.align	3
.LC2:
	.string	"func0(1) == 1"
	.align	3
.LC3:
	.string	"func0(8) == 21"
	.align	3
.LC4:
	.string	"func0(11) == 89"
	.align	3
.LC5:
	.string	"func0(12) == 144"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem56.c:17:     assert(func0(10) == 55);
	li	a0,10		#,
	call	func0		#
	mv	a5,a0	# tmp79,
	mv	a4,a5	# tmp80, _1
	li	a5,55		# tmp81,
	beq	a4,a5,.L7	#, tmp80, tmp81,
# problem56.c:17:     assert(func0(10) == 55);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,17		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L7:
# problem56.c:18:     assert(func0(1) == 1);
	li	a0,1		#,
	call	func0		#
	mv	a5,a0	# tmp82,
	mv	a4,a5	# tmp83, _2
	li	a5,1		# tmp84,
	beq	a4,a5,.L8	#, tmp83, tmp84,
# problem56.c:18:     assert(func0(1) == 1);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,18		#,
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem56.c:19:     assert(func0(8) == 21);
	li	a0,8		#,
	call	func0		#
	mv	a5,a0	# tmp85,
	mv	a4,a5	# tmp86, _3
	li	a5,21		# tmp87,
	beq	a4,a5,.L9	#, tmp86, tmp87,
# problem56.c:19:     assert(func0(8) == 21);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,19		#,
	lla	a1,.LC0	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem56.c:20:     assert(func0(11) == 89);
	li	a0,11		#,
	call	func0		#
	mv	a5,a0	# tmp88,
	mv	a4,a5	# tmp89, _4
	li	a5,89		# tmp90,
	beq	a4,a5,.L10	#, tmp89, tmp90,
# problem56.c:20:     assert(func0(11) == 89);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,20		#,
	lla	a1,.LC0	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L10:
# problem56.c:21:     assert(func0(12) == 144);
	li	a0,12		#,
	call	func0		#
	mv	a5,a0	# tmp91,
	mv	a4,a5	# tmp92, _5
	li	a5,144		# tmp93,
	beq	a4,a5,.L11	#, tmp92, tmp93,
# problem56.c:21:     assert(func0(12) == 144);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,21		#,
	lla	a1,.LC0	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L11:
# problem56.c:23:     return 0;
	li	a5,0		# _17,
# problem56.c:24: }
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
