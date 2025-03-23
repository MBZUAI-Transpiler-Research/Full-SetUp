	.file	"problem80.c"
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp96, decimal
	sw	a5,-52(s0)	# tmp97, decimal
# problem80.c:6:     char* out = malloc(64);
	li	a0,64		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp98,
	sd	a5,-32(s0)	# tmp98, out
# problem80.c:7:     if (!out) {
	ld	a5,-32(s0)		# tmp99, out
	bne	a5,zero,.L2	#, tmp99,,
# problem80.c:8:         return NULL;
	li	a5,0		# _24,
	j	.L3		#
.L2:
# problem80.c:10:     int index = 62;
	li	a5,62		# tmp100,
	sw	a5,-44(s0)	# tmp100, index
# problem80.c:11:     out[63] = '\0';
	ld	a5,-32(s0)		# tmp101, out
	addi	a5,a5,63	#, _1, tmp101
# problem80.c:11:     out[63] = '\0';
	sb	zero,0(a5)	#, *_1
# problem80.c:13:     if (decimal == 0) {
	lw	a5,-52(s0)		# tmp103, decimal
	sext.w	a5,a5	# tmp104, tmp102
	bne	a5,zero,.L6	#, tmp104,,
# problem80.c:14:         out[index--] = '0';
	lw	a5,-44(s0)		# index.0_2, index
	addiw	a4,a5,-1	#, tmp105, index.0_2
	sw	a4,-44(s0)	# tmp105, index
	mv	a4,a5	# _3, index.0_2
# problem80.c:14:         out[index--] = '0';
	ld	a5,-32(s0)		# tmp106, out
	add	a5,a5,a4	# _3, _4, tmp106
# problem80.c:14:         out[index--] = '0';
	li	a4,48		# tmp107,
	sb	a4,0(a5)	# tmp107, *_4
	j	.L5		#
.L7:
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	lw	a5,-52(s0)		# tmp110, decimal
	mv	a4,a5	# tmp109, tmp110
	sraiw	a5,a4,31	#, tmp111, tmp109
	srliw	a5,a5,31	#, tmp112, tmp111
	addw	a4,a4,a5	# tmp112, tmp113, tmp109
	andi	a4,a4,1	#, tmp114, tmp113
	subw	a5,a4,a5	# tmp115, tmp114, tmp112
	sext.w	a5,a5	# _5, tmp115
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	andi	a4,a5,0xff	# _6, _5
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	lw	a5,-44(s0)		# index.1_7, index
	addiw	a3,a5,-1	#, tmp116, index.1_7
	sw	a3,-44(s0)	# tmp116, index
	mv	a3,a5	# _8, index.1_7
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	ld	a5,-32(s0)		# tmp117, out
	add	a5,a5,a3	# _8, _9, tmp117
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	addiw	a4,a4,48	#, tmp118, _6
	andi	a4,a4,0xff	# _10, tmp118
# problem80.c:17:             out[index--] = '0' + (decimal % 2);
	sb	a4,0(a5)	# _10, *_9
# problem80.c:18:             decimal /= 2;
	lw	a5,-52(s0)		# tmp121, decimal
	srliw	a4,a5,31	#, tmp122, tmp120
	addw	a5,a4,a5	# tmp120, tmp123, tmp122
	sraiw	a5,a5,1	#, tmp124, tmp123
	sw	a5,-52(s0)	# tmp124, decimal
.L6:
# problem80.c:16:         while (decimal > 0) {
	lw	a5,-52(s0)		# tmp126, decimal
	sext.w	a5,a5	# tmp127, tmp125
	bgt	a5,zero,.L7	#, tmp127,,
.L5:
# problem80.c:22:     out[index--] = 'b';
	lw	a5,-44(s0)		# index.2_11, index
	addiw	a4,a5,-1	#, tmp128, index.2_11
	sw	a4,-44(s0)	# tmp128, index
	mv	a4,a5	# _12, index.2_11
# problem80.c:22:     out[index--] = 'b';
	ld	a5,-32(s0)		# tmp129, out
	add	a5,a5,a4	# _12, _13, tmp129
# problem80.c:22:     out[index--] = 'b';
	li	a4,98		# tmp130,
	sb	a4,0(a5)	# tmp130, *_13
# problem80.c:23:     out[index--] = 'd';
	lw	a5,-44(s0)		# index.3_14, index
	addiw	a4,a5,-1	#, tmp131, index.3_14
	sw	a4,-44(s0)	# tmp131, index
	mv	a4,a5	# _15, index.3_14
# problem80.c:23:     out[index--] = 'd';
	ld	a5,-32(s0)		# tmp132, out
	add	a5,a5,a4	# _15, _16, tmp132
# problem80.c:23:     out[index--] = 'd';
	li	a4,100		# tmp133,
	sb	a4,0(a5)	# tmp133, *_16
# problem80.c:25:     int start = index + 1;
	lw	a5,-44(s0)		# tmp136, index
	addiw	a5,a5,1	#, tmp134, tmp135
	sw	a5,-40(s0)	# tmp134, start
# problem80.c:26:     int len = 62 - start;
	li	a5,62		# tmp138,
	lw	a4,-40(s0)		# tmp140, start
	subw	a5,a5,a4	# tmp137, tmp138, tmp139
	sw	a5,-36(s0)	# tmp137, len
# problem80.c:27:     char* formatted_out = malloc(len + 3);
	lw	a5,-36(s0)		# tmp143, len
	addiw	a5,a5,3	#, tmp141, tmp142
	sext.w	a5,a5	# _17, tmp141
# problem80.c:27:     char* formatted_out = malloc(len + 3);
	mv	a0,a5	#, _18
	call	malloc@plt	#
	mv	a5,a0	# tmp144,
	sd	a5,-24(s0)	# tmp144, formatted_out
# problem80.c:28:     if (!formatted_out) {
	ld	a5,-24(s0)		# tmp145, formatted_out
	bne	a5,zero,.L8	#, tmp145,,
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
	ld	a4,-32(s0)		# tmp146, out
	add	a5,a4,a5	# _19, _20, tmp146
# problem80.c:33:     strcpy(formatted_out, &out[start]);
	mv	a1,a5	#, _20
	ld	a0,-24(s0)		#, formatted_out
	call	strcpy@plt	#
# problem80.c:35:     strcat(formatted_out, "db");
	ld	a0,-24(s0)		#, formatted_out
	call	strlen@plt	#
	mv	a5,a0	# tmp147,
	mv	a4,a5	# _48, tmp147
	ld	a5,-24(s0)		# tmp148, formatted_out
	add	a5,a5,a4	# _48, _49, tmp148
	li	a4,100		# tmp149,
	sb	a4,0(a5)	# tmp149, MEM <char[1:3]> [(void *)_49]
	li	a4,98		# tmp150,
	sb	a4,1(a5)	# tmp150, MEM <char[1:3]> [(void *)_49]
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
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem80.c:51:     binary = func0(0);
	li	a0,0		#,
	call	func0		#
	sd	a0,-24(s0)	#, binary
# problem80.c:52:     assert(strcmp(binary, "db0db") == 0);
	lla	a1,.LC0	#,
	ld	a0,-24(s0)		#, binary
	call	strcmp@plt	#
	mv	a5,a0	# tmp78,
	beq	a5,zero,.L10	#, _1,,
# problem80.c:52:     assert(strcmp(binary, "db0db") == 0);
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
	mv	a5,a0	# tmp79,
	beq	a5,zero,.L11	#, _2,,
# problem80.c:56:     assert(strcmp(binary, "db100000db") == 0);
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
	mv	a5,a0	# tmp80,
	beq	a5,zero,.L12	#, _3,,
# problem80.c:60:     assert(strcmp(binary, "db1100111db") == 0);
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
	mv	a5,a0	# tmp81,
	beq	a5,zero,.L13	#, _4,,
# problem80.c:64:     assert(strcmp(binary, "db1111db") == 0);
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
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
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
