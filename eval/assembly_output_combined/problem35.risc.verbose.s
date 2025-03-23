	.file	"problem35.c"
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
	sd	a0,-56(s0)	# l, l
	mv	a5,a1	# tmp114, size
	sd	a2,-72(s0)	# out_size, out_size
	sw	a5,-60(s0)	# tmp115, size
# problem35.c:5:     int *out = malloc(size * sizeof(int));
	lw	a5,-60(s0)		# _1, size
	slli	a5,a5,2	#, _2, _1
	mv	a0,a5	#, _2
	call	malloc@plt	#
	mv	a5,a0	# tmp116,
	sd	a5,-24(s0)	# tmp116, out
# problem35.c:6:     int found, out_count = 0, i, j;
	sw	zero,-40(s0)	#, out_count
# problem35.c:7:     for (i = 0; i < size; i++) {
	sw	zero,-36(s0)	#, i
# problem35.c:7:     for (i = 0; i < size; i++) {
	j	.L2		#
.L8:
# problem35.c:8:         found = 0;
	sw	zero,-44(s0)	#, found
# problem35.c:9:         for (j = 0; j < out_count; j++) {
	sw	zero,-32(s0)	#, j
# problem35.c:9:         for (j = 0; j < out_count; j++) {
	j	.L3		#
.L6:
# problem35.c:10:             if (l[i] == out[j]) {
	lw	a5,-36(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-56(s0)		# tmp117, l
	add	a5,a4,a5	# _4, _5, tmp117
	lw	a3,0(a5)		# _6, *_5
# problem35.c:10:             if (l[i] == out[j]) {
	lw	a5,-32(s0)		# _7, j
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp118, out
	add	a5,a4,a5	# _8, _9, tmp118
	lw	a5,0(a5)		# _10, *_9
# problem35.c:10:             if (l[i] == out[j]) {
	mv	a4,a3	# tmp119, _6
	bne	a4,a5,.L4	#, tmp119, tmp120,
# problem35.c:11:                 found = 1;
	li	a5,1		# tmp121,
	sw	a5,-44(s0)	# tmp121, found
# problem35.c:12:                 break;
	j	.L5		#
.L4:
# problem35.c:9:         for (j = 0; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp124, j
	addiw	a5,a5,1	#, tmp122, tmp123
	sw	a5,-32(s0)	# tmp122, j
.L3:
# problem35.c:9:         for (j = 0; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp126, j
	mv	a4,a5	# tmp125, tmp126
	lw	a5,-40(s0)		# tmp128, out_count
	sext.w	a4,a4	# tmp129, tmp125
	sext.w	a5,a5	# tmp130, tmp127
	blt	a4,a5,.L6	#, tmp129, tmp130,
.L5:
# problem35.c:15:         if (!found) {
	lw	a5,-44(s0)		# tmp132, found
	sext.w	a5,a5	# tmp133, tmp131
	bne	a5,zero,.L7	#, tmp133,,
# problem35.c:16:             out[out_count++] = l[i];
	lw	a5,-36(s0)		# _11, i
	slli	a5,a5,2	#, _12, _11
	ld	a4,-56(s0)		# tmp134, l
	add	a4,a4,a5	# _12, _13, tmp134
# problem35.c:16:             out[out_count++] = l[i];
	lw	a5,-40(s0)		# out_count.0_14, out_count
	addiw	a3,a5,1	#, tmp135, out_count.0_14
	sw	a3,-40(s0)	# tmp135, out_count
# problem35.c:16:             out[out_count++] = l[i];
	slli	a5,a5,2	#, _16, _15
	ld	a3,-24(s0)		# tmp136, out
	add	a5,a3,a5	# _16, _17, tmp136
# problem35.c:16:             out[out_count++] = l[i];
	lw	a4,0(a4)		# _18, *_13
# problem35.c:16:             out[out_count++] = l[i];
	sw	a4,0(a5)	# _18, *_17
.L7:
# problem35.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp139, i
	addiw	a5,a5,1	#, tmp137, tmp138
	sw	a5,-36(s0)	# tmp137, i
.L2:
# problem35.c:7:     for (i = 0; i < size; i++) {
	lw	a5,-36(s0)		# tmp141, i
	mv	a4,a5	# tmp140, tmp141
	lw	a5,-60(s0)		# tmp143, size
	sext.w	a4,a4	# tmp144, tmp140
	sext.w	a5,a5	# tmp145, tmp142
	blt	a4,a5,.L8	#, tmp144, tmp145,
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	sw	zero,-36(s0)	#, i
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	j	.L9		#
.L13:
# problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	lw	a5,-36(s0)		# tmp148, i
	addiw	a5,a5,1	#, tmp146, tmp147
	sw	a5,-32(s0)	# tmp146, j
# problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	j	.L10		#
.L12:
# problem35.c:22:             if (out[i] > out[j]) {
	lw	a5,-36(s0)		# _19, i
	slli	a5,a5,2	#, _20, _19
	ld	a4,-24(s0)		# tmp149, out
	add	a5,a4,a5	# _20, _21, tmp149
	lw	a3,0(a5)		# _22, *_21
# problem35.c:22:             if (out[i] > out[j]) {
	lw	a5,-32(s0)		# _23, j
	slli	a5,a5,2	#, _24, _23
	ld	a4,-24(s0)		# tmp150, out
	add	a5,a4,a5	# _24, _25, tmp150
	lw	a5,0(a5)		# _26, *_25
# problem35.c:22:             if (out[i] > out[j]) {
	mv	a4,a3	# tmp151, _22
	ble	a4,a5,.L11	#, tmp151, tmp152,
# problem35.c:23:                 int temp = out[i];
	lw	a5,-36(s0)		# _27, i
	slli	a5,a5,2	#, _28, _27
	ld	a4,-24(s0)		# tmp153, out
	add	a5,a4,a5	# _28, _29, tmp153
# problem35.c:23:                 int temp = out[i];
	lw	a5,0(a5)		# tmp154, *_29
	sw	a5,-28(s0)	# tmp154, temp
# problem35.c:24:                 out[i] = out[j];
	lw	a5,-32(s0)		# _30, j
	slli	a5,a5,2	#, _31, _30
	ld	a4,-24(s0)		# tmp155, out
	add	a4,a4,a5	# _31, _32, tmp155
# problem35.c:24:                 out[i] = out[j];
	lw	a5,-36(s0)		# _33, i
	slli	a5,a5,2	#, _34, _33
	ld	a3,-24(s0)		# tmp156, out
	add	a5,a3,a5	# _34, _35, tmp156
# problem35.c:24:                 out[i] = out[j];
	lw	a4,0(a4)		# _36, *_32
# problem35.c:24:                 out[i] = out[j];
	sw	a4,0(a5)	# _36, *_35
# problem35.c:25:                 out[j] = temp;
	lw	a5,-32(s0)		# _37, j
	slli	a5,a5,2	#, _38, _37
	ld	a4,-24(s0)		# tmp157, out
	add	a5,a4,a5	# _38, _39, tmp157
# problem35.c:25:                 out[j] = temp;
	lw	a4,-28(s0)		# tmp158, temp
	sw	a4,0(a5)	# tmp158, *_39
.L11:
# problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp161, j
	addiw	a5,a5,1	#, tmp159, tmp160
	sw	a5,-32(s0)	# tmp159, j
.L10:
# problem35.c:21:         for (j = i + 1; j < out_count; j++) {
	lw	a5,-32(s0)		# tmp163, j
	mv	a4,a5	# tmp162, tmp163
	lw	a5,-40(s0)		# tmp165, out_count
	sext.w	a4,a4	# tmp166, tmp162
	sext.w	a5,a5	# tmp167, tmp164
	blt	a4,a5,.L12	#, tmp166, tmp167,
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	lw	a5,-36(s0)		# tmp170, i
	addiw	a5,a5,1	#, tmp168, tmp169
	sw	a5,-36(s0)	# tmp168, i
.L9:
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	lw	a5,-40(s0)		# tmp173, out_count
	addiw	a5,a5,-1	#, tmp171, tmp172
	sext.w	a4,a5	# _40, tmp171
# problem35.c:20:     for (i = 0; i < out_count - 1; i++) {
	lw	a5,-36(s0)		# tmp175, i
	sext.w	a5,a5	# tmp176, tmp174
	blt	a5,a4,.L13	#, tmp176, tmp177,
# problem35.c:30:     *out_size = out_count;
	ld	a5,-72(s0)		# tmp178, out_size
	lw	a4,-40(s0)		# tmp179, out_count
	sw	a4,0(a5)	# tmp179, *out_size_60(D)
# problem35.c:31:     return out;
	ld	a5,-24(s0)		# _62, out
# problem35.c:32: }
	mv	a0,a5	#, <retval>
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem35.c"
	.align	3
.LC3:
	.string	"unique_size == sizeof(expected_array) / sizeof(expected_array[0])"
	.align	3
.LC4:
	.string	"unique_array[i] == expected_array[i]"
	.align	3
.LC5:
	.string	"All tests passed!"
	.align	3
.LC0:
	.word	5
	.word	3
	.word	5
	.word	2
	.word	3
	.word	3
	.word	9
	.word	0
	.word	123
	.align	3
.LC1:
	.word	0
	.word	2
	.word	3
	.word	5
	.word	9
	.word	123
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-112	#,,
	sd	ra,104(sp)	#,
	sd	s0,96(sp)	#,
	addi	s0,sp,112	#,,
# problem35.c:40: int main() {
	la	a5,__stack_chk_guard		# tmp81,
	ld	a4, 0(a5)	# tmp111, __stack_chk_guard
	sd	a4, -24(s0)	# tmp111, D.2486
	li	a4, 0	# tmp111
# problem35.c:41:     int test_array[] = {5, 3, 5, 2, 3, 3, 9, 0, 123};
	lla	a5,.LC0	# tmp82,
	ld	a1,0(a5)		# tmp83,
	ld	a2,8(a5)		# tmp84,
	ld	a3,16(a5)		# tmp85,
	ld	a4,24(a5)		# tmp86,
	sd	a1,-64(s0)	# tmp83, test_array
	sd	a2,-56(s0)	# tmp84, test_array
	sd	a3,-48(s0)	# tmp85, test_array
	sd	a4,-40(s0)	# tmp86, test_array
	lw	a5,32(a5)		# tmp87,
	sw	a5,-32(s0)	# tmp87, test_array
# problem35.c:42:     int expected_array[] = {0, 2, 3, 5, 9, 123};
	lla	a5,.LC1	# tmp88,
	ld	a4,0(a5)		# tmp89,
	sd	a4,-88(s0)	# tmp89, expected_array
	ld	a4,8(a5)		# tmp90,
	sd	a4,-80(s0)	# tmp90, expected_array
	ld	a5,16(a5)		# tmp91,
	sd	a5,-72(s0)	# tmp91, expected_array
# problem35.c:44:     int *unique_array = func0(test_array, sizeof(test_array) / sizeof(test_array[0]), &unique_size);
	addi	a4,s0,-104	#, tmp92,
	addi	a5,s0,-64	#, tmp93,
	mv	a2,a4	#, tmp92
	li	a1,9		#,
	mv	a0,a5	#, tmp93
	call	func0		#
	sd	a0,-96(s0)	#, unique_array
# problem35.c:46:     assert(unique_size == sizeof(expected_array) / sizeof(expected_array[0]));
	lw	a5,-104(s0)		# unique_size.1_1, unique_size
	mv	a4,a5	# tmp94, unique_size.1_1
	li	a5,6		# tmp95,
	beq	a4,a5,.L16	#, tmp94, tmp95,
# problem35.c:46:     assert(unique_size == sizeof(expected_array) / sizeof(expected_array[0]));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L16:
# problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	sw	zero,-100(s0)	#, i
# problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	j	.L17		#
.L19:
# problem35.c:48:         assert(unique_array[i] == expected_array[i]);
	lw	a5,-100(s0)		# _2, i
	slli	a5,a5,2	#, _3, _2
	ld	a4,-96(s0)		# tmp96, unique_array
	add	a5,a4,a5	# _3, _4, tmp96
	lw	a4,0(a5)		# _5, *_4
	lw	a5,-100(s0)		# tmp97, i
	slli	a5,a5,2	#, tmp98, tmp97
	addi	a5,a5,-16	#, tmp115, tmp98
	add	a5,a5,s0	#, tmp98, tmp115
	lw	a5,-72(a5)		# _6, expected_array[i_8]
	beq	a4,a5,.L18	#, tmp99, tmp100,
# problem35.c:48:         assert(unique_array[i] == expected_array[i]);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC2	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L18:
# problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	lw	a5,-100(s0)		# tmp103, i
	addiw	a5,a5,1	#, tmp101, tmp102
	sw	a5,-100(s0)	# tmp101, i
.L17:
# problem35.c:47:     for (int i = 0; i < unique_size; i++) {
	lw	a4,-104(s0)		# unique_size.2_7, unique_size
	lw	a5,-100(s0)		# tmp105, i
	sext.w	a5,a5	# tmp106, tmp104
	blt	a5,a4,.L19	#, tmp106, tmp107,
# problem35.c:51:     free(unique_array);
	ld	a0,-96(s0)		#, unique_array
	call	free@plt	#
# problem35.c:52:     printf("All tests passed!\n");
	lla	a0,.LC5	#,
	call	puts@plt	#
# problem35.c:54:     return 0;
	li	a5,0		# _18,
# problem35.c:55: }
	mv	a4,a5	# <retval>, _18
	la	a5,__stack_chk_guard		# tmp109,
	ld	a3, -24(s0)	# tmp112, D.2486
	ld	a5, 0(a5)	# tmp110, __stack_chk_guard
	xor	a5, a3, a5	# tmp110, tmp112
	li	a3, 0	# tmp112
	beq	a5,zero,.L21	#, tmp110,,
	call	__stack_chk_fail@plt	#
.L21:
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
