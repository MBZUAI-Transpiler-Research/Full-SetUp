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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-208	#,,
	.cfi_def_cfa_offset 208
	sd	ra,200(sp)	#,
	sd	s0,192(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,208	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp137, number
	sd	a1,-208(s0)	# result, result
	sw	a5,-196(s0)	# tmp138, number
# eval/problem157//code.c:4: void func0(int number, char *result) {
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp178, __stack_chk_guard
	sd	a4, -24(s0)	# tmp178, D.2948
	li	a4, 0	# tmp178
# eval/problem157//code.c:5:     const char *rep[] = {"m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"};
	lla	a4,.LC15	# tmp140,
	addi	a5,s0,-128	#, tmp141,
	mv	a3,a4	# tmp142, tmp140
	li	a4,104		# tmp143,
	mv	a2,a4	#, tmp143
	mv	a1,a3	#, tmp142
	mv	a0,a5	#, tmp141
	call	memcpy@plt	#
# eval/problem157//code.c:6:     const int num[] = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
	lla	a5,.LC14	# tmp145,
	ld	a6,0(a5)		# tmp146,
	ld	a0,8(a5)		# tmp147,
	ld	a1,16(a5)		# tmp148,
	ld	a2,24(a5)		# tmp149,
	ld	a3,32(a5)		# tmp150,
	ld	a4,40(a5)		# tmp151,
	sd	a6,-184(s0)	# tmp146, num
	sd	a0,-176(s0)	# tmp147, num
	sd	a1,-168(s0)	# tmp148, num
	sd	a2,-160(s0)	# tmp149, num
	sd	a3,-152(s0)	# tmp150, num
	sd	a4,-144(s0)	# tmp151, num
	lw	a5,48(a5)		# tmp152,
	sw	a5,-136(s0)	# tmp152, num
# eval/problem157//code.c:7:     int pos = 0;
	sw	zero,-188(s0)	#, pos
# eval/problem157//code.c:8:     result[0] = '\0';
	ld	a5,-208(s0)		# tmp153, result
	sb	zero,0(a5)	#, *result_13(D)
# eval/problem157//code.c:10:     while(number > 0) {
	j	.L2		#
.L4:
# eval/problem157//code.c:12:             strcat(result, rep[pos]);
	lw	a5,-188(s0)		# tmp154, pos
	slli	a5,a5,3	#, tmp155, tmp154
	addi	a5,a5,-16	#, tmp182, tmp155
	add	a5,a5,s0	#, tmp155, tmp182
	ld	a5,-112(a5)		# _1, rep[pos_6]
	mv	a1,a5	#, _1
	ld	a0,-208(s0)		#, result
	call	strcat@plt	#
# eval/problem157//code.c:13:             number -= num[pos];
	lw	a5,-188(s0)		# tmp156, pos
	slli	a5,a5,2	#, tmp157, tmp156
	addi	a5,a5,-16	#, tmp183, tmp157
	add	a5,a5,s0	#, tmp157, tmp183
	lw	a5,-168(a5)		# _2, num[pos_6]
# eval/problem157//code.c:13:             number -= num[pos];
	lw	a4,-196(s0)		# tmp160, number
	subw	a5,a4,a5	# tmp158, tmp159, _2
	sw	a5,-196(s0)	# tmp158, number
.L3:
# eval/problem157//code.c:11:         while (number >= num[pos]) {
	lw	a5,-188(s0)		# tmp161, pos
	slli	a5,a5,2	#, tmp162, tmp161
	addi	a5,a5,-16	#, tmp184, tmp162
	add	a5,a5,s0	#, tmp162, tmp184
	lw	a4,-168(a5)		# _3, num[pos_6]
# eval/problem157//code.c:11:         while (number >= num[pos]) {
	lw	a5,-196(s0)		# tmp164, number
	sext.w	a5,a5	# tmp165, tmp163
	bge	a5,a4,.L4	#, tmp165, tmp166,
# eval/problem157//code.c:15:         if (number > 0) pos++;
	lw	a5,-196(s0)		# tmp168, number
	sext.w	a5,a5	# tmp169, tmp167
	ble	a5,zero,.L2	#, tmp169,,
# eval/problem157//code.c:15:         if (number > 0) pos++;
	lw	a5,-188(s0)		# tmp172, pos
	addiw	a5,a5,1	#, tmp170, tmp171
	sw	a5,-188(s0)	# tmp170, pos
.L2:
# eval/problem157//code.c:10:     while(number > 0) {
	lw	a5,-196(s0)		# tmp174, number
	sext.w	a5,a5	# tmp175, tmp173
	bgt	a5,zero,.L3	#, tmp175,,
# eval/problem157//code.c:17: }
	nop	
	la	a5,__stack_chk_guard		# tmp176,
	ld	a4, -24(s0)	# tmp179, D.2948
	ld	a5, 0(a5)	# tmp177, __stack_chk_guard
	xor	a5, a4, a5	# tmp177, tmp179
	li	a4, 0	# tmp179
	beq	a5,zero,.L7	#, tmp177,,
	call	__stack_chk_fail@plt	#
.L7:
	ld	ra,200(sp)		#,
	.cfi_restore 1
	ld	s0,192(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 208
	addi	sp,sp,208	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
