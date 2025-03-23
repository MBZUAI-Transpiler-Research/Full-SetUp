	.file	"problem75.c"
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
# problem75.c:7:   int i, sum1 = 0, sum2 = 0;
	sw	zero,-24(s0)	#, sum1
# problem75.c:7:   int i, sum1 = 0, sum2 = 0;
	sw	zero,-20(s0)	#, sum2
# problem75.c:9:   for(i=0; i<n1; i++){
	sw	zero,-28(s0)	#, i
# problem75.c:9:   for(i=0; i<n1; i++){
	j	.L2		#
.L3:
# problem75.c:10:     sum1 += strlen(arr1[i]);
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp94, arr1
	add	a5,a4,a5	# _2, _3, tmp94
# problem75.c:10:     sum1 += strlen(arr1[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# problem75.c:10:     sum1 += strlen(arr1[i]);
	sext.w	a4,a5	# _6, _5
	lw	a5,-24(s0)		# sum1.0_7, sum1
	addw	a5,a4,a5	# sum1.0_7, tmp95, _6
	sext.w	a5,a5	# _8, tmp95
	sw	a5,-24(s0)	# _8, sum1
# problem75.c:9:   for(i=0; i<n1; i++){
	lw	a5,-28(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-28(s0)	# tmp96, i
.L2:
# problem75.c:9:   for(i=0; i<n1; i++){
	lw	a5,-28(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, n1
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L3	#, tmp103, tmp104,
# problem75.c:13:   for(i=0; i<n2; i++){
	sw	zero,-28(s0)	#, i
# problem75.c:13:   for(i=0; i<n2; i++){
	j	.L4		#
.L5:
# problem75.c:14:     sum2 += strlen(arr2[i]); 
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-56(s0)		# tmp105, arr2
	add	a5,a4,a5	# _10, _11, tmp105
# problem75.c:14:     sum2 += strlen(arr2[i]); 
	ld	a5,0(a5)		# _12, *_11
	mv	a0,a5	#, _12
	call	strlen@plt	#
	mv	a5,a0	# _13,
# problem75.c:14:     sum2 += strlen(arr2[i]); 
	sext.w	a4,a5	# _14, _13
	lw	a5,-20(s0)		# sum2.1_15, sum2
	addw	a5,a4,a5	# sum2.1_15, tmp106, _14
	sext.w	a5,a5	# _16, tmp106
	sw	a5,-20(s0)	# _16, sum2
# problem75.c:13:   for(i=0; i<n2; i++){
	lw	a5,-28(s0)		# tmp109, i
	addiw	a5,a5,1	#, tmp107, tmp108
	sw	a5,-28(s0)	# tmp107, i
.L4:
# problem75.c:13:   for(i=0; i<n2; i++){
	lw	a5,-28(s0)		# tmp111, i
	mv	a4,a5	# tmp110, tmp111
	lw	a5,-48(s0)		# tmp113, n2
	sext.w	a4,a4	# tmp114, tmp110
	sext.w	a5,a5	# tmp115, tmp112
	blt	a4,a5,.L5	#, tmp114, tmp115,
# problem75.c:17:   if(sum1 < sum2){
	lw	a5,-24(s0)		# tmp117, sum1
	mv	a4,a5	# tmp116, tmp117
	lw	a5,-20(s0)		# tmp119, sum2
	sext.w	a4,a4	# tmp120, tmp116
	sext.w	a5,a5	# tmp121, tmp118
	bge	a4,a5,.L6	#, tmp120, tmp121,
# problem75.c:18:     return arr1;
	ld	a5,-40(s0)		# _21, arr1
	j	.L7		#
.L6:
# problem75.c:20:   else if(sum1 > sum2){
	lw	a5,-24(s0)		# tmp123, sum1
	mv	a4,a5	# tmp122, tmp123
	lw	a5,-20(s0)		# tmp125, sum2
	sext.w	a4,a4	# tmp126, tmp122
	sext.w	a5,a5	# tmp127, tmp124
	ble	a4,a5,.L8	#, tmp126, tmp127,
# problem75.c:21:     return arr2;
	ld	a5,-56(s0)		# _21, arr2
	j	.L7		#
.L8:
# problem75.c:24:     return arr1;
	ld	a5,-40(s0)		# _21, arr1
.L7:
# problem75.c:27: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
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
	sd	a0,-40(s0)	# arr1, arr1
	mv	a5,a1	# tmp83, n1
	sd	a2,-56(s0)	# arr2, arr2
	mv	a4,a3	# tmp85, n2
	sw	a5,-44(s0)	# tmp84, n1
	mv	a5,a4	# tmp86, tmp85
	sw	a5,-48(s0)	# tmp86, n2
# problem75.c:43:   if(n1 != n2) return 0;
	lw	a5,-44(s0)		# tmp88, n1
	mv	a4,a5	# tmp87, tmp88
	lw	a5,-48(s0)		# tmp90, n2
	sext.w	a4,a4	# tmp91, tmp87
	sext.w	a5,a5	# tmp92, tmp89
	beq	a4,a5,.L10	#, tmp91, tmp92,
# problem75.c:43:   if(n1 != n2) return 0;
	li	a5,0		# _11,
	j	.L11		#
.L10:
# problem75.c:45:   for(i=0; i<n1; i++){
	sw	zero,-20(s0)	#, i
# problem75.c:45:   for(i=0; i<n1; i++){
	j	.L12		#
.L14:
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp93, arr1
	add	a5,a4,a5	# _2, _3, tmp93
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp94, arr2
	add	a5,a4,a5	# _6, _7, tmp94
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp95,
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	beq	a5,zero,.L13	#, _9,,
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	li	a5,0		# _11,
	j	.L11		#
.L13:
# problem75.c:45:   for(i=0; i<n1; i++){
	lw	a5,-20(s0)		# tmp98, i
	addiw	a5,a5,1	#, tmp96, tmp97
	sw	a5,-20(s0)	# tmp96, i
.L12:
# problem75.c:45:   for(i=0; i<n1; i++){
	lw	a5,-20(s0)		# tmp100, i
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-44(s0)		# tmp102, n1
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	blt	a4,a5,.L14	#, tmp103, tmp104,
# problem75.c:49:   return 1;
	li	a5,1		# _11,
.L11:
# problem75.c:51: }
	mv	a0,a5	#, <retval>
	ld	ra,56(sp)		#,
	ld	s0,48(sp)		#,
	addi	sp,sp,64	#,,
	jr	ra		#
	.size	issame, .-issame
	.section	.rodata
	.align	3
.LC0:
	.string	"hi"
	.align	3
.LC1:
	.string	"admin"
	.align	3
.LC2:
	.string	"project"
	.data
	.align	3
.LC4:
	.dword	.LC0
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-128	#,,
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	addi	s0,sp,128	#,,
# problem75.c:59: int main(){
	la	a5,__stack_chk_guard		# tmp77,
	ld	a4, 0(a5)	# tmp117, __stack_chk_guard
	sd	a4, -24(s0)	# tmp117, D.2658
	li	a4, 0	# tmp117
# problem75.c:63:   int n1 = 0, n2 = 0;
	sw	zero,-128(s0)	#, n1
# problem75.c:63:   int n1 = 0, n2 = 0;
	sw	zero,-124(s0)	#, n2
# problem75.c:64:   issame(func0(arr1, n1, arr2, n2), n1, arr2, n2);
	lw	a3,-124(s0)		# tmp78, n2
	addi	a2,s0,-112	#, tmp79,
	lw	a4,-128(s0)		# tmp80, n1
	addi	a5,s0,-120	#, tmp81,
	mv	a1,a4	#, tmp80
	mv	a0,a5	#, tmp81
	call	func0		#
	lw	a3,-124(s0)		# tmp82, n2
	addi	a4,s0,-112	#, tmp83,
	lw	a5,-128(s0)		# tmp84, n1
	mv	a2,a4	#, tmp83
	mv	a1,a5	#, tmp84
	call	issame		#
# problem75.c:66:   char* arr3[] = {"hi", "admin"};
	lla	a5,.LC0	# tmp85,
	sd	a5,-104(s0)	# tmp85, arr3[0]
	lla	a5,.LC1	# tmp86,
	sd	a5,-96(s0)	# tmp86, arr3[1]
# problem75.c:67:   char* arr4[] = {"hi", "hi"};
	lla	a5,.LC0	# tmp87,
	sd	a5,-88(s0)	# tmp87, arr4[0]
	lla	a5,.LC0	# tmp88,
	sd	a5,-80(s0)	# tmp88, arr4[1]
# problem75.c:68:   n1 = 2; n2 = 2;
	li	a5,2		# tmp89,
	sw	a5,-128(s0)	# tmp89, n1
# problem75.c:68:   n1 = 2; n2 = 2;
	li	a5,2		# tmp90,
	sw	a5,-124(s0)	# tmp90, n2
# problem75.c:69:   issame(func0(arr3, n1, arr4, n2), n1, arr4, n2);
	lw	a3,-124(s0)		# tmp91, n2
	addi	a2,s0,-88	#, tmp92,
	lw	a4,-128(s0)		# tmp93, n1
	addi	a5,s0,-104	#, tmp94,
	mv	a1,a4	#, tmp93
	mv	a0,a5	#, tmp94
	call	func0		#
	lw	a3,-124(s0)		# tmp95, n2
	addi	a4,s0,-88	#, tmp96,
	lw	a5,-128(s0)		# tmp97, n1
	mv	a2,a4	#, tmp96
	mv	a1,a5	#, tmp97
	call	issame		#
# problem75.c:71:   char* arr5[] = {"hi", "admin"};
	lla	a5,.LC0	# tmp98,
	sd	a5,-72(s0)	# tmp98, arr5[0]
	lla	a5,.LC1	# tmp99,
	sd	a5,-64(s0)	# tmp99, arr5[1]
# problem75.c:72:   char* arr6[] = {"hi", "hi", "admin", "project"};
	lla	a5,.LC4	# tmp100,
	ld	a2,0(a5)		# tmp101,
	ld	a3,8(a5)		# tmp102,
	ld	a4,16(a5)		# tmp103,
	ld	a5,24(a5)		# tmp104,
	sd	a2,-56(s0)	# tmp101, arr6
	sd	a3,-48(s0)	# tmp102, arr6
	sd	a4,-40(s0)	# tmp103, arr6
	sd	a5,-32(s0)	# tmp104, arr6
# problem75.c:73:   n1 = 2; n2 = 4;
	li	a5,2		# tmp105,
	sw	a5,-128(s0)	# tmp105, n1
# problem75.c:73:   n1 = 2; n2 = 4;
	li	a5,4		# tmp106,
	sw	a5,-124(s0)	# tmp106, n2
# problem75.c:74:   issame(func0(arr5, n1, arr6, n2), n1, arr5, n1);
	lw	a3,-124(s0)		# tmp107, n2
	addi	a2,s0,-56	#, tmp108,
	lw	a4,-128(s0)		# tmp109, n1
	addi	a5,s0,-72	#, tmp110,
	mv	a1,a4	#, tmp109
	mv	a0,a5	#, tmp110
	call	func0		#
	lw	a3,-128(s0)		# tmp111, n1
	addi	a4,s0,-72	#, tmp112,
	lw	a5,-128(s0)		# tmp113, n1
	mv	a2,a4	#, tmp112
	mv	a1,a5	#, tmp113
	call	issame		#
# problem75.c:78:   return 0;
	li	a5,0		# _26,
# problem75.c:79: }
	mv	a4,a5	# <retval>, _26
	la	a5,__stack_chk_guard		# tmp115,
	ld	a3, -24(s0)	# tmp118, D.2658
	ld	a5, 0(a5)	# tmp116, __stack_chk_guard
	xor	a5, a3, a5	# tmp116, tmp118
	li	a3, 0	# tmp118
	beq	a5,zero,.L17	#, tmp116,,
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	ld	s0,112(sp)		#,
	addi	sp,sp,128	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
