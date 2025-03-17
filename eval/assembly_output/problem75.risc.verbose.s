	.file	"problem75.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# arr1, arr1
	mv	a5,a1	# tmp152, n1
	sd	a2,-56(s0)	# arr2, arr2
	mv	a4,a3	# tmp154, n2
	sw	a5,-44(s0)	# tmp153, n1
	mv	a5,a4	# tmp155, tmp154
	sw	a5,-48(s0)	# tmp155, n2
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
	ld	a4,-40(s0)		# tmp156, arr1
	add	a5,a4,a5	# _2, _3, tmp156
# problem75.c:10:     sum1 += strlen(arr1[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# problem75.c:10:     sum1 += strlen(arr1[i]);
	sext.w	a4,a5	# _6, _5
	lw	a5,-24(s0)		# sum1.0_7, sum1
	addw	a5,a4,a5	# sum1.0_7, tmp157, _6
	sext.w	a5,a5	# _8, tmp157
	sw	a5,-24(s0)	# _8, sum1
# problem75.c:9:   for(i=0; i<n1; i++){
	lw	a5,-28(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-28(s0)	# tmp158, i
.L2:
# problem75.c:9:   for(i=0; i<n1; i++){
	lw	a5,-28(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, n1
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L3	#, tmp165, tmp166,
# problem75.c:13:   for(i=0; i<n2; i++){
	sw	zero,-28(s0)	#, i
# problem75.c:13:   for(i=0; i<n2; i++){
	j	.L4		#
.L5:
# problem75.c:14:     sum2 += strlen(arr2[i]); 
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-56(s0)		# tmp167, arr2
	add	a5,a4,a5	# _10, _11, tmp167
# problem75.c:14:     sum2 += strlen(arr2[i]); 
	ld	a5,0(a5)		# _12, *_11
	mv	a0,a5	#, _12
	call	strlen@plt	#
	mv	a5,a0	# _13,
# problem75.c:14:     sum2 += strlen(arr2[i]); 
	sext.w	a4,a5	# _14, _13
	lw	a5,-20(s0)		# sum2.1_15, sum2
	addw	a5,a4,a5	# sum2.1_15, tmp168, _14
	sext.w	a5,a5	# _16, tmp168
	sw	a5,-20(s0)	# _16, sum2
# problem75.c:13:   for(i=0; i<n2; i++){
	lw	a5,-28(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-28(s0)	# tmp169, i
.L4:
# problem75.c:13:   for(i=0; i<n2; i++){
	lw	a5,-28(s0)		# tmp173, i
	mv	a4,a5	# tmp172, tmp173
	lw	a5,-48(s0)		# tmp175, n2
	sext.w	a4,a4	# tmp176, tmp172
	sext.w	a5,a5	# tmp177, tmp174
	blt	a4,a5,.L5	#, tmp176, tmp177,
# problem75.c:17:   if(sum1 < sum2){
	lw	a5,-24(s0)		# tmp179, sum1
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-20(s0)		# tmp181, sum2
	sext.w	a4,a4	# tmp182, tmp178
	sext.w	a5,a5	# tmp183, tmp180
	bge	a4,a5,.L6	#, tmp182, tmp183,
# problem75.c:18:     return arr1;
	ld	a5,-40(s0)		# _21, arr1
	j	.L7		#
.L6:
# problem75.c:20:   else if(sum1 > sum2){
	lw	a5,-24(s0)		# tmp185, sum1
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-20(s0)		# tmp187, sum2
	sext.w	a4,a4	# tmp188, tmp184
	sext.w	a5,a5	# tmp189, tmp186
	ble	a4,a5,.L8	#, tmp188, tmp189,
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
	.cfi_restore 1
	ld	s0,48(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64	#,,
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
	sd	a0,-40(s0)	# arr1, arr1
	mv	a5,a1	# tmp145, n1
	sd	a2,-56(s0)	# arr2, arr2
	mv	a4,a3	# tmp147, n2
	sw	a5,-44(s0)	# tmp146, n1
	mv	a5,a4	# tmp148, tmp147
	sw	a5,-48(s0)	# tmp148, n2
# problem75.c:43:   if(n1 != n2) return 0;
	lw	a5,-44(s0)		# tmp150, n1
	mv	a4,a5	# tmp149, tmp150
	lw	a5,-48(s0)		# tmp152, n2
	sext.w	a4,a4	# tmp153, tmp149
	sext.w	a5,a5	# tmp154, tmp151
	beq	a4,a5,.L10	#, tmp153, tmp154,
# problem75.c:43:   if(n1 != n2) return 0;
	li	a5,0		# _11,
# problem75.c:43:   if(n1 != n2) return 0;
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
	ld	a4,-40(s0)		# tmp155, arr1
	add	a5,a4,a5	# _2, _3, tmp155
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	ld	a3,0(a5)		# _4, *_3
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,3	#, _6, _5
	ld	a4,-56(s0)		# tmp156, arr2
	add	a5,a4,a5	# _6, _7, tmp156
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	ld	a5,0(a5)		# _8, *_7
	mv	a1,a5	#, _8
	mv	a0,a3	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp157,
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	beq	a5,zero,.L13	#, _9,,
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	li	a5,0		# _11,
# problem75.c:46:     if(strcmp(arr1[i], arr2[i]) != 0) return 0;
	j	.L11		#
.L13:
# problem75.c:45:   for(i=0; i<n1; i++){
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L12:
# problem75.c:45:   for(i=0; i<n1; i++){
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, n1
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L14	#, tmp165, tmp166,
# problem75.c:49:   return 1;
	li	a5,1		# _11,
.L11:
# problem75.c:51: }
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
.LFB8:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem75.c:59: int main(){
	la	a5,__stack_chk_guard		# tmp139,
	ld	a4, 0(a5)	# tmp179, __stack_chk_guard
	sd	a4, -24(s0)	# tmp179, D.3510
	li	a4, 0	# tmp179
# problem75.c:63:   int n1 = 0, n2 = 0;
	sw	zero,-128(s0)	#, n1
# problem75.c:63:   int n1 = 0, n2 = 0;
	sw	zero,-124(s0)	#, n2
# problem75.c:64:   issame(func0(arr1, n1, arr2, n2), n1, arr2, n2);
	lw	a3,-124(s0)		# tmp140, n2
	addi	a2,s0,-112	#, tmp141,
	lw	a4,-128(s0)		# tmp142, n1
	addi	a5,s0,-120	#, tmp143,
	mv	a1,a4	#, tmp142
	mv	a0,a5	#, tmp143
	call	func0		#
# problem75.c:64:   issame(func0(arr1, n1, arr2, n2), n1, arr2, n2);
	lw	a3,-124(s0)		# tmp144, n2
	addi	a4,s0,-112	#, tmp145,
	lw	a5,-128(s0)		# tmp146, n1
	mv	a2,a4	#, tmp145
	mv	a1,a5	#, tmp146
	call	issame		#
# problem75.c:66:   char* arr3[] = {"hi", "admin"};
	lla	a5,.LC0	# tmp147,
	sd	a5,-104(s0)	# tmp147, arr3[0]
	lla	a5,.LC1	# tmp148,
	sd	a5,-96(s0)	# tmp148, arr3[1]
# problem75.c:67:   char* arr4[] = {"hi", "hi"};
	lla	a5,.LC0	# tmp149,
	sd	a5,-88(s0)	# tmp149, arr4[0]
	lla	a5,.LC0	# tmp150,
	sd	a5,-80(s0)	# tmp150, arr4[1]
# problem75.c:68:   n1 = 2; n2 = 2;
	li	a5,2		# tmp151,
	sw	a5,-128(s0)	# tmp151, n1
# problem75.c:68:   n1 = 2; n2 = 2;
	li	a5,2		# tmp152,
	sw	a5,-124(s0)	# tmp152, n2
# problem75.c:69:   issame(func0(arr3, n1, arr4, n2), n1, arr4, n2);
	lw	a3,-124(s0)		# tmp153, n2
	addi	a2,s0,-88	#, tmp154,
	lw	a4,-128(s0)		# tmp155, n1
	addi	a5,s0,-104	#, tmp156,
	mv	a1,a4	#, tmp155
	mv	a0,a5	#, tmp156
	call	func0		#
# problem75.c:69:   issame(func0(arr3, n1, arr4, n2), n1, arr4, n2);
	lw	a3,-124(s0)		# tmp157, n2
	addi	a4,s0,-88	#, tmp158,
	lw	a5,-128(s0)		# tmp159, n1
	mv	a2,a4	#, tmp158
	mv	a1,a5	#, tmp159
	call	issame		#
# problem75.c:71:   char* arr5[] = {"hi", "admin"};
	lla	a5,.LC0	# tmp160,
	sd	a5,-72(s0)	# tmp160, arr5[0]
	lla	a5,.LC1	# tmp161,
	sd	a5,-64(s0)	# tmp161, arr5[1]
# problem75.c:72:   char* arr6[] = {"hi", "hi", "admin", "project"};
	lla	a5,.LC4	# tmp162,
	ld	a2,0(a5)		# tmp163,
	ld	a3,8(a5)		# tmp164,
	ld	a4,16(a5)		# tmp165,
	ld	a5,24(a5)		# tmp166,
	sd	a2,-56(s0)	# tmp163, arr6
	sd	a3,-48(s0)	# tmp164, arr6
	sd	a4,-40(s0)	# tmp165, arr6
	sd	a5,-32(s0)	# tmp166, arr6
# problem75.c:73:   n1 = 2; n2 = 4;
	li	a5,2		# tmp167,
	sw	a5,-128(s0)	# tmp167, n1
# problem75.c:73:   n1 = 2; n2 = 4;
	li	a5,4		# tmp168,
	sw	a5,-124(s0)	# tmp168, n2
# problem75.c:74:   issame(func0(arr5, n1, arr6, n2), n1, arr5, n1);
	lw	a3,-124(s0)		# tmp169, n2
	addi	a2,s0,-56	#, tmp170,
	lw	a4,-128(s0)		# tmp171, n1
	addi	a5,s0,-72	#, tmp172,
	mv	a1,a4	#, tmp171
	mv	a0,a5	#, tmp172
	call	func0		#
# problem75.c:74:   issame(func0(arr5, n1, arr6, n2), n1, arr5, n1);
	lw	a3,-128(s0)		# tmp173, n1
	addi	a4,s0,-72	#, tmp174,
	lw	a5,-128(s0)		# tmp175, n1
	mv	a2,a4	#, tmp174
	mv	a1,a5	#, tmp175
	call	issame		#
# problem75.c:78:   return 0;
	li	a5,0		# _24,
# problem75.c:79: }
	mv	a4,a5	# <retval>, _24
	la	a5,__stack_chk_guard		# tmp177,
	ld	a3, -24(s0)	# tmp180, D.3510
	ld	a5, 0(a5)	# tmp178, __stack_chk_guard
	xor	a5, a3, a5	# tmp178, tmp180
	li	a3, 0	# tmp180
	beq	a5,zero,.L17	#, tmp178,,
	call	__stack_chk_fail@plt	#
.L17:
	mv	a0,a4	#, <retval>
	ld	ra,120(sp)		#,
	.cfi_restore 1
	ld	s0,112(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
