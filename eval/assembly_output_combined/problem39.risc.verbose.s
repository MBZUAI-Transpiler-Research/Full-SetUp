	.file	"problem39.c"
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
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# s, s
	mv	a5,a1	# tmp152, encode
	sw	a5,-76(s0)	# tmp153, encode
# problem39.c:4: void func0(char *s, int encode) {
	la	a5,__stack_chk_guard		# tmp154,
	ld	a4, 0(a5)	# tmp214, __stack_chk_guard
	sd	a4, -24(s0)	# tmp214, D.3618
	li	a4, 0	# tmp214
# problem39.c:5:     int l = strlen(s);
	ld	a0,-72(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem39.c:5:     int l = strlen(s);
	sw	a5,-44(s0)	# _1, l
# problem39.c:6:     int num = (l + 2) / 3;
	lw	a5,-44(s0)		# tmp157, l
	addiw	a5,a5,2	#, tmp155, tmp156
	sext.w	a5,a5	# _2, tmp155
# problem39.c:6:     int num = (l + 2) / 3;
	mv	a4,a5	# tmp158, _2
	li	a5,3		# tmp160,
	divw	a5,a4,a5	# tmp160, tmp159, tmp158
	sw	a5,-40(s0)	# tmp159, num
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	sw	zero,-48(s0)	#, i
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	j	.L2		#
.L7:
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a5,-48(s0)		# tmp163, i
	addiw	a5,a5,1	#, tmp161, tmp162
	sext.w	a5,a5	# _3, tmp161
	mv	a4,a5	# tmp164, _3
	mv	a5,a4	# tmp165, tmp164
	slliw	a5,a5,1	#, tmp166, tmp165
	addw	a5,a5,a4	# tmp164, tmp165, tmp165
	sext.w	a4,a5	# _4, tmp165
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a5,-44(s0)		# tmp168, l
	sext.w	a5,a5	# tmp169, tmp167
	bge	a5,a4,.L3	#, tmp169, tmp170,
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a5,-48(s0)		# tmp172, i
	mv	a4,a5	# tmp171, tmp172
	mv	a5,a4	# tmp173, tmp171
	slliw	a4,a4,2	#, tmp174, tmp171
	subw	a5,a5,a4	# tmp173, tmp173, tmp174
	sext.w	a5,a5	# _5, tmp173
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a4,-44(s0)		# tmp177, l
	addw	a5,a4,a5	# _5, tmp175, tmp176
	sext.w	a5,a5	# iftmp.0_19, tmp175
	j	.L4		#
.L3:
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	li	a5,3		# iftmp.0_19,
.L4:
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	sw	a5,-36(s0)	# iftmp.0_19, len
# problem39.c:11:         strncpy(x, s + i * 3, len);
	lw	a5,-48(s0)		# tmp179, i
	mv	a4,a5	# tmp178, tmp179
	mv	a5,a4	# tmp180, tmp178
	slliw	a5,a5,1	#, tmp181, tmp180
	addw	a5,a5,a4	# tmp178, tmp180, tmp180
	sext.w	a5,a5	# _6, tmp180
	mv	a4,a5	# _7, _6
# problem39.c:11:         strncpy(x, s + i * 3, len);
	ld	a5,-72(s0)		# tmp182, s
	add	a4,a5,a4	# _7, _8, tmp182
# problem39.c:11:         strncpy(x, s + i * 3, len);
	lw	a3,-36(s0)		# _9, len
	addi	a5,s0,-32	#, tmp183,
	mv	a2,a3	#, _9
	mv	a1,a4	#, _8
	mv	a0,a5	#, tmp183
	call	strncpy@plt	#
# problem39.c:12:         x[len] = '\0';
	lw	a5,-36(s0)		# tmp184, len
	addi	a5,a5,-16	#, tmp218, tmp184
	add	a5,a5,s0	#, tmp185, tmp218
	sb	zero,-16(a5)	#, x[len_30]
# problem39.c:14:         if (len == 3) {
	lw	a5,-36(s0)		# tmp187, len
	sext.w	a4,a5	# tmp188, tmp186
	li	a5,3		# tmp189,
	bne	a4,a5,.L5	#, tmp188, tmp189,
# problem39.c:15:             if (encode) {
	lw	a5,-76(s0)		# tmp191, encode
	sext.w	a5,a5	# tmp192, tmp190
	beq	a5,zero,.L6	#, tmp192,,
# problem39.c:16:                 char temp = x[2];
	lbu	a5,-30(s0)	# tmp193, x[2]
	sb	a5,-49(s0)	# tmp193, temp
# problem39.c:17:                 x[2] = x[1];
	lbu	a5,-31(s0)	# _10, x[1]
# problem39.c:17:                 x[2] = x[1];
	sb	a5,-30(s0)	# _10, x[2]
# problem39.c:18:                 x[1] = x[0];
	lbu	a5,-32(s0)	# _11, x[0]
# problem39.c:18:                 x[1] = x[0];
	sb	a5,-31(s0)	# _11, x[1]
# problem39.c:19:                 x[0] = temp;
	lbu	a5,-49(s0)	# tmp194, temp
	sb	a5,-32(s0)	# tmp194, x[0]
	j	.L5		#
.L6:
# problem39.c:21:                 char temp = x[0];
	lbu	a5,-32(s0)	# tmp195, x[0]
	sb	a5,-50(s0)	# tmp195, temp
# problem39.c:22:                 x[0] = x[1];
	lbu	a5,-31(s0)	# _12, x[1]
# problem39.c:22:                 x[0] = x[1];
	sb	a5,-32(s0)	# _12, x[0]
# problem39.c:23:                 x[1] = x[2];
	lbu	a5,-30(s0)	# _13, x[2]
# problem39.c:23:                 x[1] = x[2];
	sb	a5,-31(s0)	# _13, x[1]
# problem39.c:24:                 x[2] = temp;
	lbu	a5,-50(s0)	# tmp196, temp
	sb	a5,-30(s0)	# tmp196, x[2]
.L5:
# problem39.c:27:         strncpy(s + i * 3, x, len);
	lw	a5,-48(s0)		# tmp198, i
	mv	a4,a5	# tmp197, tmp198
	mv	a5,a4	# tmp199, tmp197
	slliw	a5,a5,1	#, tmp200, tmp199
	addw	a5,a5,a4	# tmp197, tmp199, tmp199
	sext.w	a5,a5	# _14, tmp199
	mv	a4,a5	# _15, _14
# problem39.c:27:         strncpy(s + i * 3, x, len);
	ld	a5,-72(s0)		# tmp201, s
	add	a5,a5,a4	# _15, _16, tmp201
	lw	a3,-36(s0)		# _17, len
	addi	a4,s0,-32	#, tmp202,
	mv	a2,a3	#, _17
	mv	a1,a4	#, tmp202
	mv	a0,a5	#, _16
	call	strncpy@plt	#
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	lw	a5,-48(s0)		# tmp205, i
	addiw	a5,a5,1	#, tmp203, tmp204
	sw	a5,-48(s0)	# tmp203, i
.L2:
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	lw	a5,-48(s0)		# tmp207, i
	mv	a4,a5	# tmp206, tmp207
	lw	a5,-40(s0)		# tmp209, num
	sext.w	a4,a4	# tmp210, tmp206
	sext.w	a5,a5	# tmp211, tmp208
	blt	a4,a5,.L7	#, tmp210, tmp211,
# problem39.c:29: }
	nop	
	la	a5,__stack_chk_guard		# tmp212,
	ld	a4, -24(s0)	# tmp215, D.3618
	ld	a5, 0(a5)	# tmp213, __stack_chk_guard
	xor	a5, a4, a5	# tmp213, tmp215
	li	a4, 0	# tmp215
	beq	a5,zero,.L8	#, tmp213,,
	call	__stack_chk_fail@plt	#
.L8:
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"problem39.c"
	.align	3
.LC1:
	.string	"strcmp(decoded_str, str) == 0"
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
# problem39.c:39: int main(){
	la	a5,__stack_chk_guard		# tmp145,
	ld	a4, 0(a5)	# tmp190, __stack_chk_guard
	sd	a4, -24(s0)	# tmp190, D.3621
	li	a4, 0	# tmp190
# problem39.c:40:     srand((unsigned int)time(NULL));
	li	a0,0		#,
	call	time@plt	#
	mv	a5,a0	# _1,
# problem39.c:40:     srand((unsigned int)time(NULL));
	sext.w	a5,a5	# _2, _1
	mv	a0,a5	#, _2
	call	srand@plt	#
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	sw	zero,-108(s0)	#, i
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	j	.L10		#
.L14:
# problem39.c:44:         int l = 10 + rand() % 11;
	call	rand@plt	#
	mv	a5,a0	# tmp146,
# problem39.c:44:         int l = 10 + rand() % 11;
	mv	a4,a5	# tmp148, _3
	li	a5,11		# tmp150,
	remw	a5,a4,a5	# tmp150, tmp149, tmp148
	sext.w	a5,a5	# _4, tmp149
# problem39.c:44:         int l = 10 + rand() % 11;
	addiw	a5,a5,10	#, tmp151, _4
	sw	a5,-100(s0)	# tmp151, l
# problem39.c:45:         for (int j = 0; j < l; j++) {
	sw	zero,-104(s0)	#, j
# problem39.c:45:         for (int j = 0; j < l; j++) {
	j	.L11		#
.L12:
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	call	rand@plt	#
	mv	a5,a0	# tmp152,
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	mv	a4,a5	# tmp154, _5
	li	a5,26		# tmp156,
	remw	a5,a4,a5	# tmp156, tmp155, tmp154
	sext.w	a5,a5	# _6, tmp155
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	andi	a5,a5,0xff	# _7, _6
	addiw	a5,a5,97	#, tmp157, _7
	andi	a4,a5,0xff	# _8, tmp157
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	lw	a5,-104(s0)		# tmp158, j
	addi	a5,a5,-16	#, tmp194, tmp158
	add	a5,a5,s0	#, tmp159, tmp194
	sb	a4,-80(a5)	# _8, str[j_11]
# problem39.c:45:         for (int j = 0; j < l; j++) {
	lw	a5,-104(s0)		# tmp162, j
	addiw	a5,a5,1	#, tmp160, tmp161
	sw	a5,-104(s0)	# tmp160, j
.L11:
# problem39.c:45:         for (int j = 0; j < l; j++) {
	lw	a5,-104(s0)		# tmp164, j
	mv	a4,a5	# tmp163, tmp164
	lw	a5,-100(s0)		# tmp166, l
	sext.w	a4,a4	# tmp167, tmp163
	sext.w	a5,a5	# tmp168, tmp165
	blt	a4,a5,.L12	#, tmp167, tmp168,
# problem39.c:48:         str[l] = '\0';
	lw	a5,-100(s0)		# tmp169, l
	addi	a5,a5,-16	#, tmp195, tmp169
	add	a5,a5,s0	#, tmp170, tmp195
	sb	zero,-80(a5)	#, str[l_23]
# problem39.c:49:         strcpy(temp, str);
	addi	a4,s0,-96	#, tmp171,
	addi	a5,s0,-72	#, tmp172,
	mv	a1,a4	#, tmp171
	mv	a0,a5	#, tmp172
	call	strcpy@plt	#
# problem39.c:51:         func0(temp, 1); // Encode
	addi	a5,s0,-72	#, tmp173,
	li	a1,1		#,
	mv	a0,a5	#, tmp173
	call	func0		#
# problem39.c:52:         strcpy(decoded_str, temp);
	addi	a4,s0,-72	#, tmp174,
	addi	a5,s0,-48	#, tmp175,
	mv	a1,a4	#, tmp174
	mv	a0,a5	#, tmp175
	call	strcpy@plt	#
# problem39.c:53:         func0(decoded_str, 0); // Decode
	addi	a5,s0,-48	#, tmp176,
	li	a1,0		#,
	mv	a0,a5	#, tmp176
	call	func0		#
# problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	addi	a4,s0,-96	#, tmp177,
	addi	a5,s0,-48	#, tmp178,
	mv	a1,a4	#, tmp177
	mv	a0,a5	#, tmp178
	call	strcmp@plt	#
	mv	a5,a0	# tmp179,
# problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	beq	a5,zero,.L13	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L13:
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	lw	a5,-108(s0)		# tmp182, i
	addiw	a5,a5,1	#, tmp180, tmp181
	sw	a5,-108(s0)	# tmp180, i
.L10:
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	lw	a5,-108(s0)		# tmp184, i
	sext.w	a4,a5	# tmp185, tmp183
	li	a5,99		# tmp186,
	ble	a4,a5,.L14	#, tmp185, tmp186,
# problem39.c:58:     return 0;
	li	a5,0		# _18,
# problem39.c:59: }
	mv	a4,a5	# <retval>, _18
	la	a5,__stack_chk_guard		# tmp188,
	ld	a3, -24(s0)	# tmp191, D.3621
	ld	a5, 0(a5)	# tmp189, __stack_chk_guard
	xor	a5, a3, a5	# tmp189, tmp191
	li	a3, 0	# tmp191
	beq	a5,zero,.L16	#, tmp189,,
	call	__stack_chk_fail@plt	#
.L16:
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
