	.file	"problem70.c"
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
	addi	sp,sp,-48	#,,
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	addi	s0,sp,48	#,,
	sd	a0,-40(s0)	# lst, lst
	mv	a5,a1	# tmp104, size
	sw	a5,-44(s0)	# tmp105, size
# problem70.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	lw	a5,-44(s0)		# tmp108, size
	addiw	a5,a5,1	#, tmp106, tmp107
	sext.w	a5,a5	# _1, tmp106
# problem70.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	li	a1,4		#,
	mv	a0,a5	#, _2
	call	calloc@plt	#
	mv	a5,a0	# tmp109,
	sd	a5,-24(s0)	# tmp109, freq
# problem70.c:6:     int max = -1;
	li	a5,-1		# tmp110,
	sw	a5,-32(s0)	# tmp110, max
# problem70.c:8:     for (int i = 0; i < size; i++) {
	sw	zero,-28(s0)	#, i
# problem70.c:8:     for (int i = 0; i < size; i++) {
	j	.L2		#
.L4:
# problem70.c:9:         freq[lst[i]]++;
	lw	a5,-28(s0)		# _3, i
	slli	a5,a5,2	#, _4, _3
	ld	a4,-40(s0)		# tmp111, lst
	add	a5,a4,a5	# _4, _5, tmp111
	lw	a5,0(a5)		# _6, *_5
# problem70.c:9:         freq[lst[i]]++;
	slli	a5,a5,2	#, _8, _7
	ld	a4,-24(s0)		# tmp112, freq
	add	a5,a4,a5	# _8, _9, tmp112
	lw	a4,0(a5)		# _10, *_9
# problem70.c:9:         freq[lst[i]]++;
	addiw	a4,a4,1	#, tmp113, _10
	sext.w	a4,a4	# _11, tmp113
	sw	a4,0(a5)	# _11, *_9
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-28(s0)		# _12, i
	slli	a5,a5,2	#, _13, _12
	ld	a4,-40(s0)		# tmp114, lst
	add	a5,a4,a5	# _13, _14, tmp114
	lw	a5,0(a5)		# _15, *_14
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	slli	a5,a5,2	#, _17, _16
	ld	a4,-24(s0)		# tmp115, freq
	add	a5,a4,a5	# _17, _18, tmp115
	lw	a3,0(a5)		# _19, *_18
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-28(s0)		# _20, i
	slli	a5,a5,2	#, _21, _20
	ld	a4,-40(s0)		# tmp116, lst
	add	a5,a4,a5	# _21, _22, tmp116
	lw	a5,0(a5)		# _23, *_22
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	mv	a4,a3	# tmp117, _19
	blt	a4,a5,.L3	#, tmp117, tmp118,
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-28(s0)		# _24, i
	slli	a5,a5,2	#, _25, _24
	ld	a4,-40(s0)		# tmp119, lst
	add	a5,a4,a5	# _25, _26, tmp119
	lw	a4,0(a5)		# _27, *_26
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	lw	a5,-32(s0)		# tmp121, max
	sext.w	a5,a5	# tmp122, tmp120
	bge	a5,a4,.L3	#, tmp122, tmp123,
# problem70.c:11:             max = lst[i];
	lw	a5,-28(s0)		# _28, i
	slli	a5,a5,2	#, _29, _28
	ld	a4,-40(s0)		# tmp124, lst
	add	a5,a4,a5	# _29, _30, tmp124
# problem70.c:11:             max = lst[i];
	lw	a5,0(a5)		# tmp125, *_30
	sw	a5,-32(s0)	# tmp125, max
.L3:
# problem70.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp128, i
	addiw	a5,a5,1	#, tmp126, tmp127
	sw	a5,-28(s0)	# tmp126, i
.L2:
# problem70.c:8:     for (int i = 0; i < size; i++) {
	lw	a5,-28(s0)		# tmp130, i
	mv	a4,a5	# tmp129, tmp130
	lw	a5,-44(s0)		# tmp132, size
	sext.w	a4,a4	# tmp133, tmp129
	sext.w	a5,a5	# tmp134, tmp131
	blt	a4,a5,.L4	#, tmp133, tmp134,
# problem70.c:15:     free(freq);
	ld	a0,-24(s0)		#, freq
	call	free@plt	#
# problem70.c:16:     return max;
	lw	a5,-32(s0)		# _42, max
# problem70.c:17: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	ld	s0,32(sp)		#,
	addi	sp,sp,48	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.word	5
	.word	5
	.word	5
	.word	5
	.word	1
	.align	3
.LC1:
	.word	4
	.word	1
	.word	4
	.word	1
	.word	4
	.word	4
	.align	3
.LC2:
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.word	8
	.align	3
.LC3:
	.word	2
	.word	3
	.word	3
	.word	2
	.word	2
	.align	3
.LC4:
	.word	2
	.word	7
	.word	8
	.word	8
	.word	4
	.word	8
	.word	7
	.word	3
	.word	9
	.word	6
	.word	5
	.word	10
	.word	4
	.word	3
	.word	6
	.word	7
	.word	1
	.word	7
	.word	4
	.word	10
	.word	8
	.word	1
	.align	3
.LC5:
	.word	3
	.word	2
	.word	8
	.word	2
	.align	3
.LC6:
	.word	6
	.word	7
	.word	1
	.word	8
	.word	8
	.word	10
	.word	5
	.word	8
	.word	5
	.word	3
	.word	10
	.align	3
.LC7:
	.word	8
	.word	8
	.word	3
	.word	6
	.word	5
	.word	6
	.word	4
	.align	3
.LC8:
	.word	6
	.word	9
	.word	6
	.word	7
	.word	1
	.word	4
	.word	7
	.word	1
	.word	8
	.word	8
	.word	9
	.word	8
	.word	10
	.word	10
	.word	8
	.word	4
	.word	10
	.word	4
	.word	10
	.word	1
	.word	2
	.word	9
	.word	5
	.word	7
	.word	9
	.align	3
.LC9:
	.word	1
	.word	9
	.word	10
	.word	1
	.word	3
	.align	3
.LC10:
	.word	6
	.word	9
	.word	7
	.word	5
	.word	8
	.word	7
	.word	5
	.word	3
	.word	7
	.word	5
	.word	10
	.word	10
	.word	3
	.word	6
	.word	10
	.word	2
	.word	8
	.word	6
	.word	5
	.word	4
	.word	9
	.word	5
	.word	3
	.word	10
	.align	3
.LC11:
	.word	8
	.word	8
	.word	10
	.word	6
	.word	4
	.word	3
	.word	5
	.word	8
	.word	2
	.word	4
	.word	2
	.word	8
	.word	4
	.word	6
	.word	10
	.word	4
	.word	2
	.word	1
	.word	10
	.word	2
	.word	1
	.word	1
	.word	5
	.align	3
.LC12:
	.word	2
	.word	10
	.word	4
	.word	8
	.word	2
	.word	10
	.word	5
	.word	1
	.word	2
	.word	9
	.word	5
	.word	5
	.word	6
	.word	3
	.word	8
	.word	6
	.word	4
	.word	10
	.align	3
.LC13:
	.word	1
	.word	6
	.word	10
	.word	1
	.word	6
	.word	9
	.word	10
	.word	8
	.word	6
	.word	8
	.word	7
	.word	3
	.align	3
.LC14:
	.word	9
	.word	2
	.word	4
	.word	1
	.word	5
	.word	1
	.word	5
	.word	2
	.word	5
	.word	7
	.word	7
	.word	7
	.word	3
	.word	10
	.word	1
	.word	5
	.word	4
	.word	2
	.word	8
	.word	4
	.word	1
	.word	9
	.word	10
	.word	7
	.word	10
	.word	2
	.word	8
	.word	10
	.word	9
	.word	4
	.align	3
.LC15:
	.word	2
	.word	6
	.word	4
	.word	2
	.word	8
	.word	7
	.word	5
	.word	6
	.word	4
	.word	10
	.word	4
	.word	6
	.word	3
	.word	7
	.word	8
	.word	8
	.word	3
	.word	1
	.word	4
	.word	2
	.word	2
	.word	10
	.word	7
	.align	3
.LC16:
	.word	9
	.word	8
	.word	6
	.word	10
	.word	2
	.word	6
	.word	10
	.word	2
	.word	7
	.word	8
	.word	10
	.word	3
	.word	8
	.word	2
	.word	6
	.word	2
	.word	3
	.word	1
	.align	3
.LC17:
	.word	5
	.word	5
	.word	3
	.word	9
	.word	5
	.word	6
	.word	3
	.word	2
	.word	8
	.word	5
	.word	6
	.word	10
	.word	10
	.word	6
	.word	8
	.word	4
	.word	10
	.word	7
	.word	7
	.word	10
	.word	8
	.align	3
.LC18:
	.word	9
	.word	7
	.word	7
	.word	2
	.word	4
	.word	7
	.word	2
	.word	10
	.word	9
	.word	7
	.word	5
	.word	7
	.word	2
	.align	3
.LC19:
	.word	5
	.word	4
	.word	10
	.word	2
	.word	1
	.word	1
	.word	10
	.word	3
	.word	6
	.word	1
	.word	8
	.align	3
.LC20:
	.word	7
	.word	9
	.word	9
	.word	9
	.word	3
	.word	4
	.word	1
	.word	5
	.word	9
	.word	1
	.word	2
	.word	1
	.word	1
	.word	10
	.word	7
	.word	5
	.word	6
	.word	7
	.word	6
	.word	7
	.word	7
	.word	6
	.align	3
.LC21:
	.word	3
	.word	10
	.word	10
	.word	9
	.word	2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-1376	#,,
	sd	ra,1368(sp)	#,
	sd	s0,1360(sp)	#,
	addi	s0,sp,1376	#,,
# problem70.c:23: int main() {
	la	a5,__stack_chk_guard		# tmp74,
	ld	a4, 0(a5)	# tmp249, __stack_chk_guard
	sd	a4, -24(s0)	# tmp249, D.2495
	li	a4, 0	# tmp249
# problem70.c:24:     int arr1[] = {5, 5, 5, 5, 1};
	lla	a5,.LC0	# tmp75,
	ld	a4,0(a5)		# tmp76,
	sd	a4,-1328(s0)	# tmp76, arr1
	ld	a4,8(a5)		# tmp77,
	sd	a4,-1320(s0)	# tmp77, arr1
	lw	a5,16(a5)		# tmp78,
	sw	a5,-1312(s0)	# tmp78, arr1
# problem70.c:25:     int arr2[] = {4, 1, 4, 1, 4, 4};
	lla	a5,.LC1	# tmp79,
	ld	a4,0(a5)		# tmp80,
	sd	a4,-1232(s0)	# tmp80, arr2
	ld	a4,8(a5)		# tmp81,
	sd	a4,-1224(s0)	# tmp81, arr2
	ld	a5,16(a5)		# tmp82,
	sd	a5,-1216(s0)	# tmp82, arr2
# problem70.c:26:     int arr3[] = {3, 3};
	li	a5,3		# tmp83,
	sw	a5,-1352(s0)	# tmp83, arr3[0]
	li	a5,3		# tmp84,
	sw	a5,-1348(s0)	# tmp84, arr3[1]
# problem70.c:27:     int arr4[] = {8, 8, 8, 8, 8, 8, 8, 8};
	lla	a5,.LC2	# tmp85,
	ld	a2,0(a5)		# tmp86,
	ld	a3,8(a5)		# tmp87,
	ld	a4,16(a5)		# tmp88,
	ld	a5,24(a5)		# tmp89,
	sd	a2,-1176(s0)	# tmp86, arr4
	sd	a3,-1168(s0)	# tmp87, arr4
	sd	a4,-1160(s0)	# tmp88, arr4
	sd	a5,-1152(s0)	# tmp89, arr4
# problem70.c:28:     int arr5[] = {2, 3, 3, 2, 2};
	lla	a5,.LC3	# tmp90,
	ld	a4,0(a5)		# tmp91,
	sd	a4,-1304(s0)	# tmp91, arr5
	ld	a4,8(a5)		# tmp92,
	sd	a4,-1296(s0)	# tmp92, arr5
	lw	a5,16(a5)		# tmp93,
	sw	a5,-1288(s0)	# tmp93, arr5
# problem70.c:29:     int arr6[] = {2, 7, 8, 8, 4, 8, 7, 3, 9, 6, 5, 10, 4, 3, 6, 7, 1, 7, 4, 10, 8, 1};
	lla	a5,.LC4	# tmp94,
	ld	t4,0(a5)		# tmp95,
	ld	t3,8(a5)		# tmp96,
	ld	t1,16(a5)		# tmp97,
	ld	a7,24(a5)		# tmp98,
	ld	a6,32(a5)		# tmp99,
	ld	a0,40(a5)		# tmp100,
	ld	a1,48(a5)		# tmp101,
	ld	a2,56(a5)		# tmp102,
	ld	a3,64(a5)		# tmp103,
	ld	a4,72(a5)		# tmp104,
	ld	a5,80(a5)		# tmp105,
	sd	t4,-712(s0)	# tmp95, arr6
	sd	t3,-704(s0)	# tmp96, arr6
	sd	t1,-696(s0)	# tmp97, arr6
	sd	a7,-688(s0)	# tmp98, arr6
	sd	a6,-680(s0)	# tmp99, arr6
	sd	a0,-672(s0)	# tmp100, arr6
	sd	a1,-664(s0)	# tmp101, arr6
	sd	a2,-656(s0)	# tmp102, arr6
	sd	a3,-648(s0)	# tmp103, arr6
	sd	a4,-640(s0)	# tmp104, arr6
	sd	a5,-632(s0)	# tmp105, arr6
# problem70.c:30:     int arr7[] = {3, 2, 8, 2};
	lla	a5,.LC5	# tmp106,
	ld	a4,0(a5)		# tmp107,
	sd	a4,-1344(s0)	# tmp107, arr7
	ld	a5,8(a5)		# tmp108,
	sd	a5,-1336(s0)	# tmp108, arr7
# problem70.c:31:     int arr8[] = {6, 7, 1, 8, 8, 10, 5, 8, 5, 3, 10};
	lla	a5,.LC6	# tmp109,
	ld	a0,0(a5)		# tmp110,
	ld	a1,8(a5)		# tmp111,
	ld	a2,16(a5)		# tmp112,
	ld	a3,24(a5)		# tmp113,
	ld	a4,32(a5)		# tmp114,
	sd	a0,-1144(s0)	# tmp110, arr8
	sd	a1,-1136(s0)	# tmp111, arr8
	sd	a2,-1128(s0)	# tmp112, arr8
	sd	a3,-1120(s0)	# tmp113, arr8
	sd	a4,-1112(s0)	# tmp114, arr8
	lw	a5,40(a5)		# tmp115,
	sw	a5,-1104(s0)	# tmp115, arr8
# problem70.c:32:     int arr9[] = {8, 8, 3, 6, 5, 6, 4};
	lla	a5,.LC7	# tmp116,
	ld	a2,0(a5)		# tmp117,
	ld	a3,8(a5)		# tmp118,
	ld	a4,16(a5)		# tmp119,
	sd	a2,-1208(s0)	# tmp117, arr9
	sd	a3,-1200(s0)	# tmp118, arr9
	sd	a4,-1192(s0)	# tmp119, arr9
	lw	a5,24(a5)		# tmp120,
	sw	a5,-1184(s0)	# tmp120, arr9
# problem70.c:33:     int arr10[] = {6, 9, 6, 7, 1, 4, 7, 1, 8, 8, 9, 8, 10, 10, 8, 4, 10, 4, 10, 1, 2, 9, 5, 7, 9};
	lla	a4,.LC8	# tmp121,
	addi	a5,s0,-248	#, tmp122,
	mv	a3,a4	# tmp123, tmp121
	li	a4,100		# tmp124,
	mv	a2,a4	#, tmp124
	mv	a1,a3	#, tmp123
	mv	a0,a5	#, tmp122
	call	memcpy@plt	#
# problem70.c:34:     int arr11[] = {1, 9, 10, 1, 3};
	lla	a5,.LC9	# tmp126,
	ld	a4,0(a5)		# tmp127,
	sd	a4,-1280(s0)	# tmp127, arr11
	ld	a4,8(a5)		# tmp128,
	sd	a4,-1272(s0)	# tmp128, arr11
	lw	a5,16(a5)		# tmp129,
	sw	a5,-1264(s0)	# tmp129, arr11
# problem70.c:35:     int arr12[] = {6, 9, 7, 5, 8, 7, 5, 3, 7, 5, 10, 10, 3, 6, 10, 2, 8, 6, 5, 4, 9, 5, 3, 10};
	lla	a5,.LC10	# tmp130,
	ld	t5,0(a5)		# tmp131,
	ld	t4,8(a5)		# tmp132,
	ld	t3,16(a5)		# tmp133,
	ld	t1,24(a5)		# tmp134,
	ld	a7,32(a5)		# tmp135,
	ld	a6,40(a5)		# tmp136,
	ld	a0,48(a5)		# tmp137,
	ld	a1,56(a5)		# tmp138,
	ld	a2,64(a5)		# tmp139,
	ld	a3,72(a5)		# tmp140,
	ld	a4,80(a5)		# tmp141,
	ld	a5,88(a5)		# tmp142,
	sd	t5,-344(s0)	# tmp131, arr12
	sd	t4,-336(s0)	# tmp132, arr12
	sd	t3,-328(s0)	# tmp133, arr12
	sd	t1,-320(s0)	# tmp134, arr12
	sd	a7,-312(s0)	# tmp135, arr12
	sd	a6,-304(s0)	# tmp136, arr12
	sd	a0,-296(s0)	# tmp137, arr12
	sd	a1,-288(s0)	# tmp138, arr12
	sd	a2,-280(s0)	# tmp139, arr12
	sd	a3,-272(s0)	# tmp140, arr12
	sd	a4,-264(s0)	# tmp141, arr12
	sd	a5,-256(s0)	# tmp142, arr12
# problem70.c:36:     int arr13[] = {1};
	li	a5,1		# tmp143,
	sw	a5,-1368(s0)	# tmp143, arr13[0]
# problem70.c:37:     int arr14[] = {8, 8, 10, 6, 4, 3, 5, 8, 2, 4, 2, 8, 4, 6, 10, 4, 2, 1, 10, 2, 1, 1, 5};
	lla	a5,.LC11	# tmp144,
	ld	t5,0(a5)		# tmp145,
	ld	t4,8(a5)		# tmp146,
	ld	t3,16(a5)		# tmp147,
	ld	t1,24(a5)		# tmp148,
	ld	a7,32(a5)		# tmp149,
	ld	a6,40(a5)		# tmp150,
	ld	a0,48(a5)		# tmp151,
	ld	a1,56(a5)		# tmp152,
	ld	a2,64(a5)		# tmp153,
	ld	a3,72(a5)		# tmp154,
	ld	a4,80(a5)		# tmp155,
	sd	t5,-536(s0)	# tmp145, arr14
	sd	t4,-528(s0)	# tmp146, arr14
	sd	t3,-520(s0)	# tmp147, arr14
	sd	t1,-512(s0)	# tmp148, arr14
	sd	a7,-504(s0)	# tmp149, arr14
	sd	a6,-496(s0)	# tmp150, arr14
	sd	a0,-488(s0)	# tmp151, arr14
	sd	a1,-480(s0)	# tmp152, arr14
	sd	a2,-472(s0)	# tmp153, arr14
	sd	a3,-464(s0)	# tmp154, arr14
	sd	a4,-456(s0)	# tmp155, arr14
	lw	a5,88(a5)		# tmp156,
	sw	a5,-448(s0)	# tmp156, arr14
# problem70.c:38:     int arr15[] = {2, 10, 4, 8, 2, 10, 5, 1, 2, 9, 5, 5, 6, 3, 8, 6, 4, 10};
	lla	a5,.LC12	# tmp157,
	ld	t1,0(a5)		# tmp158,
	ld	a7,8(a5)		# tmp159,
	ld	a6,16(a5)		# tmp160,
	ld	a0,24(a5)		# tmp161,
	ld	a1,32(a5)		# tmp162,
	ld	a2,40(a5)		# tmp163,
	ld	a3,48(a5)		# tmp164,
	ld	a4,56(a5)		# tmp165,
	ld	a5,64(a5)		# tmp166,
	sd	t1,-944(s0)	# tmp158, arr15
	sd	a7,-936(s0)	# tmp159, arr15
	sd	a6,-928(s0)	# tmp160, arr15
	sd	a0,-920(s0)	# tmp161, arr15
	sd	a1,-912(s0)	# tmp162, arr15
	sd	a2,-904(s0)	# tmp163, arr15
	sd	a3,-896(s0)	# tmp164, arr15
	sd	a4,-888(s0)	# tmp165, arr15
	sd	a5,-880(s0)	# tmp166, arr15
# problem70.c:39:     int arr16[] = {1, 6, 10, 1, 6, 9, 10, 8, 6, 8, 7, 3};
	lla	a5,.LC13	# tmp167,
	ld	a0,0(a5)		# tmp168,
	ld	a1,8(a5)		# tmp169,
	ld	a2,16(a5)		# tmp170,
	ld	a3,24(a5)		# tmp171,
	ld	a4,32(a5)		# tmp172,
	ld	a5,40(a5)		# tmp173,
	sd	a0,-1048(s0)	# tmp168, arr16
	sd	a1,-1040(s0)	# tmp169, arr16
	sd	a2,-1032(s0)	# tmp170, arr16
	sd	a3,-1024(s0)	# tmp171, arr16
	sd	a4,-1016(s0)	# tmp172, arr16
	sd	a5,-1008(s0)	# tmp173, arr16
# problem70.c:40:     int arr17[] = {9, 2, 4, 1, 5, 1, 5, 2, 5, 7, 7, 7, 3, 10, 1, 5, 4, 2, 8, 4, 1, 9, 10, 7, 10, 2, 8, 10, 9, 4};
	lla	a4,.LC14	# tmp174,
	addi	a5,s0,-144	#, tmp175,
	mv	a3,a4	# tmp176, tmp174
	li	a4,120		# tmp177,
	mv	a2,a4	#, tmp177
	mv	a1,a3	#, tmp176
	mv	a0,a5	#, tmp175
	call	memcpy@plt	#
# problem70.c:41:     int arr18[] = {2, 6, 4, 2, 8, 7, 5, 6, 4, 10, 4, 6, 3, 7, 8, 8, 3, 1, 4, 2, 2, 10, 7};
	lla	a5,.LC15	# tmp179,
	ld	t5,0(a5)		# tmp180,
	ld	t4,8(a5)		# tmp181,
	ld	t3,16(a5)		# tmp182,
	ld	t1,24(a5)		# tmp183,
	ld	a7,32(a5)		# tmp184,
	ld	a6,40(a5)		# tmp185,
	ld	a0,48(a5)		# tmp186,
	ld	a1,56(a5)		# tmp187,
	ld	a2,64(a5)		# tmp188,
	ld	a3,72(a5)		# tmp189,
	ld	a4,80(a5)		# tmp190,
	sd	t5,-440(s0)	# tmp180, arr18
	sd	t4,-432(s0)	# tmp181, arr18
	sd	t3,-424(s0)	# tmp182, arr18
	sd	t1,-416(s0)	# tmp183, arr18
	sd	a7,-408(s0)	# tmp184, arr18
	sd	a6,-400(s0)	# tmp185, arr18
	sd	a0,-392(s0)	# tmp186, arr18
	sd	a1,-384(s0)	# tmp187, arr18
	sd	a2,-376(s0)	# tmp188, arr18
	sd	a3,-368(s0)	# tmp189, arr18
	sd	a4,-360(s0)	# tmp190, arr18
	lw	a5,88(a5)		# tmp191,
	sw	a5,-352(s0)	# tmp191, arr18
# problem70.c:42:     int arr19[] = {9, 8, 6, 10, 2, 6, 10, 2, 7, 8, 10, 3, 8, 2, 6, 2, 3, 1};
	lla	a5,.LC16	# tmp192,
	ld	t1,0(a5)		# tmp193,
	ld	a7,8(a5)		# tmp194,
	ld	a6,16(a5)		# tmp195,
	ld	a0,24(a5)		# tmp196,
	ld	a1,32(a5)		# tmp197,
	ld	a2,40(a5)		# tmp198,
	ld	a3,48(a5)		# tmp199,
	ld	a4,56(a5)		# tmp200,
	ld	a5,64(a5)		# tmp201,
	sd	t1,-872(s0)	# tmp193, arr19
	sd	a7,-864(s0)	# tmp194, arr19
	sd	a6,-856(s0)	# tmp195, arr19
	sd	a0,-848(s0)	# tmp196, arr19
	sd	a1,-840(s0)	# tmp197, arr19
	sd	a2,-832(s0)	# tmp198, arr19
	sd	a3,-824(s0)	# tmp199, arr19
	sd	a4,-816(s0)	# tmp200, arr19
	sd	a5,-808(s0)	# tmp201, arr19
# problem70.c:43:     int arr20[] = {5, 5, 3, 9, 5, 6, 3, 2, 8, 5, 6, 10, 10, 6, 8, 4, 10, 7, 7, 10, 8};
	lla	a5,.LC17	# tmp202,
	ld	t4,0(a5)		# tmp203,
	ld	t3,8(a5)		# tmp204,
	ld	t1,16(a5)		# tmp205,
	ld	a7,24(a5)		# tmp206,
	ld	a6,32(a5)		# tmp207,
	ld	a0,40(a5)		# tmp208,
	ld	a1,48(a5)		# tmp209,
	ld	a2,56(a5)		# tmp210,
	ld	a3,64(a5)		# tmp211,
	ld	a4,72(a5)		# tmp212,
	sd	t4,-800(s0)	# tmp203, arr20
	sd	t3,-792(s0)	# tmp204, arr20
	sd	t1,-784(s0)	# tmp205, arr20
	sd	a7,-776(s0)	# tmp206, arr20
	sd	a6,-768(s0)	# tmp207, arr20
	sd	a0,-760(s0)	# tmp208, arr20
	sd	a1,-752(s0)	# tmp209, arr20
	sd	a2,-744(s0)	# tmp210, arr20
	sd	a3,-736(s0)	# tmp211, arr20
	sd	a4,-728(s0)	# tmp212, arr20
	lw	a5,80(a5)		# tmp213,
	sw	a5,-720(s0)	# tmp213, arr20
# problem70.c:44:     int arr21[] = {10};
	li	a5,10		# tmp214,
	sw	a5,-1360(s0)	# tmp214, arr21[0]
# problem70.c:45:     int arr22[] = {9, 7, 7, 2, 4,7, 2, 10, 9, 7, 5, 7, 2};
	lla	a5,.LC18	# tmp215,
	ld	a6,0(a5)		# tmp216,
	ld	a0,8(a5)		# tmp217,
	ld	a1,16(a5)		# tmp218,
	ld	a2,24(a5)		# tmp219,
	ld	a3,32(a5)		# tmp220,
	ld	a4,40(a5)		# tmp221,
	sd	a6,-1000(s0)	# tmp216, arr22
	sd	a0,-992(s0)	# tmp217, arr22
	sd	a1,-984(s0)	# tmp218, arr22
	sd	a2,-976(s0)	# tmp219, arr22
	sd	a3,-968(s0)	# tmp220, arr22
	sd	a4,-960(s0)	# tmp221, arr22
	lw	a5,48(a5)		# tmp222,
	sw	a5,-952(s0)	# tmp222, arr22
# problem70.c:46:     int arr23[] = {5, 4, 10, 2, 1, 1, 10, 3, 6, 1, 8};
	lla	a5,.LC19	# tmp223,
	ld	a0,0(a5)		# tmp224,
	ld	a1,8(a5)		# tmp225,
	ld	a2,16(a5)		# tmp226,
	ld	a3,24(a5)		# tmp227,
	ld	a4,32(a5)		# tmp228,
	sd	a0,-1096(s0)	# tmp224, arr23
	sd	a1,-1088(s0)	# tmp225, arr23
	sd	a2,-1080(s0)	# tmp226, arr23
	sd	a3,-1072(s0)	# tmp227, arr23
	sd	a4,-1064(s0)	# tmp228, arr23
	lw	a5,40(a5)		# tmp229,
	sw	a5,-1056(s0)	# tmp229, arr23
# problem70.c:47:     int arr24[] = {7, 9, 9, 9, 3, 4, 1, 5, 9, 1, 2, 1, 1, 10, 7, 5, 6, 7, 6, 7, 7, 6};
	lla	a5,.LC20	# tmp230,
	ld	t4,0(a5)		# tmp231,
	ld	t3,8(a5)		# tmp232,
	ld	t1,16(a5)		# tmp233,
	ld	a7,24(a5)		# tmp234,
	ld	a6,32(a5)		# tmp235,
	ld	a0,40(a5)		# tmp236,
	ld	a1,48(a5)		# tmp237,
	ld	a2,56(a5)		# tmp238,
	ld	a3,64(a5)		# tmp239,
	ld	a4,72(a5)		# tmp240,
	ld	a5,80(a5)		# tmp241,
	sd	t4,-624(s0)	# tmp231, arr24
	sd	t3,-616(s0)	# tmp232, arr24
	sd	t1,-608(s0)	# tmp233, arr24
	sd	a7,-600(s0)	# tmp234, arr24
	sd	a6,-592(s0)	# tmp235, arr24
	sd	a0,-584(s0)	# tmp236, arr24
	sd	a1,-576(s0)	# tmp237, arr24
	sd	a2,-568(s0)	# tmp238, arr24
	sd	a3,-560(s0)	# tmp239, arr24
	sd	a4,-552(s0)	# tmp240, arr24
	sd	a5,-544(s0)	# tmp241, arr24
# problem70.c:48:     int arr25[] = {3, 10, 10, 9, 2};
	lla	a5,.LC21	# tmp242,
	ld	a4,0(a5)		# tmp243,
	sd	a4,-1256(s0)	# tmp243, arr25
	ld	a4,8(a5)		# tmp244,
	sd	a4,-1248(s0)	# tmp244, arr25
	lw	a5,16(a5)		# tmp245,
	sw	a5,-1240(s0)	# tmp245, arr25
# problem70.c:50:     return 0;
	li	a5,0		# _28,
# problem70.c:51: }
	mv	a4,a5	# <retval>, _28
	la	a5,__stack_chk_guard		# tmp247,
	ld	a3, -24(s0)	# tmp250, D.2495
	ld	a5, 0(a5)	# tmp248, __stack_chk_guard
	xor	a5, a3, a5	# tmp248, tmp250
	li	a3, 0	# tmp250
	beq	a5,zero,.L8	#, tmp248,,
	call	__stack_chk_fail@plt	#
.L8:
	mv	a0,a4	#, <retval>
	ld	ra,1368(sp)		#,
	ld	s0,1360(sp)		#,
	addi	sp,sp,1376	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
