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
	addi	sp,sp,-144	#,,
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	addi	s0,sp,144	#,,
	sd	a0,-120(s0)	# planet1, planet1
	sd	a1,-128(s0)	# planet2, planet2
	sd	a2,-136(s0)	# returnSize, returnSize
# eval/problem149//code.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	la	a5,__stack_chk_guard		# tmp90,
	ld	a4, 0(a5)	# tmp176, __stack_chk_guard
	sd	a4, -24(s0)	# tmp176, D.2633
	li	a4, 0	# tmp176
# eval/problem149//code.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	lla	a5,.LC9	# tmp91,
	ld	a7,0(a5)		# tmp92,
	ld	a6,8(a5)		# tmp93,
	ld	a0,16(a5)		# tmp94,
	ld	a1,24(a5)		# tmp95,
	ld	a2,32(a5)		# tmp96,
	ld	a3,40(a5)		# tmp97,
	ld	a4,48(a5)		# tmp98,
	ld	a5,56(a5)		# tmp99,
	sd	a7,-88(s0)	# tmp92, planets
	sd	a6,-80(s0)	# tmp93, planets
	sd	a0,-72(s0)	# tmp94, planets
	sd	a1,-64(s0)	# tmp95, planets
	sd	a2,-56(s0)	# tmp96, planets
	sd	a3,-48(s0)	# tmp97, planets
	sd	a4,-40(s0)	# tmp98, planets
	sd	a5,-32(s0)	# tmp99, planets
# eval/problem149//code.c:7:     int pos1 = -1, pos2 = -1, m;
	li	a5,-1		# tmp100,
	sw	a5,-112(s0)	# tmp100, pos1
# eval/problem149//code.c:7:     int pos1 = -1, pos2 = -1, m;
	li	a5,-1		# tmp101,
	sw	a5,-108(s0)	# tmp101, pos2
# eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	sw	zero,-104(s0)	#, m
# eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	j	.L2		#
.L5:
# eval/problem149//code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	lw	a5,-104(s0)		# tmp102, m
	slli	a5,a5,3	#, tmp103, tmp102
	addi	a5,a5,-16	#, tmp180, tmp103
	add	a5,a5,s0	#, tmp103, tmp180
	ld	a5,-72(a5)		# _1, planets[m_23]
	ld	a1,-120(s0)		#, planet1
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp104,
# eval/problem149//code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	bne	a5,zero,.L3	#, _2,,
# eval/problem149//code.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	lw	a5,-104(s0)		# tmp105, m
	sw	a5,-112(s0)	# tmp105, pos1
.L3:
# eval/problem149//code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	lw	a5,-104(s0)		# tmp106, m
	slli	a5,a5,3	#, tmp107, tmp106
	addi	a5,a5,-16	#, tmp181, tmp107
	add	a5,a5,s0	#, tmp107, tmp181
	ld	a5,-72(a5)		# _3, planets[m_23]
	ld	a1,-128(s0)		#, planet2
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp108,
# eval/problem149//code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	bne	a5,zero,.L4	#, _4,,
# eval/problem149//code.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	lw	a5,-104(s0)		# tmp109, m
	sw	a5,-108(s0)	# tmp109, pos2
.L4:
# eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	lw	a5,-104(s0)		# tmp112, m
	addiw	a5,a5,1	#, tmp110, tmp111
	sw	a5,-104(s0)	# tmp110, m
.L2:
# eval/problem149//code.c:8:     for (m = 0; m < 8; m++) {
	lw	a5,-104(s0)		# tmp114, m
	sext.w	a4,a5	# tmp115, tmp113
	li	a5,7		# tmp116,
	ble	a4,a5,.L5	#, tmp115, tmp116,
# eval/problem149//code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-112(s0)		# tmp118, pos1
	sext.w	a4,a5	# tmp119, tmp117
	li	a5,-1		# tmp120,
	beq	a4,a5,.L6	#, tmp119, tmp120,
# eval/problem149//code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-108(s0)		# tmp122, pos2
	sext.w	a4,a5	# tmp123, tmp121
	li	a5,-1		# tmp124,
	beq	a4,a5,.L6	#, tmp123, tmp124,
# eval/problem149//code.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-112(s0)		# tmp126, pos1
	mv	a4,a5	# tmp125, tmp126
	lw	a5,-108(s0)		# tmp128, pos2
	sext.w	a4,a4	# tmp129, tmp125
	sext.w	a5,a5	# tmp130, tmp127
	bne	a4,a5,.L7	#, tmp129, tmp130,
.L6:
# eval/problem149//code.c:13:         *returnSize = 0;
	ld	a5,-136(s0)		# tmp131, returnSize
	sw	zero,0(a5)	#, *returnSize_36(D)
# eval/problem149//code.c:14:         return NULL;
	li	a5,0		# _25,
	j	.L13		#
.L7:
# eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-112(s0)		# tmp133, pos1
	mv	a4,a5	# tmp132, tmp133
	lw	a5,-108(s0)		# tmp135, pos2
	sext.w	a4,a4	# tmp136, tmp132
	sext.w	a5,a5	# tmp137, tmp134
	ble	a4,a5,.L9	#, tmp136, tmp137,
# eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-112(s0)		# tmp138, pos1
	sw	a5,-100(s0)	# tmp138, temp
# eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-108(s0)		# tmp139, pos2
	sw	a5,-112(s0)	# tmp139, pos1
# eval/problem149//code.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-100(s0)		# tmp140, temp
	sw	a5,-108(s0)	# tmp140, pos2
.L9:
# eval/problem149//code.c:17:     *returnSize = pos2 - pos1 - 1;
	lw	a5,-108(s0)		# tmp143, pos2
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-112(s0)		# tmp145, pos1
	subw	a5,a4,a5	# tmp141, tmp142, tmp144
	sext.w	a5,a5	# _5, tmp141
# eval/problem149//code.c:17:     *returnSize = pos2 - pos1 - 1;
	addiw	a5,a5,-1	#, tmp146, _5
	sext.w	a4,a5	# _6, tmp146
# eval/problem149//code.c:17:     *returnSize = pos2 - pos1 - 1;
	ld	a5,-136(s0)		# tmp147, returnSize
	sw	a4,0(a5)	# _6, *returnSize_36(D)
# eval/problem149//code.c:18:     if (*returnSize <= 0) {
	ld	a5,-136(s0)		# tmp148, returnSize
	lw	a5,0(a5)		# _7, *returnSize_36(D)
# eval/problem149//code.c:18:     if (*returnSize <= 0) {
	bgt	a5,zero,.L10	#, tmp149,,
# eval/problem149//code.c:19:         *returnSize = 0;
	ld	a5,-136(s0)		# tmp150, returnSize
	sw	zero,0(a5)	#, *returnSize_36(D)
# eval/problem149//code.c:20:         return NULL;
	li	a5,0		# _25,
	j	.L13		#
.L10:
# eval/problem149//code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	ld	a5,-136(s0)		# tmp151, returnSize
	lw	a5,0(a5)		# _8, *returnSize_36(D)
# eval/problem149//code.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	slli	a5,a5,3	#, _10, _9
	mv	a0,a5	#, _10
	call	malloc@plt	#
	mv	a5,a0	# tmp152,
	sd	a5,-96(s0)	# tmp152, out
# eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-112(s0)		# tmp155, pos1
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-104(s0)	# tmp153, m
# eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	j	.L11		#
.L12:
# eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lw	a5,-104(s0)		# tmp158, m
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-112(s0)		# tmp160, pos1
	subw	a5,a4,a5	# tmp156, tmp157, tmp159
	sext.w	a5,a5	# _11, tmp156
# eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	slli	a5,a5,3	#, _13, _12
	addi	a5,a5,-8	#, _14, _13
	ld	a4,-96(s0)		# tmp161, out
	add	a4,a4,a5	# _14, _15, tmp161
# eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lw	a5,-104(s0)		# tmp162, m
	slli	a5,a5,3	#, tmp163, tmp162
	addi	a5,a5,-16	#, tmp182, tmp163
	add	a5,a5,s0	#, tmp163, tmp182
	ld	a5,-72(a5)		# _16, planets[m_24]
# eval/problem149//code.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	sd	a5,0(a4)	# _16, *_15
# eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-104(s0)		# tmp166, m
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-104(s0)	# tmp164, m
.L11:
# eval/problem149//code.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-104(s0)		# tmp168, m
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-108(s0)		# tmp170, pos2
	sext.w	a4,a4	# tmp171, tmp167
	sext.w	a5,a5	# tmp172, tmp169
	blt	a4,a5,.L12	#, tmp171, tmp172,
# eval/problem149//code.c:26:     return out;
	ld	a5,-96(s0)		# _25, out
.L13:
# eval/problem149//code.c:27: }
	mv	a4,a5	# <retval>, _25
	la	a5,__stack_chk_guard		# tmp174,
	ld	a3, -24(s0)	# tmp177, D.2633
	ld	a5, 0(a5)	# tmp175, __stack_chk_guard
	xor	a5, a3, a5	# tmp175, tmp177
	li	a3, 0	# tmp177
	beq	a5,zero,.L14	#, tmp175,,
# eval/problem149//code.c:27: }
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	ld	s0,128(sp)		#,
	addi	sp,sp,144	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
