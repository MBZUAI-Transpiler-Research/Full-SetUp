	.file	"problem28.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
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
	ld	a4,-40(s0)		# tmp141, str
	add	a5,a4,a5	# _2, _3, tmp141
# problem28.c:7:         char w = str[i];
	lbu	a5,0(a5)	# tmp142, *_3
	sb	a5,-25(s0)	# tmp142, w
# problem28.c:8:         if (w >= 'a' && w <= 'z') {
	lbu	a5,-25(s0)	# tmp144, w
	andi	a4,a5,0xff	# tmp145, tmp143
	li	a5,96		# tmp146,
	bleu	a4,a5,.L3	#, tmp145, tmp146,
# problem28.c:8:         if (w >= 'a' && w <= 'z') {
	lbu	a5,-25(s0)	# tmp148, w
	andi	a4,a5,0xff	# tmp149, tmp147
	li	a5,122		# tmp150,
	bgtu	a4,a5,.L3	#, tmp149, tmp150,
# problem28.c:9:             w -= 32;
	lbu	a5,-25(s0)	# tmp152, w
	addiw	a5,a5,-32	#, tmp153, tmp151
	sb	a5,-25(s0)	# tmp153, w
	j	.L4		#
.L3:
# problem28.c:10:         } else if (w >= 'A' && w <= 'Z') {
	lbu	a5,-25(s0)	# tmp155, w
	andi	a4,a5,0xff	# tmp156, tmp154
	li	a5,64		# tmp157,
	bleu	a4,a5,.L4	#, tmp156, tmp157,
# problem28.c:10:         } else if (w >= 'A' && w <= 'Z') {
	lbu	a5,-25(s0)	# tmp159, w
	andi	a4,a5,0xff	# tmp160, tmp158
	li	a5,90		# tmp161,
	bgtu	a4,a5,.L4	#, tmp160, tmp161,
# problem28.c:11:             w += 32;
	lbu	a5,-25(s0)	# tmp163, w
	addiw	a5,a5,32	#, tmp164, tmp162
	sb	a5,-25(s0)	# tmp164, w
.L4:
# problem28.c:13:         out[i] = w;
	lw	a5,-24(s0)		# _4, i
	ld	a4,-48(s0)		# tmp165, out
	add	a5,a4,a5	# _4, _5, tmp165
# problem28.c:13:         out[i] = w;
	lbu	a4,-25(s0)	# tmp166, w
	sb	a4,0(a5)	# tmp166, *_5
# problem28.c:6:     for (int i = 0; i < length; i++) {
	lw	a5,-24(s0)		# tmp169, i
	addiw	a5,a5,1	#, tmp167, tmp168
	sw	a5,-24(s0)	# tmp167, i
.L2:
# problem28.c:6:     for (int i = 0; i < length; i++) {
	lw	a5,-24(s0)		# tmp171, i
	mv	a4,a5	# tmp170, tmp171
	lw	a5,-20(s0)		# tmp173, length
	sext.w	a4,a4	# tmp174, tmp170
	sext.w	a5,a5	# tmp175, tmp172
	blt	a4,a5,.L5	#, tmp174, tmp175,
# problem28.c:15:     out[length] = '\0';
	lw	a5,-20(s0)		# _6, length
	ld	a4,-48(s0)		# tmp176, out
	add	a5,a4,a5	# _6, _7, tmp176
# problem28.c:15:     out[length] = '\0';
	sb	zero,0(a5)	#, *_7
# problem28.c:16: }
	nop	
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem28.c:23: int main() {
	la	a5,__stack_chk_guard		# tmp140,
	ld	a4, 0(a5)	# tmp151, __stack_chk_guard
	sd	a4, -24(s0)	# tmp151, D.2974
	li	a4, 0	# tmp151
# problem28.c:26:     func0("", result);
	addi	a5,s0,-128	#, tmp141,
	mv	a1,a5	#, tmp141
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
	addi	a5,s0,-128	#, tmp142,
	mv	a1,a5	#, tmp142
	lla	a0,.LC3	#,
	call	func0		#
# problem28.c:30:     assert(strcmp(result, "hELLO!") == 0);
	addi	a5,s0,-128	#, tmp143,
	lla	a1,.LC4	#,
	mv	a0,a5	#, tmp143
	call	strcmp@plt	#
	mv	a5,a0	# tmp144,
# problem28.c:30:     assert(strcmp(result, "hELLO!") == 0);
	beq	a5,zero,.L8	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L8:
# problem28.c:32:     func0("These violent delights have violent ends", result);
	addi	a5,s0,-128	#, tmp145,
	mv	a1,a5	#, tmp145
	lla	a0,.LC6	#,
	call	func0		#
# problem28.c:33:     assert(strcmp(result, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);
	addi	a5,s0,-128	#, tmp146,
	lla	a1,.LC7	#,
	mv	a0,a5	#, tmp146
	call	strcmp@plt	#
	mv	a5,a0	# tmp147,
# problem28.c:33:     assert(strcmp(result, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);
	beq	a5,zero,.L9	#, _3,,
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
	la	a5,__stack_chk_guard		# tmp149,
	ld	a3, -24(s0)	# tmp152, D.2974
	ld	a5, 0(a5)	# tmp150, __stack_chk_guard
	xor	a5, a3, a5	# tmp150, tmp152
	li	a3, 0	# tmp152
	beq	a5,zero,.L11	#, tmp150,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
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
