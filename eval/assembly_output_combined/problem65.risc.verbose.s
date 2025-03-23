	.file	"problem65.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
# problem65.c:6:     const char *vowels = "aeiouAEIOU";
	lla	a5,.LC0	# tmp150,
	sd	a5,-24(s0)	# tmp150, vowels
# problem65.c:7:     int count = 0;
	sw	zero,-36(s0)	#, count
# problem65.c:8:     int length = strlen(s);
	ld	a0,-56(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem65.c:8:     int length = strlen(s);
	sw	a5,-28(s0)	# _1, length
# problem65.c:10:     for (int i = 0; i < length; i++) {
	sw	zero,-32(s0)	#, i
# problem65.c:10:     for (int i = 0; i < length; i++) {
	j	.L2		#
.L4:
# problem65.c:11:         if (strchr(vowels, s[i])) {
	lw	a5,-32(s0)		# _2, i
	ld	a4,-56(s0)		# tmp151, s
	add	a5,a4,a5	# _2, _3, tmp151
	lbu	a5,0(a5)	# _4, *_3
# problem65.c:11:         if (strchr(vowels, s[i])) {
	sext.w	a5,a5	# _5, _4
	mv	a1,a5	#, _5
	ld	a0,-24(s0)		#, vowels
	call	strchr@plt	#
	mv	a5,a0	# _6,
# problem65.c:11:         if (strchr(vowels, s[i])) {
	beq	a5,zero,.L3	#, _6,,
# problem65.c:12:             count++;
	lw	a5,-36(s0)		# tmp154, count
	addiw	a5,a5,1	#, tmp152, tmp153
	sw	a5,-36(s0)	# tmp152, count
.L3:
# problem65.c:10:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp157, i
	addiw	a5,a5,1	#, tmp155, tmp156
	sw	a5,-32(s0)	# tmp155, i
.L2:
# problem65.c:10:     for (int i = 0; i < length; i++) {
	lw	a5,-32(s0)		# tmp159, i
	mv	a4,a5	# tmp158, tmp159
	lw	a5,-28(s0)		# tmp161, length
	sext.w	a4,a4	# tmp162, tmp158
	sext.w	a5,a5	# tmp163, tmp160
	blt	a4,a5,.L4	#, tmp162, tmp163,
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# tmp165, length
	sext.w	a5,a5	# tmp166, tmp164
	ble	a5,zero,.L5	#, tmp166,,
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# _7, length
	addi	a5,a5,-1	#, _8, _7
	ld	a4,-56(s0)		# tmp167, s
	add	a5,a4,a5	# _8, _9, tmp167
	lbu	a5,0(a5)	# _10, *_9
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	mv	a4,a5	# tmp168, _10
	li	a5,121		# tmp169,
	beq	a4,a5,.L6	#, tmp168, tmp169,
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	lw	a5,-28(s0)		# _11, length
	addi	a5,a5,-1	#, _12, _11
	ld	a4,-56(s0)		# tmp170, s
	add	a5,a4,a5	# _12, _13, tmp170
	lbu	a5,0(a5)	# _14, *_13
# problem65.c:16:     if (length > 0 && (s[length - 1] == 'y' || s[length - 1] == 'Y')) {
	mv	a4,a5	# tmp171, _14
	li	a5,89		# tmp172,
	bne	a4,a5,.L5	#, tmp171, tmp172,
.L6:
# problem65.c:17:         count++;
	lw	a5,-36(s0)		# tmp175, count
	addiw	a5,a5,1	#, tmp173, tmp174
	sw	a5,-36(s0)	# tmp173, count
.L5:
# problem65.c:20:     return count;
	lw	a5,-36(s0)		# _26, count
# problem65.c:21: }
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
	.section	.rodata
	.align	3
.LC1:
	.string	"abcde"
	.align	3
.LC2:
	.string	"problem65.c"
	.align	3
.LC3:
	.string	"func0(\"abcde\") == 2"
	.align	3
.LC4:
	.string	"Alone"
	.align	3
.LC5:
	.string	"func0(\"Alone\") == 3"
	.align	3
.LC6:
	.string	"key"
	.align	3
.LC7:
	.string	"func0(\"key\") == 2"
	.align	3
.LC8:
	.string	"bye"
	.align	3
.LC9:
	.string	"func0(\"bye\") == 1"
	.align	3
.LC10:
	.string	"keY"
	.align	3
.LC11:
	.string	"func0(\"keY\") == 2"
	.align	3
.LC12:
	.string	"bYe"
	.align	3
.LC13:
	.string	"func0(\"bYe\") == 1"
	.align	3
.LC14:
	.string	"ACEDY"
	.align	3
.LC15:
	.string	"func0(\"ACEDY\") == 3"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
# problem65.c:28:     assert(func0("abcde") == 2);
	lla	a0,.LC1	#,
	call	func0		#
	mv	a5,a0	# tmp143,
# problem65.c:28:     assert(func0("abcde") == 2);
	mv	a4,a5	# tmp144, _1
	li	a5,2		# tmp145,
	beq	a4,a5,.L9	#, tmp144, tmp145,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,28		#,
	lla	a1,.LC2	#,
	lla	a0,.LC3	#,
	call	__assert_fail@plt	#
.L9:
# problem65.c:29:     assert(func0("Alone") == 3);
	lla	a0,.LC4	#,
	call	func0		#
	mv	a5,a0	# tmp146,
# problem65.c:29:     assert(func0("Alone") == 3);
	mv	a4,a5	# tmp147, _2
	li	a5,3		# tmp148,
	beq	a4,a5,.L10	#, tmp147, tmp148,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,29		#,
	lla	a1,.LC2	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L10:
# problem65.c:30:     assert(func0("key") == 2);
	lla	a0,.LC6	#,
	call	func0		#
	mv	a5,a0	# tmp149,
# problem65.c:30:     assert(func0("key") == 2);
	mv	a4,a5	# tmp150, _3
	li	a5,2		# tmp151,
	beq	a4,a5,.L11	#, tmp150, tmp151,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,30		#,
	lla	a1,.LC2	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L11:
# problem65.c:31:     assert(func0("bye") == 1);
	lla	a0,.LC8	#,
	call	func0		#
	mv	a5,a0	# tmp152,
# problem65.c:31:     assert(func0("bye") == 1);
	mv	a4,a5	# tmp153, _4
	li	a5,1		# tmp154,
	beq	a4,a5,.L12	#, tmp153, tmp154,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,31		#,
	lla	a1,.LC2	#,
	lla	a0,.LC9	#,
	call	__assert_fail@plt	#
.L12:
# problem65.c:32:     assert(func0("keY") == 2);
	lla	a0,.LC10	#,
	call	func0		#
	mv	a5,a0	# tmp155,
# problem65.c:32:     assert(func0("keY") == 2);
	mv	a4,a5	# tmp156, _5
	li	a5,2		# tmp157,
	beq	a4,a5,.L13	#, tmp156, tmp157,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC2	#,
	lla	a0,.LC11	#,
	call	__assert_fail@plt	#
.L13:
# problem65.c:33:     assert(func0("bYe") == 1);
	lla	a0,.LC12	#,
	call	func0		#
	mv	a5,a0	# tmp158,
# problem65.c:33:     assert(func0("bYe") == 1);
	mv	a4,a5	# tmp159, _6
	li	a5,1		# tmp160,
	beq	a4,a5,.L14	#, tmp159, tmp160,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,33		#,
	lla	a1,.LC2	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L14:
# problem65.c:34:     assert(func0("ACEDY") == 3);
	lla	a0,.LC14	#,
	call	func0		#
	mv	a5,a0	# tmp161,
# problem65.c:34:     assert(func0("ACEDY") == 3);
	mv	a4,a5	# tmp162, _7
	li	a5,3		# tmp163,
	beq	a4,a5,.L15	#, tmp162, tmp163,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,34		#,
	lla	a1,.LC2	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L15:
# problem65.c:36:     return 0;
	li	a5,0		# _23,
# problem65.c:37: }
	mv	a0,a5	#, <retval>
	ld	ra,8(sp)		#,
	.cfi_restore 1
	ld	s0,0(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
