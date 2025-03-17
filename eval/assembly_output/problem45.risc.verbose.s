	.file	"problem45.c"
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
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp144, x
	mv	a4,a1	# tmp146, base
	sd	a2,-96(s0)	# out, out
	sw	a5,-84(s0)	# tmp145, x
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-88(s0)	# tmp147, base
# problem45.c:5: void func0(int x, int base, char *out) {
	la	a5,__stack_chk_guard		# tmp148,
	ld	a4, 0(a5)	# tmp180, __stack_chk_guard
	sd	a4, -24(s0)	# tmp180, D.3512
	li	a4, 0	# tmp180
# problem45.c:6:     int index = 0;
	sw	zero,-72(s0)	#, index
# problem45.c:8:     while (x > 0) {
	j	.L2		#
.L3:
# problem45.c:9:         temp[index++] = (x % base) + '0';
	lw	a5,-84(s0)		# tmp151, x
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-88(s0)		# tmp154, base
	remw	a5,a4,a5	# tmp153, tmp152, tmp150
	sext.w	a5,a5	# _1, tmp152
# problem45.c:9:         temp[index++] = (x % base) + '0';
	andi	a4,a5,0xff	# _2, _1
# problem45.c:9:         temp[index++] = (x % base) + '0';
	lw	a5,-72(s0)		# index.0_3, index
	addiw	a3,a5,1	#, tmp155, index.0_3
	sw	a3,-72(s0)	# tmp155, index
# problem45.c:9:         temp[index++] = (x % base) + '0';
	addiw	a4,a4,48	#, tmp156, _2
	andi	a4,a4,0xff	# _4, tmp156
# problem45.c:9:         temp[index++] = (x % base) + '0';
	addi	a5,a5,-16	#, tmp184, index.0_3
	add	a5,a5,s0	#, tmp157, tmp184
	sb	a4,-48(a5)	# _4, temp[index.0_3]
# problem45.c:10:         x = x / base;
	lw	a5,-84(s0)		# tmp161, x
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-88(s0)		# tmp163, base
	divw	a5,a4,a5	# tmp162, tmp159, tmp160
	sw	a5,-84(s0)	# tmp159, x
.L2:
# problem45.c:8:     while (x > 0) {
	lw	a5,-84(s0)		# tmp165, x
	sext.w	a5,a5	# tmp166, tmp164
	bgt	a5,zero,.L3	#, tmp166,,
# problem45.c:12:     int j = 0;
	sw	zero,-68(s0)	#, j
# problem45.c:13:     while(index > 0) {
	j	.L4		#
.L5:
# problem45.c:14:         out[j++] = temp[--index];
	lw	a5,-72(s0)		# tmp169, index
	addiw	a5,a5,-1	#, tmp167, tmp168
	sw	a5,-72(s0)	# tmp167, index
# problem45.c:14:         out[j++] = temp[--index];
	lw	a5,-68(s0)		# j.1_5, j
	addiw	a4,a5,1	#, tmp170, j.1_5
	sw	a4,-68(s0)	# tmp170, j
	mv	a4,a5	# _6, j.1_5
# problem45.c:14:         out[j++] = temp[--index];
	ld	a5,-96(s0)		# tmp171, out
	add	a5,a5,a4	# _6, _7, tmp171
# problem45.c:14:         out[j++] = temp[--index];
	lw	a4,-72(s0)		# tmp172, index
	addi	a4,a4,-16	#, tmp185, tmp172
	add	a4,a4,s0	#, tmp173, tmp185
	lbu	a4,-48(a4)	# _8, temp[index_24]
# problem45.c:14:         out[j++] = temp[--index];
	sb	a4,0(a5)	# _8, *_7
.L4:
# problem45.c:13:     while(index > 0) {
	lw	a5,-72(s0)		# tmp175, index
	sext.w	a5,a5	# tmp176, tmp174
	bgt	a5,zero,.L5	#, tmp176,,
# problem45.c:16:     out[j] = '\0';
	lw	a5,-68(s0)		# _9, j
	ld	a4,-96(s0)		# tmp177, out
	add	a5,a4,a5	# _9, _10, tmp177
# problem45.c:16:     out[j] = '\0';
	sb	zero,0(a5)	#, *_10
# problem45.c:17: }
	nop	
	la	a5,__stack_chk_guard		# tmp178,
	ld	a4, -24(s0)	# tmp181, D.3512
	ld	a5, 0(a5)	# tmp179, __stack_chk_guard
	xor	a5, a4, a5	# tmp179, tmp181
	li	a4, 0	# tmp181
	beq	a5,zero,.L6	#, tmp179,,
	call	__stack_chk_fail@plt	#
.L6:
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
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
.LFB7:
	.cfi_startproc
	addi	sp,sp,-112	#,,
	.cfi_def_cfa_offset 112
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,112	#,,
	.cfi_def_cfa 8, 0
# problem45.c:25: int main() {
	la	a5,__stack_chk_guard		# tmp144,
	ld	a4, 0(a5)	# tmp184, __stack_chk_guard
	sd	a4, -24(s0)	# tmp184, D.3515
	li	a4, 0	# tmp184
# problem45.c:28:     func0(8, 3, buffer);
	addi	a5,s0,-104	#, tmp145,
	mv	a2,a5	#, tmp145
	li	a1,3		#,
	li	a0,8		#,
	call	func0		#
# problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	addi	a5,s0,-104	#, tmp146,
	lla	a1,.LC0	#,
	mv	a0,a5	#, tmp146
	call	strcmp@plt	#
	mv	a5,a0	# tmp147,
# problem45.c:29:     assert(strcmp(buffer, "22") == 0);
	beq	a5,zero,.L8	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L8:
# problem45.c:31:     func0(9, 3, buffer);
	addi	a5,s0,-104	#, tmp148,
	mv	a2,a5	#, tmp148
	li	a1,3		#,
	li	a0,9		#,
	call	func0		#
# problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	addi	a5,s0,-104	#, tmp149,
	lla	a1,.LC3	#,
	mv	a0,a5	#, tmp149
	call	strcmp@plt	#
	mv	a5,a0	# tmp150,
# problem45.c:32:     assert(strcmp(buffer, "100") == 0);
	beq	a5,zero,.L9	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L9:
# problem45.c:34:     func0(234, 2, buffer);
	addi	a5,s0,-104	#, tmp151,
	mv	a2,a5	#, tmp151
	li	a1,2		#,
	li	a0,234		#,
	call	func0		#
# problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	addi	a5,s0,-104	#, tmp152,
	lla	a1,.LC5	#,
	mv	a0,a5	#, tmp152
	call	strcmp@plt	#
	mv	a5,a0	# tmp153,
# problem45.c:35:     assert(strcmp(buffer, "11101010") == 0);
	beq	a5,zero,.L10	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L10:
# problem45.c:37:     func0(16, 2, buffer);
	addi	a5,s0,-104	#, tmp154,
	mv	a2,a5	#, tmp154
	li	a1,2		#,
	li	a0,16		#,
	call	func0		#
# problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	addi	a5,s0,-104	#, tmp155,
	lla	a1,.LC7	#,
	mv	a0,a5	#, tmp155
	call	strcmp@plt	#
	mv	a5,a0	# tmp156,
# problem45.c:38:     assert(strcmp(buffer, "10000") == 0);
	beq	a5,zero,.L11	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L11:
# problem45.c:40:     func0(8, 2, buffer);
	addi	a5,s0,-104	#, tmp157,
	mv	a2,a5	#, tmp157
	li	a1,2		#,
	li	a0,8		#,
	call	func0		#
# problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	addi	a5,s0,-104	#, tmp158,
	lla	a1,.LC9	#,
	mv	a0,a5	#, tmp158
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
# problem45.c:41:     assert(strcmp(buffer, "1000") == 0);
	beq	a5,zero,.L12	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L12:
# problem45.c:43:     func0(7, 2, buffer);
	addi	a5,s0,-104	#, tmp160,
	mv	a2,a5	#, tmp160
	li	a1,2		#,
	li	a0,7		#,
	call	func0		#
# problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	addi	a5,s0,-104	#, tmp161,
	lla	a1,.LC11	#,
	mv	a0,a5	#, tmp161
	call	strcmp@plt	#
	mv	a5,a0	# tmp162,
# problem45.c:44:     assert(strcmp(buffer, "111") == 0);
	beq	a5,zero,.L13	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC1	#,
	lla	a0,.LC12	#,
	call	__assert_fail@plt	#
.L13:
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	li	a5,2		# tmp163,
	sw	a5,-108(s0)	# tmp163, x
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	j	.L14		#
.L16:
# problem45.c:48:         sprintf(expected, "%d", x);
	lw	a4,-108(s0)		# tmp164, x
	addi	a5,s0,-64	#, tmp165,
	mv	a2,a4	#, tmp164
	lla	a1,.LC13	#,
	mv	a0,a5	#, tmp165
	call	sprintf@plt	#
# problem45.c:49:         func0(x, x + 1, buffer);
	lw	a5,-108(s0)		# tmp168, x
	addiw	a5,a5,1	#, tmp166, tmp167
	sext.w	a4,a5	# _7, tmp166
	addi	a3,s0,-104	#, tmp169,
	lw	a5,-108(s0)		# tmp170, x
	mv	a2,a3	#, tmp169
	mv	a1,a4	#, _7
	mv	a0,a5	#, tmp170
	call	func0		#
# problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	addi	a4,s0,-64	#, tmp171,
	addi	a5,s0,-104	#, tmp172,
	mv	a1,a4	#, tmp171
	mv	a0,a5	#, tmp172
	call	strcmp@plt	#
	mv	a5,a0	# tmp173,
# problem45.c:50:         assert(strcmp(buffer, expected) == 0);
	beq	a5,zero,.L15	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC1	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L15:
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	lw	a5,-108(s0)		# tmp176, x
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-108(s0)	# tmp174, x
.L14:
# problem45.c:46:     for (int x = 2; x < 8; x++) {
	lw	a5,-108(s0)		# tmp178, x
	sext.w	a4,a5	# tmp179, tmp177
	li	a5,7		# tmp180,
	ble	a4,a5,.L16	#, tmp179, tmp180,
# problem45.c:53:     return 0;
	li	a5,0		# _25,
# problem45.c:54: }
	mv	a4,a5	# <retval>, _25
	la	a5,__stack_chk_guard		# tmp182,
	ld	a3, -24(s0)	# tmp185, D.3515
	ld	a5, 0(a5)	# tmp183, __stack_chk_guard
	xor	a5, a3, a5	# tmp183, tmp185
	li	a3, 0	# tmp185
	beq	a5,zero,.L18	#, tmp183,,
	call	__stack_chk_fail@plt	#
.L18:
	mv	a0,a4	#, <retval>
	ld	ra,104(sp)		#,
	.cfi_restore 1
	ld	s0,96(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 112
	addi	sp,sp,112	#,,
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
