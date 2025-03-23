	.file	"problem27.c"
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
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
	sd	a0,-104(s0)	# numbers, numbers
	mv	a5,a1	# tmp108, size
	sd	a2,-120(s0)	# new_size, new_size
	sw	a5,-108(s0)	# tmp109, size
# problem27.c:5:     int* out = (int*)malloc(size * sizeof(int));
	lw	a5,-108(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp110,
	sd	a5,-40(s0)	# tmp110, out
# problem27.c:6:     int* has1 = (int*)calloc(size, sizeof(int));
	lw	a5,-108(s0)		# _3, size
	li	a1,4		#,
	mv	a0,a5	#, _3
	call	calloc@plt	#
	mv	a5,a0	# tmp111,
	sd	a5,-32(s0)	# tmp111, has1
# problem27.c:7:     int* has2 = (int*)calloc(size, sizeof(int));
	lw	a5,-108(s0)		# _4, size
	li	a1,4		#,
	mv	a0,a5	#, _4
	call	calloc@plt	#
	mv	a5,a0	# tmp112,
	sd	a5,-24(s0)	# tmp112, has2
# problem27.c:8:     int has1_count = 0;
	sw	zero,-92(s0)	#, has1_count
# problem27.c:9:     int has2_count = 0;
	sw	zero,-88(s0)	#, has2_count
# problem27.c:10:     int out_count = 0;
	sw	zero,-84(s0)	#, out_count
# problem27.c:12:     for (int i = 0; i < size; i++) {
	sw	zero,-80(s0)	#, i
# problem27.c:12:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L14:
# problem27.c:13:         int num = numbers[i];
	lw	a5,-80(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-104(s0)		# tmp113, numbers
	add	a5,a4,a5	# _6, _7, tmp113
# problem27.c:13:         int num = numbers[i];
	lw	a5,0(a5)		# tmp114, *_7
	sw	a5,-44(s0)	# tmp114, num
# problem27.c:14:         int in_has2 = 0;
	sw	zero,-76(s0)	#, in_has2
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	sw	zero,-72(s0)	#, j
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	j	.L3		#
.L6:
# problem27.c:17:             if (has2[j] == num) {
	lw	a5,-72(s0)		# _8, j
	slli	a5,a5,2	#, _9, _8
	ld	a4,-24(s0)		# tmp115, has2
	add	a5,a4,a5	# _9, _10, tmp115
	lw	a4,0(a5)		# _11, *_10
# problem27.c:17:             if (has2[j] == num) {
	lw	a5,-44(s0)		# tmp117, num
	sext.w	a5,a5	# tmp118, tmp116
	bne	a5,a4,.L4	#, tmp118, tmp119,
# problem27.c:18:                 in_has2 = 1;
	li	a5,1		# tmp120,
	sw	a5,-76(s0)	# tmp120, in_has2
# problem27.c:19:                 break;
	j	.L5		#
.L4:
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-72(s0)		# tmp123, j
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-72(s0)	# tmp121, j
.L3:
# problem27.c:16:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-72(s0)		# tmp125, j
	mv	a4,a5	# tmp124, tmp125
	lw	a5,-88(s0)		# tmp127, has2_count
	sext.w	a4,a4	# tmp128, tmp124
	sext.w	a5,a5	# tmp129, tmp126
	blt	a4,a5,.L6	#, tmp128, tmp129,
.L5:
# problem27.c:22:         if (in_has2) continue;
	lw	a5,-76(s0)		# tmp131, in_has2
	sext.w	a5,a5	# tmp132, tmp130
	bne	a5,zero,.L23	#, tmp132,,
# problem27.c:24:         int in_has1 = 0;
	sw	zero,-68(s0)	#, in_has1
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	sw	zero,-64(s0)	#, j
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	j	.L9		#
.L12:
# problem27.c:26:             if (has1[j] == num) {
	lw	a5,-64(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-32(s0)		# tmp133, has1
	add	a5,a4,a5	# _13, _14, tmp133
	lw	a4,0(a5)		# _15, *_14
# problem27.c:26:             if (has1[j] == num) {
	lw	a5,-44(s0)		# tmp135, num
	sext.w	a5,a5	# tmp136, tmp134
	bne	a5,a4,.L10	#, tmp136, tmp137,
# problem27.c:27:                 in_has1 = 1;
	li	a5,1		# tmp138,
	sw	a5,-68(s0)	# tmp138, in_has1
# problem27.c:28:                 break;
	j	.L11		#
.L10:
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	lw	a5,-64(s0)		# tmp141, j
	addiw	a5,a5,1	#, tmp139, tmp140
	sw	a5,-64(s0)	# tmp139, j
.L9:
# problem27.c:25:         for (int j = 0; j < has1_count; j++) {
	lw	a5,-64(s0)		# tmp143, j
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-92(s0)		# tmp145, has1_count
	sext.w	a4,a4	# tmp146, tmp142
	sext.w	a5,a5	# tmp147, tmp144
	blt	a4,a5,.L12	#, tmp146, tmp147,
.L11:
# problem27.c:31:         if (in_has1) {
	lw	a5,-68(s0)		# tmp149, in_has1
	sext.w	a5,a5	# tmp150, tmp148
	beq	a5,zero,.L13	#, tmp150,,
# problem27.c:32:             has2[has2_count++] = num;
	lw	a5,-88(s0)		# has2_count.0_16, has2_count
	addiw	a4,a5,1	#, tmp151, has2_count.0_16
	sw	a4,-88(s0)	# tmp151, has2_count
# problem27.c:32:             has2[has2_count++] = num;
	slli	a5,a5,2	#, _18, _17
	ld	a4,-24(s0)		# tmp152, has2
	add	a5,a4,a5	# _18, _19, tmp152
# problem27.c:32:             has2[has2_count++] = num;
	lw	a4,-44(s0)		# tmp153, num
	sw	a4,0(a5)	# tmp153, *_19
	j	.L8		#
.L13:
# problem27.c:34:             has1[has1_count++] = num;
	lw	a5,-92(s0)		# has1_count.1_20, has1_count
	addiw	a4,a5,1	#, tmp154, has1_count.1_20
	sw	a4,-92(s0)	# tmp154, has1_count
# problem27.c:34:             has1[has1_count++] = num;
	slli	a5,a5,2	#, _22, _21
	ld	a4,-32(s0)		# tmp155, has1
	add	a5,a4,a5	# _22, _23, tmp155
# problem27.c:34:             has1[has1_count++] = num;
	lw	a4,-44(s0)		# tmp156, num
	sw	a4,0(a5)	# tmp156, *_23
	j	.L8		#
.L23:
# problem27.c:22:         if (in_has2) continue;
	nop	
.L8:
# problem27.c:12:     for (int i = 0; i < size; i++) {
	lw	a5,-80(s0)		# tmp159, i
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-80(s0)	# tmp157, i
.L2:
# problem27.c:12:     for (int i = 0; i < size; i++) {
	lw	a5,-80(s0)		# tmp161, i
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-108(s0)		# tmp163, size
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	blt	a4,a5,.L14	#, tmp164, tmp165,
# problem27.c:38:     for (int i = 0; i < size; i++) {
	sw	zero,-60(s0)	#, i
# problem27.c:38:     for (int i = 0; i < size; i++) {
	j	.L15		#
.L21:
# problem27.c:39:         int num = numbers[i];
	lw	a5,-60(s0)		# _24, i
	slli	a5,a5,2	#, _25, _24
	ld	a4,-104(s0)		# tmp166, numbers
	add	a5,a4,a5	# _25, _26, tmp166
# problem27.c:39:         int num = numbers[i];
	lw	a5,0(a5)		# tmp167, *_26
	sw	a5,-48(s0)	# tmp167, num
# problem27.c:40:         int in_has2 = 0;
	sw	zero,-56(s0)	#, in_has2
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	sw	zero,-52(s0)	#, j
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	j	.L16		#
.L19:
# problem27.c:42:             if (has2[j] == num) {
	lw	a5,-52(s0)		# _27, j
	slli	a5,a5,2	#, _28, _27
	ld	a4,-24(s0)		# tmp168, has2
	add	a5,a4,a5	# _28, _29, tmp168
	lw	a4,0(a5)		# _30, *_29
# problem27.c:42:             if (has2[j] == num) {
	lw	a5,-48(s0)		# tmp170, num
	sext.w	a5,a5	# tmp171, tmp169
	bne	a5,a4,.L17	#, tmp171, tmp172,
# problem27.c:43:                 in_has2 = 1;
	li	a5,1		# tmp173,
	sw	a5,-56(s0)	# tmp173, in_has2
# problem27.c:44:                 break;
	j	.L18		#
.L17:
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-52(s0)		# tmp176, j
	addiw	a5,a5,1	#, tmp174, tmp175
	sw	a5,-52(s0)	# tmp174, j
.L16:
# problem27.c:41:         for (int j = 0; j < has2_count; j++) {
	lw	a5,-52(s0)		# tmp178, j
	mv	a4,a5	# tmp177, tmp178
	lw	a5,-88(s0)		# tmp180, has2_count
	sext.w	a4,a4	# tmp181, tmp177
	sext.w	a5,a5	# tmp182, tmp179
	blt	a4,a5,.L19	#, tmp181, tmp182,
.L18:
# problem27.c:47:         if (!in_has2) {
	lw	a5,-56(s0)		# tmp184, in_has2
	sext.w	a5,a5	# tmp185, tmp183
	bne	a5,zero,.L20	#, tmp185,,
# problem27.c:48:             out[out_count++] = num;
	lw	a5,-84(s0)		# out_count.2_31, out_count
	addiw	a4,a5,1	#, tmp186, out_count.2_31
	sw	a4,-84(s0)	# tmp186, out_count
# problem27.c:48:             out[out_count++] = num;
	slli	a5,a5,2	#, _33, _32
	ld	a4,-40(s0)		# tmp187, out
	add	a5,a4,a5	# _33, _34, tmp187
# problem27.c:48:             out[out_count++] = num;
	lw	a4,-48(s0)		# tmp188, num
	sw	a4,0(a5)	# tmp188, *_34
.L20:
# problem27.c:38:     for (int i = 0; i < size; i++) {
	lw	a5,-60(s0)		# tmp191, i
	addiw	a5,a5,1	#, tmp189, tmp190
	sw	a5,-60(s0)	# tmp189, i
.L15:
# problem27.c:38:     for (int i = 0; i < size; i++) {
	lw	a5,-60(s0)		# tmp193, i
	mv	a4,a5	# tmp192, tmp193
	lw	a5,-108(s0)		# tmp195, size
	sext.w	a4,a4	# tmp196, tmp192
	sext.w	a5,a5	# tmp197, tmp194
	blt	a4,a5,.L21	#, tmp196, tmp197,
# problem27.c:52:     *new_size = out_count;
	ld	a5,-120(s0)		# tmp198, new_size
	lw	a4,-84(s0)		# tmp199, out_count
	sw	a4,0(a5)	# tmp199, *new_size_66(D)
# problem27.c:53:     free(has1);
	ld	a0,-32(s0)		#, has1
	call	free@plt	#
# problem27.c:54:     free(has2);
	ld	a0,-24(s0)		#, has2
	call	free@plt	#
# problem27.c:55:     return out;
	ld	a5,-40(s0)		# _70, out
# problem27.c:56: }
	mv	a0,a5	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
	jr	ra		#
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	s0,56(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp82, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp84, b_size
	sw	a5,-44(s0)	# tmp83, a_size
	mv	a5,a4	# tmp85, tmp84
	sw	a5,-48(s0)	# tmp85, b_size
# problem27.c:65:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp87, a_size
	mv	a4,a5	# tmp86, tmp87
	lw	a5,-48(s0)		# tmp89, b_size
	sext.w	a4,a4	# tmp90, tmp86
	sext.w	a5,a5	# tmp91, tmp88
	beq	a4,a5,.L25	#, tmp90, tmp91,
# problem27.c:65:     if (a_size != b_size) return 0;
	li	a5,0		# _10,
	j	.L26		#
.L25:
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	j	.L27		#
.L29:
# problem27.c:67:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp92, a
	add	a5,a4,a5	# _2, _3, tmp92
	lw	a3,0(a5)		# _4, *_3
# problem27.c:67:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp93, b
	add	a5,a4,a5	# _6, _7, tmp93
	lw	a5,0(a5)		# _8, *_7
# problem27.c:67:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp94, _4
	beq	a4,a5,.L28	#, tmp94, tmp95,
# problem27.c:67:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
	j	.L26		#
.L28:
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L27:
# problem27.c:66:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, a_size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L29	#, tmp103, tmp104,
# problem27.c:69:     return 1;
	li	a5,1		# _10,
.L26:
# problem27.c:70: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC2:
	.string	"problem27.c"
	.align	3
.LC3:
	.string	"issame(result, new_size, (int[]){}, 0)"
	.align	3
.LC4:
	.string	"issame(result, new_size, (int[]){1, 2, 3, 4}, 4)"
	.align	3
.LC5:
	.string	"issame(result, new_size, (int[]){1, 4, 5}, 3)"
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	2
	.word	4
	.word	3
	.word	5
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
# problem27.c:72: int main() {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp110, __stack_chk_guard
	sd	a4, -24(s0)	# tmp110, D.2715
	li	a4, 0	# tmp110
# problem27.c:76:     result = func0((int[]){}, 0, &new_size);
	addi	a4,s0,-108	#, tmp81,
	addi	a5,s0,-96	#, tmp82,
	mv	a2,a4	#, tmp81
	li	a1,0		#,
	mv	a0,a5	#, tmp82
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem27.c:77:     assert(issame(result, new_size, (int[]){}, 0));
	lw	a5,-108(s0)		# new_size.3_1, new_size
	addi	a4,s0,-56	#, tmp83,
	li	a3,0		#,
	mv	a2,a4	#, tmp83
	mv	a1,a5	#, new_size.3_1
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp84,
	bne	a5,zero,.L31	#, _2,,
# problem27.c:77:     assert(issame(result, new_size, (int[]){}, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,77		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L31:
# problem27.c:78:     free(result);
	ld	a0,-104(s0)		#, result
	call	free@plt	#
# problem27.c:80:     result = func0((int[]){1, 2, 3, 4}, 4, &new_size);
	lla	a5,.LC0	# tmp85,
	ld	a4,0(a5)		# tmp86,
	sd	a4,-72(s0)	# tmp86, D.2669
	ld	a5,8(a5)		# tmp87,
	sd	a5,-64(s0)	# tmp87, D.2669
# problem27.c:80:     result = func0((int[]){1, 2, 3, 4}, 4, &new_size);
	addi	a4,s0,-108	#, tmp88,
	addi	a5,s0,-72	#, tmp89,
	mv	a2,a4	#, tmp88
	li	a1,4		#,
	mv	a0,a5	#, tmp89
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem27.c:81:     assert(issame(result, new_size, (int[]){1, 2, 3, 4}, 4));
	lw	a1,-108(s0)		# new_size.4_3, new_size
	lla	a5,.LC0	# tmp90,
	ld	a4,0(a5)		# tmp91,
	sd	a4,-56(s0)	# tmp91, MEM[(int[4] *)_43]
	ld	a5,8(a5)		# tmp92,
	sd	a5,-48(s0)	# tmp92, MEM[(int[4] *)_43]
	addi	a5,s0,-56	#, tmp93,
	li	a3,4		#,
	mv	a2,a5	#, tmp93
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L32	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,81		#,
	lla	a1,.LC2	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L32:
# problem27.c:82:     free(result);
	ld	a0,-104(s0)		#, result
	call	free@plt	#
# problem27.c:84:     result = func0((int[]){1, 2, 3, 2, 4, 3, 5}, 7, &new_size);
	lla	a5,.LC1	# tmp95,
	ld	a2,0(a5)		# tmp96,
	ld	a3,8(a5)		# tmp97,
	ld	a4,16(a5)		# tmp98,
	sd	a2,-56(s0)	# tmp96, MEM[(int[7] *)_43]
	sd	a3,-48(s0)	# tmp97, MEM[(int[7] *)_43]
	sd	a4,-40(s0)	# tmp98, MEM[(int[7] *)_43]
	lw	a5,24(a5)		# tmp99,
	sw	a5,-32(s0)	# tmp99, MEM[(int[7] *)_43]
# problem27.c:84:     result = func0((int[]){1, 2, 3, 2, 4, 3, 5}, 7, &new_size);
	addi	a4,s0,-108	#, tmp100,
	addi	a5,s0,-56	#, tmp101,
	mv	a2,a4	#, tmp100
	li	a1,7		#,
	mv	a0,a5	#, tmp101
	call	func0		#
	sd	a0,-104(s0)	#, result
# problem27.c:85:     assert(issame(result, new_size, (int[]){1, 4, 5}, 3));
	lw	a4,-108(s0)		# new_size.5_5, new_size
	li	a5,1		# tmp102,
	sw	a5,-88(s0)	# tmp102, D.2674[0]
	li	a5,4		# tmp103,
	sw	a5,-84(s0)	# tmp103, D.2674[1]
	li	a5,5		# tmp104,
	sw	a5,-80(s0)	# tmp104, D.2674[2]
	addi	a5,s0,-88	#, tmp105,
	li	a3,3		#,
	mv	a2,a5	#, tmp105
	mv	a1,a4	#, new_size.5_5
	ld	a0,-104(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp106,
	bne	a5,zero,.L33	#, _6,,
# problem27.c:85:     assert(issame(result, new_size, (int[]){1, 4, 5}, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,85		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L33:
# problem27.c:86:     free(result);
	ld	a0,-104(s0)		#, result
	call	free@plt	#
# problem27.c:88:     return 0;
	li	a5,0		# _34,
# problem27.c:89: }
	mv	a4,a5	# <retval>, _34
	la	a5,__stack_chk_guard		# tmp108,
	ld	a3, -24(s0)	# tmp111, D.2715
	ld	a5, 0(a5)	# tmp109, __stack_chk_guard
	xor	a5, a3, a5	# tmp109, tmp111
	li	a3, 0	# tmp111
	beq	a5,zero,.L35	#, tmp109,,
# problem27.c:89: }
	call	__stack_chk_fail@plt	#
.L35:
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
