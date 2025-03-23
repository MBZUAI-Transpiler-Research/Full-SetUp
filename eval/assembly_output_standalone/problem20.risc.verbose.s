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
	.string	"zero"
	.align	3
.LC1:
	.string	"one"
	.align	3
.LC2:
	.string	"two"
	.align	3
.LC3:
	.string	"three"
	.align	3
.LC4:
	.string	"four"
	.align	3
.LC5:
	.string	"five"
	.align	3
.LC6:
	.string	"six"
	.align	3
.LC7:
	.string	"seven"
	.align	3
.LC8:
	.string	"eight"
	.align	3
.LC9:
	.string	"nine"
	.data
	.align	3
.LC11:
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
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-192	#,,
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	addi	s0,sp,192	#,,
	sd	a0,-184(s0)	# numbers, numbers
# eval/problem20//code.c:4: const char* func0(const char* numbers) {
	la	a5,__stack_chk_guard		# tmp103,
	ld	a4, 0(a5)	# tmp192, __stack_chk_guard
	sd	a4, -24(s0)	# tmp192, D.2129
	li	a4, 0	# tmp192
# eval/problem20//code.c:5:     int count[10] = {0};
	sd	zero,-152(s0)	#, count
	sd	zero,-144(s0)	#, count
	sd	zero,-136(s0)	#, count
	sd	zero,-128(s0)	#, count
	sd	zero,-120(s0)	#, count
# eval/problem20//code.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	lla	a5,.LC11	# tmp104,
	ld	t3,0(a5)		# tmp105,
	ld	t1,8(a5)		# tmp106,
	ld	a7,16(a5)		# tmp107,
	ld	a6,24(a5)		# tmp108,
	ld	a0,32(a5)		# tmp109,
	ld	a1,40(a5)		# tmp110,
	ld	a2,48(a5)		# tmp111,
	ld	a3,56(a5)		# tmp112,
	ld	a4,64(a5)		# tmp113,
	ld	a5,72(a5)		# tmp114,
	sd	t3,-112(s0)	# tmp105, numto
	sd	t1,-104(s0)	# tmp106, numto
	sd	a7,-96(s0)	# tmp107, numto
	sd	a6,-88(s0)	# tmp108, numto
	sd	a0,-80(s0)	# tmp109, numto
	sd	a1,-72(s0)	# tmp110, numto
	sd	a2,-64(s0)	# tmp111, numto
	sd	a3,-56(s0)	# tmp112, numto
	sd	a4,-48(s0)	# tmp113, numto
	sd	a5,-40(s0)	# tmp114, numto
# eval/problem20//code.c:11:     index = 0;
	sw	zero,-168(s0)	#, index
# eval/problem20//code.c:12:     if (*numbers) {
	ld	a5,-184(s0)		# tmp115, numbers
	lbu	a5,0(a5)	# _1, *numbers_51(D)
# eval/problem20//code.c:12:     if (*numbers) {
	beq	a5,zero,.L2	#, _1,,
.L10:
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	sw	zero,-164(s0)	#, i
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	j	.L3		#
.L5:
# eval/problem20//code.c:15:                 current[i] = numbers[i];
	lw	a5,-164(s0)		# _2, i
	ld	a4,-184(s0)		# tmp116, numbers
	add	a5,a4,a5	# _2, _3, tmp116
	lbu	a4,0(a5)	# _4, *_3
# eval/problem20//code.c:15:                 current[i] = numbers[i];
	lw	a5,-164(s0)		# tmp117, i
	addi	a5,a5,-16	#, tmp196, tmp117
	add	a5,a5,s0	#, tmp118, tmp196
	sb	a4,-16(a5)	# _4, current[i_34]
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	lw	a5,-164(s0)		# tmp121, i
	addiw	a5,a5,1	#, tmp119, tmp120
	sw	a5,-164(s0)	# tmp119, i
.L3:
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	lw	a5,-164(s0)		# _5, i
	ld	a4,-184(s0)		# tmp122, numbers
	add	a5,a4,a5	# _5, _6, tmp122
	lbu	a5,0(a5)	# _7, *_6
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	mv	a4,a5	# tmp123, _7
	li	a5,32		# tmp124,
	beq	a4,a5,.L4	#, tmp123, tmp124,
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	lw	a5,-164(s0)		# _8, i
	ld	a4,-184(s0)		# tmp125, numbers
	add	a5,a4,a5	# _8, _9, tmp125
	lbu	a5,0(a5)	# _10, *_9
# eval/problem20//code.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	bne	a5,zero,.L5	#, _10,,
.L4:
# eval/problem20//code.c:17:             current[i] = '\0';
	lw	a5,-164(s0)		# tmp126, i
	addi	a5,a5,-16	#, tmp197, tmp126
	add	a5,a5,s0	#, tmp127, tmp197
	sb	zero,-16(a5)	#, current[i_34]
# eval/problem20//code.c:18:             for (j = 0; j < 10; ++j) {
	sw	zero,-160(s0)	#, j
# eval/problem20//code.c:18:             for (j = 0; j < 10; ++j) {
	j	.L6		#
.L9:
# eval/problem20//code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	lw	a5,-160(s0)		# tmp128, j
	slli	a5,a5,3	#, tmp129, tmp128
	addi	a5,a5,-16	#, tmp198, tmp129
	add	a5,a5,s0	#, tmp129, tmp198
	ld	a4,-96(a5)		# _11, numto[j_36]
	addi	a5,s0,-32	#, tmp130,
	mv	a1,a4	#, _11
	mv	a0,a5	#, tmp130
	call	strcmp@plt	#
	mv	a5,a0	# tmp131,
# eval/problem20//code.c:19:                 if (strcmp(current, numto[j]) == 0) {
	bne	a5,zero,.L7	#, _12,,
# eval/problem20//code.c:20:                     count[j]++;
	lw	a5,-160(s0)		# tmp132, j
	slli	a5,a5,2	#, tmp133, tmp132
	addi	a5,a5,-16	#, tmp199, tmp133
	add	a5,a5,s0	#, tmp133, tmp199
	lw	a5,-136(a5)		# _13, count[j_36]
# eval/problem20//code.c:20:                     count[j]++;
	addiw	a5,a5,1	#, tmp134, _13
	sext.w	a4,a5	# _14, tmp134
	lw	a5,-160(s0)		# tmp135, j
	slli	a5,a5,2	#, tmp136, tmp135
	addi	a5,a5,-16	#, tmp200, tmp136
	add	a5,a5,s0	#, tmp136, tmp200
	sw	a4,-136(a5)	# _14, count[j_36]
# eval/problem20//code.c:21:                     break;
	j	.L8		#
.L7:
# eval/problem20//code.c:18:             for (j = 0; j < 10; ++j) {
	lw	a5,-160(s0)		# tmp139, j
	addiw	a5,a5,1	#, tmp137, tmp138
	sw	a5,-160(s0)	# tmp137, j
.L6:
# eval/problem20//code.c:18:             for (j = 0; j < 10; ++j) {
	lw	a5,-160(s0)		# tmp141, j
	sext.w	a4,a5	# tmp142, tmp140
	li	a5,9		# tmp143,
	ble	a4,a5,.L9	#, tmp142, tmp143,
.L8:
# eval/problem20//code.c:24:             numbers += i + 1;
	lw	a5,-164(s0)		# _15, i
	addi	a5,a5,1	#, _16, _15
	ld	a4,-184(s0)		# tmp145, numbers
	add	a5,a4,a5	# _16, tmp144, tmp145
	sd	a5,-184(s0)	# tmp144, numbers
# eval/problem20//code.c:25:         } while (numbers[-1]);
	ld	a5,-184(s0)		# tmp146, numbers
	addi	a5,a5,-1	#, _17, tmp146
	lbu	a5,0(a5)	# _18, *_17
# eval/problem20//code.c:25:         } while (numbers[-1]);
	bne	a5,zero,.L10	#, _18,,
.L2:
# eval/problem20//code.c:28:     for (i = 0; i < 10; ++i) {
	sw	zero,-164(s0)	#, i
# eval/problem20//code.c:28:     for (i = 0; i < 10; ++i) {
	j	.L11		#
.L16:
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	sw	zero,-160(s0)	#, j
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	j	.L12		#
.L15:
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	sw	zero,-156(s0)	#, k
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	j	.L13		#
.L14:
# eval/problem20//code.c:31:                 out[index] = numto[i][k];
	lw	a5,-164(s0)		# tmp147, i
	slli	a5,a5,3	#, tmp148, tmp147
	addi	a5,a5,-16	#, tmp201, tmp148
	add	a5,a5,s0	#, tmp148, tmp201
	ld	a4,-96(a5)		# _19, numto[i_35]
# eval/problem20//code.c:31:                 out[index] = numto[i][k];
	lw	a5,-156(s0)		# _20, k
	add	a5,a4,a5	# _20, _21, _19
	lbu	a4,0(a5)	# _22, *_21
# eval/problem20//code.c:31:                 out[index] = numto[i][k];
	lla	a3,out.0	# tmp149,
	lw	a5,-168(s0)		# tmp150, index
	add	a5,a3,a5	# tmp150, tmp151, tmp149
	sb	a4,0(a5)	# _22, out[index_31]
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-156(s0)		# tmp154, k
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-156(s0)	# tmp152, k
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-168(s0)		# tmp157, index
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-168(s0)	# tmp155, index
.L13:
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-164(s0)		# tmp158, i
	slli	a5,a5,3	#, tmp159, tmp158
	addi	a5,a5,-16	#, tmp202, tmp159
	add	a5,a5,s0	#, tmp159, tmp202
	ld	a4,-96(a5)		# _23, numto[i_35]
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-156(s0)		# _24, k
	add	a5,a4,a5	# _24, _25, _23
	lbu	a5,0(a5)	# _26, *_25
# eval/problem20//code.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	bne	a5,zero,.L14	#, _26,,
# eval/problem20//code.c:33:             out[index++] = ' '; 
	lw	a5,-168(s0)		# index.0_27, index
	addiw	a4,a5,1	#, tmp160, index.0_27
	sw	a4,-168(s0)	# tmp160, index
# eval/problem20//code.c:33:             out[index++] = ' '; 
	lla	a4,out.0	# tmp161,
	add	a5,a4,a5	# index.0_27, tmp162, tmp161
	li	a4,32		# tmp163,
	sb	a4,0(a5)	# tmp163, out[index.0_27]
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	lw	a5,-160(s0)		# tmp166, j
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-160(s0)	# tmp164, j
.L12:
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	lw	a5,-164(s0)		# tmp167, i
	slli	a5,a5,2	#, tmp168, tmp167
	addi	a5,a5,-16	#, tmp203, tmp168
	add	a5,a5,s0	#, tmp168, tmp203
	lw	a4,-136(a5)		# _28, count[i_35]
# eval/problem20//code.c:29:         for (j = 0; j < count[i]; ++j) {
	lw	a5,-160(s0)		# tmp170, j
	sext.w	a5,a5	# tmp171, tmp169
	blt	a5,a4,.L15	#, tmp171, tmp172,
# eval/problem20//code.c:28:     for (i = 0; i < 10; ++i) {
	lw	a5,-164(s0)		# tmp175, i
	addiw	a5,a5,1	#, tmp173, tmp174
	sw	a5,-164(s0)	# tmp173, i
.L11:
# eval/problem20//code.c:28:     for (i = 0; i < 10; ++i) {
	lw	a5,-164(s0)		# tmp177, i
	sext.w	a4,a5	# tmp178, tmp176
	li	a5,9		# tmp179,
	ble	a4,a5,.L16	#, tmp178, tmp179,
# eval/problem20//code.c:37:     if (index > 0) {
	lw	a5,-168(s0)		# tmp181, index
	sext.w	a5,a5	# tmp182, tmp180
	ble	a5,zero,.L17	#, tmp182,,
# eval/problem20//code.c:38:         out[index - 1] = '\0'; 
	lw	a5,-168(s0)		# tmp185, index
	addiw	a5,a5,-1	#, tmp183, tmp184
	sext.w	a5,a5	# _29, tmp183
# eval/problem20//code.c:38:         out[index - 1] = '\0'; 
	lla	a4,out.0	# tmp186,
	add	a5,a4,a5	# _29, tmp187, tmp186
	sb	zero,0(a5)	#, out[_29]
	j	.L18		#
.L17:
# eval/problem20//code.c:40:         out[0] = '\0';
	lla	a5,out.0	# tmp188,
	sb	zero,0(a5)	#, out[0]
.L18:
# eval/problem20//code.c:43:     return out;
	lla	a5,out.0	# _63,
	mv	a4,a5	# <retval>, _63
# eval/problem20//code.c:44: }
	la	a5,__stack_chk_guard		# tmp190,
	ld	a3, -24(s0)	# tmp193, D.2129
	ld	a5, 0(a5)	# tmp191, __stack_chk_guard
	xor	a5, a3, a5	# tmp191, tmp193
	li	a3, 0	# tmp193
	beq	a5,zero,.L20	#, tmp191,,
	call	__stack_chk_fail@plt	#
.L20:
	mv	a0,a4	#, <retval>
	ld	ra,184(sp)		#,
	ld	s0,176(sp)		#,
	addi	sp,sp,192	#,,
	jr	ra		#
	.size	func0, .-func0
	.local	out.0
	.comm	out.0,1000,8
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
