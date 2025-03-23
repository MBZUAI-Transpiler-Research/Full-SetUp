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
	.string	"m"
	.align	3
.LC1:
	.string	"cm"
	.align	3
.LC2:
	.string	"d"
	.align	3
.LC3:
	.string	"cd"
	.align	3
.LC4:
	.string	"c"
	.align	3
.LC5:
	.string	"xc"
	.align	3
.LC6:
	.string	"l"
	.align	3
.LC7:
	.string	"xl"
	.align	3
.LC8:
	.string	"x"
	.align	3
.LC9:
	.string	"ix"
	.align	3
.LC10:
	.string	"v"
	.align	3
.LC11:
	.string	"iv"
	.align	3
.LC12:
	.string	"i"
	.data
	.align	3
.LC15:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.dword	.LC10
	.dword	.LC11
	.dword	.LC12
	.section	.rodata
	.align	3
.LC14:
	.word	1000
	.word	900
	.word	500
	.word	400
	.word	100
	.word	90
	.word	50
	.word	40
	.word	10
	.word	9
	.word	5
	.word	4
	.word	1
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-208	#,,
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	addi	s0,sp,208	#,,
	mv	a5,a0	# tmp75, number
	sd	a1,-208(s0)	# result, result
	sw	a5,-196(s0)	# tmp76, number
# eval/problem157//code.c:4: void func0(int number, char *result) {
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp116, __stack_chk_guard
	sd	a4, -24(s0)	# tmp116, D.2103
	li	a4, 0	# tmp116
# eval/problem157//code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	lla	a4,.LC15	# tmp78,
	addi	a5,s0,-128	#, tmp79,
	mv	a3,a4	# tmp80, tmp78
	li	a4,104		# tmp81,
	mv	a2,a4	#, tmp81
	mv	a1,a3	#, tmp80
	mv	a0,a5	#, tmp79
	call	memcpy@plt	#
# eval/problem157//code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	lla	a5,.LC14	# tmp83,
	ld	a6,0(a5)		# tmp84,
	ld	a0,8(a5)		# tmp85,
	ld	a1,16(a5)		# tmp86,
	ld	a2,24(a5)		# tmp87,
	ld	a3,32(a5)		# tmp88,
	ld	a4,40(a5)		# tmp89,
	sd	a6,-184(s0)	# tmp84, num
	sd	a0,-176(s0)	# tmp85, num
	sd	a1,-168(s0)	# tmp86, num
	sd	a2,-160(s0)	# tmp87, num
	sd	a3,-152(s0)	# tmp88, num
	sd	a4,-144(s0)	# tmp89, num
	lw	a5,48(a5)		# tmp90,
	sw	a5,-136(s0)	# tmp90, num
# eval/problem157//code.c:7:     int pos = 0;
	sw	zero,-188(s0)	#, pos
# eval/problem157//code.c:8:     result[0] = '\0';
	ld	a5,-208(s0)		# tmp91, result
	sb	zero,0(a5)	#, *result_13(D)
# eval/problem157//code.c:10:     while(number > 0) {
	j	.L2		#
.L4:
# eval/problem157//code.c:12:             strcat(result, rep[pos]);
	lw	a5,-188(s0)		# tmp92, pos
	slli	a5,a5,3	#, tmp93, tmp92
	addi	a5,a5,-16	#, tmp120, tmp93
	add	a5,a5,s0	#, tmp93, tmp120
	ld	a5,-112(a5)		# _1, rep[pos_6]
	mv	a1,a5	#, _1
	ld	a0,-208(s0)		#, result
	call	strcat@plt	#
# eval/problem157//code.c:13:             number -= num[pos];
	lw	a5,-188(s0)		# tmp94, pos
	slli	a5,a5,2	#, tmp95, tmp94
	addi	a5,a5,-16	#, tmp121, tmp95
	add	a5,a5,s0	#, tmp95, tmp121
	lw	a5,-168(a5)		# _2, num[pos_6]
# eval/problem157//code.c:13:             number -= num[pos];
	lw	a4,-196(s0)		# tmp98, number
	subw	a5,a4,a5	# tmp96, tmp97, _2
	sw	a5,-196(s0)	# tmp96, number
.L3:
# eval/problem157//code.c:11:         while (number >= num[pos]) {
	lw	a5,-188(s0)		# tmp99, pos
	slli	a5,a5,2	#, tmp100, tmp99
	addi	a5,a5,-16	#, tmp122, tmp100
	add	a5,a5,s0	#, tmp100, tmp122
	lw	a4,-168(a5)		# _3, num[pos_6]
# eval/problem157//code.c:11:         while (number >= num[pos]) {
	lw	a5,-196(s0)		# tmp102, number
	sext.w	a5,a5	# tmp103, tmp101
	bge	a5,a4,.L4	#, tmp103, tmp104,
# eval/problem157//code.c:15:         if (number > 0) pos++;
	lw	a5,-196(s0)		# tmp106, number
	sext.w	a5,a5	# tmp107, tmp105
	ble	a5,zero,.L2	#, tmp107,,
# eval/problem157//code.c:15:         if (number > 0) pos++;
	lw	a5,-188(s0)		# tmp110, pos
	addiw	a5,a5,1	#, tmp108, tmp109
	sw	a5,-188(s0)	# tmp108, pos
.L2:
# eval/problem157//code.c:10:     while(number > 0) {
	lw	a5,-196(s0)		# tmp112, number
	sext.w	a5,a5	# tmp113, tmp111
	bgt	a5,zero,.L3	#, tmp113,,
# eval/problem157//code.c:17: }
	nop	
	la	a5,__stack_chk_guard		# tmp114,
	ld	a4, -24(s0)	# tmp117, D.2103
	ld	a5, 0(a5)	# tmp115, __stack_chk_guard
	xor	a5, a4, a5	# tmp115, tmp117
	li	a4, 0	# tmp117
	beq	a5,zero,.L6	#, tmp115,,
	call	__stack_chk_fail@plt	#
.L6:
	ld	ra,200(sp)		#,
	ld	s0,192(sp)		#,
	addi	sp,sp,208	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
