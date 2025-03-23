	.file	"problem39.c"
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-72(s0)	# s, s
	mv	a5,a1	# tmp90, encode
	sw	a5,-76(s0)	# tmp91, encode
# problem39.c:4: void func0(char *s, int encode) {
	la	a5,__stack_chk_guard		# tmp92,
	ld	a4, 0(a5)	# tmp152, __stack_chk_guard
	sd	a4, -24(s0)	# tmp152, D.2766
	li	a4, 0	# tmp152
# problem39.c:5:     int l = strlen(s);
	ld	a0,-72(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem39.c:5:     int l = strlen(s);
	sw	a5,-44(s0)	# _1, l
# problem39.c:6:     int num = (l + 2) / 3;
	lw	a5,-44(s0)		# tmp95, l
	addiw	a5,a5,2	#, tmp93, tmp94
	sext.w	a5,a5	# _2, tmp93
# problem39.c:6:     int num = (l + 2) / 3;
	mv	a4,a5	# tmp96, _2
	li	a5,3		# tmp98,
	divw	a5,a4,a5	# tmp98, tmp97, tmp96
	sw	a5,-40(s0)	# tmp97, num
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	sw	zero,-48(s0)	#, i
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	j	.L2		#
.L7:
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a5,-48(s0)		# tmp101, i
	addiw	a5,a5,1	#, tmp99, tmp100
	sext.w	a5,a5	# _3, tmp99
	mv	a4,a5	# tmp102, _3
	mv	a5,a4	# tmp103, tmp102
	slliw	a5,a5,1	#, tmp104, tmp103
	addw	a5,a5,a4	# tmp102, tmp103, tmp103
	sext.w	a4,a5	# _4, tmp103
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a5,-44(s0)		# tmp106, l
	sext.w	a5,a5	# tmp107, tmp105
	bge	a5,a4,.L3	#, tmp107, tmp108,
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a5,-48(s0)		# tmp110, i
	mv	a4,a5	# tmp109, tmp110
	mv	a5,a4	# tmp111, tmp109
	slliw	a4,a4,2	#, tmp112, tmp109
	subw	a5,a5,a4	# tmp111, tmp111, tmp112
	sext.w	a5,a5	# _5, tmp111
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	lw	a4,-44(s0)		# tmp115, l
	addw	a5,a4,a5	# _5, tmp113, tmp114
	sext.w	a5,a5	# iftmp.0_19, tmp113
	j	.L4		#
.L3:
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	li	a5,3		# iftmp.0_19,
.L4:
# problem39.c:10:         int len = (i * 3 + 3 <= l) ? 3 : l - i * 3;
	sw	a5,-36(s0)	# iftmp.0_19, len
# problem39.c:11:         strncpy(x, s + i * 3, len);
	lw	a5,-48(s0)		# tmp117, i
	mv	a4,a5	# tmp116, tmp117
	mv	a5,a4	# tmp118, tmp116
	slliw	a5,a5,1	#, tmp119, tmp118
	addw	a5,a5,a4	# tmp116, tmp118, tmp118
	sext.w	a5,a5	# _6, tmp118
	mv	a4,a5	# _7, _6
# problem39.c:11:         strncpy(x, s + i * 3, len);
	ld	a5,-72(s0)		# tmp120, s
	add	a4,a5,a4	# _7, _8, tmp120
# problem39.c:11:         strncpy(x, s + i * 3, len);
	lw	a3,-36(s0)		# _9, len
	addi	a5,s0,-32	#, tmp121,
	mv	a2,a3	#, _9
	mv	a1,a4	#, _8
	mv	a0,a5	#, tmp121
	call	strncpy@plt	#
# problem39.c:12:         x[len] = '\0';
	lw	a5,-36(s0)		# tmp122, len
	addi	a5,a5,-16	#, tmp156, tmp122
	add	a5,a5,s0	#, tmp123, tmp156
	sb	zero,-16(a5)	#, x[len_30]
# problem39.c:14:         if (len == 3) {
	lw	a5,-36(s0)		# tmp125, len
	sext.w	a4,a5	# tmp126, tmp124
	li	a5,3		# tmp127,
	bne	a4,a5,.L5	#, tmp126, tmp127,
# problem39.c:15:             if (encode) {
	lw	a5,-76(s0)		# tmp129, encode
	sext.w	a5,a5	# tmp130, tmp128
	beq	a5,zero,.L6	#, tmp130,,
# problem39.c:16:                 char temp = x[2];
	lbu	a5,-30(s0)	# tmp131, x[2]
	sb	a5,-49(s0)	# tmp131, temp
# problem39.c:17:                 x[2] = x[1];
	lbu	a5,-31(s0)	# _10, x[1]
# problem39.c:17:                 x[2] = x[1];
	sb	a5,-30(s0)	# _10, x[2]
# problem39.c:18:                 x[1] = x[0];
	lbu	a5,-32(s0)	# _11, x[0]
# problem39.c:18:                 x[1] = x[0];
	sb	a5,-31(s0)	# _11, x[1]
# problem39.c:19:                 x[0] = temp;
	lbu	a5,-49(s0)	# tmp132, temp
	sb	a5,-32(s0)	# tmp132, x[0]
	j	.L5		#
.L6:
# problem39.c:21:                 char temp = x[0];
	lbu	a5,-32(s0)	# tmp133, x[0]
	sb	a5,-50(s0)	# tmp133, temp
# problem39.c:22:                 x[0] = x[1];
	lbu	a5,-31(s0)	# _12, x[1]
# problem39.c:22:                 x[0] = x[1];
	sb	a5,-32(s0)	# _12, x[0]
# problem39.c:23:                 x[1] = x[2];
	lbu	a5,-30(s0)	# _13, x[2]
# problem39.c:23:                 x[1] = x[2];
	sb	a5,-31(s0)	# _13, x[1]
# problem39.c:24:                 x[2] = temp;
	lbu	a5,-50(s0)	# tmp134, temp
	sb	a5,-30(s0)	# tmp134, x[2]
.L5:
# problem39.c:27:         strncpy(s + i * 3, x, len);
	lw	a5,-48(s0)		# tmp136, i
	mv	a4,a5	# tmp135, tmp136
	mv	a5,a4	# tmp137, tmp135
	slliw	a5,a5,1	#, tmp138, tmp137
	addw	a5,a5,a4	# tmp135, tmp137, tmp137
	sext.w	a5,a5	# _14, tmp137
	mv	a4,a5	# _15, _14
# problem39.c:27:         strncpy(s + i * 3, x, len);
	ld	a5,-72(s0)		# tmp139, s
	add	a5,a5,a4	# _15, _16, tmp139
	lw	a3,-36(s0)		# _17, len
	addi	a4,s0,-32	#, tmp140,
	mv	a2,a3	#, _17
	mv	a1,a4	#, tmp140
	mv	a0,a5	#, _16
	call	strncpy@plt	#
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	lw	a5,-48(s0)		# tmp143, i
	addiw	a5,a5,1	#, tmp141, tmp142
	sw	a5,-48(s0)	# tmp141, i
.L2:
# problem39.c:9:     for (int i = 0; i < num; ++i) {
	lw	a5,-48(s0)		# tmp145, i
	mv	a4,a5	# tmp144, tmp145
	lw	a5,-40(s0)		# tmp147, num
	sext.w	a4,a4	# tmp148, tmp144
	sext.w	a5,a5	# tmp149, tmp146
	blt	a4,a5,.L7	#, tmp148, tmp149,
# problem39.c:29: }
	nop	
	la	a5,__stack_chk_guard		# tmp150,
	ld	a4, -24(s0)	# tmp153, D.2766
	ld	a5, 0(a5)	# tmp151, __stack_chk_guard
	xor	a5, a4, a5	# tmp151, tmp153
	li	a4, 0	# tmp153
	beq	a5,zero,.L8	#, tmp151,,
	call	__stack_chk_fail@plt	#
.L8:
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
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
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
# problem39.c:39: int main(){
	la	a5,__stack_chk_guard		# tmp83,
	ld	a4, 0(a5)	# tmp128, __stack_chk_guard
	sd	a4, -24(s0)	# tmp128, D.2769
	li	a4, 0	# tmp128
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
	mv	a5,a0	# tmp84,
# problem39.c:44:         int l = 10 + rand() % 11;
	mv	a4,a5	# tmp86, _3
	li	a5,11		# tmp88,
	remw	a5,a4,a5	# tmp88, tmp87, tmp86
	sext.w	a5,a5	# _4, tmp87
# problem39.c:44:         int l = 10 + rand() % 11;
	addiw	a5,a5,10	#, tmp89, _4
	sw	a5,-100(s0)	# tmp89, l
# problem39.c:45:         for (int j = 0; j < l; j++) {
	sw	zero,-104(s0)	#, j
# problem39.c:45:         for (int j = 0; j < l; j++) {
	j	.L11		#
.L12:
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	call	rand@plt	#
	mv	a5,a0	# tmp90,
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	mv	a4,a5	# tmp92, _5
	li	a5,26		# tmp94,
	remw	a5,a4,a5	# tmp94, tmp93, tmp92
	sext.w	a5,a5	# _6, tmp93
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	andi	a5,a5,0xff	# _7, _6
	addiw	a5,a5,97	#, tmp95, _7
	andi	a4,a5,0xff	# _8, tmp95
# problem39.c:46:             str[j] = 'a' + rand() % 26;
	lw	a5,-104(s0)		# tmp96, j
	addi	a5,a5,-16	#, tmp132, tmp96
	add	a5,a5,s0	#, tmp97, tmp132
	sb	a4,-80(a5)	# _8, str[j_11]
# problem39.c:45:         for (int j = 0; j < l; j++) {
	lw	a5,-104(s0)		# tmp100, j
	addiw	a5,a5,1	#, tmp98, tmp99
	sw	a5,-104(s0)	# tmp98, j
.L11:
# problem39.c:45:         for (int j = 0; j < l; j++) {
	lw	a5,-104(s0)		# tmp102, j
	mv	a4,a5	# tmp101, tmp102
	lw	a5,-100(s0)		# tmp104, l
	sext.w	a4,a4	# tmp105, tmp101
	sext.w	a5,a5	# tmp106, tmp103
	blt	a4,a5,.L12	#, tmp105, tmp106,
# problem39.c:48:         str[l] = '\0';
	lw	a5,-100(s0)		# tmp107, l
	addi	a5,a5,-16	#, tmp133, tmp107
	add	a5,a5,s0	#, tmp108, tmp133
	sb	zero,-80(a5)	#, str[l_23]
# problem39.c:49:         strcpy(temp, str);
	addi	a4,s0,-96	#, tmp109,
	addi	a5,s0,-72	#, tmp110,
	mv	a1,a4	#, tmp109
	mv	a0,a5	#, tmp110
	call	strcpy@plt	#
# problem39.c:51:         func0(temp, 1); // Encode
	addi	a5,s0,-72	#, tmp111,
	li	a1,1		#,
	mv	a0,a5	#, tmp111
	call	func0		#
# problem39.c:52:         strcpy(decoded_str, temp);
	addi	a4,s0,-72	#, tmp112,
	addi	a5,s0,-48	#, tmp113,
	mv	a1,a4	#, tmp112
	mv	a0,a5	#, tmp113
	call	strcpy@plt	#
# problem39.c:53:         func0(decoded_str, 0); // Decode
	addi	a5,s0,-48	#, tmp114,
	li	a1,0		#,
	mv	a0,a5	#, tmp114
	call	func0		#
# problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	addi	a4,s0,-96	#, tmp115,
	addi	a5,s0,-48	#, tmp116,
	mv	a1,a4	#, tmp115
	mv	a0,a5	#, tmp116
	call	strcmp@plt	#
	mv	a5,a0	# tmp117,
	beq	a5,zero,.L13	#, _9,,
# problem39.c:55:         assert(strcmp(decoded_str, str) == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC0	#,
	lla	a0,.LC1	#,
	call	__assert_fail@plt	#
.L13:
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	lw	a5,-108(s0)		# tmp120, i
	addiw	a5,a5,1	#, tmp118, tmp119
	sw	a5,-108(s0)	# tmp118, i
.L10:
# problem39.c:43:     for (int i = 0; i < 100; i++) {
	lw	a5,-108(s0)		# tmp122, i
	sext.w	a4,a5	# tmp123, tmp121
	li	a5,99		# tmp124,
	ble	a4,a5,.L14	#, tmp123, tmp124,
# problem39.c:58:     return 0;
	li	a5,0		# _18,
# problem39.c:59: }
	mv	a4,a5	# <retval>, _18
	la	a5,__stack_chk_guard		# tmp126,
	ld	a3, -24(s0)	# tmp129, D.2769
	ld	a5, 0(a5)	# tmp127, __stack_chk_guard
	xor	a5, a3, a5	# tmp127, tmp129
	li	a3, 0	# tmp129
	beq	a5,zero,.L16	#, tmp127,,
	call	__stack_chk_fail@plt	#
.L16:
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
