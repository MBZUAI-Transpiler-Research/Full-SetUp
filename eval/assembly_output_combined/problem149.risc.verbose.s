	.file	"problem149.c"
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
	addi	sp,sp,-144	#,,
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	addi	s0,sp,144	#,,
	sd	a0,-120(s0)	# planet1, planet1
	sd	a1,-128(s0)	# planet2, planet2
	sd	a2,-136(s0)	# returnSize, returnSize
# problem149.c:5: char** func0(const char* planet1, const char* planet2, int* returnSize) {
	la	a5,__stack_chk_guard		# tmp90,
	ld	a4, 0(a5)	# tmp176, __stack_chk_guard
	sd	a4, -24(s0)	# tmp176, D.2711
	li	a4, 0	# tmp176
# problem149.c:6:     const char* planets[] = {"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"};
	lla	a5,.LC11	# tmp91,
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
# problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	li	a5,-1		# tmp100,
	sw	a5,-112(s0)	# tmp100, pos1
# problem149.c:7:     int pos1 = -1, pos2 = -1, m;
	li	a5,-1		# tmp101,
	sw	a5,-108(s0)	# tmp101, pos2
# problem149.c:8:     for (m = 0; m < 8; m++) {
	sw	zero,-104(s0)	#, m
# problem149.c:8:     for (m = 0; m < 8; m++) {
	j	.L2		#
.L5:
# problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	lw	a5,-104(s0)		# tmp102, m
	slli	a5,a5,3	#, tmp103, tmp102
	addi	a5,a5,-16	#, tmp180, tmp103
	add	a5,a5,s0	#, tmp103, tmp180
	ld	a5,-72(a5)		# _1, planets[m_23]
	ld	a1,-120(s0)		#, planet1
	mv	a0,a5	#, _1
	call	strcmp@plt	#
	mv	a5,a0	# tmp104,
# problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	bne	a5,zero,.L3	#, _2,,
# problem149.c:9:         if (strcmp(planets[m], planet1) == 0) pos1 = m;
	lw	a5,-104(s0)		# tmp105, m
	sw	a5,-112(s0)	# tmp105, pos1
.L3:
# problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	lw	a5,-104(s0)		# tmp106, m
	slli	a5,a5,3	#, tmp107, tmp106
	addi	a5,a5,-16	#, tmp181, tmp107
	add	a5,a5,s0	#, tmp107, tmp181
	ld	a5,-72(a5)		# _3, planets[m_23]
	ld	a1,-128(s0)		#, planet2
	mv	a0,a5	#, _3
	call	strcmp@plt	#
	mv	a5,a0	# tmp108,
# problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	bne	a5,zero,.L4	#, _4,,
# problem149.c:10:         if (strcmp(planets[m], planet2) == 0) pos2 = m;
	lw	a5,-104(s0)		# tmp109, m
	sw	a5,-108(s0)	# tmp109, pos2
.L4:
# problem149.c:8:     for (m = 0; m < 8; m++) {
	lw	a5,-104(s0)		# tmp112, m
	addiw	a5,a5,1	#, tmp110, tmp111
	sw	a5,-104(s0)	# tmp110, m
.L2:
# problem149.c:8:     for (m = 0; m < 8; m++) {
	lw	a5,-104(s0)		# tmp114, m
	sext.w	a4,a5	# tmp115, tmp113
	li	a5,7		# tmp116,
	ble	a4,a5,.L5	#, tmp115, tmp116,
# problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-112(s0)		# tmp118, pos1
	sext.w	a4,a5	# tmp119, tmp117
	li	a5,-1		# tmp120,
	beq	a4,a5,.L6	#, tmp119, tmp120,
# problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-108(s0)		# tmp122, pos2
	sext.w	a4,a5	# tmp123, tmp121
	li	a5,-1		# tmp124,
	beq	a4,a5,.L6	#, tmp123, tmp124,
# problem149.c:12:     if (pos1 == -1 || pos2 == -1 || pos1 == pos2) {
	lw	a5,-112(s0)		# tmp126, pos1
	mv	a4,a5	# tmp125, tmp126
	lw	a5,-108(s0)		# tmp128, pos2
	sext.w	a4,a4	# tmp129, tmp125
	sext.w	a5,a5	# tmp130, tmp127
	bne	a4,a5,.L7	#, tmp129, tmp130,
.L6:
# problem149.c:13:         *returnSize = 0;
	ld	a5,-136(s0)		# tmp131, returnSize
	sw	zero,0(a5)	#, *returnSize_36(D)
# problem149.c:14:         return NULL;
	li	a5,0		# _25,
	j	.L13		#
.L7:
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-112(s0)		# tmp133, pos1
	mv	a4,a5	# tmp132, tmp133
	lw	a5,-108(s0)		# tmp135, pos2
	sext.w	a4,a4	# tmp136, tmp132
	sext.w	a5,a5	# tmp137, tmp134
	ble	a4,a5,.L9	#, tmp136, tmp137,
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-112(s0)		# tmp138, pos1
	sw	a5,-100(s0)	# tmp138, temp
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-108(s0)		# tmp139, pos2
	sw	a5,-112(s0)	# tmp139, pos1
# problem149.c:16:     if (pos1 > pos2) { int temp = pos1; pos1 = pos2; pos2 = temp; }
	lw	a5,-100(s0)		# tmp140, temp
	sw	a5,-108(s0)	# tmp140, pos2
.L9:
# problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	lw	a5,-108(s0)		# tmp143, pos2
	mv	a4,a5	# tmp142, tmp143
	lw	a5,-112(s0)		# tmp145, pos1
	subw	a5,a4,a5	# tmp141, tmp142, tmp144
	sext.w	a5,a5	# _5, tmp141
# problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	addiw	a5,a5,-1	#, tmp146, _5
	sext.w	a4,a5	# _6, tmp146
# problem149.c:17:     *returnSize = pos2 - pos1 - 1;
	ld	a5,-136(s0)		# tmp147, returnSize
	sw	a4,0(a5)	# _6, *returnSize_36(D)
# problem149.c:18:     if (*returnSize <= 0) {
	ld	a5,-136(s0)		# tmp148, returnSize
	lw	a5,0(a5)		# _7, *returnSize_36(D)
# problem149.c:18:     if (*returnSize <= 0) {
	bgt	a5,zero,.L10	#, tmp149,,
# problem149.c:19:         *returnSize = 0;
	ld	a5,-136(s0)		# tmp150, returnSize
	sw	zero,0(a5)	#, *returnSize_36(D)
# problem149.c:20:         return NULL;
	li	a5,0		# _25,
	j	.L13		#
.L10:
# problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	ld	a5,-136(s0)		# tmp151, returnSize
	lw	a5,0(a5)		# _8, *returnSize_36(D)
# problem149.c:22:     char** out = malloc(*returnSize * sizeof(char*));
	slli	a5,a5,3	#, _10, _9
	mv	a0,a5	#, _10
	call	malloc@plt	#
	mv	a5,a0	# tmp152,
	sd	a5,-96(s0)	# tmp152, out
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-112(s0)		# tmp155, pos1
	addiw	a5,a5,1	#, tmp153, tmp154
	sw	a5,-104(s0)	# tmp153, m
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	j	.L11		#
.L12:
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lw	a5,-104(s0)		# tmp158, m
	mv	a4,a5	# tmp157, tmp158
	lw	a5,-112(s0)		# tmp160, pos1
	subw	a5,a4,a5	# tmp156, tmp157, tmp159
	sext.w	a5,a5	# _11, tmp156
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	slli	a5,a5,3	#, _13, _12
	addi	a5,a5,-8	#, _14, _13
	ld	a4,-96(s0)		# tmp161, out
	add	a4,a4,a5	# _14, _15, tmp161
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	lw	a5,-104(s0)		# tmp162, m
	slli	a5,a5,3	#, tmp163, tmp162
	addi	a5,a5,-16	#, tmp182, tmp163
	add	a5,a5,s0	#, tmp163, tmp182
	ld	a5,-72(a5)		# _16, planets[m_24]
# problem149.c:24:         out[m - pos1 - 1] = (char*)planets[m];
	sd	a5,0(a4)	# _16, *_15
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-104(s0)		# tmp166, m
	addiw	a5,a5,1	#, tmp164, tmp165
	sw	a5,-104(s0)	# tmp164, m
.L11:
# problem149.c:23:     for (m = pos1 + 1; m < pos2; m++) {
	lw	a5,-104(s0)		# tmp168, m
	mv	a4,a5	# tmp167, tmp168
	lw	a5,-108(s0)		# tmp170, pos2
	sext.w	a4,a4	# tmp171, tmp167
	sext.w	a5,a5	# tmp172, tmp169
	blt	a4,a5,.L12	#, tmp171, tmp172,
# problem149.c:26:     return out;
	ld	a5,-96(s0)		# _25, out
.L13:
# problem149.c:27: }
	mv	a4,a5	# <retval>, _25
	la	a5,__stack_chk_guard		# tmp174,
	ld	a3, -24(s0)	# tmp177, D.2711
	ld	a5, 0(a5)	# tmp175, __stack_chk_guard
	xor	a5, a3, a5	# tmp175, tmp177
	li	a3, 0	# tmp177
	beq	a5,zero,.L14	#, tmp175,,
# problem149.c:27: }
	call	__stack_chk_fail@plt	#
.L14:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	ld	s0,128(sp)		#,
	addi	sp,sp,144	#,,
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
	sd	a1,-48(s0)	# b, b
	mv	a5,a2	# tmp83, a_size
	mv	a4,a3	# tmp85, b_size
	sw	a5,-52(s0)	# tmp84, a_size
	mv	a5,a4	# tmp86, tmp85
	sw	a5,-56(s0)	# tmp86, b_size
# problem149.c:37:     if (a_size != b_size) return 0;
	lw	a5,-52(s0)		# tmp88, a_size
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-56(s0)		# tmp90, b_size
	sext.w	a4,a4	# tmp91, tmp87
	sext.w	a5,a5	# tmp92, tmp89
	beq	a4,a5,.L16	#, tmp91, tmp92,
# problem149.c:37:     if (a_size != b_size) return 0;
	li	a5,0		# _11,
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
	ld	a4,-40(s0)		# tmp93, a
	add	a5,a4,a5	# _2, _3, tmp93
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-48(s0)		# tmp94, b
	add	a5,a4,a5	# _6, _7, tmp94
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	beq	a5,zero,.L19	#, _9,,
# problem149.c:39:         if (strcmp(a[i], b[i]) != 0) return 0;
	li	a5,0		# _11,
	j	.L17		#
.L19:
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L18:
# problem149.c:38:     for (int i = 0; i < a_size; i++) {
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-52(s0)		# tmp102, a_size
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L20	#, tmp103, tmp104,
# problem149.c:41:     return 1;
	li	a5,1		# _11,
.L17:
# problem149.c:42: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
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
	addi	sp,sp,-144	#,,
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	addi	s0,sp,144	#,,
# problem149.c:44: int main() {
	la	a5,__stack_chk_guard		# tmp85,
	ld	a4, 0(a5)	# tmp122, __stack_chk_guard
	sd	a4, -24(s0)	# tmp122, D.2715
	li	a4, 0	# tmp122
# problem149.c:48:     const char* test1[] = {"Saturn", "Uranus"};
	lla	a5,.LC5	# tmp86,
	sd	a5,-120(s0)	# tmp86, test1[0]
	lla	a5,.LC6	# tmp87,
	sd	a5,-112(s0)	# tmp87, test1[1]
# problem149.c:49:     result = func0("Jupiter", "Neptune", &size);
	addi	a5,s0,-140	#, tmp88,
	mv	a2,a5	#, tmp88
	lla	a1,.LC7	#,
	lla	a0,.LC4	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:50:     assert(issame(result, test1, size, 2));
	lw	a4,-140(s0)		# size.0_1, size
	addi	a5,s0,-120	#, tmp89,
	li	a3,2		#,
	mv	a2,a4	#, size.0_1
	mv	a1,a5	#, tmp89
	ld	a0,-136(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp90,
	bne	a5,zero,.L22	#, _2,,
# problem149.c:50:     assert(issame(result, test1, size, 2));
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
	lla	a5,.LC1	# tmp91,
	sd	a5,-128(s0)	# tmp91, test2[0]
# problem149.c:54:     result = func0("Earth", "Mercury", &size);
	addi	a5,s0,-140	#, tmp92,
	mv	a2,a5	#, tmp92
	lla	a1,.LC0	#,
	lla	a0,.LC2	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:55:     assert(issame(result, test2, size, 1));
	lw	a4,-140(s0)		# size.1_3, size
	addi	a5,s0,-128	#, tmp93,
	li	a3,1		#,
	mv	a2,a4	#, size.1_3
	mv	a1,a5	#, tmp93
	ld	a0,-136(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp94,
	bne	a5,zero,.L23	#, _4,,
# problem149.c:55:     assert(issame(result, test2, size, 1));
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
	lla	a5,.LC15	# tmp95,
	ld	a1,0(a5)		# tmp96,
	ld	a2,8(a5)		# tmp97,
	ld	a3,16(a5)		# tmp98,
	ld	a4,24(a5)		# tmp99,
	ld	a5,32(a5)		# tmp100,
	sd	a1,-104(s0)	# tmp96, test3
	sd	a2,-96(s0)	# tmp97, test3
	sd	a3,-88(s0)	# tmp98, test3
	sd	a4,-80(s0)	# tmp99, test3
	sd	a5,-72(s0)	# tmp100, test3
# problem149.c:59:     result = func0("Mercury", "Uranus", &size);
	addi	a5,s0,-140	#, tmp101,
	mv	a2,a5	#, tmp101
	lla	a1,.LC6	#,
	lla	a0,.LC0	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:60:     assert(issame(result, test3, size, 5));
	lw	a4,-140(s0)		# size.2_5, size
	addi	a5,s0,-104	#, tmp102,
	li	a3,5		#,
	mv	a2,a4	#, size.2_5
	mv	a1,a5	#, tmp102
	ld	a0,-136(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp103,
	bne	a5,zero,.L24	#, _6,,
# problem149.c:60:     assert(issame(result, test3, size, 5));
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
	lla	a5,.LC17	# tmp104,
	ld	a1,0(a5)		# tmp105,
	ld	a2,8(a5)		# tmp106,
	ld	a3,16(a5)		# tmp107,
	ld	a4,24(a5)		# tmp108,
	ld	a5,32(a5)		# tmp109,
	sd	a1,-64(s0)	# tmp105, test4
	sd	a2,-56(s0)	# tmp106, test4
	sd	a3,-48(s0)	# tmp107, test4
	sd	a4,-40(s0)	# tmp108, test4
	sd	a5,-32(s0)	# tmp109, test4
# problem149.c:64:     result = func0("Neptune", "Venus", &size);
	addi	a5,s0,-140	#, tmp110,
	mv	a2,a5	#, tmp110
	lla	a1,.LC1	#,
	lla	a0,.LC7	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:65:     assert(issame(result, test4, size, 5));
	lw	a4,-140(s0)		# size.3_7, size
	addi	a5,s0,-64	#, tmp111,
	li	a3,5		#,
	mv	a2,a4	#, size.3_7
	mv	a1,a5	#, tmp111
	ld	a0,-136(s0)		#, result
	call	issame		#
	mv	a5,a0	# tmp112,
	bne	a5,zero,.L25	#, _8,,
# problem149.c:65:     assert(issame(result, test4, size, 5));
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
	addi	a5,s0,-140	#, tmp113,
	mv	a2,a5	#, tmp113
	lla	a1,.LC2	#,
	lla	a0,.LC2	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:69:     assert(size == 0 && result == NULL);
	lw	a5,-140(s0)		# size.4_9, size
	bne	a5,zero,.L26	#, size.4_9,,
# problem149.c:69:     assert(size == 0 && result == NULL);
	ld	a5,-136(s0)		# tmp114, result
	beq	a5,zero,.L34	#, tmp114,,
.L26:
# problem149.c:69:     assert(size == 0 && result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,69		#,
	lla	a1,.LC12	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L34:
# problem149.c:71:     result = func0("Mars", "Earth", &size);
	addi	a5,s0,-140	#, tmp115,
	mv	a2,a5	#, tmp115
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:72:     assert(size == 0 && result == NULL);
	lw	a5,-140(s0)		# size.5_10, size
	bne	a5,zero,.L28	#, size.5_10,,
# problem149.c:72:     assert(size == 0 && result == NULL);
	ld	a5,-136(s0)		# tmp116, result
	beq	a5,zero,.L35	#, tmp116,,
.L28:
# problem149.c:72:     assert(size == 0 && result == NULL);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,72		#,
	lla	a1,.LC12	#,
	lla	a0,.LC19	#,
	call	__assert_fail@plt	#
.L35:
# problem149.c:74:     result = func0("Jupiter", "Makemake", &size);
	addi	a5,s0,-140	#, tmp117,
	mv	a2,a5	#, tmp117
	lla	a1,.LC20	#,
	lla	a0,.LC4	#,
	call	func0		#
	sd	a0,-136(s0)	#, result
# problem149.c:75:     assert(size == 0 && result == NULL);
	lw	a5,-140(s0)		# size.6_11, size
	bne	a5,zero,.L30	#, size.6_11,,
# problem149.c:75:     assert(size == 0 && result == NULL);
	ld	a5,-136(s0)		# tmp118, result
	beq	a5,zero,.L36	#, tmp118,,
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
	la	a5,__stack_chk_guard		# tmp120,
	ld	a3, -24(s0)	# tmp123, D.2715
	ld	a5, 0(a5)	# tmp121, __stack_chk_guard
	xor	a5, a3, a5	# tmp121, tmp123
	li	a3, 0	# tmp123
	beq	a5,zero,.L33	#, tmp121,,
	call	__stack_chk_fail@plt	#
.L33:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	ld	s0,128(sp)		#,
	addi	sp,sp,144	#,,
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
