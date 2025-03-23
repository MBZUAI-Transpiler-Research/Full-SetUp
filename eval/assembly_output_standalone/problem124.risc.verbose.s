	.file	"code.c"
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
	mv	a5,a0	# tmp102, n
	sd	a1,-48(s0)	# out, out
	sd	a2,-56(s0)	# size, size
	sw	a5,-36(s0)	# tmp103, n
# eval/problem124//code.c:5:     int capacity = 10;
	li	a5,10		# tmp104,
	sw	a5,-32(s0)	# tmp104, capacity
# eval/problem124//code.c:6:     *size = 1;
	ld	a5,-56(s0)		# tmp105, size
	li	a4,1		# tmp106,
	sw	a4,0(a5)	# tmp106, *size_45(D)
# eval/problem124//code.c:7:     out[0] = 1;
	ld	a5,-48(s0)		# tmp107, out
	li	a4,1		# tmp108,
	sw	a4,0(a5)	# tmp108, *out_47(D)
# eval/problem124//code.c:9:     while (n != 1) {
	j	.L2		#
.L5:
# eval/problem124//code.c:10:         if (n % 2 == 1) {
	lw	a5,-36(s0)		# tmp111, n
	mv	a4,a5	# tmp110, tmp111
	sraiw	a5,a4,31	#, tmp112, tmp110
	srliw	a5,a5,31	#, tmp113, tmp112
	addw	a4,a4,a5	# tmp113, tmp114, tmp110
	andi	a4,a4,1	#, tmp115, tmp114
	subw	a5,a4,a5	# tmp116, tmp115, tmp113
	sext.w	a5,a5	# _1, tmp116
# eval/problem124//code.c:10:         if (n % 2 == 1) {
	mv	a4,a5	# tmp117, _1
	li	a5,1		# tmp118,
	bne	a4,a5,.L3	#, tmp117, tmp118,
# eval/problem124//code.c:11:             if (*size >= capacity) {
	ld	a5,-56(s0)		# tmp119, size
	lw	a4,0(a5)		# _2, *size_45(D)
# eval/problem124//code.c:11:             if (*size >= capacity) {
	lw	a5,-32(s0)		# tmp121, capacity
	sext.w	a5,a5	# tmp122, tmp120
	bgt	a5,a4,.L4	#, tmp122, tmp123,
# eval/problem124//code.c:12:                 capacity *= 2;
	lw	a5,-32(s0)		# tmp126, capacity
	slliw	a5,a5,1	#, tmp124, tmp125
	sw	a5,-32(s0)	# tmp124, capacity
# eval/problem124//code.c:13:                 out = (int*)realloc(out, capacity * sizeof(int));
	lw	a5,-32(s0)		# _3, capacity
	slli	a5,a5,2	#, _4, _3
	mv	a1,a5	#, _4
	ld	a0,-48(s0)		#, out
	call	realloc@plt	#
	sd	a0,-48(s0)	#, out
.L4:
# eval/problem124//code.c:15:             out[(*size)++] = n;
	ld	a5,-56(s0)		# tmp127, size
	lw	a5,0(a5)		# _5, *size_45(D)
# eval/problem124//code.c:15:             out[(*size)++] = n;
	addiw	a4,a5,1	#, tmp128, _5
	sext.w	a3,a4	# _7, tmp128
	ld	a4,-56(s0)		# tmp129, size
	sw	a3,0(a4)	# _7, *size_45(D)
# eval/problem124//code.c:15:             out[(*size)++] = n;
	slli	a5,a5,2	#, _9, _8
	ld	a4,-48(s0)		# tmp130, out
	add	a5,a4,a5	# _9, _10, tmp130
# eval/problem124//code.c:15:             out[(*size)++] = n;
	lw	a4,-36(s0)		# tmp131, n
	sw	a4,0(a5)	# tmp131, *_10
# eval/problem124//code.c:16:             n = n * 3 + 1;
	lw	a5,-36(s0)		# tmp133, n
	mv	a4,a5	# tmp132, tmp133
	mv	a5,a4	# tmp134, tmp132
	slliw	a5,a5,1	#, tmp135, tmp134
	addw	a5,a5,a4	# tmp132, tmp134, tmp134
	sext.w	a5,a5	# _11, tmp134
# eval/problem124//code.c:16:             n = n * 3 + 1;
	addiw	a5,a5,1	#, tmp136, _11
	sw	a5,-36(s0)	# tmp136, n
	j	.L2		#
.L3:
# eval/problem124//code.c:18:             n = n / 2;
	lw	a5,-36(s0)		# tmp139, n
	srliw	a4,a5,31	#, tmp140, tmp138
	addw	a5,a4,a5	# tmp138, tmp141, tmp140
	sraiw	a5,a5,1	#, tmp142, tmp141
	sw	a5,-36(s0)	# tmp142, n
.L2:
# eval/problem124//code.c:9:     while (n != 1) {
	lw	a5,-36(s0)		# tmp144, n
	sext.w	a4,a5	# tmp145, tmp143
	li	a5,1		# tmp146,
	bne	a4,a5,.L5	#, tmp145, tmp146,
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	li	a5,1		# tmp147,
	sw	a5,-28(s0)	# tmp147, i
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	j	.L6		#
.L10:
# eval/problem124//code.c:23:         int key = out[i];
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-48(s0)		# tmp148, out
	add	a5,a4,a5	# _13, _14, tmp148
# eval/problem124//code.c:23:         int key = out[i];
	lw	a5,0(a5)		# tmp149, *_14
	sw	a5,-20(s0)	# tmp149, key
# eval/problem124//code.c:24:         int j = i - 1;
	lw	a5,-28(s0)		# tmp152, i
	addiw	a5,a5,-1	#, tmp150, tmp151
	sw	a5,-24(s0)	# tmp150, j
# eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	j	.L7		#
.L9:
# eval/problem124//code.c:27:             out[j + 1] = out[j];
	lw	a5,-24(s0)		# _15, j
	slli	a5,a5,2	#, _16, _15
	ld	a4,-48(s0)		# tmp153, out
	add	a4,a4,a5	# _16, _17, tmp153
# eval/problem124//code.c:27:             out[j + 1] = out[j];
	lw	a5,-24(s0)		# _18, j
	addi	a5,a5,1	#, _19, _18
	slli	a5,a5,2	#, _20, _19
	ld	a3,-48(s0)		# tmp154, out
	add	a5,a3,a5	# _20, _21, tmp154
# eval/problem124//code.c:27:             out[j + 1] = out[j];
	lw	a4,0(a4)		# _22, *_17
# eval/problem124//code.c:27:             out[j + 1] = out[j];
	sw	a4,0(a5)	# _22, *_21
# eval/problem124//code.c:28:             j = j - 1;
	lw	a5,-24(s0)		# tmp157, j
	addiw	a5,a5,-1	#, tmp155, tmp156
	sw	a5,-24(s0)	# tmp155, j
.L7:
# eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-24(s0)		# tmp159, j
	sext.w	a5,a5	# tmp160, tmp158
	blt	a5,zero,.L8	#, tmp160,,
# eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-24(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	ld	a4,-48(s0)		# tmp161, out
	add	a5,a4,a5	# _24, _25, tmp161
	lw	a4,0(a5)		# _26, *_25
# eval/problem124//code.c:26:         while (j >= 0 && out[j] > key) {
	lw	a5,-20(s0)		# tmp163, key
	sext.w	a5,a5	# tmp164, tmp162
	blt	a5,a4,.L9	#, tmp164, tmp165,
.L8:
# eval/problem124//code.c:30:         out[j + 1] = key;
	lw	a5,-24(s0)		# _27, j
	addi	a5,a5,1	#, _28, _27
	slli	a5,a5,2	#, _29, _28
	ld	a4,-48(s0)		# tmp166, out
	add	a5,a4,a5	# _29, _30, tmp166
# eval/problem124//code.c:30:         out[j + 1] = key;
	lw	a4,-20(s0)		# tmp167, key
	sw	a4,0(a5)	# tmp167, *_30
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	lw	a5,-28(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-28(s0)	# tmp168, i
.L6:
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	ld	a5,-56(s0)		# tmp171, size
	lw	a4,0(a5)		# _31, *size_45(D)
# eval/problem124//code.c:22:     for (int i = 1; i < *size; i++) {
	lw	a5,-28(s0)		# tmp173, i
	sext.w	a5,a5	# tmp174, tmp172
	blt	a5,a4,.L10	#, tmp174, tmp175,
# eval/problem124//code.c:32: }
	nop	
	nop	
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
