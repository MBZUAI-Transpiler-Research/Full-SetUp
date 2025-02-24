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
# code.c:7:   int i, sum1 = 0, sum2 = 0;
	sw	zero,-24(s0)	#, sum1
# code.c:7:   int i, sum1 = 0, sum2 = 0;
	sw	zero,-20(s0)	#, sum2
# code.c:9:   for(i=0; i<n1; i++){
	sw	zero,-28(s0)	#, i
# code.c:9:   for(i=0; i<n1; i++){
	j	.L2		#
.L3:
# code.c:10:     sum1 += strlen(arr1[i]);
	lw	a5,-28(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-40(s0)		# tmp156, arr1
	add	a5,a4,a5	# _2, _3, tmp156
# code.c:10:     sum1 += strlen(arr1[i]);
	ld	a5,0(a5)		# _4, *_3
	mv	a0,a5	#, _4
	call	strlen@plt	#
	mv	a5,a0	# _5,
# code.c:10:     sum1 += strlen(arr1[i]);
	sext.w	a4,a5	# _6, _5
	lw	a5,-24(s0)		# sum1.0_7, sum1
	addw	a5,a4,a5	# sum1.0_7, tmp157, _6
	sext.w	a5,a5	# _8, tmp157
	sw	a5,-24(s0)	# _8, sum1
# code.c:9:   for(i=0; i<n1; i++){
	lw	a5,-28(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-28(s0)	# tmp158, i
.L2:
# code.c:9:   for(i=0; i<n1; i++){
	lw	a5,-28(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, n1
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L3	#, tmp165, tmp166,
# code.c:13:   for(i=0; i<n2; i++){
	sw	zero,-28(s0)	#, i
# code.c:13:   for(i=0; i<n2; i++){
	j	.L4		#
.L5:
# code.c:14:     sum2 += strlen(arr2[i]); 
	lw	a5,-28(s0)		# _9, i
	slli	a5,a5,3	#, _10, _9
	ld	a4,-56(s0)		# tmp167, arr2
	add	a5,a4,a5	# _10, _11, tmp167
# code.c:14:     sum2 += strlen(arr2[i]); 
	ld	a5,0(a5)		# _12, *_11
	mv	a0,a5	#, _12
	call	strlen@plt	#
	mv	a5,a0	# _13,
# code.c:14:     sum2 += strlen(arr2[i]); 
	sext.w	a4,a5	# _14, _13
	lw	a5,-20(s0)		# sum2.1_15, sum2
	addw	a5,a4,a5	# sum2.1_15, tmp168, _14
	sext.w	a5,a5	# _16, tmp168
	sw	a5,-20(s0)	# _16, sum2
# code.c:13:   for(i=0; i<n2; i++){
	lw	a5,-28(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-28(s0)	# tmp169, i
.L4:
# code.c:13:   for(i=0; i<n2; i++){
	lw	a5,-28(s0)		# tmp173, i
	mv	a4,a5	# tmp172, tmp173
	lw	a5,-48(s0)		# tmp175, n2
	sext.w	a4,a4	# tmp176, tmp172
	sext.w	a5,a5	# tmp177, tmp174
	blt	a4,a5,.L5	#, tmp176, tmp177,
# code.c:17:   if(sum1 < sum2){
	lw	a5,-24(s0)		# tmp179, sum1
	mv	a4,a5	# tmp178, tmp179
	lw	a5,-20(s0)		# tmp181, sum2
	sext.w	a4,a4	# tmp182, tmp178
	sext.w	a5,a5	# tmp183, tmp180
	bge	a4,a5,.L6	#, tmp182, tmp183,
# code.c:18:     return arr1;
	ld	a5,-40(s0)		# _21, arr1
	j	.L7		#
.L6:
# code.c:20:   else if(sum1 > sum2){
	lw	a5,-24(s0)		# tmp185, sum1
	mv	a4,a5	# tmp184, tmp185
	lw	a5,-20(s0)		# tmp187, sum2
	sext.w	a4,a4	# tmp188, tmp184
	sext.w	a5,a5	# tmp189, tmp186
	ble	a4,a5,.L8	#, tmp188, tmp189,
# code.c:21:     return arr2;
	ld	a5,-56(s0)		# _21, arr2
	j	.L7		#
.L8:
# code.c:24:     return arr1;
	ld	a5,-40(s0)		# _21, arr1
.L7:
# code.c:27: }
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
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
