	.file	"problem149.c"
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
	.string	"Mercury"
	.align	3
.LC1:
	.string	"Venus"
	.align	3
.LC2:
	.string	"Earth"
	.align	3
.LC3:
	.string	"Mars"
	.align	3
.LC4:
	.string	"Jupiter"
	.align	3
.LC5:
	.string	"Saturn"
	.align	3
.LC6:
	.string	"Uranus"
	.align	3
.LC7:
	.string	"Neptune"
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
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-144	#,,
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-120(s0)	# planet1, planet1
	sd	a1,-128(s0)	# planet2, planet2
	sd	a2,-136(s0)	# returnSize, returnSize
# problem149.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	la	a5,__stack_chk_guard		# tmp152,
	ld	a4, 0(a5)	# tmp238, __stack_chk_guard
	sd	a4, -24(s0)	# tmp238, D.3563
	li	a4, 0	# tmp238
# problem149.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	lla	a5,.LC11	# tmp153,
	ld	a7,0(a5)		# tmp154,
	ld	a6,8(a5)		# tmp155,
	ld	a0,16(a5)		# tmp156,
	ld	a1,24(a5)		# tmp157,
	ld	a2,32(a5)		# tmp158,
	ld	a3,40(a5)		# tmp159,
	ld	a4,48(a5)		# tmp160,
	ld	a5,56(a5)		# tmp161,
	sd	a7,-88(s0)	# tmp154, planets
	sd	a6,-80(s0)	# tmp155, planets
	sd	a0,-72(s0)	# tmp156, planets
	sd	a1,-64(s0)	# tmp157, planets
	sd	a2,-56(s0)	# tmp158, planets
	sd	a3,-48(s0)	# tmp159, planets
	sd	a4,-40(s0)	# tmp160, planets
	sd	a5,-32(s0)	# tmp161, planets
# problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	li	a5,-1		# tmp162,
	sw	a5,-112(s0)	# tmp162, pos1
# problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	li	a5,-1		# tmp163,
	sw	a5,-108(s0)	# tmp163, pos2
# problem149.c:8:     for (m = 0; m < 8; m++) {
	sw	zero,-104(s0)	#, m
# problem149.c:8:     for (m = 0; m < 8; m++) {
	j	.L2		#
.L5:
# problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	lw	a5,-104(s0)		# tmp164, m
	slli	a5,a5,3	#, tmp165, tmp164
	addi	a5,a5,-16	#, tmp242, tmp165
	add	a5,a5,s0	#, tmp165, tmp242
	ld	a5,-72(a5)		# _1, planets[m_23]
	ld	a1,-120(s0)		#, planet1
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp166,
# problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	bne	a5,zero,.L3	#, _2,,
# problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	lw	a5,-104(s0)		# tmp167, m
	sw	a5,-112(s0)	# tmp167, pos1
.L3:
# problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	lw	a5,-104(s0)		# tmp168, m
	slli	a5,a5,3	#, tmp169, tmp168
	addi	a5,a5,-16	#, tmp243, tmp169
	add	a5,a5,s0	#, tmp169, tmp243
	ld	a5,-72(a5)		# _3, planets[m_23]
	ld	a1,-128(s0)		#, planet2
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp170,
# problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	bne	a5,zero,.L4	#, _4,,
# problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	lw	a5,-104(s0)		# tmp171, m
	sw	a5,-108(s0)	# tmp171, pos2
.L4:
# problem149.c:8:     for (m = 0; m < 8; m++) {
	lw	a5,-104(s0)		# tmp174, m
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-104(s0)	# tmp172, m
.L2:
# problem149.c:8:     for (m = 0; m < 8; m++) {
	lw	a5,-104(s0)		# tmp176, m
	sext.w	a4,a5	# tmp177, tmp175
	li	a5,7		# tmp178,
	ble	a4,a5,.L5	#, tmp177, tmp178,
# problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-112(s0)		# tmp180, pos1
	sext.w	a4,a5	# tmp181, tmp179
	li	a5,-1		# tmp182,
	beq	a4,a5,.L6	#, tmp181, tmp182,
# problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-108(s0)		# tmp184, pos2
	sext.w	a4,a5	# tmp185, tmp183
	li	a5,-1		# tmp186,
	beq	a4,a5,.L6	#, tmp185, tmp186,
# problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-112(s0)		# tmp188, pos1
	mv	a4,a5	# tmp187, tmp188
	lw	a5,-108(s0)		# tmp190, pos2
	sext.w	a4,a4	# tmp191, tmp187
	sext.w	a5,a5	# tmp192, tmp189
	bne	a4,a5,.L7	#, tmp191, tmp192,
.L6:
# problem149.c:13:         *returnSize = 0;
	ld	a5,-136(s0)		# tmp193, returnSize
	sw	zero,0(a5)	#, *returnSize_36(D)
# problem149.c:14:         return NULL;
	li	a5,0		# _25,
	j	.L13		#
.L7:
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-112(s0)		# tmp195, pos1
	mv	a4,a5	# tmp194, tmp195
	lw	a5,-108(s0)		# tmp197, pos2
	sext.w	a4,a4	# tmp198, tmp194
	sext.w	a5,a5	# tmp199, tmp196
	ble	a4,a5,.L9	#, tmp198, tmp199,
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-112(s0)		# tmp200, pos1
	sw	a5,-100(s0)	# tmp200, temp
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-108(s0)		# tmp201, pos2
	sw	a5,-112(s0)	# tmp201, pos1
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-100(s0)		# tmp202, temp
	sw	a5,-108(s0)	# tmp202, pos2
.L9:
# problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	lw	a5,-108(s0)		# tmp205, pos2
	mv	a4,a5	# tmp204, tmp205
	lw	a5,-112(s0)		# tmp207, pos1
	subw	a5,a4,a5	# tmp203, tmp204, tmp206
	sext.w	a5,a5	# _5, tmp203
# problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	addiw	a5,a5,-1	#, tmp208, _5
	sext.w	a4,a5	# _6, tmp208
# problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	ld	a5,-136(s0)		# tmp209, returnSize
	sw	a4,0(a5)	# _6, *returnSize_36(D)
# problem149.c:18:     if (*returnSize <= 0) {
	ld	a5,-136(s0)		# tmp210, returnSize
	lw	a5,0(a5)		# _7, *returnSize_36(D)
# problem149.c:18:     if (*returnSize <= 0) {
	bgt	a5,zero,.L10	#, tmp211,,
# problem149.c:19:         *returnSize = 0;
	ld	a5,-136(s0)		# tmp212, returnSize
	sw	zero,0(a5)	#, *returnSize_36(D)
# problem149.c:20:         return NULL;
	li	a5,0		# _25,
	j	.L13		#
.L10:
# problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	ld	a5,-136(s0)		# tmp213, returnSize
	lw	a5,0(a5)		# _8, *returnSize_36(D)
# problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	slli	a5,a5,3	#, _10, _9
	mv	a0,a5	#, _10
	call	malloc@plt	#
	mv	a5,a0	# tmp214,
	sd	a5,-96(s0)	# tmp214, out
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-112(s0)		# tmp217, pos1
	addiw	a5,a5,1	#, tmp215, tmp216
	sw	a5,-104(s0)	# tmp215, m
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	j	.L11		#
.L12:
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lw	a5,-104(s0)		# tmp220, m
	mv	a4,a5	# tmp219, tmp220
	lw	a5,-112(s0)		# tmp222, pos1
	subw	a5,a4,a5	# tmp218, tmp219, tmp221
	sext.w	a5,a5	# _11, tmp218
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	slli	a5,a5,3	#, _13, _12
	addi	a5,a5,-8	#, _14, _13
	ld	a4,-96(s0)		# tmp223, out
	add	a4,a4,a5	# _14, _15, tmp223
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lw	a5,-104(s0)		# tmp224, m
	slli	a5,a5,3	#, tmp225, tmp224
	addi	a5,a5,-16	#, tmp244, tmp225
	add	a5,a5,s0	#, tmp225, tmp244
	ld	a5,-72(a5)		# _16, planets[m_24]
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	sd	a5,0(a4)	# _16, *_15
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-104(s0)		# tmp228, m
	addiw	a5,a5,1	#, tmp226, tmp227
	sw	a5,-104(s0)	# tmp226, m
.L11:
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-104(s0)		# tmp230, m
	mv	a4,a5	# tmp229, tmp230
	lw	a5,-108(s0)		# tmp232, pos2
	sext.w	a4,a4	# tmp233, tmp229
	sext.w	a5,a5	# tmp234, tmp231
	blt	a4,a5,.L12	#, tmp233, tmp234,
# problem149.c:26:     return out;
	ld	a5,-96(s0)		# _25, out
.L13:
# problem149.c:27: }
	mv	a4,a5	# <retval>, _25
	la	a5,__stack_chk_guard		# tmp236,
	ld	a3, -24(s0)	# tmp239, D.3563
	ld	a5, 0(a5)	# tmp237, __stack_chk_guard
	xor	a5, a3, a5	# tmp237, tmp239
	li	a3, 0	# tmp239
	beq	a5,zero,.L14	#, tmp237,,
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	.cfi_restore 1
	ld	s0,128(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp145, a_size
	mv	a4,a3	# tmp147, b_size
	sw	a5,-52(s0)	# tmp146, a_size
	mv	a5,a4	# tmp148, tmp147
	sw	a5,-56(s0)	# tmp148, b_size
# problem149.c:37:     if (a_size != b_size) return 0;
	lw	a5,-52(s0)		# tmp150, a_size
	mv	a4,a5	# tmp149, tmp150
	lw	a5,-56(s0)		# tmp152, b_size
	sext.w	a4,a4	# tmp153, tmp149
	sext.w	a5,a5	# tmp154, tmp151
	beq	a4,a5,.L16	#, tmp153, tmp154,
# problem149.c:37:     if (a_size != b_size) return 0;
	li	a5,0		# _11,
# problem149.c:37:     if (a_size != b_size) return 0;
	j	.L17		#
.L16:
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	sw	zero,-20(s0)	#, i
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	j	.L18		#
.L20:
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp155, a
	add	a5,a4,a5	# _2, _3, tmp155
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-48(s0)		# tmp156, b
	add	a5,a4,a5	# _6, _7, tmp156
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp157,
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L19	#, _9,,
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	j	.L17		#
.L19:
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L18:
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-52(s0)		# tmp164, a_size
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L20	#, tmp165, tmp166,
# problem149.c:41:     return 1;
	li	a5,1		# _11,
.L17:
# problem149.c:42: }
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
.LFE7:
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC12:
	.string	"problem149.c"
	.align	3
.LC13:
	.string	"issame(result, test1, size, 2)"
	.align	3
.LC14:
	.string	"issame(result, test2, size, 1)"
	.align	3
.LC16:
	.string	"issame(result, test3, size, 5)"
	.align	3
.LC18:
	.string	"issame(result, test4, size, 5)"
	.align	3
.LC19:
	.string	"size == 0 && result == NULL"
	.align	3
.LC20:
	.string	"Makemake"
	.data
	.align	3
.LC15:
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.align	3
.LC17:
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-144	#,,
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144	#,,
	.cfi_def_cfa 8, 0
# problem149.c:44: int main() {
	la	a5,__stack_chk_guard		# tmp147,
	ld	a4, 0(a5)	# tmp184, __stack_chk_guard
	sd	a4, -24(s0)	# tmp184, D.3567
	li	a4, 0	# tmp184
# problem149.c:48:     const char* test1[] = {"Saturn", "Uranus"};
	lla	a5,.LC5	# tmp148,
	sd	a5,-120(s0)	# tmp148, test1[0]
	lla	a5,.LC6	# tmp149,
	sd	a5,-112(s0)	# tmp149, test1[1]
# problem149.c:49:     result = func0("Jupiter", "Neptune", &size);
	addi	a5,s0,-140	#, tmp150,
	mv	a2,a5	#, tmp150
	lla	a1,.LC7	#,
	lla	a0,.LC4	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:50:     assert(issame(result, test1, size, 2));
	lw	a4,-140(s0)		# size.0_1, size
	addi	a5,s0,-120	#, tmp151,
	li	a3,2		#,
	mv	a2,a4	#, size.0_1
	mv	a1,a5	#, tmp151
	ld	a0,-136(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp152,
# problem149.c:50:     assert(issame(result, test1, size, 2));
	bne	a5,zero,.L22	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC12	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L22:
# problem149.c:51:     free(result);
	ld	a0,-136(s0)		#, result
	call	free@plt	#
# problem149.c:53:     const char* test2[] = {"Venus"};
	lla	a5,.LC1	# tmp153,
	sd	a5,-128(s0)	# tmp153, test2[0]
# problem149.c:54:     result = func0("Earth", "Mercury", &size);
	addi	a5,s0,-140	#, tmp154,
	mv	a2,a5	#, tmp154
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:55:     assert(issame(result, test2, size, 1));
	lw	a4,-140(s0)		# size.1_3, size
	addi	a5,s0,-128	#, tmp155,
	li	a3,1		#,
	mv	a2,a4	#, size.1_3
	mv	a1,a5	#, tmp155
	ld	a0,-136(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp156,
# problem149.c:55:     assert(issame(result, test2, size, 1));
	bne	a5,zero,.L23	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,55		#,
	lla	a1,.LC12	#,
	lla	a0,.LC14	#,
	call	__assert_fail@plt	#
.L23:
# problem149.c:56:     free(result);
	ld	a0,-136(s0)		#, result
	call	free@plt	#
# problem149.c:58:     const char* test3[] = {"Venus", "Earth", "Mars", "Jupiter", "Saturn"};
	lla	a5,.LC15	# tmp157,
	ld	a1,0(a5)		# tmp158,
	ld	a2,8(a5)		# tmp159,
	ld	a3,16(a5)		# tmp160,
	ld	a4,24(a5)		# tmp161,
	ld	a5,32(a5)		# tmp162,
	sd	a1,-104(s0)	# tmp158, test3
	sd	a2,-96(s0)	# tmp159, test3
	sd	a3,-88(s0)	# tmp160, test3
	sd	a4,-80(s0)	# tmp161, test3
	sd	a5,-72(s0)	# tmp162, test3
# problem149.c:59:     result = func0("Mercury", "Uranus", &size);
	addi	a5,s0,-140	#, tmp163,
	mv	a2,a5	#, tmp163
	lla	a1,.LC6	#,
	lla	a0,.LC0	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:60:     assert(issame(result, test3, size, 5));
	lw	a4,-140(s0)		# size.2_5, size
	addi	a5,s0,-104	#, tmp164,
	li	a3,5		#,
	mv	a2,a4	#, size.2_5
	mv	a1,a5	#, tmp164
	ld	a0,-136(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp165,
# problem149.c:60:     assert(issame(result, test3, size, 5));
	bne	a5,zero,.L24	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,60		#,
	lla	a1,.LC12	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L24:
# problem149.c:61:     free(result);
	ld	a0,-136(s0)		#, result
	call	free@plt	#
# problem149.c:63:     const char* test4[] = {"Earth", "Mars", "Jupiter", "Saturn", "Uranus"};
	lla	a5,.LC17	# tmp166,
	ld	a1,0(a5)		# tmp167,
	ld	a2,8(a5)		# tmp168,
	ld	a3,16(a5)		# tmp169,
	ld	a4,24(a5)		# tmp170,
	ld	a5,32(a5)		# tmp171,
	sd	a1,-64(s0)	# tmp167, test4
	sd	a2,-56(s0)	# tmp168, test4
	sd	a3,-48(s0)	# tmp169, test4
	sd	a4,-40(s0)	# tmp170, test4
	sd	a5,-32(s0)	# tmp171, test4
# problem149.c:64:     result = func0("Neptune", "Venus", &size);
	addi	a5,s0,-140	#, tmp172,
	mv	a2,a5	#, tmp172
	lla	a1,.LC1	#,
	lla	a0,.LC7	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:65:     assert(issame(result, test4, size, 5));
	lw	a4,-140(s0)		# size.3_7, size
	addi	a5,s0,-64	#, tmp173,
	li	a3,5		#,
	mv	a2,a4	#, size.3_7
	mv	a1,a5	#, tmp173
	ld	a0,-136(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp174,
# problem149.c:65:     assert(issame(result, test4, size, 5));
	bne	a5,zero,.L25	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,65		#,
	lla	a1,.LC12	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L25:
# problem149.c:66:     free(result);
	ld	a0,-136(s0)		#, result
	call	free@plt	#
# problem149.c:68:     result = func0("Earth", "Earth", &size);
	addi	a5,s0,-140	#, tmp175,
	mv	a2,a5	#, tmp175
	lla	a1,.LC2	#,
	lla	a0,.LC2	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:69:     assert(size == 0 && result == NULL);
	lw	a5,-140(s0)		# size.4_9, size
	bne	a5,zero,.L26	#, size.4_9,,
# problem149.c:69:     assert(size == 0 && result == NULL);
	ld	a5,-136(s0)		# tmp176, result
	beq	a5,zero,.L34	#, tmp176,,
.L26:
# problem149.c:69:     assert(size == 0 && result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC12	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L34:
# problem149.c:71:     result = func0("Mars", "Earth", &size);
	addi	a5,s0,-140	#, tmp177,
	mv	a2,a5	#, tmp177
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:72:     assert(size == 0 && result == NULL);
	lw	a5,-140(s0)		# size.5_10, size
	bne	a5,zero,.L28	#, size.5_10,,
# problem149.c:72:     assert(size == 0 && result == NULL);
	ld	a5,-136(s0)		# tmp178, result
	beq	a5,zero,.L35	#, tmp178,,
.L28:
# problem149.c:72:     assert(size == 0 && result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,72		#,
	lla	a1,.LC12	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L35:
# problem149.c:74:     result = func0("Jupiter", "Makemake", &size);
	addi	a5,s0,-140	#, tmp179,
	mv	a2,a5	#, tmp179
	lla	a1,.LC20	#,
	lla	a0,.LC4	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:75:     assert(size == 0 && result == NULL);
	lw	a5,-140(s0)		# size.6_11, size
	bne	a5,zero,.L30	#, size.6_11,,
# problem149.c:75:     assert(size == 0 && result == NULL);
	ld	a5,-136(s0)		# tmp180, result
	beq	a5,zero,.L36	#, tmp180,,
.L30:
# problem149.c:75:     assert(size == 0 && result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,75		#,
	lla	a1,.LC12	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L36:
# problem149.c:77:     return 0;
	li	a5,0		# _44,
# problem149.c:78: }
	mv	a4,a5	# <retval>, _44
	la	a5,__stack_chk_guard		# tmp182,
	ld	a3, -24(s0)	# tmp185, D.3567
	ld	a5, 0(a5)	# tmp183, __stack_chk_guard
	xor	a5, a3, a5	# tmp183, tmp185
	li	a3, 0	# tmp185
	beq	a5,zero,.L33	#, tmp183,,
	call	__stack_chk_fail@plt	#
.L33:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	.cfi_restore 1
	ld	s0,128(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
