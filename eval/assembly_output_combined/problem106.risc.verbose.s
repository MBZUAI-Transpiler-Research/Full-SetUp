	.file	"problem106.c"
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
.LC14:
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
# problem106.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	la	a5,__stack_chk_guard		# tmp134,
	ld	a4, 0(a5)	# tmp225, __stack_chk_guard
	sd	a4, -24(s0)	# tmp225, D.2715
	li	a4, 0	# tmp225
# problem106.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	lla	a5,.LC14	# tmp135,
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
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	sw	zero,-116(s0)	#, i
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	j	.L2		#
.L6:
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	sw	zero,-112(s0)	#, j
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	j	.L3		#
.L5:
# problem106.c:11:             if (arr[j] > arr[j + 1]) {
	lw	a5,-112(s0)		# _1, j
	slli	a5,a5,2	#, _2, _1
	ld	a4,-136(s0)		# tmp146, arr
	add	a5,a4,a5	# _2, _3, tmp146
	lw	a3,0(a5)		# _4, *_3
# problem106.c:11:             if (arr[j] > arr[j + 1]) {
	lw	a5,-112(s0)		# _5, j
	addi	a5,a5,1	#, _6, _5
	slli	a5,a5,2	#, _7, _6
	ld	a4,-136(s0)		# tmp147, arr
	add	a5,a4,a5	# _7, _8, tmp147
	lw	a5,0(a5)		# _9, *_8
# problem106.c:11:             if (arr[j] > arr[j + 1]) {
	mv	a4,a3	# tmp148, _4
	ble	a4,a5,.L4	#, tmp148, tmp149,
# problem106.c:12:                 int temp = arr[j];
	lw	a5,-112(s0)		# _10, j
	slli	a5,a5,2	#, _11, _10
	ld	a4,-136(s0)		# tmp150, arr
	add	a5,a4,a5	# _11, _12, tmp150
# problem106.c:12:                 int temp = arr[j];
	lw	a5,0(a5)		# tmp151, *_12
	sw	a5,-108(s0)	# tmp151, temp
# problem106.c:13:                 arr[j] = arr[j + 1];
	lw	a5,-112(s0)		# _13, j
	addi	a5,a5,1	#, _14, _13
	slli	a5,a5,2	#, _15, _14
	ld	a4,-136(s0)		# tmp152, arr
	add	a4,a4,a5	# _15, _16, tmp152
# problem106.c:13:                 arr[j] = arr[j + 1];
	lw	a5,-112(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a3,-136(s0)		# tmp153, arr
	add	a5,a3,a5	# _18, _19, tmp153
# problem106.c:13:                 arr[j] = arr[j + 1];
	lw	a4,0(a4)		# _20, *_16
# problem106.c:13:                 arr[j] = arr[j + 1];
	sw	a4,0(a5)	# _20, *_19
# problem106.c:14:                 arr[j + 1] = temp;
	lw	a5,-112(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,2	#, _23, _22
	ld	a4,-136(s0)		# tmp154, arr
	add	a5,a4,a5	# _23, _24, tmp154
# problem106.c:14:                 arr[j + 1] = temp;
	lw	a4,-108(s0)		# tmp155, temp
	sw	a4,0(a5)	# tmp155, *_24
.L4:
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	lw	a5,-112(s0)		# tmp158, j
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-112(s0)	# tmp156, j
.L3:
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	lw	a5,-140(s0)		# tmp161, size
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-116(s0)		# tmp163, i
	subw	a5,a4,a5	# tmp159, tmp160, tmp162
	sext.w	a5,a5	# _25, tmp159
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp164, _25
	sext.w	a4,a5	# _26, tmp164
# problem106.c:10:         for (j = 0; j < size - i - 1; j++) {
	lw	a5,-112(s0)		# tmp166, j
	sext.w	a5,a5	# tmp167, tmp165
	blt	a5,a4,.L5	#, tmp167, tmp168,
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	lw	a5,-116(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-116(s0)	# tmp169, i
.L2:
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	lw	a5,-140(s0)		# tmp174, size
	addiw	a5,a5,-1	#, tmp172, tmp173
	sext.w	a4,a5	# _27, tmp172
# problem106.c:9:     for (i = 0; i < size - 1; i++) {
	lw	a5,-116(s0)		# tmp176, i
	sext.w	a5,a5	# tmp177, tmp175
	blt	a5,a4,.L6	#, tmp177, tmp178,
# problem106.c:19:     *out_size = 0;
	ld	a5,-160(s0)		# tmp179, out_size
	sw	zero,0(a5)	#, *out_size_78(D)
# problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	lw	a5,-140(s0)		# tmp182, size
	addiw	a5,a5,-1	#, tmp180, tmp181
	sw	a5,-116(s0)	# tmp180, i
# problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	j	.L7		#
.L9:
# problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a4,-136(s0)		# tmp183, arr
	add	a5,a4,a5	# _29, _30, tmp183
	lw	a5,0(a5)		# _31, *_30
# problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ble	a5,zero,.L8	#, tmp184,,
# problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _32, i
	slli	a5,a5,2	#, _33, _32
	ld	a4,-136(s0)		# tmp185, arr
	add	a5,a4,a5	# _33, _34, tmp185
	lw	a5,0(a5)		# _35, *_34
# problem106.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	mv	a4,a5	# tmp186, _35
	li	a5,9		# tmp187,
	bgt	a4,a5,.L8	#, tmp186, tmp187,
# problem106.c:22:             (*out_size)++;
	ld	a5,-160(s0)		# tmp188, out_size
	lw	a5,0(a5)		# _36, *out_size_78(D)
# problem106.c:22:             (*out_size)++;
	addiw	a5,a5,1	#, tmp189, _36
	sext.w	a4,a5	# _37, tmp189
	ld	a5,-160(s0)		# tmp190, out_size
	sw	a4,0(a5)	# _37, *out_size_78(D)
.L8:
# problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	lw	a5,-116(s0)		# tmp193, i
	addiw	a5,a5,-1	#, tmp191, tmp192
	sw	a5,-116(s0)	# tmp191, i
.L7:
# problem106.c:20:     for (i = size - 1; i >= 0; i--) {
	lw	a5,-116(s0)		# tmp195, i
	sext.w	a5,a5	# tmp196, tmp194
	bge	a5,zero,.L9	#, tmp196,,
# problem106.c:26:     *out = malloc(*out_size * sizeof(char *));
	ld	a5,-160(s0)		# tmp197, out_size
	lw	a5,0(a5)		# _38, *out_size_78(D)
# problem106.c:26:     *out = malloc(*out_size * sizeof(char *));
	slli	a5,a5,3	#, _40, _39
	mv	a0,a5	#, _40
	call	malloc@plt	#
	mv	a5,a0	# tmp198,
	mv	a4,a5	# _41, tmp198
# problem106.c:26:     *out = malloc(*out_size * sizeof(char *));
	ld	a5,-152(s0)		# tmp199, out
	sd	a4,0(a5)	# _41, *out_82(D)
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-140(s0)		# tmp202, size
	addiw	a5,a5,-1	#, tmp200, tmp201
	sw	a5,-116(s0)	# tmp200, i
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	sw	zero,-112(s0)	#, j
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	j	.L10		#
.L13:
# problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _42, i
	slli	a5,a5,2	#, _43, _42
	ld	a4,-136(s0)		# tmp203, arr
	add	a5,a4,a5	# _43, _44, tmp203
	lw	a5,0(a5)		# _45, *_44
# problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ble	a5,zero,.L11	#, tmp204,,
# problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _46, i
	slli	a5,a5,2	#, _47, _46
	ld	a4,-136(s0)		# tmp205, arr
	add	a5,a4,a5	# _47, _48, tmp205
	lw	a5,0(a5)		# _49, *_48
# problem106.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	mv	a4,a5	# tmp206, _49
	li	a5,9		# tmp207,
	bgt	a4,a5,.L11	#, tmp206, tmp207,
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	lw	a5,-116(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	ld	a4,-136(s0)		# tmp208, arr
	add	a5,a4,a5	# _51, _52, tmp208
	lw	a3,0(a5)		# _53, *_52
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	ld	a5,-152(s0)		# tmp209, out
	ld	a4,0(a5)		# _54, *out_82(D)
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	lw	a5,-112(s0)		# j.0_55, j
	addiw	a2,a5,1	#, tmp210, j.0_55
	sw	a2,-112(s0)	# tmp210, j
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	slli	a5,a5,3	#, _57, _56
	add	a4,a4,a5	# _57, _58, _54
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	slli	a5,a3,3	#, tmp211, _53
	addi	a5,a5,-16	#, tmp229, tmp211
	add	a5,a5,s0	#, tmp211, tmp229
	ld	a5,-88(a5)		# _59, names[_53]
# problem106.c:30:             (*out)[j++] = names[arr[i]];
	sd	a5,0(a4)	# _59, *_58
.L11:
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-116(s0)		# tmp214, i
	addiw	a5,a5,-1	#, tmp212, tmp213
	sw	a5,-116(s0)	# tmp212, i
.L10:
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-116(s0)		# tmp216, i
	sext.w	a5,a5	# tmp217, tmp215
	blt	a5,zero,.L15	#, tmp217,,
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ld	a5,-160(s0)		# tmp218, out_size
	lw	a4,0(a5)		# _60, *out_size_78(D)
# problem106.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-112(s0)		# tmp220, j
	sext.w	a5,a5	# tmp221, tmp219
	blt	a5,a4,.L13	#, tmp221, tmp222,
.L15:
# problem106.c:33: }
	nop	
	la	a5,__stack_chk_guard		# tmp223,
	ld	a4, -24(s0)	# tmp226, D.2715
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp83, a_size
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp85, b_size
	sw	a5,-44(s0)	# tmp84, a_size
	mv	a5,a4	# tmp86, tmp85
	sw	a5,-48(s0)	# tmp86, b_size
# problem106.c:43:     if (a_size != b_size) return 0;
	lw	a5,-44(s0)		# tmp88, a_size
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-48(s0)		# tmp90, b_size
	sext.w	a4,a4	# tmp91, tmp87
	sext.w	a5,a5	# tmp92, tmp89
	beq	a4,a5,.L17	#, tmp91, tmp92,
# problem106.c:43:     if (a_size != b_size) return 0;
	li	a5,0		# _11,
	j	.L18		#
.L17:
# problem106.c:44:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem106.c:44:     for (int i = 0; i < a_size; i++) {
	j	.L19		#
.L21:
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp93, a
	add	a5,a4,a5	# _2, _3, tmp93
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp94, b
	add	a5,a4,a5	# _6, _7, tmp94
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L20	#, _9,,
# problem106.c:45:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
	j	.L18		#
.L20:
# problem106.c:44:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L19:
# problem106.c:44:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, a_size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L21	#, tmp103, tmp104,
# problem106.c:47:     return 1;
	li	a5,1		# _11,
.L18:
# problem106.c:48: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC16:
	.string	"problem106.c"
	.align	3
.LC17:
	.string	"issame(out, out_size, expected1, 8)"
	.align	3
.LC18:
	.string	"issame(out, out_size, NULL, 0)"
	.align	3
.LC19:
	.string	"issame(out, out_size, expected3, 1)"
	.align	3
.LC20:
	.string	"issame(out, out_size, expected4, 3)"
	.align	3
.LC21:
	.string	"issame(out, out_size, expected5, 3)"
	.align	3
.LC11:
	.word	2
	.word	1
	.word	1
	.word	4
	.word	5
	.word	8
	.word	2
	.word	3
	.data
	.align	3
.LC15:
	.dword	.LC8
	.dword	.LC5
	.dword	.LC4
	.dword	.LC3
	.dword	.LC2
	.dword	.LC2
	.dword	.LC1
	.dword	.LC1
	.section	.rodata
	.align	3
.LC13:
	.word	1
	.word	-1
	.word	3
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-256	#,,
	sd	ra,248(sp)	#,
	sd	s0,240(sp)	#,
	addi	s0,sp,256	#,,
# problem106.c:50: int main() {
	la	a5,__stack_chk_guard		# tmp94,
	ld	a4, 0(a5)	# tmp152, __stack_chk_guard
	sd	a4, -24(s0)	# tmp152, D.2719
	li	a4, 0	# tmp152
# problem106.c:54:     int test1[] = {2, 1, 1, 4, 5, 8, 2, 3};
	lla	a5,.LC11	# tmp95,
	ld	a2,0(a5)		# tmp96,
	ld	a3,8(a5)		# tmp97,
	ld	a4,16(a5)		# tmp98,
	ld	a5,24(a5)		# tmp99,
	sd	a2,-120(s0)	# tmp96, test1
	sd	a3,-112(s0)	# tmp97, test1
	sd	a4,-104(s0)	# tmp98, test1
	sd	a5,-96(s0)	# tmp99, test1
# problem106.c:55:     char *expected1[] = {"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"};
	lla	a5,.LC15	# tmp100,
	ld	a7,0(a5)		# tmp101,
	ld	a6,8(a5)		# tmp102,
	ld	a0,16(a5)		# tmp103,
	ld	a1,24(a5)		# tmp104,
	ld	a2,32(a5)		# tmp105,
	ld	a3,40(a5)		# tmp106,
	ld	a4,48(a5)		# tmp107,
	ld	a5,56(a5)		# tmp108,
	sd	a7,-88(s0)	# tmp101, expected1
	sd	a6,-80(s0)	# tmp102, expected1
	sd	a0,-72(s0)	# tmp103, expected1
	sd	a1,-64(s0)	# tmp104, expected1
	sd	a2,-56(s0)	# tmp105, expected1
	sd	a3,-48(s0)	# tmp106, expected1
	sd	a4,-40(s0)	# tmp107, expected1
	sd	a5,-32(s0)	# tmp108, expected1
# problem106.c:56:     func0(test1, 8, &out, &out_size);
	addi	a3,s0,-244	#, tmp109,
	addi	a4,s0,-240	#, tmp110,
	addi	a5,s0,-120	#, tmp111,
	mv	a2,a4	#, tmp110
	li	a1,8		#,
	mv	a0,a5	#, tmp111
	call	func0		#
# problem106.c:57:     assert(issame(out, out_size, expected1, 8));
	ld	a5,-240(s0)		# out.1_1, out
	lw	a4,-244(s0)		# out_size.2_2, out_size
	addi	a2,s0,-88	#, tmp112,
	li	a3,8		#,
	mv	a1,a4	#, out_size.2_2
	mv	a0,a5	#, out.1_1
	call	issame		#
	mv	a5,a0	# tmp113,
	bne	a5,zero,.L23	#, _3,,
# problem106.c:57:     assert(issame(out, out_size, expected1, 8));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC16	#,
	lla	a0,.LC17	#,
	call	__assert_fail@plt	#
.L23:
# problem106.c:58:     free(out);
	ld	a5,-240(s0)		# out.3_4, out
	mv	a0,a5	#, out.3_4
	call	free@plt	#
# problem106.c:61:     func0(test2, 0, &out, &out_size);
	addi	a3,s0,-244	#, tmp114,
	addi	a4,s0,-240	#, tmp115,
	addi	a5,s0,-232	#, tmp116,
	mv	a2,a4	#, tmp115
	li	a1,0		#,
	mv	a0,a5	#, tmp116
	call	func0		#
# problem106.c:62:     assert(issame(out, out_size, NULL, 0));
	ld	a5,-240(s0)		# out.4_5, out
	lw	a4,-244(s0)		# out_size.5_6, out_size
	li	a3,0		#,
	li	a2,0		#,
	mv	a1,a4	#, out_size.5_6
	mv	a0,a5	#, out.4_5
	call	issame		#
	mv	a5,a0	# tmp117,
	bne	a5,zero,.L24	#, _7,,
# problem106.c:62:     assert(issame(out, out_size, NULL, 0));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,62		#,
	lla	a1,.LC16	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L24:
# problem106.c:63:     free(out);
	ld	a5,-240(s0)		# out.6_8, out
	mv	a0,a5	#, out.6_8
	call	free@plt	#
# problem106.c:65:     int test3[] = {1, -1, 55};
	li	a5,1		# tmp118,
	sw	a5,-216(s0)	# tmp118, test3[0]
	li	a5,-1		# tmp119,
	sw	a5,-212(s0)	# tmp119, test3[1]
	li	a5,55		# tmp120,
	sw	a5,-208(s0)	# tmp120, test3[2]
# problem106.c:66:     char *expected3[] = {"One"};
	lla	a5,.LC1	# tmp121,
	sd	a5,-224(s0)	# tmp121, expected3[0]
# problem106.c:67:     func0(test3, 3, &out, &out_size);
	addi	a3,s0,-244	#, tmp122,
	addi	a4,s0,-240	#, tmp123,
	addi	a5,s0,-216	#, tmp124,
	mv	a2,a4	#, tmp123
	li	a1,3		#,
	mv	a0,a5	#, tmp124
	call	func0		#
# problem106.c:68:     assert(issame(out, out_size, expected3, 1));
	ld	a5,-240(s0)		# out.7_9, out
	lw	a4,-244(s0)		# out_size.8_10, out_size
	addi	a2,s0,-224	#, tmp125,
	li	a3,1		#,
	mv	a1,a4	#, out_size.8_10
	mv	a0,a5	#, out.7_9
	call	issame		#
	mv	a5,a0	# tmp126,
	bne	a5,zero,.L25	#, _11,,
# problem106.c:68:     assert(issame(out, out_size, expected3, 1));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,68		#,
	lla	a1,.LC16	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L25:
# problem106.c:69:     free(out);
	ld	a5,-240(s0)		# out.9_12, out
	mv	a0,a5	#, out.9_12
	call	free@plt	#
# problem106.c:71:     int test4[] = {1, -1, 3, 2};
	lla	a5,.LC13	# tmp127,
	ld	a4,0(a5)		# tmp128,
	sd	a4,-184(s0)	# tmp128, test4
	ld	a5,8(a5)		# tmp129,
	sd	a5,-176(s0)	# tmp129, test4
# problem106.c:72:     char *expected4[] = {"Three", "Two", "One"};
	lla	a5,.LC3	# tmp130,
	sd	a5,-168(s0)	# tmp130, expected4[0]
	lla	a5,.LC2	# tmp131,
	sd	a5,-160(s0)	# tmp131, expected4[1]
	lla	a5,.LC1	# tmp132,
	sd	a5,-152(s0)	# tmp132, expected4[2]
# problem106.c:73:     func0(test4, 4, &out, &out_size);
	addi	a3,s0,-244	#, tmp133,
	addi	a4,s0,-240	#, tmp134,
	addi	a5,s0,-184	#, tmp135,
	mv	a2,a4	#, tmp134
	li	a1,4		#,
	mv	a0,a5	#, tmp135
	call	func0		#
# problem106.c:74:     assert(issame(out, out_size, expected4, 3));
	ld	a5,-240(s0)		# out.10_13, out
	lw	a4,-244(s0)		# out_size.11_14, out_size
	addi	a2,s0,-168	#, tmp136,
	li	a3,3		#,
	mv	a1,a4	#, out_size.11_14
	mv	a0,a5	#, out.10_13
	call	issame		#
	mv	a5,a0	# tmp137,
	bne	a5,zero,.L26	#, _15,,
# problem106.c:74:     assert(issame(out, out_size, expected4, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,74		#,
	lla	a1,.LC16	#,
	lla	a0,.LC20	#,
	call	__assert_fail@plt	#
.L26:
# problem106.c:75:     free(out);
	ld	a5,-240(s0)		# out.12_16, out
	mv	a0,a5	#, out.12_16
	call	free@plt	#
# problem106.c:77:     int test5[] = {9, 4, 8};
	li	a5,9		# tmp138,
	sw	a5,-200(s0)	# tmp138, test5[0]
	li	a5,4		# tmp139,
	sw	a5,-196(s0)	# tmp139, test5[1]
	li	a5,8		# tmp140,
	sw	a5,-192(s0)	# tmp140, test5[2]
# problem106.c:78:     char *expected5[] = {"Nine", "Eight", "Four"};
	lla	a5,.LC9	# tmp141,
	sd	a5,-144(s0)	# tmp141, expected5[0]
	lla	a5,.LC8	# tmp142,
	sd	a5,-136(s0)	# tmp142, expected5[1]
	lla	a5,.LC4	# tmp143,
	sd	a5,-128(s0)	# tmp143, expected5[2]
# problem106.c:79:     func0(test5, 3, &out, &out_size);
	addi	a3,s0,-244	#, tmp144,
	addi	a4,s0,-240	#, tmp145,
	addi	a5,s0,-200	#, tmp146,
	mv	a2,a4	#, tmp145
	li	a1,3		#,
	mv	a0,a5	#, tmp146
	call	func0		#
# problem106.c:80:     assert(issame(out, out_size, expected5, 3));
	ld	a5,-240(s0)		# out.13_17, out
	lw	a4,-244(s0)		# out_size.14_18, out_size
	addi	a2,s0,-144	#, tmp147,
	li	a3,3		#,
	mv	a1,a4	#, out_size.14_18
	mv	a0,a5	#, out.13_17
	call	issame		#
	mv	a5,a0	# tmp148,
	bne	a5,zero,.L27	#, _19,,
# problem106.c:80:     assert(issame(out, out_size, expected5, 3));
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,80		#,
	lla	a1,.LC16	#,
	lla	a0,.LC21	#,
	call	__assert_fail@plt	#
.L27:
# problem106.c:81:     free(out);
	ld	a5,-240(s0)		# out.15_20, out
	mv	a0,a5	#, out.15_20
	call	free@plt	#
# problem106.c:83:     return 0;
	li	a5,0		# _59,
# problem106.c:84: }
	mv	a4,a5	# <retval>, _59
	la	a5,__stack_chk_guard		# tmp150,
	ld	a3, -24(s0)	# tmp153, D.2719
	ld	a5, 0(a5)	# tmp151, __stack_chk_guard
	xor	a5, a3, a5	# tmp151, tmp153
	li	a3, 0	# tmp153
	beq	a5,zero,.L29	#, tmp151,,
	call	__stack_chk_fail@plt	#
.L29:
	mv	a0,a4	#, <retval>
	ld	ra,248(sp)		#,
	ld	s0,240(sp)		#,
	addi	sp,sp,256	#,,
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
