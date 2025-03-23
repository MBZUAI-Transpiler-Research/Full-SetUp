	.file	"problem23.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
# problem23.c:14:   const int upper_limit = 28123;
	li	a5,28672		# tmp99,
	addi	a5,a5,-549	#, tmp98, tmp99
	sw	a5,-40(s0)	# tmp98, upper_limit
# problem23.c:15:   int *abundants, abundants_count = 0;
	sw	zero,-48(s0)	#, abundants_count
# problem23.c:17:   int sum = 0;
	sw	zero,-44(s0)	#, sum
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	li	a5,1		# tmp100,
	sw	a5,-56(s0)	# tmp100, i
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	j	.L2		#
.L4:
# problem23.c:20:     if (is_abundant(i)) {
	lw	a5,-56(s0)		# tmp101, i
	mv	a0,a5	#, tmp101
	call	is_abundant		#
	mv	a5,a0	# tmp102,
# problem23.c:20:     if (is_abundant(i)) {
	beq	a5,zero,.L3	#, _1,,
# problem23.c:21:       abundants_count++;
	lw	a5,-48(s0)		# tmp105, abundants_count
	addiw	a5,a5,1	#, tmp103, tmp104
	sw	a5,-48(s0)	# tmp103, abundants_count
.L3:
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp108, i
	addiw	a5,a5,1	#, tmp106, tmp107
	sw	a5,-56(s0)	# tmp106, i
.L2:
# problem23.c:19:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp110, i
	mv	a4,a5	# tmp109, tmp110
	lw	a5,-40(s0)		# tmp112, upper_limit
	sext.w	a4,a4	# tmp113, tmp109
	sext.w	a5,a5	# tmp114, tmp111
	blt	a4,a5,.L4	#, tmp113, tmp114,
# problem23.c:25:   abundants = malloc(abundants_count * sizeof *abundants);
	lw	a5,-48(s0)		# _2, abundants_count
	slli	a5,a5,2	#, _3, _2
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp115,
	sd	a5,-32(s0)	# tmp115, abundants
# problem23.c:26:   j = 0;
	sw	zero,-52(s0)	#, j
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	li	a5,1		# tmp116,
	sw	a5,-56(s0)	# tmp116, i
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	j	.L5		#
.L7:
# problem23.c:28:     if (is_abundant(i)) {
	lw	a5,-56(s0)		# tmp117, i
	mv	a0,a5	#, tmp117
	call	is_abundant		#
	mv	a5,a0	# tmp118,
# problem23.c:28:     if (is_abundant(i)) {
	beq	a5,zero,.L6	#, _4,,
# problem23.c:29:       abundants[j++] = i;
	lw	a5,-52(s0)		# j.0_5, j
	addiw	a4,a5,1	#, tmp119, j.0_5
	sw	a4,-52(s0)	# tmp119, j
# problem23.c:29:       abundants[j++] = i;
	slli	a5,a5,2	#, _7, _6
	ld	a4,-32(s0)		# tmp120, abundants
	add	a5,a4,a5	# _7, _8, tmp120
# problem23.c:29:       abundants[j++] = i;
	lw	a4,-56(s0)		# tmp121, i
	sw	a4,0(a5)	# tmp121, *_8
.L6:
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp124, i
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-56(s0)	# tmp122, i
.L5:
# problem23.c:27:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp126, i
	mv	a4,a5	# tmp125, tmp126
	lw	a5,-40(s0)		# tmp128, upper_limit
	sext.w	a4,a4	# tmp129, tmp125
	sext.w	a5,a5	# tmp130, tmp127
	blt	a4,a5,.L7	#, tmp129, tmp130,
# problem23.c:33:   expressed = calloc(upper_limit, sizeof *expressed);
	lw	a5,-40(s0)		# _9, upper_limit
	li	a1,1		#,
	mv	a0,a5	#, _9
	call	calloc@plt	#
	mv	a5,a0	# tmp131,
	sd	a5,-24(s0)	# tmp131, expressed
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	sw	zero,-56(s0)	#, i
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	j	.L8		#
.L13:
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	lw	a5,-56(s0)		# tmp132, i
	sw	a5,-52(s0)	# tmp132, j
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	j	.L9		#
.L12:
# problem23.c:36:       int k = abundants[i] + abundants[j];
	lw	a5,-56(s0)		# _10, i
	slli	a5,a5,2	#, _11, _10
	ld	a4,-32(s0)		# tmp133, abundants
	add	a5,a4,a5	# _11, _12, tmp133
	lw	a4,0(a5)		# _13, *_12
# problem23.c:36:       int k = abundants[i] + abundants[j];
	lw	a5,-52(s0)		# _14, j
	slli	a5,a5,2	#, _15, _14
	ld	a3,-32(s0)		# tmp134, abundants
	add	a5,a3,a5	# _15, _16, tmp134
	lw	a5,0(a5)		# _17, *_16
# problem23.c:36:       int k = abundants[i] + abundants[j];
	addw	a5,a4,a5	# _17, tmp135, _13
	sw	a5,-36(s0)	# tmp135, k
# problem23.c:37:       if (k >= upper_limit) {
	lw	a5,-36(s0)		# tmp137, k
	mv	a4,a5	# tmp136, tmp137
	lw	a5,-40(s0)		# tmp139, upper_limit
	sext.w	a4,a4	# tmp140, tmp136
	sext.w	a5,a5	# tmp141, tmp138
	bge	a4,a5,.L18	#, tmp140, tmp141,
# problem23.c:40:       expressed[k-1] = 1;
	lw	a5,-36(s0)		# _18, k
	addi	a5,a5,-1	#, _19, _18
	ld	a4,-24(s0)		# tmp142, expressed
	add	a5,a4,a5	# _19, _20, tmp142
# problem23.c:40:       expressed[k-1] = 1;
	li	a4,1		# tmp143,
	sb	a4,0(a5)	# tmp143, *_20
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	lw	a5,-52(s0)		# tmp146, j
	addiw	a5,a5,1	#, tmp144, tmp145
	sw	a5,-52(s0)	# tmp144, j
.L9:
# problem23.c:35:     for (j = i; j < abundants_count; j++) {
	lw	a5,-52(s0)		# tmp148, j
	mv	a4,a5	# tmp147, tmp148
	lw	a5,-48(s0)		# tmp150, abundants_count
	sext.w	a4,a4	# tmp151, tmp147
	sext.w	a5,a5	# tmp152, tmp149
	blt	a4,a5,.L12	#, tmp151, tmp152,
	j	.L11		#
.L18:
# problem23.c:38:         break;
	nop	
.L11:
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	lw	a5,-56(s0)		# tmp155, i
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-56(s0)	# tmp153, i
.L8:
# problem23.c:34:   for (i = 0; i < abundants_count; i++) {
	lw	a5,-56(s0)		# tmp157, i
	mv	a4,a5	# tmp156, tmp157
	lw	a5,-48(s0)		# tmp159, abundants_count
	sext.w	a4,a4	# tmp160, tmp156
	sext.w	a5,a5	# tmp161, tmp158
	blt	a4,a5,.L13	#, tmp160, tmp161,
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	li	a5,1		# tmp162,
	sw	a5,-56(s0)	# tmp162, i
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	j	.L14		#
.L16:
# problem23.c:45:     if (!expressed[i-1]) {
	lw	a5,-56(s0)		# _21, i
	addi	a5,a5,-1	#, _22, _21
	ld	a4,-24(s0)		# tmp163, expressed
	add	a5,a4,a5	# _22, _23, tmp163
	lbu	a5,0(a5)	# _24, *_23
# problem23.c:45:     if (!expressed[i-1]) {
	bne	a5,zero,.L15	#, _24,,
# problem23.c:46:       sum += i;
	lw	a5,-44(s0)		# tmp166, sum
	mv	a4,a5	# tmp165, tmp166
	lw	a5,-56(s0)		# tmp168, i
	addw	a5,a4,a5	# tmp167, tmp164, tmp165
	sw	a5,-44(s0)	# tmp164, sum
.L15:
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-56(s0)	# tmp169, i
.L14:
# problem23.c:44:   for (i = 1; i < upper_limit; i++) {
	lw	a5,-56(s0)		# tmp173, i
	mv	a4,a5	# tmp172, tmp173
	lw	a5,-40(s0)		# tmp175, upper_limit
	sext.w	a4,a4	# tmp176, tmp172
	sext.w	a5,a5	# tmp177, tmp174
	blt	a4,a5,.L16	#, tmp176, tmp177,
# problem23.c:49:   printf("%d\n", sum);
	lw	a5,-44(s0)		# tmp178, sum
	mv	a1,a5	#, tmp178
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
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	is_abundant, @function
is_abundant:
	addi	sp,sp,-48	#,,
	sd	s0,40(sp)	#,
	addi	s0,sp,48	#,,
	mv	a5,a0	# tmp81, n
	sw	a5,-36(s0)	# tmp82, n
# problem23.c:59:   int sum = 1;
	li	a5,1		# tmp83,
	sw	a5,-32(s0)	# tmp83, sum
# problem23.c:60:   int i, k = n;
	lw	a5,-36(s0)		# tmp84, n
	sw	a5,-24(s0)	# tmp84, k
# problem23.c:61:   for (i = 2; i <= k; i++) {
	li	a5,2		# tmp85,
	sw	a5,-28(s0)	# tmp85, i
# problem23.c:61:   for (i = 2; i <= k; i++) {
	j	.L20		#
.L23:
# problem23.c:62:     int p = 1;
	li	a5,1		# tmp86,
	sw	a5,-20(s0)	# tmp86, p
# problem23.c:63:     while (k % i == 0) {
	j	.L21		#
.L22:
# problem23.c:64:       p *= i;
	lw	a5,-20(s0)		# tmp89, p
	mv	a4,a5	# tmp88, tmp89
	lw	a5,-28(s0)		# tmp91, i
	mulw	a5,a4,a5	# tmp87, tmp88, tmp90
	sw	a5,-20(s0)	# tmp87, p
# problem23.c:65:       k /= i;
	lw	a5,-24(s0)		# tmp95, k
	mv	a4,a5	# tmp94, tmp95
	lw	a5,-28(s0)		# tmp97, i
	divw	a5,a4,a5	# tmp96, tmp93, tmp94
	sw	a5,-24(s0)	# tmp93, k
.L21:
# problem23.c:63:     while (k % i == 0) {
	lw	a5,-24(s0)		# tmp100, k
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-28(s0)		# tmp103, i
	remw	a5,a4,a5	# tmp102, tmp101, tmp99
	sext.w	a5,a5	# _1, tmp101
# problem23.c:63:     while (k % i == 0) {
	beq	a5,zero,.L22	#, _1,,
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	lw	a5,-20(s0)		# tmp106, p
	mv	a4,a5	# tmp105, tmp106
	lw	a5,-28(s0)		# tmp108, i
	mulw	a5,a4,a5	# tmp104, tmp105, tmp107
	sext.w	a5,a5	# _2, tmp104
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	addiw	a5,a5,-1	#, tmp109, _2
	sext.w	a4,a5	# _3, tmp109
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	lw	a5,-28(s0)		# tmp112, i
	addiw	a5,a5,-1	#, tmp110, tmp111
	sext.w	a5,a5	# _4, tmp110
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	divw	a5,a4,a5	# _4, tmp114, _3
	sext.w	a5,a5	# _5, tmp114
# problem23.c:67:     sum *= (p*i - 1)/(i-1);
	lw	a4,-32(s0)		# tmp117, sum
	mulw	a5,a4,a5	# tmp115, tmp116, _5
	sw	a5,-32(s0)	# tmp115, sum
# problem23.c:61:   for (i = 2; i <= k; i++) {
	lw	a5,-28(s0)		# tmp120, i
	addiw	a5,a5,1	#, tmp118, tmp119
	sw	a5,-28(s0)	# tmp118, i
.L20:
# problem23.c:61:   for (i = 2; i <= k; i++) {
	lw	a5,-28(s0)		# tmp122, i
	mv	a4,a5	# tmp121, tmp122
	lw	a5,-24(s0)		# tmp124, k
	sext.w	a4,a4	# tmp125, tmp121
	sext.w	a5,a5	# tmp126, tmp123
	ble	a4,a5,.L23	#, tmp125, tmp126,
# problem23.c:69:   return 2*n < sum;
	lw	a5,-36(s0)		# tmp129, n
	slliw	a5,a5,1	#, tmp127, tmp128
	sext.w	a4,a5	# _6, tmp127
# problem23.c:69:   return 2*n < sum;
	lw	a5,-32(s0)		# tmp132, sum
	sext.w	a5,a5	# tmp134, tmp131
	sgt	a5,a5,a4	# tmp133, tmp134, tmp135
	andi	a5,a5,0xff	# _7, tmp130
	sext.w	a5,a5	# _17, _7
# problem23.c:70: }
	mv	a0,a5	#, <retval>
	ld	s0,40(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	is_abundant, .-is_abundant
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
