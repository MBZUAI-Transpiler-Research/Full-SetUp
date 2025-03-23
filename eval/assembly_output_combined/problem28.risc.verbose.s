	.file	"problem28.c"
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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# str, str
	sd	a1,-48(s0)	# out, out
# problem28.c:5:     int length = strlen(str);
	ld	a0,-40(s0)		#, str
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem28.c:5:     int length = strlen(str);
	sw	a5,-20(s0)	# _1, length
# problem28.c:6:     for (int i = 0; i < length; i++) {
	sw	zero,-24(s0)	#, i
# problem28.c:6:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L5:
# problem28.c:7:         char w = str[i];
	lw	a5,-24(s0)		# _2, i
	ld	a4,-40(s0)		# tmp79, str
	add	a5,a4,a5	# _2, _3, tmp79
# problem28.c:7:         char w = str[i];
	lbu	a5,0(a5)	# tmp80, *_3
	sb	a5,-25(s0)	# tmp80, w
# problem28.c:8:         if (w >= 'a' && w <= 'z') {
	lbu	a5,-25(s0)	# tmp82, w
	andi	a4,a5,0xff	# tmp83, tmp81
	li	a5,96		# tmp84,
	bleu	a4,a5,.L3	#, tmp83, tmp84,
# problem28.c:8:         if (w >= 'a' && w <= 'z') {
	lbu	a5,-25(s0)	# tmp86, w
	andi	a4,a5,0xff	# tmp87, tmp85
	li	a5,122		# tmp88,
	bgtu	a4,a5,.L3	#, tmp87, tmp88,
# problem28.c:9:             w -= 32;
	lbu	a5,-25(s0)	# tmp90, w
	addiw	a5,a5,-32	#, tmp91, tmp89
	sb	a5,-25(s0)	# tmp91, w
	j	.L4		#
.L3:
# problem28.c:10:         } else if (w >= 'A' && w <= 'Z') {
	lbu	a5,-25(s0)	# tmp93, w
	andi	a4,a5,0xff	# tmp94, tmp92
	li	a5,64		# tmp95,
	bleu	a4,a5,.L4	#, tmp94, tmp95,
# problem28.c:10:         } else if (w >= 'A' && w <= 'Z') {
	lbu	a5,-25(s0)	# tmp97, w
	andi	a4,a5,0xff	# tmp98, tmp96
	li	a5,90		# tmp99,
	bgtu	a4,a5,.L4	#, tmp98, tmp99,
# problem28.c:11:             w += 32;
	lbu	a5,-25(s0)	# tmp101, w
	addiw	a5,a5,32	#, tmp102, tmp100
	sb	a5,-25(s0)	# tmp102, w
.L4:
# problem28.c:13:         out[i] = w;
	lw	a5,-24(s0)		# _4, i
	ld	a4,-48(s0)		# tmp103, out
	add	a5,a4,a5	# _4, _5, tmp103
# problem28.c:13:         out[i] = w;
	lbu	a4,-25(s0)	# tmp104, w
	sb	a4,0(a5)	# tmp104, *_5
# problem28.c:6:     for (int i = 0; i < length; i++) {
	lw	a5,-24(s0)		# tmp107, i
	addiw	a5,a5,1	#, tmp105, tmp106
	sw	a5,-24(s0)	# tmp105, i
.L2:
# problem28.c:6:     for (int i = 0; i < length; i++) {
	lw	a5,-24(s0)		# tmp109, i
	mv	a4,a5	# tmp108, tmp109
	lw	a5,-20(s0)		# tmp111, length
	sext.w	a4,a4	# tmp112, tmp108
	sext.w	a5,a5	# tmp113, tmp110
	blt	a4,a5,.L5	#, tmp112, tmp113,
# problem28.c:15:     out[length] = '\0';
	lw	a5,-20(s0)		# _6, length
	ld	a4,-48(s0)		# tmp114, out
	add	a5,a4,a5	# _6, _7, tmp114
# problem28.c:15:     out[length] = '\0';
	sb	zero,0(a5)	#, *_7
# problem28.c:16: }
	nop	
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"problem28.c"
	.align	3
.LC2:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC3:
	.string	"Hello!"
	.align	3
.LC4:
	.string	"hELLO!"
	.align	3
.LC5:
	.string	"strcmp(result, \"hELLO!\") == 0"
	.align	3
.LC6:
	.string	"These violent delights have violent ends"
	.align	3
.LC7:
	.string	"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS"
	.align	3
.LC8:
	.string	"strcmp(result, \"tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem28.c:23: int main() {
	la	a5,__stack_chk_guard		# tmp78,
	ld	a4, 0(a5)	# tmp89, __stack_chk_guard
	sd	a4, -24(s0)	# tmp89, D.2129
	li	a4, 0	# tmp89
# problem28.c:26:     func0("", result);
	addi	a5,s0,-128	#, tmp79,
	mv	a1,a5	#, tmp79
	lla	a0,.LC0	#,
	call	func0		#
# problem28.c:27:     assert(strcmp(result, "") == 0);
	lbu	a5,-128(s0)	# _6, MEM[(const unsigned char * {ref-all})&result]
	sext.w	a5,a5	# _1, _6
	beq	a5,zero,.L7	#, _1,,
# problem28.c:27:     assert(strcmp(result, "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,27		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L7:
# problem28.c:29:     func0("Hello!", result);
	addi	a5,s0,-128	#, tmp80,
	mv	a1,a5	#, tmp80
	lla	a0,.LC3	#,
	call	func0		#
# problem28.c:30:     assert(strcmp(result, "hELLO!") == 0);
	addi	a5,s0,-128	#, tmp81,
	lla	a1,.LC4	#,
	mv	a0,a5	#, tmp81
	call	strcmp@plt	#
	mv	a5,a0	# tmp82,
	beq	a5,zero,.L8	#, _2,,
# problem28.c:30:     assert(strcmp(result, "hELLO!") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem28.c:32:     func0("These violent delights have violent ends", result);
	addi	a5,s0,-128	#, tmp83,
	mv	a1,a5	#, tmp83
	lla	a0,.LC6	#,
	call	func0		#
# problem28.c:33:     assert(strcmp(result, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);
	addi	a5,s0,-128	#, tmp84,
	lla	a1,.LC7	#,
	mv	a0,a5	#, tmp84
	call	strcmp@plt	#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L9	#, _3,,
# problem28.c:33:     assert(strcmp(result, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L9:
# problem28.c:35:     return 0;
	li	a5,0		# _12,
# problem28.c:36: }
	mv	a4,a5	# <retval>, _12
	la	a5,__stack_chk_guard		# tmp87,
	ld	a3, -24(s0)	# tmp90, D.2129
	ld	a5, 0(a5)	# tmp88, __stack_chk_guard
	xor	a5, a3, a5	# tmp88, tmp90
	li	a3, 0	# tmp90
	beq	a5,zero,.L11	#, tmp88,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
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
