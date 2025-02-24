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
	.section	.rodata
	.align	3
.LC0:
	.string	"aeiouAEIOU"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)	# s, s
# code.c:6:     const char *vowels = "aeiouAEIOU";
	lla	a5,.LC0	# tmp150,
	sd	a5,-24(s0)	# tmp150, vowels
# code.c:7:     int count = 0;
	sw	zero,-36(s0)	#, count
# code.c:8:     int length = strlen(s);
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# code.c:8:     int length = strlen(s);
	sw	a5,-28(s0)	# _1, length
# code.c:10:     for (int i = 0; i < length; i++) {
	sw	zero,-32(s0)	#, i
# code.c:10:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L4:
# code.c:11:         if (strchr(vowels, s[i])) {
	lw	a5,-32(s0)		# _2, i
	ld	a4,-56(s0)		# tmp151, s
	add	a5,a4,a5	# _2, _3, tmp151
	lbu	a5,0(a5)	# _4, *_3
# code.c:11:         if (strchr(vowels, s[i])) {
	sext.w	a5,a5	# _5, _4
	mv	a1,a5	#, _5
	ld	a0,-24(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _6,
# code.c:11:         if (strchr(vowels, s[i])) {
	beq	a5,zero,.L3	#, _6,,
# code.c:12:             count++;
	lw	a5,-36(s0)		# tmp154, count
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-36(s0)	# tmp152, count
.L3:
# code.c:10:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp157, i
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-32(s0)	# tmp155, i
.L2:
# code.c:10:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp159, i
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-28(s0)		# tmp161, length
	sext.w	a4,a4	# tmp162, tmp158
	sext.w	a5,a5	# tmp163, tmp160
	blt	a4,a5,.L4	#, tmp162, tmp163,
# code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# tmp165, length
	sext.w	a5,a5	# tmp166, tmp164
	ble	a5,zero,.L5	#, tmp166,,
# code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# _7, length
	addi	a5,a5,-1	#, _8, _7
	ld	a4,-56(s0)		# tmp167, s
	add	a5,a4,a5	# _8, _9, tmp167
	lbu	a5,0(a5)	# _10, *_9
# code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	mv	a4,a5	# tmp168, _10
	li	a5,121		# tmp169,
	beq	a4,a5,.L6	#, tmp168, tmp169,
# code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# _11, length
	addi	a5,a5,-1	#, _12, _11
	ld	a4,-56(s0)		# tmp170, s
	add	a5,a4,a5	# _12, _13, tmp170
	lbu	a5,0(a5)	# _14, *_13
# code.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	mv	a4,a5	# tmp171, _14
	li	a5,89		# tmp172,
	bne	a4,a5,.L5	#, tmp171, tmp172,
.L6:
# code.c:17:         count++;
	lw	a5,-36(s0)		# tmp175, count
	addiw	a5,a5,1	#, tmp173, tmp174
	sw	a5,-36(s0)	# tmp173, count
.L5:
# code.c:20:     return count;
	lw	a5,-36(s0)		# _26, count
# code.c:21: }
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
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
