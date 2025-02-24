	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
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
.LFB6:
	.cfi_startproc
	addi	sp,sp,-160	#,,
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)	#,
	sd	s0,144(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)	# arr, arr
	mv	a5,a1	# tmp194, size
	sd	a2,-152(s0)	# out, out
	sd	a3,-160(s0)	# out_size, out_size
	sw	a5,-140(s0)	# tmp195, size
# code.c:5: void func0(int *arr, int size, char ***out, int *out_size) {
	la	a5,__stack_chk_guard		# tmp196,
	ld	a4, 0(a5)	# tmp287, __stack_chk_guard
	sd	a4, -24(s0)	# tmp287, D.3490
	li	a4, 0	# tmp287
# code.c:6:     char *names[] = {"", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"};
	lla	a5,.LC11	# tmp197,
	ld	t3,0(a5)		# tmp198,
	ld	t1,8(a5)		# tmp199,
	ld	a7,16(a5)		# tmp200,
	ld	a6,24(a5)		# tmp201,
	ld	a0,32(a5)		# tmp202,
	ld	a1,40(a5)		# tmp203,
	ld	a2,48(a5)		# tmp204,
	ld	a3,56(a5)		# tmp205,
	ld	a4,64(a5)		# tmp206,
	ld	a5,72(a5)		# tmp207,
	sd	t3,-104(s0)	# tmp198, names
	sd	t1,-96(s0)	# tmp199, names
	sd	a7,-88(s0)	# tmp200, names
	sd	a6,-80(s0)	# tmp201, names
	sd	a0,-72(s0)	# tmp202, names
	sd	a1,-64(s0)	# tmp203, names
	sd	a2,-56(s0)	# tmp204, names
	sd	a3,-48(s0)	# tmp205, names
	sd	a4,-40(s0)	# tmp206, names
	sd	a5,-32(s0)	# tmp207, names
# code.c:9:     for (i = 0; i < size - 1; i++) {
	sw	zero,-116(s0)	#, i
# code.c:9:     for (i = 0; i < size - 1; i++) {
	j	.L2		#
.L6:
# code.c:10:         for (j = 0; j < size - i - 1; j++) {
	sw	zero,-112(s0)	#, j
# code.c:10:         for (j = 0; j < size - i - 1; j++) {
	j	.L3		#
.L5:
# code.c:11:             if (arr[j] > arr[j + 1]) {
	lw	a5,-112(s0)		# _1, j
	slli	a5,a5,2	#, _2, _1
	ld	a4,-136(s0)		# tmp208, arr
	add	a5,a4,a5	# _2, _3, tmp208
	lw	a3,0(a5)		# _4, *_3
# code.c:11:             if (arr[j] > arr[j + 1]) {
	lw	a5,-112(s0)		# _5, j
	addi	a5,a5,1	#, _6, _5
	slli	a5,a5,2	#, _7, _6
	ld	a4,-136(s0)		# tmp209, arr
	add	a5,a4,a5	# _7, _8, tmp209
	lw	a5,0(a5)		# _9, *_8
# code.c:11:             if (arr[j] > arr[j + 1]) {
	mv	a4,a3	# tmp210, _4
	ble	a4,a5,.L4	#, tmp210, tmp211,
# code.c:12:                 int temp = arr[j];
	lw	a5,-112(s0)		# _10, j
	slli	a5,a5,2	#, _11, _10
	ld	a4,-136(s0)		# tmp212, arr
	add	a5,a4,a5	# _11, _12, tmp212
# code.c:12:                 int temp = arr[j];
	lw	a5,0(a5)		# tmp213, *_12
	sw	a5,-108(s0)	# tmp213, temp
# code.c:13:                 arr[j] = arr[j + 1];
	lw	a5,-112(s0)		# _13, j
	addi	a5,a5,1	#, _14, _13
	slli	a5,a5,2	#, _15, _14
	ld	a4,-136(s0)		# tmp214, arr
	add	a4,a4,a5	# _15, _16, tmp214
# code.c:13:                 arr[j] = arr[j + 1];
	lw	a5,-112(s0)		# _17, j
	slli	a5,a5,2	#, _18, _17
	ld	a3,-136(s0)		# tmp215, arr
	add	a5,a3,a5	# _18, _19, tmp215
# code.c:13:                 arr[j] = arr[j + 1];
	lw	a4,0(a4)		# _20, *_16
# code.c:13:                 arr[j] = arr[j + 1];
	sw	a4,0(a5)	# _20, *_19
# code.c:14:                 arr[j + 1] = temp;
	lw	a5,-112(s0)		# _21, j
	addi	a5,a5,1	#, _22, _21
	slli	a5,a5,2	#, _23, _22
	ld	a4,-136(s0)		# tmp216, arr
	add	a5,a4,a5	# _23, _24, tmp216
# code.c:14:                 arr[j + 1] = temp;
	lw	a4,-108(s0)		# tmp217, temp
	sw	a4,0(a5)	# tmp217, *_24
.L4:
# code.c:10:         for (j = 0; j < size - i - 1; j++) {
	lw	a5,-112(s0)		# tmp220, j
	addiw	a5,a5,1	#, tmp218, tmp219
	sw	a5,-112(s0)	# tmp218, j
.L3:
# code.c:10:         for (j = 0; j < size - i - 1; j++) {
	lw	a5,-140(s0)		# tmp223, size
	mv	a4,a5	# tmp222, tmp223
	lw	a5,-116(s0)		# tmp225, i
	subw	a5,a4,a5	# tmp221, tmp222, tmp224
	sext.w	a5,a5	# _25, tmp221
# code.c:10:         for (j = 0; j < size - i - 1; j++) {
	addiw	a5,a5,-1	#, tmp226, _25
	sext.w	a4,a5	# _26, tmp226
# code.c:10:         for (j = 0; j < size - i - 1; j++) {
	lw	a5,-112(s0)		# tmp228, j
	sext.w	a5,a5	# tmp229, tmp227
	blt	a5,a4,.L5	#, tmp229, tmp230,
# code.c:9:     for (i = 0; i < size - 1; i++) {
	lw	a5,-116(s0)		# tmp233, i
	addiw	a5,a5,1	#, tmp231, tmp232
	sw	a5,-116(s0)	# tmp231, i
.L2:
# code.c:9:     for (i = 0; i < size - 1; i++) {
	lw	a5,-140(s0)		# tmp236, size
	addiw	a5,a5,-1	#, tmp234, tmp235
	sext.w	a4,a5	# _27, tmp234
# code.c:9:     for (i = 0; i < size - 1; i++) {
	lw	a5,-116(s0)		# tmp238, i
	sext.w	a5,a5	# tmp239, tmp237
	blt	a5,a4,.L6	#, tmp239, tmp240,
# code.c:19:     *out_size = 0;
	ld	a5,-160(s0)		# tmp241, out_size
	sw	zero,0(a5)	#, *out_size_78(D)
# code.c:20:     for (i = size - 1; i >= 0; i--) {
	lw	a5,-140(s0)		# tmp244, size
	addiw	a5,a5,-1	#, tmp242, tmp243
	sw	a5,-116(s0)	# tmp242, i
# code.c:20:     for (i = size - 1; i >= 0; i--) {
	j	.L7		#
.L9:
# code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a4,-136(s0)		# tmp245, arr
	add	a5,a4,a5	# _29, _30, tmp245
	lw	a5,0(a5)		# _31, *_30
# code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	ble	a5,zero,.L8	#, tmp246,,
# code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _32, i
	slli	a5,a5,2	#, _33, _32
	ld	a4,-136(s0)		# tmp247, arr
	add	a5,a4,a5	# _33, _34, tmp247
	lw	a5,0(a5)		# _35, *_34
# code.c:21:         if (arr[i] >= 1 && arr[i] <= 9) {
	mv	a4,a5	# tmp248, _35
	li	a5,9		# tmp249,
	bgt	a4,a5,.L8	#, tmp248, tmp249,
# code.c:22:             (*out_size)++;
	ld	a5,-160(s0)		# tmp250, out_size
	lw	a5,0(a5)		# _36, *out_size_78(D)
# code.c:22:             (*out_size)++;
	addiw	a5,a5,1	#, tmp251, _36
	sext.w	a4,a5	# _37, tmp251
	ld	a5,-160(s0)		# tmp252, out_size
	sw	a4,0(a5)	# _37, *out_size_78(D)
.L8:
# code.c:20:     for (i = size - 1; i >= 0; i--) {
	lw	a5,-116(s0)		# tmp255, i
	addiw	a5,a5,-1	#, tmp253, tmp254
	sw	a5,-116(s0)	# tmp253, i
.L7:
# code.c:20:     for (i = size - 1; i >= 0; i--) {
	lw	a5,-116(s0)		# tmp257, i
	sext.w	a5,a5	# tmp258, tmp256
	bge	a5,zero,.L9	#, tmp258,,
# code.c:26:     *out = malloc(*out_size * sizeof(char *));
	ld	a5,-160(s0)		# tmp259, out_size
	lw	a5,0(a5)		# _38, *out_size_78(D)
# code.c:26:     *out = malloc(*out_size * sizeof(char *));
	slli	a5,a5,3	#, _40, _39
	mv	a0,a5	#, _40
	call	malloc@plt	#
	mv	a5,a0	# tmp260,
	mv	a4,a5	# _41, tmp260
# code.c:26:     *out = malloc(*out_size * sizeof(char *));
	ld	a5,-152(s0)		# tmp261, out
	sd	a4,0(a5)	# _41, *out_82(D)
# code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-140(s0)		# tmp264, size
	addiw	a5,a5,-1	#, tmp262, tmp263
	sw	a5,-116(s0)	# tmp262, i
# code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	sw	zero,-112(s0)	#, j
# code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	j	.L10		#
.L13:
# code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _42, i
	slli	a5,a5,2	#, _43, _42
	ld	a4,-136(s0)		# tmp265, arr
	add	a5,a4,a5	# _43, _44, tmp265
	lw	a5,0(a5)		# _45, *_44
# code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	ble	a5,zero,.L11	#, tmp266,,
# code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	lw	a5,-116(s0)		# _46, i
	slli	a5,a5,2	#, _47, _46
	ld	a4,-136(s0)		# tmp267, arr
	add	a5,a4,a5	# _47, _48, tmp267
	lw	a5,0(a5)		# _49, *_48
# code.c:29:         if (arr[i] >= 1 && arr[i] <= 9) {
	mv	a4,a5	# tmp268, _49
	li	a5,9		# tmp269,
	bgt	a4,a5,.L11	#, tmp268, tmp269,
# code.c:30:             (*out)[j++] = names[arr[i]];
	lw	a5,-116(s0)		# _50, i
	slli	a5,a5,2	#, _51, _50
	ld	a4,-136(s0)		# tmp270, arr
	add	a5,a4,a5	# _51, _52, tmp270
	lw	a3,0(a5)		# _53, *_52
# code.c:30:             (*out)[j++] = names[arr[i]];
	ld	a5,-152(s0)		# tmp271, out
	ld	a4,0(a5)		# _54, *out_82(D)
# code.c:30:             (*out)[j++] = names[arr[i]];
	lw	a5,-112(s0)		# j.0_55, j
	addiw	a2,a5,1	#, tmp272, j.0_55
	sw	a2,-112(s0)	# tmp272, j
# code.c:30:             (*out)[j++] = names[arr[i]];
	slli	a5,a5,3	#, _57, _56
	add	a4,a4,a5	# _57, _58, _54
# code.c:30:             (*out)[j++] = names[arr[i]];
	slli	a5,a3,3	#, tmp273, _53
	addi	a5,a5,-16	#, tmp291, tmp273
	add	a5,a5,s0	#, tmp273, tmp291
	ld	a5,-88(a5)		# _59, names[_53]
# code.c:30:             (*out)[j++] = names[arr[i]];
	sd	a5,0(a4)	# _59, *_58
.L11:
# code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-116(s0)		# tmp276, i
	addiw	a5,a5,-1	#, tmp274, tmp275
	sw	a5,-116(s0)	# tmp274, i
.L10:
# code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-116(s0)		# tmp278, i
	sext.w	a5,a5	# tmp279, tmp277
	blt	a5,zero,.L15	#, tmp279,,
# code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	ld	a5,-160(s0)		# tmp280, out_size
	lw	a4,0(a5)		# _60, *out_size_78(D)
# code.c:28:     for (i = size - 1, j = 0; i >= 0 && j < *out_size; i--) {
	lw	a5,-112(s0)		# tmp282, j
	sext.w	a5,a5	# tmp283, tmp281
	blt	a5,a4,.L13	#, tmp283, tmp284,
.L15:
# code.c:33: }
	nop	
	la	a5,__stack_chk_guard		# tmp285,
	ld	a4, -24(s0)	# tmp288, D.3490
	ld	a5, 0(a5)	# tmp286, __stack_chk_guard
	xor	a5, a4, a5	# tmp286, tmp288
	li	a4, 0	# tmp288
	beq	a5,zero,.L14	#, tmp286,,
	call	__stack_chk_fail@plt	#
.L14:
	ld	ra,152(sp)		#,
	.cfi_restore 1
	ld	s0,144(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
