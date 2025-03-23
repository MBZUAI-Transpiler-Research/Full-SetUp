	.file	"code.c"
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
.LC9:
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
# eval/problem149//code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	la	a5,__stack_chk_guard		# tmp152,
	ld	a4, 0(a5)	# tmp238, __stack_chk_guard
	sd	a4, -24(s0)	# tmp238, D.3485
	li	a4, 0	# tmp238
# eval/problem149//code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	lla	a5,.LC9	# tmp153,
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
# eval/problem149//code.c:7:     int pos1 = -1, pos2 = -1, m;
	li	a5,-1		# tmp162,
	sw	a5,-112(s0)	# tmp162, pos1
# eval/problem149//code.c:7:     int pos1 = -1, pos2 = -1, m;
	li	a5,-1		# tmp163,
	sw	a5,-108(s0)	# tmp163, pos2
# eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	sw	zero,-104(s0)	#, m
# eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	j	.L2		#
.L5:
# eval/problem149//code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	lw	a5,-104(s0)		# tmp164, m
	slli	a5,a5,3	#, tmp165, tmp164
	addi	a5,a5,-16	#, tmp242, tmp165
	add	a5,a5,s0	#, tmp165, tmp242
	ld	a5,-72(a5)		# _1, planets[m_23]
	ld	a1,-120(s0)		#, planet1
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp166,
# eval/problem149//code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	bne	a5,zero,.L3	#, _2,,
# eval/problem149//code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	lw	a5,-104(s0)		# tmp167, m
	sw	a5,-112(s0)	# tmp167, pos1
.L3:
# eval/problem149//code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	lw	a5,-104(s0)		# tmp168, m
	slli	a5,a5,3	#, tmp169, tmp168
	addi	a5,a5,-16	#, tmp243, tmp169
	add	a5,a5,s0	#, tmp169, tmp243
	ld	a5,-72(a5)		# _3, planets[m_23]
	ld	a1,-128(s0)		#, planet2
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp170,
# eval/problem149//code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	bne	a5,zero,.L4	#, _4,,
# eval/problem149//code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	lw	a5,-104(s0)		# tmp171, m
	sw	a5,-108(s0)	# tmp171, pos2
.L4:
# eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	lw	a5,-104(s0)		# tmp174, m
	addiw	a5,a5,1	#, tmp172, tmp173
	sw	a5,-104(s0)	# tmp172, m
.L2:
# eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	lw	a5,-104(s0)		# tmp176, m
	sext.w	a4,a5	# tmp177, tmp175
	li	a5,7		# tmp178,
	ble	a4,a5,.L5	#, tmp177, tmp178,
# eval/problem149//code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-112(s0)		# tmp180, pos1
	sext.w	a4,a5	# tmp181, tmp179
	li	a5,-1		# tmp182,
	beq	a4,a5,.L6	#, tmp181, tmp182,
# eval/problem149//code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-108(s0)		# tmp184, pos2
	sext.w	a4,a5	# tmp185, tmp183
	li	a5,-1		# tmp186,
	beq	a4,a5,.L6	#, tmp185, tmp186,
# eval/problem149//code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-112(s0)		# tmp188, pos1
	mv	a4,a5	# tmp187, tmp188
	lw	a5,-108(s0)		# tmp190, pos2
	sext.w	a4,a4	# tmp191, tmp187
	sext.w	a5,a5	# tmp192, tmp189
	bne	a4,a5,.L7	#, tmp191, tmp192,
.L6:
# eval/problem149//code.c:13:         *returnSize = 0;
	ld	a5,-136(s0)		# tmp193, returnSize
	sw	zero,0(a5)	#, *returnSize_36(D)
# eval/problem149//code.c:14:         return NULL;
	li	a5,0		# _25,
	j	.L13		#
.L7:
# eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-112(s0)		# tmp195, pos1
	mv	a4,a5	# tmp194, tmp195
	lw	a5,-108(s0)		# tmp197, pos2
	sext.w	a4,a4	# tmp198, tmp194
	sext.w	a5,a5	# tmp199, tmp196
	ble	a4,a5,.L9	#, tmp198, tmp199,
# eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-112(s0)		# tmp200, pos1
	sw	a5,-100(s0)	# tmp200, temp
# eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-108(s0)		# tmp201, pos2
	sw	a5,-112(s0)	# tmp201, pos1
# eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-100(s0)		# tmp202, temp
	sw	a5,-108(s0)	# tmp202, pos2
.L9:
# eval/problem149//code.c:17:     *returnSize = pos2 - pos1 - 1;
	lw	a5,-108(s0)		# tmp205, pos2
	mv	a4,a5	# tmp204, tmp205
	lw	a5,-112(s0)		# tmp207, pos1
	subw	a5,a4,a5	# tmp203, tmp204, tmp206
	sext.w	a5,a5	# _5, tmp203
# eval/problem149//code.c:17:     *returnSize = pos2 - pos1 - 1;
	addiw	a5,a5,-1	#, tmp208, _5
	sext.w	a4,a5	# _6, tmp208
# eval/problem149//code.c:17:     *returnSize = pos2 - pos1 - 1;
	ld	a5,-136(s0)		# tmp209, returnSize
	sw	a4,0(a5)	# _6, *returnSize_36(D)
# eval/problem149//code.c:18:     if (*returnSize <= 0) {
	ld	a5,-136(s0)		# tmp210, returnSize
	lw	a5,0(a5)		# _7, *returnSize_36(D)
# eval/problem149//code.c:18:     if (*returnSize <= 0) {
	bgt	a5,zero,.L10	#, tmp211,,
# eval/problem149//code.c:19:         *returnSize = 0;
	ld	a5,-136(s0)		# tmp212, returnSize
	sw	zero,0(a5)	#, *returnSize_36(D)
# eval/problem149//code.c:20:         return NULL;
	li	a5,0		# _25,
	j	.L13		#
.L10:
# eval/problem149//code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	ld	a5,-136(s0)		# tmp213, returnSize
	lw	a5,0(a5)		# _8, *returnSize_36(D)
# eval/problem149//code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	slli	a5,a5,3	#, _10, _9
	mv	a0,a5	#, _10
	call	malloc@plt	#
	mv	a5,a0	# tmp214,
	sd	a5,-96(s0)	# tmp214, out
# eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-112(s0)		# tmp217, pos1
	addiw	a5,a5,1	#, tmp215, tmp216
	sw	a5,-104(s0)	# tmp215, m
# eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	j	.L11		#
.L12:
# eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lw	a5,-104(s0)		# tmp220, m
	mv	a4,a5	# tmp219, tmp220
	lw	a5,-112(s0)		# tmp222, pos1
	subw	a5,a4,a5	# tmp218, tmp219, tmp221
	sext.w	a5,a5	# _11, tmp218
# eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	slli	a5,a5,3	#, _13, _12
	addi	a5,a5,-8	#, _14, _13
	ld	a4,-96(s0)		# tmp223, out
	add	a4,a4,a5	# _14, _15, tmp223
# eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lw	a5,-104(s0)		# tmp224, m
	slli	a5,a5,3	#, tmp225, tmp224
	addi	a5,a5,-16	#, tmp244, tmp225
	add	a5,a5,s0	#, tmp225, tmp244
	ld	a5,-72(a5)		# _16, planets[m_24]
# eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	sd	a5,0(a4)	# _16, *_15
# eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-104(s0)		# tmp228, m
	addiw	a5,a5,1	#, tmp226, tmp227
	sw	a5,-104(s0)	# tmp226, m
.L11:
# eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-104(s0)		# tmp230, m
	mv	a4,a5	# tmp229, tmp230
	lw	a5,-108(s0)		# tmp232, pos2
	sext.w	a4,a4	# tmp233, tmp229
	sext.w	a5,a5	# tmp234, tmp231
	blt	a4,a5,.L12	#, tmp233, tmp234,
# eval/problem149//code.c:26:     return out;
	ld	a5,-96(s0)		# _25, out
.L13:
# eval/problem149//code.c:27: }
	mv	a4,a5	# <retval>, _25
	la	a5,__stack_chk_guard		# tmp236,
	ld	a3, -24(s0)	# tmp239, D.3485
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
