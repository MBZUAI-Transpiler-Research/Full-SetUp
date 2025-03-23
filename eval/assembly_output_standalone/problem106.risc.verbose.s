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
	.string	""
	.align	3
.LC1:
	.string	"One"
	.align	3
.LC2:
	.string	"Two"
	.align	3
.LC3:
	.string	"Three"
	.align	3
.LC4:
	.string	"Four"
	.align	3
.LC5:
	.string	"Five"
	.align	3
.LC6:
	.string	"Six"
	.align	3
.LC7:
	.string	"Seven"
	.align	3
.LC8:
	.string	"Eight"
	.align	3
.LC9:
	.string	"Nine"
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
	addi	sp,sp,-160	#,,
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	addi	s0,sp,160	#,,
	sd	a0,-136(s0)	# arr, arr
	mv	a5,a1	# tmp132, size
	sd	a2,-152(s0)	# out, out
	sd	a3,-160(s0)	# out_size, out_size
	sw	a5,-140(s0)	# tmp133, size
# eval/problem106//code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	la	a5,__stack_chk_guard		# tmp134,
	ld	a4, 0(a5)	# tmp225, __stack_chk_guard
	sd	a4, -24(s0)	# tmp225, D.2638
	li	a4, 0	# tmp225
# eval/problem106//code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	lla	a5,.LC11	# tmp135,
	ld	t3,0(a5)		# tmp136,
	ld	t1,8(a5)		# tmp137,
	ld	a7,16(a5)		# tmp138,
	ld	a6,24(a5)		# tmp139,
	ld	a0,32(a5)		# tmp140,
	ld	a1,40(a5)		# tmp141,
	ld	a2,48(a5)		# tmp142,
	ld	a3,56(a5)		# tmp143,
	ld	a4,64(a5)		# tmp144,
	ld	a5,72(a5)		# tmp145,
	sd	t3,-104(s0)	# tmp136, names
	sd	t1,-96(s0)	# tmp137, names
	sd	a7,-88(s0)	# tmp138, names
	sd	a6,-80(s0)	# tmp139, names
	sd	a0,-72(s0)	# tmp140, names
	sd	a1,-64(s0)	# tmp141, names
	sd	a2,-56(s0)	# tmp142, names
	sd	a3,-48(s0)	# tmp143, names
	sd	a4,-40(s0)	# tmp144, names
	sd	a5,-32(s0)	# tmp145, names
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	sw	zero,-116(s0)	#, i
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	j	.L2		#
.L6:
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	sw	zero,-112(s0)	#, j
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	j	.L3		#
.L5:
# eval/problem106//code.c:11:             if (arr[j] > arr[j + 1]) {
	lw	a5,-112(s0)		# _1, j
	slli	a5,a5,2	#, _2, _1
	ld	a4,-136(s0)		# tmp146, arr
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# eval/problem106//code.c:11:             if (arr[j] > arr[j + 1]) {
	lw	a5,-112(s0)		# _5, j
	addi	a5,a5,1	#, _6, _5
	slli	a5,a5,2	#, _7, _6
	ld	a4,-136(s0)		# tmp147, arr
	add	a5,a4,a5	# _7, _8, tmp147
	lw	a5,0(a5)		# _9, *_8
# eval/problem106//code.c:11:             if (arr[j] > arr[j + 1]) {
	mv	a4,a3	# tmp148, _4
	ble	a4,a5,.L4	#, tmp148, tmp149,
# eval/problem106//code.c:12:                 int temp = arr[j];
	lw	a5,-112(s0)		# _10, j
	slli	a5,a5,2	#, _11, _10
	ld	a4,-136(s0)		# tmp150, arr
	add	a5,a4,a5	# _11, _12, tmp150
# eval/problem106//code.c:12:                 int temp = arr[j];
	lw	a5,0(a5)		# tmp151, *_12
	sw	a5,-108(s0)	# tmp151, temp
# eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	lw	a5,-112(s0)		# _13, j
	addi	a5,a5,1	#, _14, _13
	slli	a5,a5,2	#, _15, _14
	ld	a4,-136(s0)		# tmp152, arr
	add	a4,a4,a5	# _15, _16, tmp152
# eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	lw	a5,-112(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a3,-136(s0)		# tmp153, arr
	add	a5,a3,a5	# _18, _19, tmp153
# eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	lw	a4,0(a4)		# _20, *_16
# eval/problem106//code.c:13:                 arr[j] = arr[j + 1];
	sw	a4,0(a5)	# _20, *_19
# eval/problem106//code.c:14:                 arr[j + 1] = temp;
	lw	a5,-112(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,2	#, _23, _22
	ld	a4,-136(s0)		# tmp154, arr
	add	a5,a4,a5	# _23, _24, tmp154
# eval/problem106//code.c:14:                 arr[j + 1] = temp;
	lw	a4,-108(s0)		# tmp155, temp
	sw	a4,0(a5)	# tmp155, *_24
.L4:
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	lw	a5,-112(s0)		# tmp158, j
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-112(s0)	# tmp156, j
.L3:
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	lw	a5,-140(s0)		# tmp161, size
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-116(s0)		# tmp163, i
	subw	a5,a4,a5	# tmp159, tmp160, tmp162
	sext.w	a5,a5	# _25, tmp159
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp164, _25
	sext.w	a4,a5	# _26, tmp164
# eval/problem106//code.c:10:         for (j = 0; j < size - i - 1; j++) {
	lw	a5,-112(s0)		# tmp166, j
	sext.w	a5,a5	# tmp167, tmp165
	blt	a5,a4,.L5	#, tmp167, tmp168,
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	lw	a5,-116(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-116(s0)	# tmp169, i
.L2:
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	lw	a5,-140(s0)		# tmp174, size
	addiw	a5,a5,-1	#, tmp172, tmp173
	sext.w	a4,a5	# _27, tmp172
# eval/problem106//code.c:9:     for (i = 0; i < size - 1; i++) {
	lw	a5,-116(s0)		# tmp176, i
	sext.w	a5,a5	# tmp177, tmp175
	blt	a5,a4,.L6	#, tmp177, tmp178,
# eval/problem106//code.c:19:     *out_size = 0;
	ld	a5,-160(s0)		# tmp179, out_size
	sw	zero,0(a5)	#, *out_size_78(D)
# eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	lw	a5,-140(s0)		# tmp182, size
	addiw	a5,a5,-1	#, tmp180, tmp181
	sw	a5,-116(s0)	# tmp180, i
# eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	j	.L7		#
.L9:
# eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a4,-136(s0)		# tmp183, arr
	add	a5,a4,a5	# _29, _30, tmp183
	lw	a5,0(a5)		# _31, *_30
# eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ble	a5,zero,.L8	#, tmp184,,
# eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _32, i
	slli	a5,a5,2	#, _33, _32
	ld	a4,-136(s0)		# tmp185, arr
	add	a5,a4,a5	# _33, _34, tmp185
	lw	a5,0(a5)		# _35, *_34
# eval/problem106//code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	mv	a4,a5	# tmp186, _35
	li	a5,9		# tmp187,
	bgt	a4,a5,.L8	#, tmp186, tmp187,
# eval/problem106//code.c:22:             (*out_size)++;
	ld	a5,-160(s0)		# tmp188, out_size
	lw	a5,0(a5)		# _36, *out_size_78(D)
# eval/problem106//code.c:22:             (*out_size)++;
	addiw	a5,a5,1	#, tmp189, _36
	sext.w	a4,a5	# _37, tmp189
	ld	a5,-160(s0)		# tmp190, out_size
	sw	a4,0(a5)	# _37, *out_size_78(D)
.L8:
# eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	lw	a5,-116(s0)		# tmp193, i
	addiw	a5,a5,-1	#, tmp191, tmp192
	sw	a5,-116(s0)	# tmp191, i
.L7:
# eval/problem106//code.c:20:     for (i = size - 1; i >= 0; i--) {
	lw	a5,-116(s0)		# tmp195, i
	sext.w	a5,a5	# tmp196, tmp194
	bge	a5,zero,.L9	#, tmp196,,
# eval/problem106//code.c:26:     *out = malloc(*out_size * sizeof(char *));
	ld	a5,-160(s0)		# tmp197, out_size
	lw	a5,0(a5)		# _38, *out_size_78(D)
# eval/problem106//code.c:26:     *out = malloc(*out_size * sizeof(char *));
	slli	a5,a5,3	#, _40, _39
	mv	a0,a5	#, _40
	call	malloc@plt	#
	mv	a5,a0	# tmp198,
	mv	a4,a5	# _41, tmp198
# eval/problem106//code.c:26:     *out = malloc(*out_size * sizeof(char *));
	ld	a5,-152(s0)		# tmp199, out
	sd	a4,0(a5)	# _41, *out_82(D)
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-140(s0)		# tmp202, size
	addiw	a5,a5,-1	#, tmp200, tmp201
	sw	a5,-116(s0)	# tmp200, i
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	sw	zero,-112(s0)	#, j
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	j	.L10		#
.L13:
# eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _42, i
	slli	a5,a5,2	#, _43, _42
	ld	a4,-136(s0)		# tmp203, arr
	add	a5,a4,a5	# _43, _44, tmp203
	lw	a5,0(a5)		# _45, *_44
# eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ble	a5,zero,.L11	#, tmp204,,
# eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _46, i
	slli	a5,a5,2	#, _47, _46
	ld	a4,-136(s0)		# tmp205, arr
	add	a5,a4,a5	# _47, _48, tmp205
	lw	a5,0(a5)		# _49, *_48
# eval/problem106//code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	mv	a4,a5	# tmp206, _49
	li	a5,9		# tmp207,
	bgt	a4,a5,.L11	#, tmp206, tmp207,
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	lw	a5,-116(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	ld	a4,-136(s0)		# tmp208, arr
	add	a5,a4,a5	# _51, _52, tmp208
	lw	a3,0(a5)		# _53, *_52
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	ld	a5,-152(s0)		# tmp209, out
	ld	a4,0(a5)		# _54, *out_82(D)
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	lw	a5,-112(s0)		# j.0_55, j
	addiw	a2,a5,1	#, tmp210, j.0_55
	sw	a2,-112(s0)	# tmp210, j
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	slli	a5,a5,3	#, _57, _56
	add	a4,a4,a5	# _57, _58, _54
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	slli	a5,a3,3	#, tmp211, _53
	addi	a5,a5,-16	#, tmp229, tmp211
	add	a5,a5,s0	#, tmp211, tmp229
	ld	a5,-88(a5)		# _59, names[_53]
# eval/problem106//code.c:30:             (*out)[j++] = names[arr[i]];
	sd	a5,0(a4)	# _59, *_58
.L11:
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-116(s0)		# tmp214, i
	addiw	a5,a5,-1	#, tmp212, tmp213
	sw	a5,-116(s0)	# tmp212, i
.L10:
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-116(s0)		# tmp216, i
	sext.w	a5,a5	# tmp217, tmp215
	blt	a5,zero,.L15	#, tmp217,,
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ld	a5,-160(s0)		# tmp218, out_size
	lw	a4,0(a5)		# _60, *out_size_78(D)
# eval/problem106//code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-112(s0)		# tmp220, j
	sext.w	a5,a5	# tmp221, tmp219
	blt	a5,a4,.L13	#, tmp221, tmp222,
.L15:
# eval/problem106//code.c:33: }
	nop	
	la	a5,__stack_chk_guard		# tmp223,
	ld	a4, -24(s0)	# tmp226, D.2638
	ld	a5, 0(a5)	# tmp224, __stack_chk_guard
	xor	a5, a4, a5	# tmp224, tmp226
	li	a4, 0	# tmp226
	beq	a5,zero,.L14	#, tmp224,,
	call	__stack_chk_fail@plt	#
.L14:
	ld	ra,152(sp)		#,
	ld	s0,144(sp)		#,
	addi	sp,sp,160	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
