	.file	"problem80.c"
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp158, decimal
	sw	a5,-52(s0)	# tmp159, decimal
# problem80.c:6:     char* out = malloc(64);
	li	a0,64		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp160,
	sd	a5,-32(s0)	# tmp160, out
# problem80.c:7:     if (!out) {
	ld	a5,-32(s0)		# tmp161, out
	bne	a5,zero,.L2	#, tmp161,,
# problem80.c:8:         return NULL;
	li	a5,0		# _24,
	j	.L3		#
.L2:
# problem80.c:10:     int index = 62;
	li	a5,62		# tmp162,
	sw	a5,-44(s0)	# tmp162, index
# problem80.c:11:     out[63] = '\0';
	ld	a5,-32(s0)		# tmp163, out
	addi	a5,a5,63	#, _1, tmp163
# problem80.c:11:     out[63] = '\0';
	sb	zero,0(a5)	#, *_1
# problem80.c:13:     if (decimal == 0) {
	lw	a5,-52(s0)		# tmp165, decimal
	sext.w	a5,a5	# tmp166, tmp164
	bne	a5,zero,.L6	#, tmp166,,
# problem80.c:14:         out[index--] = '0';
	lw	a5,-44(s0)		# index.0_2, index
	addiw	a4,a5,-1	#, tmp167, index.0_2
	sw	a4,-44(s0)	# tmp167, index
	mv	a4,a5	# _3, index.0_2
# problem80.c:14:         out[index--] = '0';
	ld	a5,-32(s0)		# tmp168, out
	add	a5,a5,a4	# _3, _4, tmp168
# problem80.c:14:         out[index--] = '0';
	li	a4,48		# tmp169,
	sb	a4,0(a5)	# tmp169, *_4
	j	.L5		#
.L7:
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	lw	a5,-52(s0)		# tmp172, decimal
	mv	a4,a5	# tmp171, tmp172
	sraiw	a5,a4,31	#, tmp173, tmp171
	srliw	a5,a5,31	#, tmp174, tmp173
	addw	a4,a4,a5	# tmp174, tmp175, tmp171
	andi	a4,a4,1	#, tmp176, tmp175
	subw	a5,a4,a5	# tmp177, tmp176, tmp174
	sext.w	a5,a5	# _5, tmp177
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	andi	a4,a5,0xff	# _6, _5
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	lw	a5,-44(s0)		# index.1_7, index
	addiw	a3,a5,-1	#, tmp178, index.1_7
	sw	a3,-44(s0)	# tmp178, index
	mv	a3,a5	# _8, index.1_7
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	ld	a5,-32(s0)		# tmp179, out
	add	a5,a5,a3	# _8, _9, tmp179
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	addiw	a4,a4,48	#, tmp180, _6
	andi	a4,a4,0xff	# _10, tmp180
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	sb	a4,0(a5)	# _10, *_9
# problem80.c:18:             decimal /= 2;
	lw	a5,-52(s0)		# tmp183, decimal
	srliw	a4,a5,31	#, tmp184, tmp182
	addw	a5,a4,a5	# tmp182, tmp185, tmp184
	sraiw	a5,a5,1	#, tmp186, tmp185
	sw	a5,-52(s0)	# tmp186, decimal
.L6:
# problem80.c:16:         while (decimal > 0) {
	lw	a5,-52(s0)		# tmp188, decimal
	sext.w	a5,a5	# tmp189, tmp187
	bgt	a5,zero,.L7	#, tmp189,,
.L5:
# problem80.c:22:     out[index--] = 'b';
	lw	a5,-44(s0)		# index.2_11, index
	addiw	a4,a5,-1	#, tmp190, index.2_11
	sw	a4,-44(s0)	# tmp190, index
	mv	a4,a5	# _12, index.2_11
# problem80.c:22:     out[index--] = 'b';
	ld	a5,-32(s0)		# tmp191, out
	add	a5,a5,a4	# _12, _13, tmp191
# problem80.c:22:     out[index--] = 'b';
	li	a4,98		# tmp192,
	sb	a4,0(a5)	# tmp192, *_13
# problem80.c:23:     out[index--] = 'd';
	lw	a5,-44(s0)		# index.3_14, index
	addiw	a4,a5,-1	#, tmp193, index.3_14
	sw	a4,-44(s0)	# tmp193, index
	mv	a4,a5	# _15, index.3_14
# problem80.c:23:     out[index--] = 'd';
	ld	a5,-32(s0)		# tmp194, out
	add	a5,a5,a4	# _15, _16, tmp194
# problem80.c:23:     out[index--] = 'd';
	li	a4,100		# tmp195,
	sb	a4,0(a5)	# tmp195, *_16
# problem80.c:25:     int start = index + 1;
	lw	a5,-44(s0)		# tmp198, index
	addiw	a5,a5,1	#, tmp196, tmp197
	sw	a5,-40(s0)	# tmp196, start
# problem80.c:26:     int len = 62 - start;
	li	a5,62		# tmp200,
	lw	a4,-40(s0)		# tmp202, start
	subw	a5,a5,a4	# tmp199, tmp200, tmp201
	sw	a5,-36(s0)	# tmp199, len
# problem80.c:27:     char* formatted_out = malloc(len + 3);
	lw	a5,-36(s0)		# tmp205, len
	addiw	a5,a5,3	#, tmp203, tmp204
	sext.w	a5,a5	# _17, tmp203
# problem80.c:27:     char* formatted_out = malloc(len + 3);
	mv	a0,a5	#, _18
	call	malloc@plt	#
	mv	a5,a0	# tmp206,
	sd	a5,-24(s0)	# tmp206, formatted_out
# problem80.c:28:     if (!formatted_out) {
	ld	a5,-24(s0)		# tmp207, formatted_out
	bne	a5,zero,.L8	#, tmp207,,
# problem80.c:29:         free(out);
	ld	a0,-32(s0)		#, out
	call	free@plt	#
# problem80.c:30:         return NULL;
	li	a5,0		# _24,
	j	.L3		#
.L8:
# problem80.c:33:     strcpy(formatted_out, &out[start]);
	lw	a5,-40(s0)		# _19, start
# problem80.c:33:     strcpy(formatted_out, &out[start]);
	ld	a4,-32(s0)		# tmp208, out
	add	a5,a4,a5	# _19, _20, tmp208
# problem80.c:33:     strcpy(formatted_out, &out[start]);
	mv	a1,a5	#, _20
	ld	a0,-24(s0)		#, formatted_out
	call	strcpy@plt	#
# problem80.c:35:     strcat(formatted_out, "db");
	ld	a0,-24(s0)		#, formatted_out
	call	strlen@plt	#
	mv	a5,a0	# tmp209,
	mv	a4,a5	# _48, tmp209
# problem80.c:35:     strcat(formatted_out, "db");
	ld	a5,-24(s0)		# tmp210, formatted_out
	add	a5,a5,a4	# _48, _49, tmp210
	li	a4,100		# tmp211,
	sb	a4,0(a5)	# tmp211, MEM <char[1:3]> [(void *)_49]
	li	a4,98		# tmp212,
	sb	a4,1(a5)	# tmp212, MEM <char[1:3]> [(void *)_49]
	sb	zero,2(a5)	#, MEM <char[1:3]> [(void *)_49]
# problem80.c:37:     free(out);
	ld	a0,-32(s0)		#, out
	call	free@plt	#
# problem80.c:39:     return formatted_out;
	ld	a5,-24(s0)		# _24, formatted_out
.L3:
# problem80.c:40: }
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
.LFE6:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"db0db"
	.align	3
.LC1:
	.string	"problem80.c"
	.align	3
.LC2:
	.string	"strcmp(binary, \"db0db\") == 0"
	.align	3
.LC3:
	.string	"db100000db"
	.align	3
.LC4:
	.string	"strcmp(binary, \"db100000db\") == 0"
	.align	3
.LC5:
	.string	"db1100111db"
	.align	3
.LC6:
	.string	"strcmp(binary, \"db1100111db\") == 0"
	.align	3
.LC7:
	.string	"db1111db"
	.align	3
.LC8:
	.string	"strcmp(binary, \"db1111db\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
# problem80.c:51:     binary = func0(0);
	li	a0,0		#,
	call	func0		#
	sd	a0,-24(s0)	#, binary
# problem80.c:52:     assert(strcmp(binary, "db0db") == 0);
	lla	a1,.LC0	#,
	ld	a0,-24(s0)		#, binary
	call	strcmp@plt	#
	mv	a5,a0	# tmp140,
# problem80.c:52:     assert(strcmp(binary, "db0db") == 0);
	beq	a5,zero,.L10	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L10:
# problem80.c:53:     free(binary);
	ld	a0,-24(s0)		#, binary
	call	free@plt	#
# problem80.c:55:     binary = func0(32);
	li	a0,32		#,
	call	func0		#
	sd	a0,-24(s0)	#, binary
# problem80.c:56:     assert(strcmp(binary, "db100000db") == 0);
	lla	a1,.LC3	#,
	ld	a0,-24(s0)		#, binary
	call	strcmp@plt	#
	mv	a5,a0	# tmp141,
# problem80.c:56:     assert(strcmp(binary, "db100000db") == 0);
	beq	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L11:
# problem80.c:57:     free(binary);
	ld	a0,-24(s0)		#, binary
	call	free@plt	#
# problem80.c:59:     binary = func0(103);
	li	a0,103		#,
	call	func0		#
	sd	a0,-24(s0)	#, binary
# problem80.c:60:     assert(strcmp(binary, "db1100111db") == 0);
	lla	a1,.LC5	#,
	ld	a0,-24(s0)		#, binary
	call	strcmp@plt	#
	mv	a5,a0	# tmp142,
# problem80.c:60:     assert(strcmp(binary, "db1100111db") == 0);
	beq	a5,zero,.L12	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L12:
# problem80.c:61:     free(binary);
	ld	a0,-24(s0)		#, binary
	call	free@plt	#
# problem80.c:63:     binary = func0(15);
	li	a0,15		#,
	call	func0		#
	sd	a0,-24(s0)	#, binary
# problem80.c:64:     assert(strcmp(binary, "db1111db") == 0);
	lla	a1,.LC7	#,
	ld	a0,-24(s0)		#, binary
	call	strcmp@plt	#
	mv	a5,a0	# tmp143,
# problem80.c:64:     assert(strcmp(binary, "db1111db") == 0);
	beq	a5,zero,.L13	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,64		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L13:
# problem80.c:65:     free(binary);
	ld	a0,-24(s0)		#, binary
	call	free@plt	#
# problem80.c:67:     return 0;
	li	a5,0		# _22,
# problem80.c:68: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
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
