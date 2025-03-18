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
	sd	a0,-56(s0)	# values, values
	sd	a1,-64(s0)	# size, size
# eval/problem23//code.c:6: int *func0(const char *values, int *size) {
	la	a5,__stack_chk_guard		# tmp162,
	ld	a4, 0(a5)	# tmp193, __stack_chk_guard
	sd	a4, -24(s0)	# tmp193, D.3575
	li	a4, 0	# tmp193
# eval/problem23//code.c:8:     int count = 0;
	sw	zero,-48(s0)	#, count
# eval/problem23//code.c:9:     const char *start = values;
	ld	a5,-56(s0)		# tmp163, values
	sd	a5,-32(s0)	# tmp163, start
# eval/problem23//code.c:11:     while (*start) {
	j	.L2		#
.L5:
# eval/problem23//code.c:13:             start++;
	ld	a5,-32(s0)		# tmp165, start
	addi	a5,a5,1	#, tmp164, tmp165
	sd	a5,-32(s0)	# tmp164, start
.L3:
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ld	a5,-32(s0)		# tmp166, start
	lbu	a5,0(a5)	# _1, *start_29
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	beq	a5,zero,.L4	#, _1,,
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _2,
	ld	a4,0(a5)		# _3, *_2
	ld	a5,-32(s0)		# tmp167, start
	lbu	a5,0(a5)	# _4, *start_29
	slli	a5,a5,1	#, _6, _5
	add	a5,a4,a5	# _6, _7, _3
	lhu	a5,0(a5)	# _8, *_7
	sext.w	a4,a5	# _9, _8
	li	a5,4096		# tmp170,
	addi	a5,a5,-2048	#, tmp169, tmp170
	and	a5,a4,a5	# tmp169, tmp168, _9
	sext.w	a5,a5	# _10, tmp168
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	bne	a5,zero,.L4	#, _10,,
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ld	a5,-32(s0)		# tmp171, start
	lbu	a5,0(a5)	# _11, *start_29
# eval/problem23//code.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	mv	a4,a5	# tmp172, _11
	li	a5,45		# tmp173,
	bne	a4,a5,.L5	#, tmp172, tmp173,
.L4:
# eval/problem23//code.c:15:         if (!*start) {
	ld	a5,-32(s0)		# tmp174, start
	lbu	a5,0(a5)	# _12, *start_29
# eval/problem23//code.c:15:         if (!*start) {
	beq	a5,zero,.L16	#, _12,,
# eval/problem23//code.c:18:         int val = (int) strtol(start, &end, 10);
	addi	a5,s0,-40	#, tmp175,
	li	a2,10		#,
	mv	a1,a5	#, tmp175
	ld	a0,-32(s0)		#, start
	call	strtol@plt	#
	mv	a5,a0	# _13,
# eval/problem23//code.c:18:         int val = (int) strtol(start, &end, 10);
	sw	a5,-44(s0)	# _13, val
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ld	a5,-40(s0)		# end.0_14, end
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ld	a4,-32(s0)		# tmp176, start
	beq	a4,a5,.L11	#, tmp176, end.0_14,
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ld	a5,-40(s0)		# end.1_15, end
	lbu	a5,0(a5)	# _16, *end.1_15
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	mv	a4,a5	# tmp177, _16
	li	a5,44		# tmp178,
	beq	a4,a5,.L9	#, tmp177, tmp178,
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ld	a5,-40(s0)		# end.2_17, end
	lbu	a5,0(a5)	# _18, *end.2_17
# eval/problem23//code.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	bne	a5,zero,.L11	#, _18,,
.L9:
# eval/problem23//code.c:20:             out[count++] = val;
	lw	a5,-48(s0)		# count.3_19, count
	addiw	a4,a5,1	#, tmp179, count.3_19
	sw	a4,-48(s0)	# tmp179, count
# eval/problem23//code.c:20:             out[count++] = val;
	lla	a4,out.0	# tmp180,
	slli	a5,a5,2	#, tmp181, count.3_19
	add	a5,a4,a5	# tmp181, tmp182, tmp180
	lw	a4,-44(s0)		# tmp183, val
	sw	a4,0(a5)	# tmp183, out[count.3_19]
	j	.L10		#
.L12:
# eval/problem23//code.c:23:                 end++;
	ld	a5,-40(s0)		# end.4_20, end
	addi	a5,a5,1	#, _21, end.4_20
	sd	a5,-40(s0)	# _21, end
.L11:
# eval/problem23//code.c:22:             while (*end && *end != ',') {
	ld	a5,-40(s0)		# end.5_22, end
	lbu	a5,0(a5)	# _23, *end.5_22
# eval/problem23//code.c:22:             while (*end && *end != ',') {
	beq	a5,zero,.L10	#, _23,,
# eval/problem23//code.c:22:             while (*end && *end != ',') {
	ld	a5,-40(s0)		# end.6_24, end
	lbu	a5,0(a5)	# _25, *end.6_24
# eval/problem23//code.c:22:             while (*end && *end != ',') {
	mv	a4,a5	# tmp184, _25
	li	a5,44		# tmp185,
	bne	a4,a5,.L12	#, tmp184, tmp185,
.L10:
# eval/problem23//code.c:26:         start = end;
	ld	a5,-40(s0)		# tmp186, end
	sd	a5,-32(s0)	# tmp186, start
.L2:
# eval/problem23//code.c:11:     while (*start) {
	ld	a5,-32(s0)		# tmp187, start
	lbu	a5,0(a5)	# _26, *start_30
	bne	a5,zero,.L3	#, _26,,
	j	.L7		#
.L16:
# eval/problem23//code.c:16:             break;
	nop	
.L7:
# eval/problem23//code.c:28:     *size = count;
	ld	a5,-64(s0)		# tmp188, size
	lw	a4,-48(s0)		# tmp189, count
	sw	a4,0(a5)	# tmp189, *size_45(D)
# eval/problem23//code.c:29:     return out;
	lla	a5,out.0	# _47,
	mv	a4,a5	# <retval>, _47
# eval/problem23//code.c:30: }
	la	a5,__stack_chk_guard		# tmp191,
	ld	a3, -24(s0)	# tmp194, D.3575
	ld	a5, 0(a5)	# tmp192, __stack_chk_guard
	xor	a5, a3, a5	# tmp192, tmp194
	li	a3, 0	# tmp194
	beq	a5,zero,.L15	#, tmp192,,
	call	__stack_chk_fail@plt	#
.L15:
	mv	a0,a4	#, <retval>
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
	.local	out.0
	.comm	out.0,1024,8
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
