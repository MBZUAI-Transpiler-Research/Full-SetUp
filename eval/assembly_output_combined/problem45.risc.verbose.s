	.file	"problem45.c"
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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
	mv	a5,a0	# tmp82, x
	mv	a4,a1	# tmp84, base
	sd	a2,-96(s0)	# out, out
	sw	a5,-84(s0)	# tmp83, x
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-88(s0)	# tmp85, base
# problem45.c:5: void func0(int x, int base, char *out) {
	la	a5,__stack_chk_guard		# tmp86,
	ld	a4, 0(a5)	# tmp118, __stack_chk_guard
	sd	a4, -24(s0)	# tmp118, D.2660
	li	a4, 0	# tmp118
# problem45.c:6:     int index = 0;
	sw	zero,-72(s0)	#, index
# problem45.c:8:     while (x > 0) {
	j	.L2		#
.L3:
# problem45.c:9:         temp[index++] = (x % base) + '0';
	lw	a5,-84(s0)		# tmp89, x
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-88(s0)		# tmp92, base
	remw	a5,a4,a5	# tmp91, tmp90, tmp88
	sext.w	a5,a5	# _1, tmp90
# problem45.c:9:         temp[index++] = (x % base) + '0';
	andi	a4,a5,0xff	# _2, _1
# problem45.c:9:         temp[index++] = (x % base) + '0';
	lw	a5,-72(s0)		# index.0_3, index
	addiw	a3,a5,1	#, tmp93, index.0_3
	sw	a3,-72(s0)	# tmp93, index
# problem45.c:9:         temp[index++] = (x % base) + '0';
	addiw	a4,a4,48	#, tmp94, _2
	andi	a4,a4,0xff	# _4, tmp94
# problem45.c:9:         temp[index++] = (x % base) + '0';
	addi	a5,a5,-16	#, tmp122, index.0_3
	add	a5,a5,s0	#, tmp95, tmp122
	sb	a4,-48(a5)	# _4, temp[index.0_3]
# problem45.c:10:         x = x / base;
	lw	a5,-84(s0)		# tmp99, x
	mv	a4,a5	# tmp98, tmp99
	lw	a5,-88(s0)		# tmp101, base
	divw	a5,a4,a5	# tmp100, tmp97, tmp98
	sw	a5,-84(s0)	# tmp97, x
.L2:
# problem45.c:8:     while (x > 0) {
	lw	a5,-84(s0)		# tmp103, x
	sext.w	a5,a5	# tmp104, tmp102
	bgt	a5,zero,.L3	#, tmp104,,
# problem45.c:12:     int j = 0;
	sw	zero,-68(s0)	#, j
# problem45.c:13:     while(index > 0) {
	j	.L4		#
.L5:
# problem45.c:14:         out[j++] = temp[--index];
	lw	a5,-72(s0)		# tmp107, index
	addiw	a5,a5,-1	#, tmp105, tmp106
	sw	a5,-72(s0)	# tmp105, index
# problem45.c:14:         out[j++] = temp[--index];
	lw	a5,-68(s0)		# j.1_5, j
	addiw	a4,a5,1	#, tmp108, j.1_5
	sw	a4,-68(s0)	# tmp108, j
	mv	a4,a5	# _6, j.1_5
# problem45.c:14:         out[j++] = temp[--index];
	ld	a5,-96(s0)		# tmp109, out
	add	a5,a5,a4	# _6, _7, tmp109
# problem45.c:14:         out[j++] = temp[--index];
	lw	a4,-72(s0)		# tmp110, index
	addi	a4,a4,-16	#, tmp123, tmp110
	add	a4,a4,s0	#, tmp111, tmp123
	lbu	a4,-48(a4)	# _8, temp[index_24]
# problem45.c:14:         out[j++] = temp[--index];
	sb	a4,0(a5)	# _8, *_7
.L4:
# problem45.c:13:     while(index > 0) {
	lw	a5,-72(s0)		# tmp113, index
	sext.w	a5,a5	# tmp114, tmp112
	bgt	a5,zero,.L5	#, tmp114,,
# problem45.c:16:     out[j] = '\0';
	lw	a5,-68(s0)		# _9, j
	ld	a4,-96(s0)		# tmp115, out
	add	a5,a4,a5	# _9, _10, tmp115
# problem45.c:16:     out[j] = '\0';
	sb	zero,0(a5)	#, *_10
# problem45.c:17: }
	nop	
	la	a5,__stack_chk_guard		# tmp116,
	ld	a4, -24(s0)	# tmp119, D.2660
	ld	a5, 0(a5)	# tmp117, __stack_chk_guard
	xor	a5, a4, a5	# tmp117, tmp119
	li	a4, 0	# tmp119
	beq	a5,zero,.L6	#, tmp117,,
	call	__stack_chk_fail@plt	#
.L6:
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"22"
	.align	3
.LC1:
	.string	"problem45.c"
	.align	3
.LC2:
	.string	"strcmp(buffer, \"22\") == 0"
	.align	3
.LC3:
	.string	"100"
	.align	3
.LC4:
	.string	"strcmp(buffer, \"100\") == 0"
	.align	3
.LC5:
	.string	"11101010"
	.align	3
.LC6:
	.string	"strcmp(buffer, \"11101010\") == 0"
	.align	3
.LC7:
	.string	"10000"
	.align	3
.LC8:
	.string	"strcmp(buffer, \"10000\") == 0"
	.align	3
.LC9:
	.string	"1000"
	.align	3
.LC10:
	.string	"strcmp(buffer, \"1000\") == 0"
	.align	3
.LC11:
	.string	"111"
	.align	3
.LC12:
	.string	"strcmp(buffer, \"111\") == 0"
	.align	3
.LC13:
	.string	"%d"
	.align	3
.LC14:
	.string	"strcmp(buffer, expected) == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
# problem45.c:25: int main() {
	la	a5,__stack_chk_guard		# tmp82,
	ld	a4, 0(a5)	# tmp122, __stack_chk_guard
	sd	a4, -24(s0)	# tmp122, D.2663
	li	a4, 0	# tmp122
# problem45.c:28:     func0(8, 3, buffer);
	addi	a5,s0,-104	#, tmp83,
	mv	a2,a5	#, tmp83
	li	a1,3		#,
	li	a0,8		#,
	call	func0		#
# problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	addi	a5,s0,-104	#, tmp84,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp84
	call	strcmp@plt	#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L8	#, _1,,
# problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem45.c:31:     func0(9, 3, buffer);
	addi	a5,s0,-104	#, tmp86,
	mv	a2,a5	#, tmp86
	li	a1,3		#,
	li	a0,9		#,
	call	func0		#
# problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	addi	a5,s0,-104	#, tmp87,
	lla	a1,.LC3	#,
	mv	a0,a5	#, tmp87
	call	strcmp@plt	#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L9	#, _2,,
# problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem45.c:34:     func0(234, 2, buffer);
	addi	a5,s0,-104	#, tmp89,
	mv	a2,a5	#, tmp89
	li	a1,2		#,
	li	a0,234		#,
	call	func0		#
# problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	addi	a5,s0,-104	#, tmp90,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp90
	call	strcmp@plt	#
	mv	a5,a0	# tmp91,
	beq	a5,zero,.L10	#, _3,,
# problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem45.c:37:     func0(16, 2, buffer);
	addi	a5,s0,-104	#, tmp92,
	mv	a2,a5	#, tmp92
	li	a1,2		#,
	li	a0,16		#,
	call	func0		#
# problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	addi	a5,s0,-104	#, tmp93,
	lla	a1,.LC7	#,
	mv	a0,a5	#, tmp93
	call	strcmp@plt	#
	mv	a5,a0	# tmp94,
	beq	a5,zero,.L11	#, _4,,
# problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem45.c:40:     func0(8, 2, buffer);
	addi	a5,s0,-104	#, tmp95,
	mv	a2,a5	#, tmp95
	li	a1,2		#,
	li	a0,8		#,
	call	func0		#
# problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	addi	a5,s0,-104	#, tmp96,
	lla	a1,.LC9	#,
	mv	a0,a5	#, tmp96
	call	strcmp@plt	#
	mv	a5,a0	# tmp97,
	beq	a5,zero,.L12	#, _5,,
# problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem45.c:43:     func0(7, 2, buffer);
	addi	a5,s0,-104	#, tmp98,
	mv	a2,a5	#, tmp98
	li	a1,2		#,
	li	a0,7		#,
	call	func0		#
# problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	addi	a5,s0,-104	#, tmp99,
	lla	a1,.LC11	#,
	mv	a0,a5	#, tmp99
	call	strcmp@plt	#
	mv	a5,a0	# tmp100,
	beq	a5,zero,.L13	#, _6,,
# problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	li	a5,2		# tmp101,
	sw	a5,-108(s0)	# tmp101, x
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	j	.L14		#
.L16:
# problem45.c:48:         sprintf(expected, "%d", x);
	lw	a4,-108(s0)		# tmp102, x
	addi	a5,s0,-64	#, tmp103,
	mv	a2,a4	#, tmp102
	lla	a1,.LC13	#,
	mv	a0,a5	#, tmp103
	call	sprintf@plt	#
# problem45.c:49:         func0(x, x + 1, buffer);
	lw	a5,-108(s0)		# tmp106, x
	addiw	a5,a5,1	#, tmp104, tmp105
	sext.w	a4,a5	# _7, tmp104
	addi	a3,s0,-104	#, tmp107,
	lw	a5,-108(s0)		# tmp108, x
	mv	a2,a3	#, tmp107
	mv	a1,a4	#, _7
	mv	a0,a5	#, tmp108
	call	func0		#
# problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	addi	a4,s0,-64	#, tmp109,
	addi	a5,s0,-104	#, tmp110,
	mv	a1,a4	#, tmp109
	mv	a0,a5	#, tmp110
	call	strcmp@plt	#
	mv	a5,a0	# tmp111,
	beq	a5,zero,.L15	#, _8,,
# problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L15:
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	lw	a5,-108(s0)		# tmp114, x
	addiw	a5,a5,1	#, tmp112, tmp113
	sw	a5,-108(s0)	# tmp112, x
.L14:
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	lw	a5,-108(s0)		# tmp116, x
	sext.w	a4,a5	# tmp117, tmp115
	li	a5,7		# tmp118,
	ble	a4,a5,.L16	#, tmp117, tmp118,
# problem45.c:53:     return 0;
	li	a5,0		# _25,
# problem45.c:54: }
	mv	a4,a5	# <retval>, _25
	la	a5,__stack_chk_guard		# tmp120,
	ld	a3, -24(s0)	# tmp123, D.2663
	ld	a5, 0(a5)	# tmp121, __stack_chk_guard
	xor	a5, a3, a5	# tmp121, tmp123
	li	a3, 0	# tmp123
	beq	a5,zero,.L18	#, tmp121,,
	call	__stack_chk_fail@plt	#
.L18:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	ld	s0,96(sp)		#,
	addi	sp,sp,112	#,,
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
