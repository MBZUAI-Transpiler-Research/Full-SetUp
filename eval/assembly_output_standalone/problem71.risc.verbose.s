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
	addi	sp,sp,-80	#,,
	sd	s0,72(sp)	#,
	addi	s0,sp,80	#,,
	sd	a0,-56(s0)	# lst, lst
	mv	a5,a1	# tmp121, size
	sd	a2,-72(s0)	# out, out
	sw	a5,-60(s0)	# tmp122, size
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	sw	zero,-40(s0)	#, i
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	j	.L2		#
.L6:
# eval/problem71//code.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-40(s0)		# tmp125, i
	addiw	a5,a5,1	#, tmp123, tmp124
	sw	a5,-36(s0)	# tmp123, j
# eval/problem71//code.c:6:         for (int j = i + 1; j < size; j++) {
	j	.L3		#
.L5:
# eval/problem71//code.c:7:             if (lst[i] > lst[j]) {
	lw	a5,-40(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-56(s0)		# tmp126, lst
	add	a5,a4,a5	# _2, _3, tmp126
	lw	a3,0(a5)		# _4, *_3
# eval/problem71//code.c:7:             if (lst[i] > lst[j]) {
	lw	a5,-36(s0)		# _5, j
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp127, lst
	add	a5,a4,a5	# _6, _7, tmp127
	lw	a5,0(a5)		# _8, *_7
# eval/problem71//code.c:7:             if (lst[i] > lst[j]) {
	mv	a4,a3	# tmp128, _4
	ble	a4,a5,.L4	#, tmp128, tmp129,
# eval/problem71//code.c:8:                 int temp = lst[i];
	lw	a5,-40(s0)		# _9, i
	slli	a5,a5,2	#, _10, _9
	ld	a4,-56(s0)		# tmp130, lst
	add	a5,a4,a5	# _10, _11, tmp130
# eval/problem71//code.c:8:                 int temp = lst[i];
	lw	a5,0(a5)		# tmp131, *_11
	sw	a5,-20(s0)	# tmp131, temp
# eval/problem71//code.c:9:                 lst[i] = lst[j];
	lw	a5,-36(s0)		# _12, j
	slli	a5,a5,2	#, _13, _12
	ld	a4,-56(s0)		# tmp132, lst
	add	a4,a4,a5	# _13, _14, tmp132
# eval/problem71//code.c:9:                 lst[i] = lst[j];
	lw	a5,-40(s0)		# _15, i
	slli	a5,a5,2	#, _16, _15
	ld	a3,-56(s0)		# tmp133, lst
	add	a5,a3,a5	# _16, _17, tmp133
# eval/problem71//code.c:9:                 lst[i] = lst[j];
	lw	a4,0(a4)		# _18, *_14
# eval/problem71//code.c:9:                 lst[i] = lst[j];
	sw	a4,0(a5)	# _18, *_17
# eval/problem71//code.c:10:                 lst[j] = temp;
	lw	a5,-36(s0)		# _19, j
	slli	a5,a5,2	#, _20, _19
	ld	a4,-56(s0)		# tmp134, lst
	add	a5,a4,a5	# _20, _21, tmp134
# eval/problem71//code.c:10:                 lst[j] = temp;
	lw	a4,-20(s0)		# tmp135, temp
	sw	a4,0(a5)	# tmp135, *_21
.L4:
# eval/problem71//code.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp138, j
	addiw	a5,a5,1	#, tmp136, tmp137
	sw	a5,-36(s0)	# tmp136, j
.L3:
# eval/problem71//code.c:6:         for (int j = i + 1; j < size; j++) {
	lw	a5,-36(s0)		# tmp140, j
	mv	a4,a5	# tmp139, tmp140
	lw	a5,-60(s0)		# tmp142, size
	sext.w	a4,a4	# tmp143, tmp139
	sext.w	a5,a5	# tmp144, tmp141
	blt	a4,a5,.L5	#, tmp143, tmp144,
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-40(s0)		# tmp147, i
	addiw	a5,a5,1	#, tmp145, tmp146
	sw	a5,-40(s0)	# tmp145, i
.L2:
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-60(s0)		# tmp150, size
	addiw	a5,a5,-1	#, tmp148, tmp149
	sext.w	a4,a5	# _22, tmp148
# eval/problem71//code.c:5:     for (int i = 0; i < size - 1; i++) {
	lw	a5,-40(s0)		# tmp152, i
	sext.w	a5,a5	# tmp153, tmp151
	blt	a5,a4,.L6	#, tmp153, tmp154,
# eval/problem71//code.c:15:     int l = 0, r = size - 1;
	sw	zero,-32(s0)	#, l
# eval/problem71//code.c:15:     int l = 0, r = size - 1;
	lw	a5,-60(s0)		# tmp157, size
	addiw	a5,a5,-1	#, tmp155, tmp156
	sw	a5,-28(s0)	# tmp155, r
# eval/problem71//code.c:16:     int index = 0;
	sw	zero,-24(s0)	#, index
# eval/problem71//code.c:18:     while (l <= r) {
	j	.L7		#
.L9:
# eval/problem71//code.c:19:         if (l == r) {
	lw	a5,-32(s0)		# tmp159, l
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-28(s0)		# tmp161, r
	sext.w	a4,a4	# tmp162, tmp158
	sext.w	a5,a5	# tmp163, tmp160
	bne	a4,a5,.L8	#, tmp162, tmp163,
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	lw	a5,-32(s0)		# l.0_23, l
	addiw	a4,a5,1	#, tmp164, l.0_23
	sw	a4,-32(s0)	# tmp164, l
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _25, _24
	ld	a4,-56(s0)		# tmp165, lst
	add	a4,a4,a5	# _25, _26, tmp165
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	lw	a5,-24(s0)		# index.1_27, index
	addiw	a3,a5,1	#, tmp166, index.1_27
	sw	a3,-24(s0)	# tmp166, index
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _29, _28
	ld	a3,-72(s0)		# tmp167, out
	add	a5,a3,a5	# _29, _30, tmp167
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	lw	a4,0(a4)		# _31, *_26
# eval/problem71//code.c:20:             out[index++] = lst[l++];
	sw	a4,0(a5)	# _31, *_30
	j	.L7		#
.L8:
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	lw	a5,-32(s0)		# l.2_32, l
	addiw	a4,a5,1	#, tmp168, l.2_32
	sw	a4,-32(s0)	# tmp168, l
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _34, _33
	ld	a4,-56(s0)		# tmp169, lst
	add	a4,a4,a5	# _34, _35, tmp169
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	lw	a5,-24(s0)		# index.3_36, index
	addiw	a3,a5,1	#, tmp170, index.3_36
	sw	a3,-24(s0)	# tmp170, index
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	slli	a5,a5,2	#, _38, _37
	ld	a3,-72(s0)		# tmp171, out
	add	a5,a3,a5	# _38, _39, tmp171
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	lw	a4,0(a4)		# _40, *_35
# eval/problem71//code.c:22:             out[index++] = lst[l++];
	sw	a4,0(a5)	# _40, *_39
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	lw	a5,-28(s0)		# r.4_41, r
	addiw	a4,a5,-1	#, tmp172, r.4_41
	sw	a4,-28(s0)	# tmp172, r
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	slli	a5,a5,2	#, _43, _42
	ld	a4,-56(s0)		# tmp173, lst
	add	a4,a4,a5	# _43, _44, tmp173
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	lw	a5,-24(s0)		# index.5_45, index
	addiw	a3,a5,1	#, tmp174, index.5_45
	sw	a3,-24(s0)	# tmp174, index
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	slli	a5,a5,2	#, _47, _46
	ld	a3,-72(s0)		# tmp175, out
	add	a5,a3,a5	# _47, _48, tmp175
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	lw	a4,0(a4)		# _49, *_44
# eval/problem71//code.c:23:             out[index++] = lst[r--];
	sw	a4,0(a5)	# _49, *_48
.L7:
# eval/problem71//code.c:18:     while (l <= r) {
	lw	a5,-32(s0)		# tmp177, l
	mv	a4,a5	# tmp176, tmp177
	lw	a5,-28(s0)		# tmp179, r
	sext.w	a4,a4	# tmp180, tmp176
	sext.w	a5,a5	# tmp181, tmp178
	ble	a4,a5,.L9	#, tmp180, tmp181,
# eval/problem71//code.c:26: }
	nop	
	nop	
	ld	s0,72(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
