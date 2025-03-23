	.file	"problem70.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# lst, lst
	movl	%esi, -28(%rbp)	# size, size
# problem70.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	movl	-28(%rbp), %eax	# size, tmp114
	addl	$1, %eax	#, _1
# problem70.c:5:     int *freq = (int *)calloc(size + 1, sizeof(int));
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# _2,
	call	calloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp115, freq
# problem70.c:6:     int max = -1;
	movl	$-1, -16(%rbp)	#, max
# problem70.c:8:     for (int i = 0; i < size; i++) {
	movl	$0, -12(%rbp)	#, i
# problem70.c:8:     for (int i = 0; i < size; i++) {
	jmp	.L2	#
.L4:
# problem70.c:9:         freq[lst[i]]++;
	movl	-12(%rbp), %eax	# i, tmp116
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# lst, tmp117
	addq	%rdx, %rax	# _4, _5
	movl	(%rax), %eax	# *_5, _6
	cltq
# problem70.c:9:         freq[lst[i]]++;
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-8(%rbp), %rax	# freq, tmp118
	addq	%rdx, %rax	# _8, _9
	movl	(%rax), %edx	# *_9, _10
# problem70.c:9:         freq[lst[i]]++;
	addl	$1, %edx	#, _11
	movl	%edx, (%rax)	# _11, *_9
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	movl	-12(%rbp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,4), %rdx	#, _13
	movq	-24(%rbp), %rax	# lst, tmp120
	addq	%rdx, %rax	# _13, _14
	movl	(%rax), %eax	# *_14, _15
	cltq
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-8(%rbp), %rax	# freq, tmp121
	addq	%rdx, %rax	# _17, _18
	movl	(%rax), %edx	# *_18, _19
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	movl	-12(%rbp), %eax	# i, tmp122
	cltq
	leaq	0(,%rax,4), %rcx	#, _21
	movq	-24(%rbp), %rax	# lst, tmp123
	addq	%rcx, %rax	# _21, _22
	movl	(%rax), %eax	# *_22, _23
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	cmpl	%eax, %edx	# _23, _19
	jl	.L3	#,
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	movl	-12(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-24(%rbp), %rax	# lst, tmp125
	addq	%rdx, %rax	# _25, _26
	movl	(%rax), %eax	# *_26, _27
# problem70.c:10:         if ((freq[lst[i]] >= lst[i]) && (lst[i] > max)) {
	cmpl	%eax, -16(%rbp)	# _27, max
	jge	.L3	#,
# problem70.c:11:             max = lst[i];
	movl	-12(%rbp), %eax	# i, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, _29
	movq	-24(%rbp), %rax	# lst, tmp127
	addq	%rdx, %rax	# _29, _30
# problem70.c:11:             max = lst[i];
	movl	(%rax), %eax	# *_30, tmp128
	movl	%eax, -16(%rbp)	# tmp128, max
.L3:
# problem70.c:8:     for (int i = 0; i < size; i++) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem70.c:8:     for (int i = 0; i < size; i++) {
	movl	-12(%rbp), %eax	# i, tmp129
	cmpl	-28(%rbp), %eax	# size, tmp129
	jl	.L4	#,
# problem70.c:15:     free(freq);
	movq	-8(%rbp), %rax	# freq, tmp130
	movq	%rax, %rdi	# tmp130,
	call	free@PLT	#
# problem70.c:16:     return max;
	movl	-16(%rbp), %eax	# max, _42
# problem70.c:17: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1440, %rsp	#,
# problem70.c:23: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp85
	movq	%rax, -8(%rbp)	# tmp85, D.2932
	xorl	%eax, %eax	# tmp85
# problem70.c:24:     int arr1[] = {5, 5, 5, 5, 1};
	movl	$5, -1408(%rbp)	#, arr1[0]
	movl	$5, -1404(%rbp)	#, arr1[1]
	movl	$5, -1400(%rbp)	#, arr1[2]
	movl	$5, -1396(%rbp)	#, arr1[3]
	movl	$1, -1392(%rbp)	#, arr1[4]
# problem70.c:25:     int arr2[] = {4, 1, 4, 1, 4, 4};
	movl	$4, -1280(%rbp)	#, arr2[0]
	movl	$1, -1276(%rbp)	#, arr2[1]
	movl	$4, -1272(%rbp)	#, arr2[2]
	movl	$1, -1268(%rbp)	#, arr2[3]
	movl	$4, -1264(%rbp)	#, arr2[4]
	movl	$4, -1260(%rbp)	#, arr2[5]
# problem70.c:26:     int arr3[] = {3, 3};
	movl	$3, -1432(%rbp)	#, arr3[0]
	movl	$3, -1428(%rbp)	#, arr3[1]
# problem70.c:27:     int arr4[] = {8, 8, 8, 8, 8, 8, 8, 8};
	movl	$8, -1216(%rbp)	#, arr4[0]
	movl	$8, -1212(%rbp)	#, arr4[1]
	movl	$8, -1208(%rbp)	#, arr4[2]
	movl	$8, -1204(%rbp)	#, arr4[3]
	movl	$8, -1200(%rbp)	#, arr4[4]
	movl	$8, -1196(%rbp)	#, arr4[5]
	movl	$8, -1192(%rbp)	#, arr4[6]
	movl	$8, -1188(%rbp)	#, arr4[7]
# problem70.c:28:     int arr5[] = {2, 3, 3, 2, 2};
	movl	$2, -1376(%rbp)	#, arr5[0]
	movl	$3, -1372(%rbp)	#, arr5[1]
	movl	$3, -1368(%rbp)	#, arr5[2]
	movl	$2, -1364(%rbp)	#, arr5[3]
	movl	$2, -1360(%rbp)	#, arr5[4]
# problem70.c:29:     int arr6[] = {2, 7, 8, 8, 4, 8, 7, 3, 9, 6, 5, 10, 4, 3, 6, 7, 1, 7, 4, 10, 8, 1};
	movl	$2, -720(%rbp)	#, arr6[0]
	movl	$7, -716(%rbp)	#, arr6[1]
	movl	$8, -712(%rbp)	#, arr6[2]
	movl	$8, -708(%rbp)	#, arr6[3]
	movl	$4, -704(%rbp)	#, arr6[4]
	movl	$8, -700(%rbp)	#, arr6[5]
	movl	$7, -696(%rbp)	#, arr6[6]
	movl	$3, -692(%rbp)	#, arr6[7]
	movl	$9, -688(%rbp)	#, arr6[8]
	movl	$6, -684(%rbp)	#, arr6[9]
	movl	$5, -680(%rbp)	#, arr6[10]
	movl	$10, -676(%rbp)	#, arr6[11]
	movl	$4, -672(%rbp)	#, arr6[12]
	movl	$3, -668(%rbp)	#, arr6[13]
	movl	$6, -664(%rbp)	#, arr6[14]
	movl	$7, -660(%rbp)	#, arr6[15]
	movl	$1, -656(%rbp)	#, arr6[16]
	movl	$7, -652(%rbp)	#, arr6[17]
	movl	$4, -648(%rbp)	#, arr6[18]
	movl	$10, -644(%rbp)	#, arr6[19]
	movl	$8, -640(%rbp)	#, arr6[20]
	movl	$1, -636(%rbp)	#, arr6[21]
# problem70.c:30:     int arr7[] = {3, 2, 8, 2};
	movl	$3, -1424(%rbp)	#, arr7[0]
	movl	$2, -1420(%rbp)	#, arr7[1]
	movl	$8, -1416(%rbp)	#, arr7[2]
	movl	$2, -1412(%rbp)	#, arr7[3]
# problem70.c:31:     int arr8[] = {6, 7, 1, 8, 8, 10, 5, 8, 5, 3, 10};
	movl	$6, -1184(%rbp)	#, arr8[0]
	movl	$7, -1180(%rbp)	#, arr8[1]
	movl	$1, -1176(%rbp)	#, arr8[2]
	movl	$8, -1172(%rbp)	#, arr8[3]
	movl	$8, -1168(%rbp)	#, arr8[4]
	movl	$10, -1164(%rbp)	#, arr8[5]
	movl	$5, -1160(%rbp)	#, arr8[6]
	movl	$8, -1156(%rbp)	#, arr8[7]
	movl	$5, -1152(%rbp)	#, arr8[8]
	movl	$3, -1148(%rbp)	#, arr8[9]
	movl	$10, -1144(%rbp)	#, arr8[10]
# problem70.c:32:     int arr9[] = {8, 8, 3, 6, 5, 6, 4};
	movl	$8, -1248(%rbp)	#, arr9[0]
	movl	$8, -1244(%rbp)	#, arr9[1]
	movl	$3, -1240(%rbp)	#, arr9[2]
	movl	$6, -1236(%rbp)	#, arr9[3]
	movl	$5, -1232(%rbp)	#, arr9[4]
	movl	$6, -1228(%rbp)	#, arr9[5]
	movl	$4, -1224(%rbp)	#, arr9[6]
# problem70.c:33:     int arr10[] = {6, 9, 6, 7, 1, 4, 7, 1, 8, 8, 9, 8, 10, 10, 8, 4, 10, 4, 10, 1, 2, 9, 5, 7, 9};
	movl	$6, -240(%rbp)	#, arr10[0]
	movl	$9, -236(%rbp)	#, arr10[1]
	movl	$6, -232(%rbp)	#, arr10[2]
	movl	$7, -228(%rbp)	#, arr10[3]
	movl	$1, -224(%rbp)	#, arr10[4]
	movl	$4, -220(%rbp)	#, arr10[5]
	movl	$7, -216(%rbp)	#, arr10[6]
	movl	$1, -212(%rbp)	#, arr10[7]
	movl	$8, -208(%rbp)	#, arr10[8]
	movl	$8, -204(%rbp)	#, arr10[9]
	movl	$9, -200(%rbp)	#, arr10[10]
	movl	$8, -196(%rbp)	#, arr10[11]
	movl	$10, -192(%rbp)	#, arr10[12]
	movl	$10, -188(%rbp)	#, arr10[13]
	movl	$8, -184(%rbp)	#, arr10[14]
	movl	$4, -180(%rbp)	#, arr10[15]
	movl	$10, -176(%rbp)	#, arr10[16]
	movl	$4, -172(%rbp)	#, arr10[17]
	movl	$10, -168(%rbp)	#, arr10[18]
	movl	$1, -164(%rbp)	#, arr10[19]
	movl	$2, -160(%rbp)	#, arr10[20]
	movl	$9, -156(%rbp)	#, arr10[21]
	movl	$5, -152(%rbp)	#, arr10[22]
	movl	$7, -148(%rbp)	#, arr10[23]
	movl	$9, -144(%rbp)	#, arr10[24]
# problem70.c:34:     int arr11[] = {1, 9, 10, 1, 3};
	movl	$1, -1344(%rbp)	#, arr11[0]
	movl	$9, -1340(%rbp)	#, arr11[1]
	movl	$10, -1336(%rbp)	#, arr11[2]
	movl	$1, -1332(%rbp)	#, arr11[3]
	movl	$3, -1328(%rbp)	#, arr11[4]
# problem70.c:35:     int arr12[] = {6, 9, 7, 5, 8, 7, 5, 3, 7, 5, 10, 10, 3, 6, 10, 2, 8, 6, 5, 4, 9, 5, 3, 10};
	movl	$6, -336(%rbp)	#, arr12[0]
	movl	$9, -332(%rbp)	#, arr12[1]
	movl	$7, -328(%rbp)	#, arr12[2]
	movl	$5, -324(%rbp)	#, arr12[3]
	movl	$8, -320(%rbp)	#, arr12[4]
	movl	$7, -316(%rbp)	#, arr12[5]
	movl	$5, -312(%rbp)	#, arr12[6]
	movl	$3, -308(%rbp)	#, arr12[7]
	movl	$7, -304(%rbp)	#, arr12[8]
	movl	$5, -300(%rbp)	#, arr12[9]
	movl	$10, -296(%rbp)	#, arr12[10]
	movl	$10, -292(%rbp)	#, arr12[11]
	movl	$3, -288(%rbp)	#, arr12[12]
	movl	$6, -284(%rbp)	#, arr12[13]
	movl	$10, -280(%rbp)	#, arr12[14]
	movl	$2, -276(%rbp)	#, arr12[15]
	movl	$8, -272(%rbp)	#, arr12[16]
	movl	$6, -268(%rbp)	#, arr12[17]
	movl	$5, -264(%rbp)	#, arr12[18]
	movl	$4, -260(%rbp)	#, arr12[19]
	movl	$9, -256(%rbp)	#, arr12[20]
	movl	$5, -252(%rbp)	#, arr12[21]
	movl	$3, -248(%rbp)	#, arr12[22]
	movl	$10, -244(%rbp)	#, arr12[23]
# problem70.c:36:     int arr13[] = {1};
	movl	$1, -1440(%rbp)	#, arr13[0]
# problem70.c:37:     int arr14[] = {8, 8, 10, 6, 4, 3, 5, 8, 2, 4, 2, 8, 4, 6, 10, 4, 2, 1, 10, 2, 1, 1, 5};
	movl	$8, -528(%rbp)	#, arr14[0]
	movl	$8, -524(%rbp)	#, arr14[1]
	movl	$10, -520(%rbp)	#, arr14[2]
	movl	$6, -516(%rbp)	#, arr14[3]
	movl	$4, -512(%rbp)	#, arr14[4]
	movl	$3, -508(%rbp)	#, arr14[5]
	movl	$5, -504(%rbp)	#, arr14[6]
	movl	$8, -500(%rbp)	#, arr14[7]
	movl	$2, -496(%rbp)	#, arr14[8]
	movl	$4, -492(%rbp)	#, arr14[9]
	movl	$2, -488(%rbp)	#, arr14[10]
	movl	$8, -484(%rbp)	#, arr14[11]
	movl	$4, -480(%rbp)	#, arr14[12]
	movl	$6, -476(%rbp)	#, arr14[13]
	movl	$10, -472(%rbp)	#, arr14[14]
	movl	$4, -468(%rbp)	#, arr14[15]
	movl	$2, -464(%rbp)	#, arr14[16]
	movl	$1, -460(%rbp)	#, arr14[17]
	movl	$10, -456(%rbp)	#, arr14[18]
	movl	$2, -452(%rbp)	#, arr14[19]
	movl	$1, -448(%rbp)	#, arr14[20]
	movl	$1, -444(%rbp)	#, arr14[21]
	movl	$5, -440(%rbp)	#, arr14[22]
# problem70.c:38:     int arr15[] = {2, 10, 4, 8, 2, 10, 5, 1, 2, 9, 5, 5, 6, 3, 8, 6, 4, 10};
	movl	$2, -976(%rbp)	#, arr15[0]
	movl	$10, -972(%rbp)	#, arr15[1]
	movl	$4, -968(%rbp)	#, arr15[2]
	movl	$8, -964(%rbp)	#, arr15[3]
	movl	$2, -960(%rbp)	#, arr15[4]
	movl	$10, -956(%rbp)	#, arr15[5]
	movl	$5, -952(%rbp)	#, arr15[6]
	movl	$1, -948(%rbp)	#, arr15[7]
	movl	$2, -944(%rbp)	#, arr15[8]
	movl	$9, -940(%rbp)	#, arr15[9]
	movl	$5, -936(%rbp)	#, arr15[10]
	movl	$5, -932(%rbp)	#, arr15[11]
	movl	$6, -928(%rbp)	#, arr15[12]
	movl	$3, -924(%rbp)	#, arr15[13]
	movl	$8, -920(%rbp)	#, arr15[14]
	movl	$6, -916(%rbp)	#, arr15[15]
	movl	$4, -912(%rbp)	#, arr15[16]
	movl	$10, -908(%rbp)	#, arr15[17]
# problem70.c:39:     int arr16[] = {1, 6, 10, 1, 6, 9, 10, 8, 6, 8, 7, 3};
	movl	$1, -1088(%rbp)	#, arr16[0]
	movl	$6, -1084(%rbp)	#, arr16[1]
	movl	$10, -1080(%rbp)	#, arr16[2]
	movl	$1, -1076(%rbp)	#, arr16[3]
	movl	$6, -1072(%rbp)	#, arr16[4]
	movl	$9, -1068(%rbp)	#, arr16[5]
	movl	$10, -1064(%rbp)	#, arr16[6]
	movl	$8, -1060(%rbp)	#, arr16[7]
	movl	$6, -1056(%rbp)	#, arr16[8]
	movl	$8, -1052(%rbp)	#, arr16[9]
	movl	$7, -1048(%rbp)	#, arr16[10]
	movl	$3, -1044(%rbp)	#, arr16[11]
# problem70.c:40:     int arr17[] = {9, 2, 4, 1, 5, 1, 5, 2, 5, 7, 7, 7, 3, 10, 1, 5, 4, 2, 8, 4, 1, 9, 10, 7, 10, 2, 8, 10, 9, 4};
	movl	$9, -128(%rbp)	#, arr17[0]
	movl	$2, -124(%rbp)	#, arr17[1]
	movl	$4, -120(%rbp)	#, arr17[2]
	movl	$1, -116(%rbp)	#, arr17[3]
	movl	$5, -112(%rbp)	#, arr17[4]
	movl	$1, -108(%rbp)	#, arr17[5]
	movl	$5, -104(%rbp)	#, arr17[6]
	movl	$2, -100(%rbp)	#, arr17[7]
	movl	$5, -96(%rbp)	#, arr17[8]
	movl	$7, -92(%rbp)	#, arr17[9]
	movl	$7, -88(%rbp)	#, arr17[10]
	movl	$7, -84(%rbp)	#, arr17[11]
	movl	$3, -80(%rbp)	#, arr17[12]
	movl	$10, -76(%rbp)	#, arr17[13]
	movl	$1, -72(%rbp)	#, arr17[14]
	movl	$5, -68(%rbp)	#, arr17[15]
	movl	$4, -64(%rbp)	#, arr17[16]
	movl	$2, -60(%rbp)	#, arr17[17]
	movl	$8, -56(%rbp)	#, arr17[18]
	movl	$4, -52(%rbp)	#, arr17[19]
	movl	$1, -48(%rbp)	#, arr17[20]
	movl	$9, -44(%rbp)	#, arr17[21]
	movl	$10, -40(%rbp)	#, arr17[22]
	movl	$7, -36(%rbp)	#, arr17[23]
	movl	$10, -32(%rbp)	#, arr17[24]
	movl	$2, -28(%rbp)	#, arr17[25]
	movl	$8, -24(%rbp)	#, arr17[26]
	movl	$10, -20(%rbp)	#, arr17[27]
	movl	$9, -16(%rbp)	#, arr17[28]
	movl	$4, -12(%rbp)	#, arr17[29]
# problem70.c:41:     int arr18[] = {2, 6, 4, 2, 8, 7, 5, 6, 4, 10, 4, 6, 3, 7, 8, 8, 3, 1, 4, 2, 2, 10, 7};
	movl	$2, -432(%rbp)	#, arr18[0]
	movl	$6, -428(%rbp)	#, arr18[1]
	movl	$4, -424(%rbp)	#, arr18[2]
	movl	$2, -420(%rbp)	#, arr18[3]
	movl	$8, -416(%rbp)	#, arr18[4]
	movl	$7, -412(%rbp)	#, arr18[5]
	movl	$5, -408(%rbp)	#, arr18[6]
	movl	$6, -404(%rbp)	#, arr18[7]
	movl	$4, -400(%rbp)	#, arr18[8]
	movl	$10, -396(%rbp)	#, arr18[9]
	movl	$4, -392(%rbp)	#, arr18[10]
	movl	$6, -388(%rbp)	#, arr18[11]
	movl	$3, -384(%rbp)	#, arr18[12]
	movl	$7, -380(%rbp)	#, arr18[13]
	movl	$8, -376(%rbp)	#, arr18[14]
	movl	$8, -372(%rbp)	#, arr18[15]
	movl	$3, -368(%rbp)	#, arr18[16]
	movl	$1, -364(%rbp)	#, arr18[17]
	movl	$4, -360(%rbp)	#, arr18[18]
	movl	$2, -356(%rbp)	#, arr18[19]
	movl	$2, -352(%rbp)	#, arr18[20]
	movl	$10, -348(%rbp)	#, arr18[21]
	movl	$7, -344(%rbp)	#, arr18[22]
# problem70.c:42:     int arr19[] = {9, 8, 6, 10, 2, 6, 10, 2, 7, 8, 10, 3, 8, 2, 6, 2, 3, 1};
	movl	$9, -896(%rbp)	#, arr19[0]
	movl	$8, -892(%rbp)	#, arr19[1]
	movl	$6, -888(%rbp)	#, arr19[2]
	movl	$10, -884(%rbp)	#, arr19[3]
	movl	$2, -880(%rbp)	#, arr19[4]
	movl	$6, -876(%rbp)	#, arr19[5]
	movl	$10, -872(%rbp)	#, arr19[6]
	movl	$2, -868(%rbp)	#, arr19[7]
	movl	$7, -864(%rbp)	#, arr19[8]
	movl	$8, -860(%rbp)	#, arr19[9]
	movl	$10, -856(%rbp)	#, arr19[10]
	movl	$3, -852(%rbp)	#, arr19[11]
	movl	$8, -848(%rbp)	#, arr19[12]
	movl	$2, -844(%rbp)	#, arr19[13]
	movl	$6, -840(%rbp)	#, arr19[14]
	movl	$2, -836(%rbp)	#, arr19[15]
	movl	$3, -832(%rbp)	#, arr19[16]
	movl	$1, -828(%rbp)	#, arr19[17]
# problem70.c:43:     int arr20[] = {5, 5, 3, 9, 5, 6, 3, 2, 8, 5, 6, 10, 10, 6, 8, 4, 10, 7, 7, 10, 8};
	movl	$5, -816(%rbp)	#, arr20[0]
	movl	$5, -812(%rbp)	#, arr20[1]
	movl	$3, -808(%rbp)	#, arr20[2]
	movl	$9, -804(%rbp)	#, arr20[3]
	movl	$5, -800(%rbp)	#, arr20[4]
	movl	$6, -796(%rbp)	#, arr20[5]
	movl	$3, -792(%rbp)	#, arr20[6]
	movl	$2, -788(%rbp)	#, arr20[7]
	movl	$8, -784(%rbp)	#, arr20[8]
	movl	$5, -780(%rbp)	#, arr20[9]
	movl	$6, -776(%rbp)	#, arr20[10]
	movl	$10, -772(%rbp)	#, arr20[11]
	movl	$10, -768(%rbp)	#, arr20[12]
	movl	$6, -764(%rbp)	#, arr20[13]
	movl	$8, -760(%rbp)	#, arr20[14]
	movl	$4, -756(%rbp)	#, arr20[15]
	movl	$10, -752(%rbp)	#, arr20[16]
	movl	$7, -748(%rbp)	#, arr20[17]
	movl	$7, -744(%rbp)	#, arr20[18]
	movl	$10, -740(%rbp)	#, arr20[19]
	movl	$8, -736(%rbp)	#, arr20[20]
# problem70.c:44:     int arr21[] = {10};
	movl	$10, -1436(%rbp)	#, arr21[0]
# problem70.c:45:     int arr22[] = {9, 7, 7, 2, 4,7, 2, 10, 9, 7, 5, 7, 2};
	movl	$9, -1040(%rbp)	#, arr22[0]
	movl	$7, -1036(%rbp)	#, arr22[1]
	movl	$7, -1032(%rbp)	#, arr22[2]
	movl	$2, -1028(%rbp)	#, arr22[3]
	movl	$4, -1024(%rbp)	#, arr22[4]
	movl	$7, -1020(%rbp)	#, arr22[5]
	movl	$2, -1016(%rbp)	#, arr22[6]
	movl	$10, -1012(%rbp)	#, arr22[7]
	movl	$9, -1008(%rbp)	#, arr22[8]
	movl	$7, -1004(%rbp)	#, arr22[9]
	movl	$5, -1000(%rbp)	#, arr22[10]
	movl	$7, -996(%rbp)	#, arr22[11]
	movl	$2, -992(%rbp)	#, arr22[12]
# problem70.c:46:     int arr23[] = {5, 4, 10, 2, 1, 1, 10, 3, 6, 1, 8};
	movl	$5, -1136(%rbp)	#, arr23[0]
	movl	$4, -1132(%rbp)	#, arr23[1]
	movl	$10, -1128(%rbp)	#, arr23[2]
	movl	$2, -1124(%rbp)	#, arr23[3]
	movl	$1, -1120(%rbp)	#, arr23[4]
	movl	$1, -1116(%rbp)	#, arr23[5]
	movl	$10, -1112(%rbp)	#, arr23[6]
	movl	$3, -1108(%rbp)	#, arr23[7]
	movl	$6, -1104(%rbp)	#, arr23[8]
	movl	$1, -1100(%rbp)	#, arr23[9]
	movl	$8, -1096(%rbp)	#, arr23[10]
# problem70.c:47:     int arr24[] = {7, 9, 9, 9, 3, 4, 1, 5, 9, 1, 2, 1, 1, 10, 7, 5, 6, 7, 6, 7, 7, 6};
	movl	$7, -624(%rbp)	#, arr24[0]
	movl	$9, -620(%rbp)	#, arr24[1]
	movl	$9, -616(%rbp)	#, arr24[2]
	movl	$9, -612(%rbp)	#, arr24[3]
	movl	$3, -608(%rbp)	#, arr24[4]
	movl	$4, -604(%rbp)	#, arr24[5]
	movl	$1, -600(%rbp)	#, arr24[6]
	movl	$5, -596(%rbp)	#, arr24[7]
	movl	$9, -592(%rbp)	#, arr24[8]
	movl	$1, -588(%rbp)	#, arr24[9]
	movl	$2, -584(%rbp)	#, arr24[10]
	movl	$1, -580(%rbp)	#, arr24[11]
	movl	$1, -576(%rbp)	#, arr24[12]
	movl	$10, -572(%rbp)	#, arr24[13]
	movl	$7, -568(%rbp)	#, arr24[14]
	movl	$5, -564(%rbp)	#, arr24[15]
	movl	$6, -560(%rbp)	#, arr24[16]
	movl	$7, -556(%rbp)	#, arr24[17]
	movl	$6, -552(%rbp)	#, arr24[18]
	movl	$7, -548(%rbp)	#, arr24[19]
	movl	$7, -544(%rbp)	#, arr24[20]
	movl	$6, -540(%rbp)	#, arr24[21]
# problem70.c:48:     int arr25[] = {3, 10, 10, 9, 2};
	movl	$3, -1312(%rbp)	#, arr25[0]
	movl	$10, -1308(%rbp)	#, arr25[1]
	movl	$10, -1304(%rbp)	#, arr25[2]
	movl	$9, -1300(%rbp)	#, arr25[3]
	movl	$2, -1296(%rbp)	#, arr25[4]
# problem70.c:50:     return 0;
	movl	$0, %eax	#, _324
# problem70.c:51: }
	movq	-8(%rbp), %rdx	# D.2932, tmp86
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp86
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
