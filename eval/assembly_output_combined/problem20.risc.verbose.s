	.file	"problem20.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-192	#,,
	.cfi_def_cfa_offset 192
	sd	ra,184(sp)	#,
	sd	s0,176(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,192	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-184(s0)	# numbers, numbers
# problem20.c:4: const char* func0(const char* numbers) {
	la	a5,__stack_chk_guard		# tmp165,
	ld	a4, 0(a5)	# tmp254, __stack_chk_guard
	sd	a4, -24(s0)	# tmp254, D.3013
	li	a4, 0	# tmp254
# problem20.c:5:     int count[10] = {0};
	sd	zero,-152(s0)	#, count
	sd	zero,-144(s0)	#, count
	sd	zero,-136(s0)	#, count
	sd	zero,-128(s0)	#, count
	sd	zero,-120(s0)	#, count
# problem20.c:6:     const char* numto[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	lla	a5,.LC11	# tmp166,
	ld	t3,0(a5)		# tmp167,
	ld	t1,8(a5)		# tmp168,
	ld	a7,16(a5)		# tmp169,
	ld	a6,24(a5)		# tmp170,
	ld	a0,32(a5)		# tmp171,
	ld	a1,40(a5)		# tmp172,
	ld	a2,48(a5)		# tmp173,
	ld	a3,56(a5)		# tmp174,
	ld	a4,64(a5)		# tmp175,
	ld	a5,72(a5)		# tmp176,
	sd	t3,-112(s0)	# tmp167, numto
	sd	t1,-104(s0)	# tmp168, numto
	sd	a7,-96(s0)	# tmp169, numto
	sd	a6,-88(s0)	# tmp170, numto
	sd	a0,-80(s0)	# tmp171, numto
	sd	a1,-72(s0)	# tmp172, numto
	sd	a2,-64(s0)	# tmp173, numto
	sd	a3,-56(s0)	# tmp174, numto
	sd	a4,-48(s0)	# tmp175, numto
	sd	a5,-40(s0)	# tmp176, numto
# problem20.c:11:     index = 0;
	sw	zero,-168(s0)	#, index
# problem20.c:12:     if (*numbers) {
	ld	a5,-184(s0)		# tmp177, numbers
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
	ld	a4,-184(s0)		# tmp178, numbers
	add	a5,a4,a5	# _2, _3, tmp178
	lbu	a4,0(a5)	# _4, *_3
# problem20.c:15:                 current[i] = numbers[i];
	lw	a5,-164(s0)		# tmp179, i
	addi	a5,a5,-16	#, tmp258, tmp179
	add	a5,a5,s0	#, tmp180, tmp258
	sb	a4,-16(a5)	# _4, current[i_34]
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	lw	a5,-164(s0)		# tmp183, i
	addiw	a5,a5,1	#, tmp181, tmp182
	sw	a5,-164(s0)	# tmp181, i
.L3:
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	lw	a5,-164(s0)		# _5, i
	ld	a4,-184(s0)		# tmp184, numbers
	add	a5,a4,a5	# _5, _6, tmp184
	lbu	a5,0(a5)	# _7, *_6
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	mv	a4,a5	# tmp185, _7
	li	a5,32		# tmp186,
	beq	a4,a5,.L4	#, tmp185, tmp186,
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	lw	a5,-164(s0)		# _8, i
	ld	a4,-184(s0)		# tmp187, numbers
	add	a5,a4,a5	# _8, _9, tmp187
	lbu	a5,0(a5)	# _10, *_9
# problem20.c:14:             for (i = 0; numbers[i] != ' ' && numbers[i] != '\0'; ++i) {
	bne	a5,zero,.L5	#, _10,,
.L4:
# problem20.c:17:             current[i] = '\0';
	lw	a5,-164(s0)		# tmp188, i
	addi	a5,a5,-16	#, tmp259, tmp188
	add	a5,a5,s0	#, tmp189, tmp259
	sb	zero,-16(a5)	#, current[i_34]
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	sw	zero,-160(s0)	#, j
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	j	.L6		#
.L9:
# problem20.c:19:                 if (strcmp(current, numto[j]) == 0) {
	lw	a5,-160(s0)		# tmp190, j
	slli	a5,a5,3	#, tmp191, tmp190
	addi	a5,a5,-16	#, tmp260, tmp191
	add	a5,a5,s0	#, tmp191, tmp260
	ld	a4,-96(a5)		# _11, numto[j_36]
	addi	a5,s0,-32	#, tmp192,
	mv	a1,a4	#, _11
	mv	a0,a5	#, tmp192
	call	strcmp@plt	#
	mv	a5,a0	# tmp193,
# problem20.c:19:                 if (strcmp(current, numto[j]) == 0) {
	bne	a5,zero,.L7	#, _12,,
# problem20.c:20:                     count[j]++;
	lw	a5,-160(s0)		# tmp194, j
	slli	a5,a5,2	#, tmp195, tmp194
	addi	a5,a5,-16	#, tmp261, tmp195
	add	a5,a5,s0	#, tmp195, tmp261
	lw	a5,-136(a5)		# _13, count[j_36]
# problem20.c:20:                     count[j]++;
	addiw	a5,a5,1	#, tmp196, _13
	sext.w	a4,a5	# _14, tmp196
	lw	a5,-160(s0)		# tmp197, j
	slli	a5,a5,2	#, tmp198, tmp197
	addi	a5,a5,-16	#, tmp262, tmp198
	add	a5,a5,s0	#, tmp198, tmp262
	sw	a4,-136(a5)	# _14, count[j_36]
# problem20.c:21:                     break;
	j	.L8		#
.L7:
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	lw	a5,-160(s0)		# tmp201, j
	addiw	a5,a5,1	#, tmp199, tmp200
	sw	a5,-160(s0)	# tmp199, j
.L6:
# problem20.c:18:             for (j = 0; j < 10; ++j) {
	lw	a5,-160(s0)		# tmp203, j
	sext.w	a4,a5	# tmp204, tmp202
	li	a5,9		# tmp205,
	ble	a4,a5,.L9	#, tmp204, tmp205,
.L8:
# problem20.c:24:             numbers += i + 1;
	lw	a5,-164(s0)		# _15, i
	addi	a5,a5,1	#, _16, _15
	ld	a4,-184(s0)		# tmp207, numbers
	add	a5,a4,a5	# _16, tmp206, tmp207
	sd	a5,-184(s0)	# tmp206, numbers
# problem20.c:25:         } while (numbers[-1]);
	ld	a5,-184(s0)		# tmp208, numbers
	addi	a5,a5,-1	#, _17, tmp208
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
	lw	a5,-164(s0)		# tmp209, i
	slli	a5,a5,3	#, tmp210, tmp209
	addi	a5,a5,-16	#, tmp263, tmp210
	add	a5,a5,s0	#, tmp210, tmp263
	ld	a4,-96(a5)		# _19, numto[i_35]
# problem20.c:31:                 out[index] = numto[i][k];
	lw	a5,-156(s0)		# _20, k
	add	a5,a4,a5	# _20, _21, _19
	lbu	a4,0(a5)	# _22, *_21
# problem20.c:31:                 out[index] = numto[i][k];
	lla	a3,out.1	# tmp211,
	lw	a5,-168(s0)		# tmp212, index
	add	a5,a3,a5	# tmp212, tmp213, tmp211
	sb	a4,0(a5)	# _22, out[index_31]
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-156(s0)		# tmp216, k
	addiw	a5,a5,1	#, tmp214, tmp215
	sw	a5,-156(s0)	# tmp214, k
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-168(s0)		# tmp219, index
	addiw	a5,a5,1	#, tmp217, tmp218
	sw	a5,-168(s0)	# tmp217, index
.L13:
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-164(s0)		# tmp220, i
	slli	a5,a5,3	#, tmp221, tmp220
	addi	a5,a5,-16	#, tmp264, tmp221
	add	a5,a5,s0	#, tmp221, tmp264
	ld	a4,-96(a5)		# _23, numto[i_35]
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	lw	a5,-156(s0)		# _24, k
	add	a5,a4,a5	# _24, _25, _23
	lbu	a5,0(a5)	# _26, *_25
# problem20.c:30:             for (k = 0; numto[i][k] != '\0'; ++k, ++index) {
	bne	a5,zero,.L14	#, _26,,
# problem20.c:33:             out[index++] = ' '; 
	lw	a5,-168(s0)		# index.0_27, index
	addiw	a4,a5,1	#, tmp222, index.0_27
	sw	a4,-168(s0)	# tmp222, index
# problem20.c:33:             out[index++] = ' '; 
	lla	a4,out.1	# tmp223,
	add	a5,a4,a5	# index.0_27, tmp224, tmp223
	li	a4,32		# tmp225,
	sb	a4,0(a5)	# tmp225, out[index.0_27]
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	lw	a5,-160(s0)		# tmp228, j
	addiw	a5,a5,1	#, tmp226, tmp227
	sw	a5,-160(s0)	# tmp226, j
.L12:
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	lw	a5,-164(s0)		# tmp229, i
	slli	a5,a5,2	#, tmp230, tmp229
	addi	a5,a5,-16	#, tmp265, tmp230
	add	a5,a5,s0	#, tmp230, tmp265
	lw	a4,-136(a5)		# _28, count[i_35]
# problem20.c:29:         for (j = 0; j < count[i]; ++j) {
	lw	a5,-160(s0)		# tmp232, j
	sext.w	a5,a5	# tmp233, tmp231
	blt	a5,a4,.L15	#, tmp233, tmp234,
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	lw	a5,-164(s0)		# tmp237, i
	addiw	a5,a5,1	#, tmp235, tmp236
	sw	a5,-164(s0)	# tmp235, i
.L11:
# problem20.c:28:     for (i = 0; i < 10; ++i) {
	lw	a5,-164(s0)		# tmp239, i
	sext.w	a4,a5	# tmp240, tmp238
	li	a5,9		# tmp241,
	ble	a4,a5,.L16	#, tmp240, tmp241,
# problem20.c:37:     if (index > 0) {
	lw	a5,-168(s0)		# tmp243, index
	sext.w	a5,a5	# tmp244, tmp242
	ble	a5,zero,.L17	#, tmp244,,
# problem20.c:38:         out[index - 1] = '\0'; 
	lw	a5,-168(s0)		# tmp247, index
	addiw	a5,a5,-1	#, tmp245, tmp246
	sext.w	a5,a5	# _29, tmp245
# problem20.c:38:         out[index - 1] = '\0'; 
	lla	a4,out.1	# tmp248,
	add	a5,a4,a5	# _29, tmp249, tmp248
	sb	zero,0(a5)	#, out[_29]
	j	.L18		#
.L17:
# problem20.c:40:         out[0] = '\0';
	lla	a5,out.1	# tmp250,
	sb	zero,0(a5)	#, out[0]
.L18:
# problem20.c:43:     return out;
	lla	a5,out.1	# _63,
	mv	a4,a5	# <retval>, _63
# problem20.c:44: }
	la	a5,__stack_chk_guard		# tmp252,
	ld	a3, -24(s0)	# tmp255, D.3013
	ld	a5, 0(a5)	# tmp253, __stack_chk_guard
	xor	a5, a3, a5	# tmp253, tmp255
	li	a3, 0	# tmp255
	beq	a5,zero,.L20	#, tmp253,,
	call	__stack_chk_fail@plt	#
.L20:
	mv	a0,a4	#, <retval>
	ld	ra,184(sp)		#,
	.cfi_restore 1
	ld	s0,176(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 192
	addi	sp,sp,192	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
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
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem20.c:52:     assert(strcmp(func0(""), "") == 0);
	lla	a0,.LC12	#,
	call	func0		#
	mv	a5,a0	# _1,
# problem20.c:52:     assert(strcmp(func0(""), "") == 0);
	lbu	a5,0(a5)	# _13, MEM[(const unsigned char * {ref-all})_1]
	sext.w	a5,a5	# _2, _13
	beq	a5,zero,.L22	#, _2,,
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
# problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
	lla	a1,.LC3	#,
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp147,
# problem20.c:53:     assert(strcmp(func0("three"), "three") == 0);
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
# problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
	lla	a1,.LC16	#,
	mv	a0,a5	#, _5
	call	strcmp@plt	#
	mv	a5,a0	# tmp148,
# problem20.c:54:     assert(strcmp(func0("three five nine"), "three five nine") == 0);
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
# problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
	lla	a1,.LC19	#,
	mv	a0,a5	#, _7
	call	strcmp@plt	#
	mv	a5,a0	# tmp149,
# problem20.c:55:     assert(strcmp(func0("five zero four seven nine eight"), "zero four five seven eight nine") == 0);
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
# problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
	lla	a1,.LC22	#,
	mv	a0,a5	#, _9
	call	strcmp@plt	#
	mv	a5,a0	# tmp150,
# problem20.c:56:     assert(strcmp(func0("six five four three two one zero"), "zero one two three four five six") == 0);
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
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	out.1
	.comm	out.1,1000,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
