	.file	"problem94.c"
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
	sd	a0,-56(s0)	# message, message
	sd	a1,-64(s0)	# out, out
# problem94.c:6:     const char* vowels = "aeiouAEIOU";
	lla	a5,.LC0	# tmp169,
	sd	a5,-24(s0)	# tmp169, vowels
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	sw	zero,-32(s0)	#, i
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	j	.L2		#
.L10:
# problem94.c:10:         char w = message[i];
	lw	a5,-32(s0)		# _1, i
	ld	a4,-56(s0)		# tmp170, message
	add	a5,a4,a5	# _1, _2, tmp170
# problem94.c:10:         char w = message[i];
	lbu	a5,0(a5)	# tmp171, *_2
	sb	a5,-33(s0)	# tmp171, w
# problem94.c:11:         if (islower(w)) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _3,
# problem94.c:11:         if (islower(w)) {
	ld	a4,0(a5)		# _4, *_3
	lbu	a5,-33(s0)	# _5, w
	slli	a5,a5,1	#, _6, _5
	add	a5,a4,a5	# _6, _7, _4
	lhu	a5,0(a5)	# _8, *_7
	sext.w	a5,a5	# _9, _8
	andi	a5,a5,512	#, tmp172, _9
	sext.w	a5,a5	# _10, tmp172
# problem94.c:11:         if (islower(w)) {
	beq	a5,zero,.L3	#, _10,,
# problem94.c:12:             w = toupper(w);
	lbu	a5,-33(s0)	# tmp173, w
	sext.w	a5,a5	# _11, tmp173
	mv	a0,a5	#, _11
	call	toupper@plt	#
	mv	a5,a0	# tmp174,
# problem94.c:12:             w = toupper(w);
	sb	a5,-33(s0)	# _12, w
	j	.L4		#
.L3:
# problem94.c:13:         } else if (isupper(w)) {
	call	__ctype_b_loc@plt	#
	mv	a5,a0	# _13,
# problem94.c:13:         } else if (isupper(w)) {
	ld	a4,0(a5)		# _14, *_13
	lbu	a5,-33(s0)	# _15, w
	slli	a5,a5,1	#, _16, _15
	add	a5,a4,a5	# _16, _17, _14
	lhu	a5,0(a5)	# _18, *_17
	sext.w	a5,a5	# _19, _18
	andi	a5,a5,256	#, tmp175, _19
	sext.w	a5,a5	# _20, tmp175
# problem94.c:13:         } else if (isupper(w)) {
	beq	a5,zero,.L4	#, _20,,
# problem94.c:14:             w = tolower(w);
	lbu	a5,-33(s0)	# tmp176, w
	sext.w	a5,a5	# _21, tmp176
	mv	a0,a5	#, _21
	call	tolower@plt	#
	mv	a5,a0	# tmp177,
# problem94.c:14:             w = tolower(w);
	sb	a5,-33(s0)	# _22, w
.L4:
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	sw	zero,-28(s0)	#, j
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	j	.L5		#
.L9:
# problem94.c:18:             if (w == vowels[j]) {
	lw	a5,-28(s0)		# _23, j
	ld	a4,-24(s0)		# tmp178, vowels
	add	a5,a4,a5	# _23, _24, tmp178
	lbu	a4,0(a5)	# _25, *_24
# problem94.c:18:             if (w == vowels[j]) {
	lbu	a5,-33(s0)	# tmp180, w
	andi	a5,a5,0xff	# tmp181, tmp179
	bne	a5,a4,.L6	#, tmp181, tmp182,
# problem94.c:19:                 if (j < 10) {
	lw	a5,-28(s0)		# tmp184, j
	sext.w	a4,a5	# tmp185, tmp183
	li	a5,9		# tmp186,
	bgt	a4,a5,.L11	#, tmp185, tmp186,
# problem94.c:20:                     w = w + 2;
	lbu	a5,-33(s0)	# tmp188, w
	addiw	a5,a5,2	#, tmp189, tmp187
	sb	a5,-33(s0)	# tmp189, w
# problem94.c:22:                 break;
	j	.L11		#
.L6:
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	lw	a5,-28(s0)		# tmp192, j
	addiw	a5,a5,1	#, tmp190, tmp191
	sw	a5,-28(s0)	# tmp190, j
.L5:
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	lw	a5,-28(s0)		# _26, j
	ld	a4,-24(s0)		# tmp193, vowels
	add	a5,a4,a5	# _26, _27, tmp193
	lbu	a5,0(a5)	# _28, *_27
# problem94.c:17:         for (j = 0; vowels[j] != '\0'; ++j) {
	bne	a5,zero,.L9	#, _28,,
	j	.L8		#
.L11:
# problem94.c:22:                 break;
	nop	
.L8:
# problem94.c:25:         out[i] = w;
	lw	a5,-32(s0)		# _29, i
	ld	a4,-64(s0)		# tmp194, out
	add	a5,a4,a5	# _29, _30, tmp194
# problem94.c:25:         out[i] = w;
	lbu	a4,-33(s0)	# tmp195, w
	sb	a4,0(a5)	# tmp195, *_30
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	lw	a5,-32(s0)		# tmp198, i
	addiw	a5,a5,1	#, tmp196, tmp197
	sw	a5,-32(s0)	# tmp196, i
.L2:
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	lw	a5,-32(s0)		# _31, i
	ld	a4,-56(s0)		# tmp199, message
	add	a5,a4,a5	# _31, _32, tmp199
	lbu	a5,0(a5)	# _33, *_32
# problem94.c:9:     for (i = 0; message[i] != '\0'; ++i) {
	bne	a5,zero,.L10	#, _33,,
# problem94.c:27:     out[i] = '\0';
	lw	a5,-32(s0)		# _34, i
	ld	a4,-64(s0)		# tmp200, out
	add	a5,a4,a5	# _34, _35, tmp200
# problem94.c:27:     out[i] = '\0';
	sb	zero,0(a5)	#, *_35
# problem94.c:28: }
	nop	
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
	.string	"TEST"
	.align	3
.LC2:
	.string	"tgst"
	.align	3
.LC3:
	.string	"problem94.c"
	.align	3
.LC4:
	.string	"strcmp(output, \"tgst\") == 0"
	.align	3
.LC5:
	.string	"Mudasir"
	.align	3
.LC6:
	.string	"mWDCSKR"
	.align	3
.LC7:
	.string	"strcmp(output, \"mWDCSKR\") == 0"
	.align	3
.LC8:
	.string	"YES"
	.align	3
.LC9:
	.string	"ygs"
	.align	3
.LC10:
	.string	"strcmp(output, \"ygs\") == 0"
	.align	3
.LC11:
	.string	"This is a message"
	.align	3
.LC12:
	.string	"tHKS KS C MGSSCGG"
	.align	3
.LC13:
	.string	"strcmp(output, \"tHKS KS C MGSSCGG\") == 0"
	.align	3
.LC14:
	.string	"I DoNt KnOw WhAt tO WrItE"
	.align	3
.LC15:
	.string	"k dQnT kNqW wHcT Tq wRkTg"
	.align	3
.LC16:
	.string	"strcmp(output, \"k dQnT kNqW wHcT Tq wRkTg\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-128	#,,
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)	#,
	sd	s0,112(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128	#,,
	.cfi_def_cfa 8, 0
# problem94.c:35: int main() {
	la	a5,__stack_chk_guard		# tmp141,
	ld	a4, 0(a5)	# tmp160, __stack_chk_guard
	sd	a4, -24(s0)	# tmp160, D.3089
	li	a4, 0	# tmp160
# problem94.c:38:     func0("TEST", output);
	addi	a5,s0,-128	#, tmp142,
	mv	a1,a5	#, tmp142
	lla	a0,.LC1	#,
	call	func0		#
# problem94.c:39:     assert(strcmp(output, "tgst") == 0);
	addi	a5,s0,-128	#, tmp143,
	lla	a1,.LC2	#,
	mv	a0,a5	#, tmp143
	call	strcmp@plt	#
	mv	a5,a0	# tmp144,
# problem94.c:39:     assert(strcmp(output, "tgst") == 0);
	beq	a5,zero,.L13	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,39		#,
	lla	a1,.LC3	#,
	lla	a0,.LC4	#,
	call	__assert_fail@plt	#
.L13:
# problem94.c:41:     func0("Mudasir", output);
	addi	a5,s0,-128	#, tmp145,
	mv	a1,a5	#, tmp145
	lla	a0,.LC5	#,
	call	func0		#
# problem94.c:42:     assert(strcmp(output, "mWDCSKR") == 0);
	addi	a5,s0,-128	#, tmp146,
	lla	a1,.LC6	#,
	mv	a0,a5	#, tmp146
	call	strcmp@plt	#
	mv	a5,a0	# tmp147,
# problem94.c:42:     assert(strcmp(output, "mWDCSKR") == 0);
	beq	a5,zero,.L14	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,42		#,
	lla	a1,.LC3	#,
	lla	a0,.LC7	#,
	call	__assert_fail@plt	#
.L14:
# problem94.c:44:     func0("YES", output);
	addi	a5,s0,-128	#, tmp148,
	mv	a1,a5	#, tmp148
	lla	a0,.LC8	#,
	call	func0		#
# problem94.c:45:     assert(strcmp(output, "ygs") == 0);
	addi	a5,s0,-128	#, tmp149,
	lla	a1,.LC9	#,
	mv	a0,a5	#, tmp149
	call	strcmp@plt	#
	mv	a5,a0	# tmp150,
# problem94.c:45:     assert(strcmp(output, "ygs") == 0);
	beq	a5,zero,.L15	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,45		#,
	lla	a1,.LC3	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L15:
# problem94.c:47:     func0("This is a message", output);
	addi	a5,s0,-128	#, tmp151,
	mv	a1,a5	#, tmp151
	lla	a0,.LC11	#,
	call	func0		#
# problem94.c:48:     assert(strcmp(output, "tHKS KS C MGSSCGG") == 0);
	addi	a5,s0,-128	#, tmp152,
	lla	a1,.LC12	#,
	mv	a0,a5	#, tmp152
	call	strcmp@plt	#
	mv	a5,a0	# tmp153,
# problem94.c:48:     assert(strcmp(output, "tHKS KS C MGSSCGG") == 0);
	beq	a5,zero,.L16	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,48		#,
	lla	a1,.LC3	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L16:
# problem94.c:50:     func0("I DoNt KnOw WhAt tO WrItE", output);
	addi	a5,s0,-128	#, tmp154,
	mv	a1,a5	#, tmp154
	lla	a0,.LC14	#,
	call	func0		#
# problem94.c:51:     assert(strcmp(output, "k dQnT kNqW wHcT Tq wRkTg") == 0);
	addi	a5,s0,-128	#, tmp155,
	lla	a1,.LC15	#,
	mv	a0,a5	#, tmp155
	call	strcmp@plt	#
	mv	a5,a0	# tmp156,
# problem94.c:51:     assert(strcmp(output, "k dQnT kNqW wHcT Tq wRkTg") == 0);
	beq	a5,zero,.L17	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,51		#,
	lla	a1,.LC3	#,
	lla	a0,.LC16	#,
	call	__assert_fail@plt	#
.L17:
# problem94.c:53:     return 0;
	li	a5,0		# _17,
# problem94.c:54: }
	mv	a4,a5	# <retval>, _17
	la	a5,__stack_chk_guard		# tmp158,
	ld	a3, -24(s0)	# tmp161, D.3089
	ld	a5, 0(a5)	# tmp159, __stack_chk_guard
	xor	a5, a3, a5	# tmp159, tmp161
	li	a3, 0	# tmp161
	beq	a5,zero,.L19	#, tmp159,,
	call	__stack_chk_fail@plt	#
.L19:
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
