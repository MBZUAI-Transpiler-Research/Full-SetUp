	.file	"problem23.c"
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
# problem23.c:6: int *func0(const char *values, int *size) {
	la	a5,__stack_chk_guard		# tmp162,
	ld	a4, 0(a5)	# tmp193, __stack_chk_guard
	sd	a4, -24(s0)	# tmp193, D.3638
	li	a4, 0	# tmp193
# problem23.c:8:     int count = 0;
	sw	zero,-48(s0)	#, count
# problem23.c:9:     const char *start = values;
	ld	a5,-56(s0)		# tmp163, values
	sd	a5,-32(s0)	# tmp163, start
# problem23.c:11:     while (*start) {
	j	.L2		#
.L5:
# problem23.c:13:             start++;
	ld	a5,-32(s0)		# tmp165, start
	addi	a5,a5,1	#, tmp164, tmp165
	sd	a5,-32(s0)	# tmp164, start
.L3:
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ld	a5,-32(s0)		# tmp166, start
	lbu	a5,0(a5)	# _1, *start_29
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	beq	a5,zero,.L4	#, _1,,
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
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
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	bne	a5,zero,.L4	#, _10,,
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	ld	a5,-32(s0)		# tmp171, start
	lbu	a5,0(a5)	# _11, *start_29
# problem23.c:12:         while (*start && !isdigit(*start) && *start != '-') {
	mv	a4,a5	# tmp172, _11
	li	a5,45		# tmp173,
	bne	a4,a5,.L5	#, tmp172, tmp173,
.L4:
# problem23.c:15:         if (!*start) {
	ld	a5,-32(s0)		# tmp174, start
	lbu	a5,0(a5)	# _12, *start_29
# problem23.c:15:         if (!*start) {
	beq	a5,zero,.L16	#, _12,,
# problem23.c:18:         int val = (int) strtol(start, &end, 10);
	addi	a5,s0,-40	#, tmp175,
	li	a2,10		#,
	mv	a1,a5	#, tmp175
	ld	a0,-32(s0)		#, start
	call	strtol@plt	#
	mv	a5,a0	# _13,
# problem23.c:18:         int val = (int) strtol(start, &end, 10);
	sw	a5,-44(s0)	# _13, val
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ld	a5,-40(s0)		# end.0_14, end
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ld	a4,-32(s0)		# tmp176, start
	beq	a4,a5,.L11	#, tmp176, end.0_14,
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ld	a5,-40(s0)		# end.1_15, end
	lbu	a5,0(a5)	# _16, *end.1_15
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	mv	a4,a5	# tmp177, _16
	li	a5,44		# tmp178,
	beq	a4,a5,.L9	#, tmp177, tmp178,
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	ld	a5,-40(s0)		# end.2_17, end
	lbu	a5,0(a5)	# _18, *end.2_17
# problem23.c:19:         if (start != end && (*end == ',' || *end == '\0')) {
	bne	a5,zero,.L11	#, _18,,
.L9:
# problem23.c:20:             out[count++] = val;
	lw	a5,-48(s0)		# count.3_19, count
	addiw	a4,a5,1	#, tmp179, count.3_19
	sw	a4,-48(s0)	# tmp179, count
# problem23.c:20:             out[count++] = val;
	lla	a4,out.1	# tmp180,
	slli	a5,a5,2	#, tmp181, count.3_19
	add	a5,a4,a5	# tmp181, tmp182, tmp180
	lw	a4,-44(s0)		# tmp183, val
	sw	a4,0(a5)	# tmp183, out[count.3_19]
	j	.L10		#
.L12:
# problem23.c:23:                 end++;
	ld	a5,-40(s0)		# end.4_20, end
	addi	a5,a5,1	#, _21, end.4_20
	sd	a5,-40(s0)	# _21, end
.L11:
# problem23.c:22:             while (*end && *end != ',') {
	ld	a5,-40(s0)		# end.5_22, end
	lbu	a5,0(a5)	# _23, *end.5_22
# problem23.c:22:             while (*end && *end != ',') {
	beq	a5,zero,.L10	#, _23,,
# problem23.c:22:             while (*end && *end != ',') {
	ld	a5,-40(s0)		# end.6_24, end
	lbu	a5,0(a5)	# _25, *end.6_24
# problem23.c:22:             while (*end && *end != ',') {
	mv	a4,a5	# tmp184, _25
	li	a5,44		# tmp185,
	bne	a4,a5,.L12	#, tmp184, tmp185,
.L10:
# problem23.c:26:         start = end;
	ld	a5,-40(s0)		# tmp186, end
	sd	a5,-32(s0)	# tmp186, start
.L2:
# problem23.c:11:     while (*start) {
	ld	a5,-32(s0)		# tmp187, start
	lbu	a5,0(a5)	# _26, *start_30
	bne	a5,zero,.L3	#, _26,,
	j	.L7		#
.L16:
# problem23.c:16:             break;
	nop	
.L7:
# problem23.c:28:     *size = count;
	ld	a5,-64(s0)		# tmp188, size
	lw	a4,-48(s0)		# tmp189, count
	sw	a4,0(a5)	# tmp189, *size_45(D)
# problem23.c:29:     return out;
	lla	a5,out.1	# _47,
	mv	a4,a5	# <retval>, _47
# problem23.c:30: }
	la	a5,__stack_chk_guard		# tmp191,
	ld	a3, -24(s0)	# tmp194, D.3638
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
	.align	1
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)	# a, a
	mv	a5,a1	# tmp144, size_a
	sd	a2,-56(s0)	# b, b
	mv	a4,a3	# tmp146, size_b
	sw	a5,-44(s0)	# tmp145, size_a
	mv	a5,a4	# tmp147, tmp146
	sw	a5,-48(s0)	# tmp147, size_b
# problem23.c:41:     if (size_a != size_b) return 0;
	lw	a5,-44(s0)		# tmp149, size_a
	mv	a4,a5	# tmp148, tmp149
	lw	a5,-48(s0)		# tmp151, size_b
	sext.w	a4,a4	# tmp152, tmp148
	sext.w	a5,a5	# tmp153, tmp150
	beq	a4,a5,.L18	#, tmp152, tmp153,
# problem23.c:41:     if (size_a != size_b) return 0;
	li	a5,0		# _10,
# problem23.c:41:     if (size_a != size_b) return 0;
	j	.L19		#
.L18:
# problem23.c:42:     for (int i = 0; i < size_a; i++) {
	sw	zero,-20(s0)	#, i
# problem23.c:42:     for (int i = 0; i < size_a; i++) {
	j	.L20		#
.L22:
# problem23.c:43:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _1, i
	slli	a5,a5,2	#, _2, _1
	ld	a4,-40(s0)		# tmp154, a
	add	a5,a4,a5	# _2, _3, tmp154
	lw	a3,0(a5)		# _4, *_3
# problem23.c:43:         if (a[i] != b[i]) return 0;
	lw	a5,-20(s0)		# _5, i
	slli	a5,a5,2	#, _6, _5
	ld	a4,-56(s0)		# tmp155, b
	add	a5,a4,a5	# _6, _7, tmp155
	lw	a5,0(a5)		# _8, *_7
# problem23.c:43:         if (a[i] != b[i]) return 0;
	mv	a4,a3	# tmp156, _4
	beq	a4,a5,.L21	#, tmp156, tmp157,
# problem23.c:43:         if (a[i] != b[i]) return 0;
	li	a5,0		# _10,
# problem23.c:43:         if (a[i] != b[i]) return 0;
	j	.L19		#
.L21:
# problem23.c:42:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp160, i
	addiw	a5,a5,1	#, tmp158, tmp159
	sw	a5,-20(s0)	# tmp158, i
.L20:
# problem23.c:42:     for (int i = 0; i < size_a; i++) {
	lw	a5,-20(s0)		# tmp162, i
	mv	a4,a5	# tmp161, tmp162
	lw	a5,-44(s0)		# tmp164, size_a
	sext.w	a4,a4	# tmp165, tmp161
	sext.w	a5,a5	# tmp166, tmp163
	blt	a4,a5,.L22	#, tmp165, tmp166,
# problem23.c:45:     return 1;
	li	a5,1		# _10,
.L19:
# problem23.c:46: }
	mv	a0,a5	#, <retval>
	ld	s0,56(sp)		#,
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
	.string	""
	.align	3
.LC1:
	.string	"problem23.c"
	.align	3
.LC2:
	.string	"issame(result1, size, (int[]){}, 0)"
	.align	3
.LC3:
	.string	"4,,23.2,9,adasd"
	.align	3
.LC4:
	.string	"issame(result2, size, (int[]){4, 9}, 2)"
	.align	3
.LC5:
	.string	"3,c,3,3,a,b"
	.align	3
.LC6:
	.string	"issame(result3, size, (int[]){3, 3, 3}, 3)"
	.align	3
.LC7:
	.string	"All tests passed."
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
# problem23.c:48: int main() {
	la	a5,__stack_chk_guard		# tmp142,
	ld	a4, 0(a5)	# tmp160, __stack_chk_guard
	sd	a4, -24(s0)	# tmp160, D.3642
	li	a4, 0	# tmp160
# problem23.c:52:     int *result1 = func0("", &size);
	addi	a5,s0,-68	#, tmp143,
	mv	a1,a5	#, tmp143
	lla	a0,.LC0	#,
	call	func0		#
	sd	a0,-64(s0)	#, result1
# problem23.c:53:     assert(issame(result1, size, (int[]){}, 0));
	lw	a5,-68(s0)		# size.7_1, size
	addi	a4,s0,-40	#, tmp144,
	li	a3,0		#,
	mv	a2,a4	#, tmp144
	mv	a1,a5	#, size.7_1
	ld	a0,-64(s0)		#, result1
	call	issame		#
	mv	a5,a0	# tmp145,
# problem23.c:53:     assert(issame(result1, size, (int[]){}, 0));
	bne	a5,zero,.L24	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L24:
# problem23.c:56:     int *result2 = func0("4,,23.2,9,adasd", &size);
	addi	a5,s0,-68	#, tmp146,
	mv	a1,a5	#, tmp146
	lla	a0,.LC3	#,
	call	func0		#
	sd	a0,-56(s0)	#, result2
# problem23.c:57:     assert(issame(result2, size, (int[]){4, 9}, 2));
	lw	a4,-68(s0)		# size.8_3, size
	li	a5,4		# tmp147,
	sw	a5,-40(s0)	# tmp147, MEM[(int[2] *)_35][0]
	li	a5,9		# tmp148,
	sw	a5,-36(s0)	# tmp148, MEM[(int[2] *)_35][1]
	addi	a5,s0,-40	#, tmp149,
	li	a3,2		#,
	mv	a2,a5	#, tmp149
	mv	a1,a4	#, size.8_3
	ld	a0,-56(s0)		#, result2
	call	issame		#
	mv	a5,a0	# tmp150,
# problem23.c:57:     assert(issame(result2, size, (int[]){4, 9}, 2));
	bne	a5,zero,.L25	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,57		#,
	lla	a1,.LC1	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L25:
# problem23.c:60:     int *result3 = func0("3,c,3,3,a,b", &size);
	addi	a5,s0,-68	#, tmp151,
	mv	a1,a5	#, tmp151
	lla	a0,.LC5	#,
	call	func0		#
	sd	a0,-48(s0)	#, result3
# problem23.c:61:     assert(issame(result3, size, (int[]){3, 3, 3}, 3));
	lw	a4,-68(s0)		# size.9_5, size
	li	a5,3		# tmp152,
	sw	a5,-40(s0)	# tmp152, MEM[(int[3] *)_35][0]
	li	a5,3		# tmp153,
	sw	a5,-36(s0)	# tmp153, MEM[(int[3] *)_35][1]
	li	a5,3		# tmp154,
	sw	a5,-32(s0)	# tmp154, MEM[(int[3] *)_35][2]
	addi	a5,s0,-40	#, tmp155,
	li	a3,3		#,
	mv	a2,a5	#, tmp155
	mv	a1,a4	#, size.9_5
	ld	a0,-48(s0)		#, result3
	call	issame		#
	mv	a5,a0	# tmp156,
# problem23.c:61:     assert(issame(result3, size, (int[]){3, 3, 3}, 3));
	bne	a5,zero,.L26	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,61		#,
	lla	a1,.LC1	#,
	lla	a0,.LC6	#,
	call	__assert_fail@plt	#
.L26:
# problem23.c:63:     printf("All tests passed.\n");
	lla	a0,.LC7	#,
	call	puts@plt	#
# problem23.c:64:     return 0;
	li	a5,0		# _29,
# problem23.c:65: }
	mv	a4,a5	# <retval>, _29
	la	a5,__stack_chk_guard		# tmp158,
	ld	a3, -24(s0)	# tmp161, D.3642
	ld	a5, 0(a5)	# tmp159, __stack_chk_guard
	xor	a5, a3, a5	# tmp159, tmp161
	li	a3, 0	# tmp161
	beq	a5,zero,.L28	#, tmp159,,
	call	__stack_chk_fail@plt	#
.L28:
	mv	a0,a4	#, <retval>
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.local	out.1
	.comm	out.1,1024,8
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
