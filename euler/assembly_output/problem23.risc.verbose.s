	.file	"problem23.c"
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
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
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
# problem23.c:14:   const int upper_limit = 28123;
	li	a5,28672		# tmp161,
	addi	a5,a5,-549	#, tmp160, tmp161
	sw	a5,-40(s0)	# tmp160, upper_limit
# problem23.c:15:   int *abundants, abundants_count = 0;
	sw	zero,-48(s0)	#, abundants_count
# problem23.c:17:   int sum = 0;
	sw	zero,-44(s0)	#, sum
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	li	a5,1		# tmp162,
	sw	a5,-56(s0)	# tmp162, i
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	j	.L2		#
.L4:
# problem23.c:20:     if (is_abundant(i)) {
	lw	a5,-56(s0)		# tmp163, i
	mv	a0,a5	#, tmp163
	call	is_abundant		#
	mv	a5,a0	# tmp164,
# problem23.c:20:     if (is_abundant(i)) {
	beq	a5,zero,.L3	#, _1,,
# problem23.c:21:       abundants_count++;
	lw	a5,-48(s0)		# tmp167, abundants_count
	addiw	a5,a5,1	#, tmp165, tmp166
	sw	a5,-48(s0)	# tmp165, abundants_count
.L3:
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-56(s0)	# tmp168, i
.L2:
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp172, i
	mv	a4,a5	# tmp171, tmp172
	lw	a5,-40(s0)		# tmp174, upper_limit
	sext.w	a4,a4	# tmp175, tmp171
	sext.w	a5,a5	# tmp176, tmp173
	blt	a4,a5,.L4	#, tmp175, tmp176,
# problem23.c:25:   abundants = malloc(abundants_count * sizeof *abundants);
	lw	a5,-48(s0)		# _2, abundants_count
	slli	a5,a5,2	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp177,
	sd	a5,-32(s0)	# tmp177, abundants
# problem23.c:26:   j = 0;
	sw	zero,-52(s0)	#, j
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	li	a5,1		# tmp178,
	sw	a5,-56(s0)	# tmp178, i
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	j	.L5		#
.L7:
# problem23.c:28:     if (is_abundant(i)) {
	lw	a5,-56(s0)		# tmp179, i
	mv	a0,a5	#, tmp179
	call	is_abundant		#
	mv	a5,a0	# tmp180,
# problem23.c:28:     if (is_abundant(i)) {
	beq	a5,zero,.L6	#, _4,,
# problem23.c:29:       abundants[j++] = i;
	lw	a5,-52(s0)		# j.0_5, j
	addiw	a4,a5,1	#, tmp181, j.0_5
	sw	a4,-52(s0)	# tmp181, j
# problem23.c:29:       abundants[j++] = i;
	slli	a5,a5,2	#, _7, _6
	ld	a4,-32(s0)		# tmp182, abundants
	add	a5,a4,a5	# _7, _8, tmp182
# problem23.c:29:       abundants[j++] = i;
	lw	a4,-56(s0)		# tmp183, i
	sw	a4,0(a5)	# tmp183, *_8
.L6:
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp186, i
	addiw	a5,a5,1	#, tmp184, tmp185
	sw	a5,-56(s0)	# tmp184, i
.L5:
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp188, i
	mv	a4,a5	# tmp187, tmp188
	lw	a5,-40(s0)		# tmp190, upper_limit
	sext.w	a4,a4	# tmp191, tmp187
	sext.w	a5,a5	# tmp192, tmp189
	blt	a4,a5,.L7	#, tmp191, tmp192,
# problem23.c:33:   expressed = calloc(upper_limit, sizeof *expressed);
	lw	a5,-40(s0)		# _9, upper_limit
	li	a1,1		#,
	mv	a0,a5	#, _9
	call	calloc@plt	#
	mv	a5,a0	# tmp193,
	sd	a5,-24(s0)	# tmp193, expressed
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	sw	zero,-56(s0)	#, i
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	j	.L8		#
.L13:
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	lw	a5,-56(s0)		# tmp194, i
	sw	a5,-52(s0)	# tmp194, j
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	j	.L9		#
.L12:
# problem23.c:36:       int k = abundants[i] + abundants[j];
	lw	a5,-56(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-32(s0)		# tmp195, abundants
	add	a5,a4,a5	# _11, _12, tmp195
	lw	a4,0(a5)		# _13, *_12
# problem23.c:36:       int k = abundants[i] + abundants[j];
	lw	a5,-52(s0)		# _14, j
	slli	a5,a5,2	#, _15, _14
	ld	a3,-32(s0)		# tmp196, abundants
	add	a5,a3,a5	# _15, _16, tmp196
	lw	a5,0(a5)		# _17, *_16
# problem23.c:36:       int k = abundants[i] + abundants[j];
	addw	a5,a4,a5	# _17, tmp197, _13
	sw	a5,-36(s0)	# tmp197, k
# problem23.c:37:       if (k >= upper_limit) {
	lw	a5,-36(s0)		# tmp199, k
	mv	a4,a5	# tmp198, tmp199
	lw	a5,-40(s0)		# tmp201, upper_limit
	sext.w	a4,a4	# tmp202, tmp198
	sext.w	a5,a5	# tmp203, tmp200
	bge	a4,a5,.L18	#, tmp202, tmp203,
# problem23.c:40:       expressed[k-1] = 1;
	lw	a5,-36(s0)		# _18, k
	addi	a5,a5,-1	#, _19, _18
	ld	a4,-24(s0)		# tmp204, expressed
	add	a5,a4,a5	# _19, _20, tmp204
# problem23.c:40:       expressed[k-1] = 1;
	li	a4,1		# tmp205,
	sb	a4,0(a5)	# tmp205, *_20
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	lw	a5,-52(s0)		# tmp208, j
	addiw	a5,a5,1	#, tmp206, tmp207
	sw	a5,-52(s0)	# tmp206, j
.L9:
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	lw	a5,-52(s0)		# tmp210, j
	mv	a4,a5	# tmp209, tmp210
	lw	a5,-48(s0)		# tmp212, abundants_count
	sext.w	a4,a4	# tmp213, tmp209
	sext.w	a5,a5	# tmp214, tmp211
	blt	a4,a5,.L12	#, tmp213, tmp214,
	j	.L11		#
.L18:
# problem23.c:38:         break;
	nop	
.L11:
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	lw	a5,-56(s0)		# tmp217, i
	addiw	a5,a5,1	#, tmp215, tmp216
	sw	a5,-56(s0)	# tmp215, i
.L8:
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	lw	a5,-56(s0)		# tmp219, i
	mv	a4,a5	# tmp218, tmp219
	lw	a5,-48(s0)		# tmp221, abundants_count
	sext.w	a4,a4	# tmp222, tmp218
	sext.w	a5,a5	# tmp223, tmp220
	blt	a4,a5,.L13	#, tmp222, tmp223,
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	li	a5,1		# tmp224,
	sw	a5,-56(s0)	# tmp224, i
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	j	.L14		#
.L16:
# problem23.c:45:     if (!expressed[i-1]) {
	lw	a5,-56(s0)		# _21, i
	addi	a5,a5,-1	#, _22, _21
	ld	a4,-24(s0)		# tmp225, expressed
	add	a5,a4,a5	# _22, _23, tmp225
	lbu	a5,0(a5)	# _24, *_23
# problem23.c:45:     if (!expressed[i-1]) {
	bne	a5,zero,.L15	#, _24,,
# problem23.c:46:       sum += i;
	lw	a5,-44(s0)		# tmp228, sum
	mv	a4,a5	# tmp227, tmp228
	lw	a5,-56(s0)		# tmp230, i
	addw	a5,a4,a5	# tmp229, tmp226, tmp227
	sw	a5,-44(s0)	# tmp226, sum
.L15:
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp233, i
	addiw	a5,a5,1	#, tmp231, tmp232
	sw	a5,-56(s0)	# tmp231, i
.L14:
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp235, i
	mv	a4,a5	# tmp234, tmp235
	lw	a5,-40(s0)		# tmp237, upper_limit
	sext.w	a4,a4	# tmp238, tmp234
	sext.w	a5,a5	# tmp239, tmp236
	blt	a4,a5,.L16	#, tmp238, tmp239,
# problem23.c:49:   printf("%d\n", sum);
	lw	a5,-44(s0)		# tmp240, sum
	mv	a1,a5	#, tmp240
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem23.c:51:   free(abundants);
	ld	a0,-32(s0)		#, abundants
	call	free@plt	#
# problem23.c:52:   free(expressed);
	ld	a0,-24(s0)		#, expressed
	call	free@plt	#
# problem23.c:54:   return 0;
	li	a5,0		# _57,
# problem23.c:55: }
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
	.size	main, .-main
	.align	1
	.type	is_abundant, @function
is_abundant:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp143, n
	sw	a5,-36(s0)	# tmp144, n
# problem23.c:59:   int sum = 1;
	li	a5,1		# tmp145,
	sw	a5,-32(s0)	# tmp145, sum
# problem23.c:60:   int i, k = n;
	lw	a5,-36(s0)		# tmp146, n
	sw	a5,-24(s0)	# tmp146, k
# problem23.c:61:   for (i = 2; i <= k; i++) {
	li	a5,2		# tmp147,
	sw	a5,-28(s0)	# tmp147, i
# problem23.c:61:   for (i = 2; i <= k; i++) {
	j	.L20		#
.L23:
# problem23.c:62:     int p = 1;
	li	a5,1		# tmp148,
	sw	a5,-20(s0)	# tmp148, p
# problem23.c:63:     while (k % i == 0) {
	j	.L21		#
.L22:
# problem23.c:64:       p *= i;
	lw	a5,-20(s0)		# tmp151, p
	mv	a4,a5	# tmp150, tmp151
	lw	a5,-28(s0)		# tmp153, i
	mulw	a5,a4,a5	# tmp149, tmp150, tmp152
	sw	a5,-20(s0)	# tmp149, p
# problem23.c:65:       k /= i;
	lw	a5,-24(s0)		# tmp157, k
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-28(s0)		# tmp159, i
	divw	a5,a4,a5	# tmp158, tmp155, tmp156
	sw	a5,-24(s0)	# tmp155, k
.L21:
# problem23.c:63:     while (k % i == 0) {
	lw	a5,-24(s0)		# tmp162, k
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-28(s0)		# tmp165, i
	remw	a5,a4,a5	# tmp164, tmp163, tmp161
	sext.w	a5,a5	# _1, tmp163
# problem23.c:63:     while (k % i == 0) {
	beq	a5,zero,.L22	#, _1,,
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	lw	a5,-20(s0)		# tmp168, p
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-28(s0)		# tmp170, i
	mulw	a5,a4,a5	# tmp166, tmp167, tmp169
	sext.w	a5,a5	# _2, tmp166
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	addiw	a5,a5,-1	#, tmp171, _2
	sext.w	a4,a5	# _3, tmp171
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	lw	a5,-28(s0)		# tmp174, i
	addiw	a5,a5,-1	#, tmp172, tmp173
	sext.w	a5,a5	# _4, tmp172
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	divw	a5,a4,a5	# _4, tmp176, _3
	sext.w	a5,a5	# _5, tmp176
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	lw	a4,-32(s0)		# tmp179, sum
	mulw	a5,a4,a5	# tmp177, tmp178, _5
	sw	a5,-32(s0)	# tmp177, sum
# problem23.c:61:   for (i = 2; i <= k; i++) {
	lw	a5,-28(s0)		# tmp182, i
	addiw	a5,a5,1	#, tmp180, tmp181
	sw	a5,-28(s0)	# tmp180, i
.L20:
# problem23.c:61:   for (i = 2; i <= k; i++) {
	lw	a5,-28(s0)		# tmp184, i
	mv	a4,a5	# tmp183, tmp184
	lw	a5,-24(s0)		# tmp186, k
	sext.w	a4,a4	# tmp187, tmp183
	sext.w	a5,a5	# tmp188, tmp185
	ble	a4,a5,.L23	#, tmp187, tmp188,
# problem23.c:69:   return 2*n < sum;
	lw	a5,-36(s0)		# tmp191, n
	slliw	a5,a5,1	#, tmp189, tmp190
	sext.w	a4,a5	# _6, tmp189
# problem23.c:69:   return 2*n < sum;
	lw	a5,-32(s0)		# tmp194, sum
	sext.w	a5,a5	# tmp196, tmp193
	sgt	a5,a5,a4	# tmp195, tmp196, tmp197
	andi	a5,a5,0xff	# _7, tmp192
	sext.w	a5,a5	# _17, _7
# problem23.c:70: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	is_abundant, .-is_abundant
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
