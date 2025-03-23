	.file	"problem20.c"
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
# problem20.c:4: const char* func0(const char* numbers) {
	la	a5,__stack_chk_guard		# tmp103,
	ld	a4, 0(a5)	# tmp192, __stack_chk_guard
	sd	a4, -24(s0)	# tmp192, D.2168
	li	a4, 0	# tmp192
# problem20.c:5:     int count[10] = {0};
	sd	zero,-152(s0)	#, count
	sd	zero,-144(s0)	#, count
	sd	zero,-136(s0)	#, count
	sd	zero,-128(s0)	#, count
	sd	zero,-120(s0)	#, count
# problem20.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
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
# problem20.c:11:     index = 0;
	sw	zero,-168(s0)	#, index
# problem20.c:12:     if (*numbers) {
	ld	a5,-184(s0)		# tmp115, numbers
	lbu	a5,0(a5)	# _1, *numbers_51(D)
# problem20.c:12:     if (*numbers) {
	beq	a5,zero,.L2	#, _1,,
.L10:
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	sw	zero,-164(s0)	#, i
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	j	.L3		#
.L5:
# problem20.c:15:                 current[i] = numbers[i];
	lw	a5,-164(s0)		# _2, i
	ld	a4,-184(s0)		# tmp116, numbers
	add	a5,a4,a5	# _2, _3, tmp116
	lbu	a4,0(a5)	# _4, *_3
# problem20.c:15:                 current[i] = numbers[i];
	lw	a5,-164(s0)		# tmp117, i
	addi	a5,a5,-16	#, tmp196, tmp117
	add	a5,a5,s0	#, tmp118, tmp196
	sb	a4,-16(a5)	# _4, current[i_34]
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	lw	a5,-164(s0)		# tmp121, i
	addiw	a5,a5,1	#, tmp119, tmp120
	sw	a5,-164(s0)	# tmp119, i
.L3:
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	lw	a5,-164(s0)		# _5, i
	ld	a4,-184(s0)		# tmp122, numbers
	add	a5,a4,a5	# _5, _6, tmp122
	lbu	a5,0(a5)	# _7, *_6
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	mv	a4,a5	# tmp123, _7
	li	a5,32		# tmp124,
	beq	a4,a5,.L4	#, tmp123, tmp124,
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	lw	a5,-164(s0)		# _8, i
	ld	a4,-184(s0)		# tmp125, numbers
	add	a5,a4,a5	# _8, _9, tmp125
	lbu	a5,0(a5)	# _10, *_9
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	bne	a5,zero,.L5	#, _10,,
.L4:
# problem20.c:17:             current[i] = '\0';
	lw	a5,-164(s0)		# tmp126, i
	addi	a5,a5,-16	#, tmp197, tmp126
	add	a5,a5,s0	#, tmp127, tmp197
	sb	zero,-16(a5)	#, current[i_34]
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	sw	zero,-160(s0)	#, j
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	j	.L6		#
.L9:
# problem20.c:19:                 if (strcmp(current, numto[j]) == 0) {
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
# problem20.c:19:                 if (strcmp(current, numto[j]) == 0) {
	bne	a5,zero,.L7	#, _12,,
# problem20.c:20:                     count[j]++;
	lw	a5,-160(s0)		# tmp132, j
	slli	a5,a5,2	#, tmp133, tmp132
	addi	a5,a5,-16	#, tmp199, tmp133
	add	a5,a5,s0	#, tmp133, tmp199
	lw	a5,-136(a5)		# _13, count[j_36]
# problem20.c:20:                     count[j]++;
	addiw	a5,a5,1	#, tmp134, _13
	sext.w	a4,a5	# _14, tmp134
	lw	a5,-160(s0)		# tmp135, j
	slli	a5,a5,2	#, tmp136, tmp135
	addi	a5,a5,-16	#, tmp200, tmp136
	add	a5,a5,s0	#, tmp136, tmp200
	sw	a4,-136(a5)	# _14, count[j_36]
# problem20.c:21:                     break;
	j	.L8		#
.L7:
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	lw	a5,-160(s0)		# tmp139, j
	addiw	a5,a5,1	#, tmp137, tmp138
	sw	a5,-160(s0)	# tmp137, j
.L6:
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	lw	a5,-160(s0)		# tmp141, j
	sext.w	a4,a5	# tmp142, tmp140
	li	a5,9		# tmp143,
	ble	a4,a5,.L9	#, tmp142, tmp143,
.L8:
# problem20.c:24:             numbers += i + 1;
	lw	a5,-164(s0)		# _15, i
	addi	a5,a5,1	#, _16, _15
	ld	a4,-184(s0)		# tmp145, numbers
	add	a5,a4,a5	# _16, tmp144, tmp145
	sd	a5,-184(s0)	# tmp144, numbers
# problem20.c:25:         } while (numbers[-1]);
	ld	a5,-184(s0)		# tmp146, numbers
	addi	a5,a5,-1	#, _17, tmp146
	lbu	a5,0(a5)	# _18, *_17
# problem20.c:25:         } while (numbers[-1]);
	bne	a5,zero,.L10	#, _18,,
.L2:
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	sw	zero,-164(s0)	#, i
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	j	.L11		#
.L16:
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	sw	zero,-160(s0)	#, j
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	j	.L12		#
.L15:
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	sw	zero,-156(s0)	#, k
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	j	.L13		#
.L14:
# problem20.c:31:                 out[index] = numto[i][k];
	lw	a5,-164(s0)		# tmp147, i
	slli	a5,a5,3	#, tmp148, tmp147
	addi	a5,a5,-16	#, tmp201, tmp148
	add	a5,a5,s0	#, tmp148, tmp201
	ld	a4,-96(a5)		# _19, numto[i_35]
# problem20.c:31:                 out[index] = numto[i][k];
	lw	a5,-156(s0)		# _20, k
	add	a5,a4,a5	# _20, _21, _19
	lbu	a4,0(a5)	# _22, *_21
# problem20.c:31:                 out[index] = numto[i][k];
	lla	a3,out.1	# tmp149,
	lw	a5,-168(s0)		# tmp150, index
	add	a5,a3,a5	# tmp150, tmp151, tmp149
	sb	a4,0(a5)	# _22, out[index_31]
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-156(s0)		# tmp154, k
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-156(s0)	# tmp152, k
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-168(s0)		# tmp157, index
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-168(s0)	# tmp155, index
.L13:
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-164(s0)		# tmp158, i
	slli	a5,a5,3	#, tmp159, tmp158
	addi	a5,a5,-16	#, tmp202, tmp159
	add	a5,a5,s0	#, tmp159, tmp202
	ld	a4,-96(a5)		# _23, numto[i_35]
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-156(s0)		# _24, k
	add	a5,a4,a5	# _24, _25, _23
	lbu	a5,0(a5)	# _26, *_25
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	bne	a5,zero,.L14	#, _26,,
# problem20.c:33:             out[index++] = ' '; 
	lw	a5,-168(s0)		# index.0_27, index
	addiw	a4,a5,1	#, tmp160, index.0_27
	sw	a4,-168(s0)	# tmp160, index
# problem20.c:33:             out[index++] = ' '; 
	lla	a4,out.1	# tmp161,
	add	a5,a4,a5	# index.0_27, tmp162, tmp161
	li	a4,32		# tmp163,
	sb	a4,0(a5)	# tmp163, out[index.0_27]
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	lw	a5,-160(s0)		# tmp166, j
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-160(s0)	# tmp164, j
.L12:
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	lw	a5,-164(s0)		# tmp167, i
	slli	a5,a5,2	#, tmp168, tmp167
	addi	a5,a5,-16	#, tmp203, tmp168
	add	a5,a5,s0	#, tmp168, tmp203
	lw	a4,-136(a5)		# _28, count[i_35]
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	lw	a5,-160(s0)		# tmp170, j
	sext.w	a5,a5	# tmp171, tmp169
	blt	a5,a4,.L15	#, tmp171, tmp172,
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	lw	a5,-164(s0)		# tmp175, i
	addiw	a5,a5,1	#, tmp173, tmp174
	sw	a5,-164(s0)	# tmp173, i
.L11:
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	lw	a5,-164(s0)		# tmp177, i
	sext.w	a4,a5	# tmp178, tmp176
	li	a5,9		# tmp179,
	ble	a4,a5,.L16	#, tmp178, tmp179,
# problem20.c:37:     if (index > 0) {
	lw	a5,-168(s0)		# tmp181, index
	sext.w	a5,a5	# tmp182, tmp180
	ble	a5,zero,.L17	#, tmp182,,
# problem20.c:38:         out[index - 1] = '\0'; 
	lw	a5,-168(s0)		# tmp185, index
	addiw	a5,a5,-1	#, tmp183, tmp184
	sext.w	a5,a5	# _29, tmp183
# problem20.c:38:         out[index - 1] = '\0'; 
	lla	a4,out.1	# tmp186,
	add	a5,a4,a5	# _29, tmp187, tmp186
	sb	zero,0(a5)	#, out[_29]
	j	.L18		#
.L17:
# problem20.c:40:         out[0] = '\0';
	lla	a5,out.1	# tmp188,
	sb	zero,0(a5)	#, out[0]
.L18:
# problem20.c:43:     return out;
	lla	a5,out.1	# _63,
	mv	a4,a5	# <retval>, _63
# problem20.c:44: }
	la	a5,__stack_chk_guard		# tmp190,
	ld	a3, -24(s0)	# tmp193, D.2168
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
	.section	.rodata
	.align	3
.LC12:
	.string	""
	.align	3
.LC13:
	.string	"problem20.c"
	.align	3
.LC14:
	.string	"strcmp(func0(\"\"), \"\") == 0"
	.align	3
.LC15:
	.string	"strcmp(func0(\"three\"), \"three\") == 0"
	.align	3
.LC16:
	.string	"three five nine"
	.align	3
.LC17:
	.string	"strcmp(func0(\"three five nine\"), \"three five nine\") == 0"
	.align	3
.LC18:
	.string	"five zero four seven nine eight"
	.align	3
.LC19:
	.string	"zero four five seven eight nine"
	.align	3
.LC20:
	.string	"strcmp(func0(\"five zero four seven nine eight\"), \"zero four five seven eight nine\") == 0"
	.align	3
.LC21:
	.string	"six five four three two one zero"
	.align	3
.LC22:
	.string	"zero one two three four five six"
	.align	3
.LC23:
	.string	"strcmp(func0(\"six five four three two one zero\"), \"zero one two three four five six\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# problem20.c:52:     assert(strcmp(func0(""), "") == 0);
	lla	a0,.LC12	#,
	call	func0		#
	mv	a5,a0	# _1,
	lbu	a5,0(a5)	# _13, MEM[(const unsigned char * {ref-all})_1]
	sext.w	a5,a5	# _2, _13
	beq	a5,zero,.L22	#, _2,,
# problem20.c:52:     assert(strcmp(func0(""), "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,52		#,
	lla	a1,.LC13	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L22:
# problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	lla	a0,.LC3	#,
	call	func0		#
	mv	a5,a0	# _3,
	lla	a1,.LC3	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L23	#, _4,,
# problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC13	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L23:
# problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	lla	a0,.LC16	#,
	call	func0		#
	mv	a5,a0	# _5,
	lla	a1,.LC16	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp86,
	beq	a5,zero,.L24	#, _6,,
# problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC13	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L24:
# problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	lla	a0,.LC18	#,
	call	func0		#
	mv	a5,a0	# _7,
	lla	a1,.LC19	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp87,
	beq	a5,zero,.L25	#, _8,,
# problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC13	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L25:
# problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	lla	a0,.LC21	#,
	call	func0		#
	mv	a5,a0	# _9,
	lla	a1,.LC22	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L26	#, _10,,
# problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC13	#,
	lla	a0,.LC23	#,
	call	__assert_fail@plt	#
.L26:
# problem20.c:58:     return 0;
	li	a5,0		# _23,
# problem20.c:59: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
	.size	main, .-main
	.local	out.1
	.comm	out.1,1000,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
