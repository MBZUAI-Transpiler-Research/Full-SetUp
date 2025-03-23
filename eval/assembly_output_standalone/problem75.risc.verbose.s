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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	sd	a0,-40(s0)	# arr1, arr1
	mv	a5,a1	# tmp90, n1
	sd	a2,-56(s0)	# arr2, arr2
	mv	a4,a3	# tmp92, n2
	sw	a5,-44(s0)	# tmp91, n1
	mv	a5,a4	# tmp93, tmp92
	sw	a5,-48(s0)	# tmp93, n2
# eval/problem75//code.c:7:   int i, sum1 = 0, sum2 = 0;
	sw	zero,-24(s0)	#, sum1
# eval/problem75//code.c:7:   int i, sum1 = 0, sum2 = 0;
	sw	zero,-20(s0)	#, sum2
# eval/problem75//code.c:9:   for(i=0; i<n1; i++){
	sw	zero,-28(s0)	#, i
# eval/problem75//code.c:9:   for(i=0; i<n1; i++){
	j	.L2		#
.L3:
# eval/problem75//code.c:10:     sum1 += strlen(arr1[i]);
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp94, arr1
	add	a5,a4,a5	# _2, _3, tmp94
# eval/problem75//code.c:10:     sum1 += strlen(arr1[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# eval/problem75//code.c:10:     sum1 += strlen(arr1[i]);
	sext.w	a4,a5	# _6, _5
	lw	a5,-24(s0)		# sum1.0_7, sum1
	addw	a5,a4,a5	# sum1.0_7, tmp95, _6
	sext.w	a5,a5	# _8, tmp95
	sw	a5,-24(s0)	# _8, sum1
# eval/problem75//code.c:9:   for(i=0; i<n1; i++){
	lw	a5,-28(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-28(s0)	# tmp96, i
.L2:
# eval/problem75//code.c:9:   for(i=0; i<n1; i++){
	lw	a5,-28(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, n1
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L3	#, tmp103, tmp104,
# eval/problem75//code.c:13:   for(i=0; i<n2; i++){
	sw	zero,-28(s0)	#, i
# eval/problem75//code.c:13:   for(i=0; i<n2; i++){
	j	.L4		#
.L5:
# eval/problem75//code.c:14:     sum2 += strlen(arr2[i]); 
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-56(s0)		# tmp105, arr2
	add	a5,a4,a5	# _10, _11, tmp105
# eval/problem75//code.c:14:     sum2 += strlen(arr2[i]); 
	ld	a5,0(a5)		# _12, *_11
	mv	a0,a5	#, _12
	call	strlen@plt	#
	mv	a5,a0	# _13,
# eval/problem75//code.c:14:     sum2 += strlen(arr2[i]); 
	sext.w	a4,a5	# _14, _13
	lw	a5,-20(s0)		# sum2.1_15, sum2
	addw	a5,a4,a5	# sum2.1_15, tmp106, _14
	sext.w	a5,a5	# _16, tmp106
	sw	a5,-20(s0)	# _16, sum2
# eval/problem75//code.c:13:   for(i=0; i<n2; i++){
	lw	a5,-28(s0)		# tmp109, i
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-28(s0)	# tmp107, i
.L4:
# eval/problem75//code.c:13:   for(i=0; i<n2; i++){
	lw	a5,-28(s0)		# tmp111, i
	mv	a4,a5	# tmp110, tmp111
	lw	a5,-48(s0)		# tmp113, n2
	sext.w	a4,a4	# tmp114, tmp110
	sext.w	a5,a5	# tmp115, tmp112
	blt	a4,a5,.L5	#, tmp114, tmp115,
# eval/problem75//code.c:17:   if(sum1 < sum2){
	lw	a5,-24(s0)		# tmp117, sum1
	mv	a4,a5	# tmp116, tmp117
	lw	a5,-20(s0)		# tmp119, sum2
	sext.w	a4,a4	# tmp120, tmp116
	sext.w	a5,a5	# tmp121, tmp118
	bge	a4,a5,.L6	#, tmp120, tmp121,
# eval/problem75//code.c:18:     return arr1;
	ld	a5,-40(s0)		# _21, arr1
	j	.L7		#
.L6:
# eval/problem75//code.c:20:   else if(sum1 > sum2){
	lw	a5,-24(s0)		# tmp123, sum1
	mv	a4,a5	# tmp122, tmp123
	lw	a5,-20(s0)		# tmp125, sum2
	sext.w	a4,a4	# tmp126, tmp122
	sext.w	a5,a5	# tmp127, tmp124
	ble	a4,a5,.L8	#, tmp126, tmp127,
# eval/problem75//code.c:21:     return arr2;
	ld	a5,-56(s0)		# _21, arr2
	j	.L7		#
.L8:
# eval/problem75//code.c:24:     return arr1;
	ld	a5,-40(s0)		# _21, arr1
.L7:
# eval/problem75//code.c:27: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
