	.file	"problem154.c"
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
.LC32:
	.string	"%s.%s"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# class_name, class_name
	sd	a1,-80(s0)	# extensions, extensions
	mv	a5,a2	# tmp142, ext_count
	sd	a3,-96(s0)	# output, output
	sw	a5,-84(s0)	# tmp143, ext_count
# problem154.c:5:     int max_strength = -1000;
	li	a5,-1000		# tmp144,
	sw	a5,-48(s0)	# tmp144, max_strength
# problem154.c:6:     const char* strongest = NULL;
	sd	zero,-32(s0)	#, strongest
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	sw	zero,-44(s0)	#, i
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	j	.L2		#
.L8:
# problem154.c:8:         const char* extension = extensions[i];
	lw	a5,-44(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-80(s0)		# tmp145, extensions
	add	a5,a4,a5	# _2, _3, tmp145
# problem154.c:8:         const char* extension = extensions[i];
	ld	a5,0(a5)		# tmp146, *_3
	sd	a5,-24(s0)	# tmp146, extension
# problem154.c:9:         int strength = 0;
	sw	zero,-40(s0)	#, strength
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	sw	zero,-36(s0)	#, j
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	j	.L3		#
.L6:
# problem154.c:11:             char chr = extension[j];
	lw	a5,-36(s0)		# _4, j
	ld	a4,-24(s0)		# tmp147, extension
	add	a5,a4,a5	# _4, _5, tmp147
# problem154.c:11:             char chr = extension[j];
	lbu	a5,0(a5)	# tmp148, *_5
	sb	a5,-49(s0)	# tmp148, chr
# problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lbu	a5,-49(s0)	# tmp150, chr
	andi	a4,a5,0xff	# tmp151, tmp149
	li	a5,64		# tmp152,
	bleu	a4,a5,.L4	#, tmp151, tmp152,
# problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lbu	a5,-49(s0)	# tmp154, chr
	andi	a4,a5,0xff	# tmp155, tmp153
	li	a5,90		# tmp156,
	bgtu	a4,a5,.L4	#, tmp155, tmp156,
# problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lw	a5,-40(s0)		# tmp159, strength
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-40(s0)	# tmp157, strength
.L4:
# problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lbu	a5,-49(s0)	# tmp161, chr
	andi	a4,a5,0xff	# tmp162, tmp160
	li	a5,96		# tmp163,
	bleu	a4,a5,.L5	#, tmp162, tmp163,
# problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lbu	a5,-49(s0)	# tmp165, chr
	andi	a4,a5,0xff	# tmp166, tmp164
	li	a5,122		# tmp167,
	bgtu	a4,a5,.L5	#, tmp166, tmp167,
# problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lw	a5,-40(s0)		# tmp170, strength
	addiw	a5,a5,-1	#, tmp168, tmp169
	sw	a5,-40(s0)	# tmp168, strength
.L5:
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	lw	a5,-36(s0)		# tmp173, j
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-36(s0)	# tmp171, j
.L3:
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	lw	a5,-36(s0)		# _6, j
	ld	a4,-24(s0)		# tmp174, extension
	add	a5,a4,a5	# _6, _7, tmp174
	lbu	a5,0(a5)	# _8, *_7
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	bne	a5,zero,.L6	#, _8,,
# problem154.c:15:         if (strength > max_strength) {
	lw	a5,-40(s0)		# tmp176, strength
	mv	a4,a5	# tmp175, tmp176
	lw	a5,-48(s0)		# tmp178, max_strength
	sext.w	a4,a4	# tmp179, tmp175
	sext.w	a5,a5	# tmp180, tmp177
	ble	a4,a5,.L7	#, tmp179, tmp180,
# problem154.c:16:             max_strength = strength;
	lw	a5,-40(s0)		# tmp181, strength
	sw	a5,-48(s0)	# tmp181, max_strength
# problem154.c:17:             strongest = extension;
	ld	a5,-24(s0)		# tmp182, extension
	sd	a5,-32(s0)	# tmp182, strongest
.L7:
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	lw	a5,-44(s0)		# tmp185, i
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-44(s0)	# tmp183, i
.L2:
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	lw	a5,-44(s0)		# tmp187, i
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-84(s0)		# tmp189, ext_count
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L8	#, tmp190, tmp191,
# problem154.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	ld	a3,-32(s0)		#, strongest
	ld	a2,-72(s0)		#, class_name
	lla	a1,.LC32	#,
	ld	a0,-96(s0)		#, output
	call	sprintf@plt	#
# problem154.c:21: }
	nop	
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC33:
	.string	"tEN"
	.align	3
.LC34:
	.string	"niNE"
	.align	3
.LC35:
	.string	"eIGHt8OKe"
	.align	3
.LC36:
	.string	"Watashi"
	.align	3
.LC37:
	.string	"Watashi.eIGHt8OKe"
	.align	3
.LC38:
	.string	"problem154.c"
	.align	3
.LC39:
	.string	"strcmp(result, \"Watashi.eIGHt8OKe\") == 0"
	.align	3
.LC41:
	.string	"Boku123"
	.align	3
.LC42:
	.string	"Boku123.YEs.WeCaNe"
	.align	3
.LC43:
	.string	"strcmp(result, \"Boku123.YEs.WeCaNe\") == 0"
	.align	3
.LC45:
	.string	"__YESIMHERE"
	.align	3
.LC46:
	.string	"__YESIMHERE.NuLl__"
	.align	3
.LC47:
	.string	"strcmp(result, \"__YESIMHERE.NuLl__\") == 0"
	.align	3
.LC49:
	.string	"K"
	.align	3
.LC50:
	.string	"K.TAR"
	.align	3
.LC51:
	.string	"strcmp(result, \"K.TAR\") == 0"
	.align	3
.LC53:
	.string	"__HAHA"
	.align	3
.LC54:
	.string	"__HAHA.123"
	.align	3
.LC55:
	.string	"strcmp(result, \"__HAHA.123\") == 0"
	.align	3
.LC57:
	.string	"YameRore"
	.align	3
.LC58:
	.string	"YameRore.okIWILL123"
	.align	3
.LC59:
	.string	"strcmp(result, \"YameRore.okIWILL123\") == 0"
	.align	3
.LC61:
	.string	"finNNalLLly"
	.align	3
.LC62:
	.string	"finNNalLLly.WoW"
	.align	3
.LC63:
	.string	"strcmp(result, \"finNNalLLly.WoW\") == 0"
	.align	3
.LC64:
	.string	"Bb"
	.align	3
.LC65:
	.string	"91245"
	.align	3
.LC66:
	.string	"_"
	.align	3
.LC67:
	.string	"_.Bb"
	.align	3
.LC68:
	.string	"strcmp(result, \"_.Bb\") == 0"
	.align	3
.LC69:
	.string	"671235"
	.align	3
.LC70:
	.string	"Sp"
	.align	3
.LC71:
	.string	"Sp.671235"
	.align	3
.LC72:
	.string	"strcmp(result, \"Sp.671235\") == 0"
	.align	3
.LC0:
	.string	"nani"
	.align	3
.LC1:
	.string	"NazeDa"
	.align	3
.LC2:
	.string	"YEs.WeCaNe"
	.align	3
.LC3:
	.string	"32145tggg"
	.data
	.align	3
.LC40:
	.dword	.LC0
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.section	.rodata
	.align	3
.LC5:
	.string	"t"
	.align	3
.LC6:
	.string	"eMptY"
	.align	3
.LC7:
	.string	"(nothing"
	.align	3
.LC8:
	.string	"zeR00"
	.align	3
.LC9:
	.string	"NuLl__"
	.align	3
.LC10:
	.string	"123NoooneB321"
	.data
	.align	3
.LC44:
	.dword	.LC5
	.dword	.LC6
	.dword	.LC7
	.dword	.LC8
	.dword	.LC9
	.dword	.LC10
	.section	.rodata
	.align	3
.LC12:
	.string	"Ta"
	.align	3
.LC13:
	.string	"TAR"
	.align	3
.LC14:
	.string	"t234An"
	.align	3
.LC15:
	.string	"cosSo"
	.data
	.align	3
.LC48:
	.dword	.LC12
	.dword	.LC13
	.dword	.LC14
	.dword	.LC15
	.section	.rodata
	.align	3
.LC17:
	.string	"Tab"
	.align	3
.LC18:
	.string	"123"
	.align	3
.LC19:
	.string	"781345"
	.align	3
.LC20:
	.string	"-_-"
	.data
	.align	3
.LC52:
	.dword	.LC17
	.dword	.LC18
	.dword	.LC19
	.dword	.LC20
	.section	.rodata
	.align	3
.LC22:
	.string	"HhAas"
	.align	3
.LC23:
	.string	"okIWILL123"
	.align	3
.LC24:
	.string	"WorkOut"
	.align	3
.LC25:
	.string	"Fails"
	.data
	.align	3
.LC56:
	.dword	.LC22
	.dword	.LC23
	.dword	.LC24
	.dword	.LC25
	.dword	.LC20
	.section	.rodata
	.align	3
.LC27:
	.string	"Die"
	.align	3
.LC28:
	.string	"NowW"
	.align	3
.LC29:
	.string	"Wow"
	.align	3
.LC30:
	.string	"WoW"
	.data
	.align	3
.LC60:
	.dword	.LC27
	.dword	.LC28
	.dword	.LC29
	.dword	.LC30
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-352	#,,
	.cfi_def_cfa_offset 352
	sd	ra,344(sp)	#,
	sd	s0,336(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,352	#,,
	.cfi_def_cfa 8, 0
# problem154.c:28: int main() {
	la	a5,__stack_chk_guard		# tmp145,
	ld	a4, 0(a5)	# tmp225, __stack_chk_guard
	sd	a4, -24(s0)	# tmp225, D.3049
	li	a4, 0	# tmp225
# problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	lla	a5,.LC33	# tmp146,
	sd	a5,-320(s0)	# tmp146, D.2963[0]
	lla	a5,.LC34	# tmp147,
	sd	a5,-312(s0)	# tmp147, D.2963[1]
	lla	a5,.LC35	# tmp148,
	sd	a5,-304(s0)	# tmp148, D.2963[2]
# problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	addi	a4,s0,-80	#, tmp149,
	addi	a5,s0,-320	#, tmp150,
	mv	a3,a4	#, tmp149
	li	a2,3		#,
	mv	a1,a5	#, tmp150
	lla	a0,.LC36	#,
	call	func0		#
# problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	addi	a5,s0,-80	#, tmp151,
	lla	a1,.LC37	#,
	mv	a0,a5	#, tmp151
	call	strcmp@plt	#
	mv	a5,a0	# tmp152,
# problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	beq	a5,zero,.L10	#, _1,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC38	#,
	lla	a0,.LC39	#,
	call	__assert_fail@plt	#
.L10:
# problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	lla	a5,.LC40	# tmp153,
	ld	a2,0(a5)		# tmp154,
	ld	a3,8(a5)		# tmp155,
	ld	a4,16(a5)		# tmp156,
	ld	a5,24(a5)		# tmp157,
	sd	a2,-296(s0)	# tmp154, D.2965
	sd	a3,-288(s0)	# tmp155, D.2965
	sd	a4,-280(s0)	# tmp156, D.2965
	sd	a5,-272(s0)	# tmp157, D.2965
# problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	addi	a4,s0,-80	#, tmp158,
	addi	a5,s0,-296	#, tmp159,
	mv	a3,a4	#, tmp158
	li	a2,4		#,
	mv	a1,a5	#, tmp159
	lla	a0,.LC41	#,
	call	func0		#
# problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	addi	a5,s0,-80	#, tmp160,
	lla	a1,.LC42	#,
	mv	a0,a5	#, tmp160
	call	strcmp@plt	#
	mv	a5,a0	# tmp161,
# problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	beq	a5,zero,.L11	#, _2,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC38	#,
	lla	a0,.LC43	#,
	call	__assert_fail@plt	#
.L11:
# problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	lla	a5,.LC44	# tmp162,
	ld	a0,0(a5)		# tmp163,
	ld	a1,8(a5)		# tmp164,
	ld	a2,16(a5)		# tmp165,
	ld	a3,24(a5)		# tmp166,
	ld	a4,32(a5)		# tmp167,
	ld	a5,40(a5)		# tmp168,
	sd	a0,-128(s0)	# tmp163, D.2966
	sd	a1,-120(s0)	# tmp164, D.2966
	sd	a2,-112(s0)	# tmp165, D.2966
	sd	a3,-104(s0)	# tmp166, D.2966
	sd	a4,-96(s0)	# tmp167, D.2966
	sd	a5,-88(s0)	# tmp168, D.2966
# problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	addi	a4,s0,-80	#, tmp169,
	addi	a5,s0,-128	#, tmp170,
	mv	a3,a4	#, tmp169
	li	a2,6		#,
	mv	a1,a5	#, tmp170
	lla	a0,.LC45	#,
	call	func0		#
# problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	addi	a5,s0,-80	#, tmp171,
	lla	a1,.LC46	#,
	mv	a0,a5	#, tmp171
	call	strcmp@plt	#
	mv	a5,a0	# tmp172,
# problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	beq	a5,zero,.L12	#, _3,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC38	#,
	lla	a0,.LC47	#,
	call	__assert_fail@plt	#
.L12:
# problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	lla	a5,.LC48	# tmp173,
	ld	a2,0(a5)		# tmp174,
	ld	a3,8(a5)		# tmp175,
	ld	a4,16(a5)		# tmp176,
	ld	a5,24(a5)		# tmp177,
	sd	a2,-264(s0)	# tmp174, D.2967
	sd	a3,-256(s0)	# tmp175, D.2967
	sd	a4,-248(s0)	# tmp176, D.2967
	sd	a5,-240(s0)	# tmp177, D.2967
# problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	addi	a4,s0,-80	#, tmp178,
	addi	a5,s0,-264	#, tmp179,
	mv	a3,a4	#, tmp178
	li	a2,4		#,
	mv	a1,a5	#, tmp179
	lla	a0,.LC49	#,
	call	func0		#
# problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	addi	a5,s0,-80	#, tmp180,
	lla	a1,.LC50	#,
	mv	a0,a5	#, tmp180
	call	strcmp@plt	#
	mv	a5,a0	# tmp181,
# problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	beq	a5,zero,.L13	#, _4,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC38	#,
	lla	a0,.LC51	#,
	call	__assert_fail@plt	#
.L13:
# problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	lla	a5,.LC52	# tmp182,
	ld	a2,0(a5)		# tmp183,
	ld	a3,8(a5)		# tmp184,
	ld	a4,16(a5)		# tmp185,
	ld	a5,24(a5)		# tmp186,
	sd	a2,-232(s0)	# tmp183, D.2968
	sd	a3,-224(s0)	# tmp184, D.2968
	sd	a4,-216(s0)	# tmp185, D.2968
	sd	a5,-208(s0)	# tmp186, D.2968
# problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	addi	a4,s0,-80	#, tmp187,
	addi	a5,s0,-232	#, tmp188,
	mv	a3,a4	#, tmp187
	li	a2,4		#,
	mv	a1,a5	#, tmp188
	lla	a0,.LC53	#,
	call	func0		#
# problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	addi	a5,s0,-80	#, tmp189,
	lla	a1,.LC54	#,
	mv	a0,a5	#, tmp189
	call	strcmp@plt	#
	mv	a5,a0	# tmp190,
# problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	beq	a5,zero,.L14	#, _5,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC38	#,
	lla	a0,.LC55	#,
	call	__assert_fail@plt	#
.L14:
# problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	lla	a5,.LC56	# tmp191,
	ld	a1,0(a5)		# tmp192,
	ld	a2,8(a5)		# tmp193,
	ld	a3,16(a5)		# tmp194,
	ld	a4,24(a5)		# tmp195,
	ld	a5,32(a5)		# tmp196,
	sd	a1,-168(s0)	# tmp192, D.2969
	sd	a2,-160(s0)	# tmp193, D.2969
	sd	a3,-152(s0)	# tmp194, D.2969
	sd	a4,-144(s0)	# tmp195, D.2969
	sd	a5,-136(s0)	# tmp196, D.2969
# problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	addi	a4,s0,-80	#, tmp197,
	addi	a5,s0,-168	#, tmp198,
	mv	a3,a4	#, tmp197
	li	a2,5		#,
	mv	a1,a5	#, tmp198
	lla	a0,.LC57	#,
	call	func0		#
# problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	addi	a5,s0,-80	#, tmp199,
	lla	a1,.LC58	#,
	mv	a0,a5	#, tmp199
	call	strcmp@plt	#
	mv	a5,a0	# tmp200,
# problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	beq	a5,zero,.L15	#, _6,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC38	#,
	lla	a0,.LC59	#,
	call	__assert_fail@plt	#
.L15:
# problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	lla	a5,.LC60	# tmp201,
	ld	a2,0(a5)		# tmp202,
	ld	a3,8(a5)		# tmp203,
	ld	a4,16(a5)		# tmp204,
	ld	a5,24(a5)		# tmp205,
	sd	a2,-200(s0)	# tmp202, D.2970
	sd	a3,-192(s0)	# tmp203, D.2970
	sd	a4,-184(s0)	# tmp204, D.2970
	sd	a5,-176(s0)	# tmp205, D.2970
# problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	addi	a4,s0,-80	#, tmp206,
	addi	a5,s0,-200	#, tmp207,
	mv	a3,a4	#, tmp206
	li	a2,4		#,
	mv	a1,a5	#, tmp207
	lla	a0,.LC61	#,
	call	func0		#
# problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	addi	a5,s0,-80	#, tmp208,
	lla	a1,.LC62	#,
	mv	a0,a5	#, tmp208
	call	strcmp@plt	#
	mv	a5,a0	# tmp209,
# problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	beq	a5,zero,.L16	#, _7,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC38	#,
	lla	a0,.LC63	#,
	call	__assert_fail@plt	#
.L16:
# problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	lla	a5,.LC64	# tmp210,
	sd	a5,-352(s0)	# tmp210, D.2971[0]
	lla	a5,.LC65	# tmp211,
	sd	a5,-344(s0)	# tmp211, D.2971[1]
# problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	addi	a4,s0,-80	#, tmp212,
	addi	a5,s0,-352	#, tmp213,
	mv	a3,a4	#, tmp212
	li	a2,2		#,
	mv	a1,a5	#, tmp213
	lla	a0,.LC66	#,
	call	func0		#
# problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	addi	a5,s0,-80	#, tmp214,
	lla	a1,.LC67	#,
	mv	a0,a5	#, tmp214
	call	strcmp@plt	#
	mv	a5,a0	# tmp215,
# problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	beq	a5,zero,.L17	#, _8,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC38	#,
	lla	a0,.LC68	#,
	call	__assert_fail@plt	#
.L17:
# problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	lla	a5,.LC69	# tmp216,
	sd	a5,-336(s0)	# tmp216, D.2972[0]
	lla	a5,.LC64	# tmp217,
	sd	a5,-328(s0)	# tmp217, D.2972[1]
# problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	addi	a4,s0,-80	#, tmp218,
	addi	a5,s0,-336	#, tmp219,
	mv	a3,a4	#, tmp218
	li	a2,2		#,
	mv	a1,a5	#, tmp219
	lla	a0,.LC70	#,
	call	func0		#
# problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
	addi	a5,s0,-80	#, tmp220,
	lla	a1,.LC71	#,
	mv	a0,a5	#, tmp220
	call	strcmp@plt	#
	mv	a5,a0	# tmp221,
# problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
	beq	a5,zero,.L18	#, _9,,
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,56		#,
	lla	a1,.LC38	#,
	lla	a0,.LC72	#,
	call	__assert_fail@plt	#
.L18:
# problem154.c:58:     return 0;
	li	a5,0		# _42,
# problem154.c:59: }
	mv	a4,a5	# <retval>, _42
	la	a5,__stack_chk_guard		# tmp223,
	ld	a3, -24(s0)	# tmp226, D.3049
	ld	a5, 0(a5)	# tmp224, __stack_chk_guard
	xor	a5, a3, a5	# tmp224, tmp226
	li	a3, 0	# tmp226
	beq	a5,zero,.L20	#, tmp224,,
	call	__stack_chk_fail@plt	#
.L20:
	mv	a0,a4	#, <retval>
	ld	ra,344(sp)		#,
	.cfi_restore 1
	ld	s0,336(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 352
	addi	sp,sp,352	#,,
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
