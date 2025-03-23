	.file	"problem154.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
	sd	a0,-72(s0)	# class_name, class_name
	sd	a1,-80(s0)	# extensions, extensions
	mv	a5,a2	# tmp80, ext_count
	sd	a3,-96(s0)	# output, output
	sw	a5,-84(s0)	# tmp81, ext_count
# problem154.c:5:     int max_strength = -1000;
	li	a5,-1000		# tmp82,
	sw	a5,-48(s0)	# tmp82, max_strength
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
	ld	a4,-80(s0)		# tmp83, extensions
	add	a5,a4,a5	# _2, _3, tmp83
# problem154.c:8:         const char* extension = extensions[i];
	ld	a5,0(a5)		# tmp84, *_3
	sd	a5,-24(s0)	# tmp84, extension
# problem154.c:9:         int strength = 0;
	sw	zero,-40(s0)	#, strength
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	sw	zero,-36(s0)	#, j
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	j	.L3		#
.L6:
# problem154.c:11:             char chr = extension[j];
	lw	a5,-36(s0)		# _4, j
	ld	a4,-24(s0)		# tmp85, extension
	add	a5,a4,a5	# _4, _5, tmp85
# problem154.c:11:             char chr = extension[j];
	lbu	a5,0(a5)	# tmp86, *_5
	sb	a5,-49(s0)	# tmp86, chr
# problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lbu	a5,-49(s0)	# tmp88, chr
	andi	a4,a5,0xff	# tmp89, tmp87
	li	a5,64		# tmp90,
	bleu	a4,a5,.L4	#, tmp89, tmp90,
# problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lbu	a5,-49(s0)	# tmp92, chr
	andi	a4,a5,0xff	# tmp93, tmp91
	li	a5,90		# tmp94,
	bgtu	a4,a5,.L4	#, tmp93, tmp94,
# problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lw	a5,-40(s0)		# tmp97, strength
	addiw	a5,a5,1	#, tmp95, tmp96
	sw	a5,-40(s0)	# tmp95, strength
.L4:
# problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lbu	a5,-49(s0)	# tmp99, chr
	andi	a4,a5,0xff	# tmp100, tmp98
	li	a5,96		# tmp101,
	bleu	a4,a5,.L5	#, tmp100, tmp101,
# problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lbu	a5,-49(s0)	# tmp103, chr
	andi	a4,a5,0xff	# tmp104, tmp102
	li	a5,122		# tmp105,
	bgtu	a4,a5,.L5	#, tmp104, tmp105,
# problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lw	a5,-40(s0)		# tmp108, strength
	addiw	a5,a5,-1	#, tmp106, tmp107
	sw	a5,-40(s0)	# tmp106, strength
.L5:
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	lw	a5,-36(s0)		# tmp111, j
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-36(s0)	# tmp109, j
.L3:
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	lw	a5,-36(s0)		# _6, j
	ld	a4,-24(s0)		# tmp112, extension
	add	a5,a4,a5	# _6, _7, tmp112
	lbu	a5,0(a5)	# _8, *_7
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	bne	a5,zero,.L6	#, _8,,
# problem154.c:15:         if (strength > max_strength) {
	lw	a5,-40(s0)		# tmp114, strength
	mv	a4,a5	# tmp113, tmp114
	lw	a5,-48(s0)		# tmp116, max_strength
	sext.w	a4,a4	# tmp117, tmp113
	sext.w	a5,a5	# tmp118, tmp115
	ble	a4,a5,.L7	#, tmp117, tmp118,
# problem154.c:16:             max_strength = strength;
	lw	a5,-40(s0)		# tmp119, strength
	sw	a5,-48(s0)	# tmp119, max_strength
# problem154.c:17:             strongest = extension;
	ld	a5,-24(s0)		# tmp120, extension
	sd	a5,-32(s0)	# tmp120, strongest
.L7:
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	lw	a5,-44(s0)		# tmp123, i
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-44(s0)	# tmp121, i
.L2:
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	lw	a5,-44(s0)		# tmp125, i
	mv	a4,a5	# tmp124, tmp125
	lw	a5,-84(s0)		# tmp127, ext_count
	sext.w	a4,a4	# tmp128, tmp124
	sext.w	a5,a5	# tmp129, tmp126
	blt	a4,a5,.L8	#, tmp128, tmp129,
# problem154.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	ld	a3,-32(s0)		#, strongest
	ld	a2,-72(s0)		#, class_name
	lla	a1,.LC32	#,
	ld	a0,-96(s0)		#, output
	call	sprintf@plt	#
# problem154.c:21: }
	nop	
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
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
	addi	sp,sp,-352	#,,
	sd	ra,344(sp)	#,
	sd	s0,336(sp)	#,
	addi	s0,sp,352	#,,
# problem154.c:28: int main() {
	la	a5,__stack_chk_guard		# tmp83,
	ld	a4, 0(a5)	# tmp163, __stack_chk_guard
	sd	a4, -24(s0)	# tmp163, D.2204
	li	a4, 0	# tmp163
# problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	lla	a5,.LC33	# tmp84,
	sd	a5,-320(s0)	# tmp84, D.2118[0]
	lla	a5,.LC34	# tmp85,
	sd	a5,-312(s0)	# tmp85, D.2118[1]
	lla	a5,.LC35	# tmp86,
	sd	a5,-304(s0)	# tmp86, D.2118[2]
# problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	addi	a4,s0,-80	#, tmp87,
	addi	a5,s0,-320	#, tmp88,
	mv	a3,a4	#, tmp87
	li	a2,3		#,
	mv	a1,a5	#, tmp88
	lla	a0,.LC36	#,
	call	func0		#
# problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	addi	a5,s0,-80	#, tmp89,
	lla	a1,.LC37	#,
	mv	a0,a5	#, tmp89
	call	strcmp@plt	#
	mv	a5,a0	# tmp90,
	beq	a5,zero,.L10	#, _1,,
# problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,32		#,
	lla	a1,.LC38	#,
	lla	a0,.LC39	#,
	call	__assert_fail@plt	#
.L10:
# problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	lla	a5,.LC40	# tmp91,
	ld	a2,0(a5)		# tmp92,
	ld	a3,8(a5)		# tmp93,
	ld	a4,16(a5)		# tmp94,
	ld	a5,24(a5)		# tmp95,
	sd	a2,-296(s0)	# tmp92, D.2120
	sd	a3,-288(s0)	# tmp93, D.2120
	sd	a4,-280(s0)	# tmp94, D.2120
	sd	a5,-272(s0)	# tmp95, D.2120
# problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	addi	a4,s0,-80	#, tmp96,
	addi	a5,s0,-296	#, tmp97,
	mv	a3,a4	#, tmp96
	li	a2,4		#,
	mv	a1,a5	#, tmp97
	lla	a0,.LC41	#,
	call	func0		#
# problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	addi	a5,s0,-80	#, tmp98,
	lla	a1,.LC42	#,
	mv	a0,a5	#, tmp98
	call	strcmp@plt	#
	mv	a5,a0	# tmp99,
	beq	a5,zero,.L11	#, _2,,
# problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,35		#,
	lla	a1,.LC38	#,
	lla	a0,.LC43	#,
	call	__assert_fail@plt	#
.L11:
# problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	lla	a5,.LC44	# tmp100,
	ld	a0,0(a5)		# tmp101,
	ld	a1,8(a5)		# tmp102,
	ld	a2,16(a5)		# tmp103,
	ld	a3,24(a5)		# tmp104,
	ld	a4,32(a5)		# tmp105,
	ld	a5,40(a5)		# tmp106,
	sd	a0,-128(s0)	# tmp101, D.2121
	sd	a1,-120(s0)	# tmp102, D.2121
	sd	a2,-112(s0)	# tmp103, D.2121
	sd	a3,-104(s0)	# tmp104, D.2121
	sd	a4,-96(s0)	# tmp105, D.2121
	sd	a5,-88(s0)	# tmp106, D.2121
# problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	addi	a4,s0,-80	#, tmp107,
	addi	a5,s0,-128	#, tmp108,
	mv	a3,a4	#, tmp107
	li	a2,6		#,
	mv	a1,a5	#, tmp108
	lla	a0,.LC45	#,
	call	func0		#
# problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	addi	a5,s0,-80	#, tmp109,
	lla	a1,.LC46	#,
	mv	a0,a5	#, tmp109
	call	strcmp@plt	#
	mv	a5,a0	# tmp110,
	beq	a5,zero,.L12	#, _3,,
# problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,38		#,
	lla	a1,.LC38	#,
	lla	a0,.LC47	#,
	call	__assert_fail@plt	#
.L12:
# problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	lla	a5,.LC48	# tmp111,
	ld	a2,0(a5)		# tmp112,
	ld	a3,8(a5)		# tmp113,
	ld	a4,16(a5)		# tmp114,
	ld	a5,24(a5)		# tmp115,
	sd	a2,-264(s0)	# tmp112, D.2122
	sd	a3,-256(s0)	# tmp113, D.2122
	sd	a4,-248(s0)	# tmp114, D.2122
	sd	a5,-240(s0)	# tmp115, D.2122
# problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	addi	a4,s0,-80	#, tmp116,
	addi	a5,s0,-264	#, tmp117,
	mv	a3,a4	#, tmp116
	li	a2,4		#,
	mv	a1,a5	#, tmp117
	lla	a0,.LC49	#,
	call	func0		#
# problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	addi	a5,s0,-80	#, tmp118,
	lla	a1,.LC50	#,
	mv	a0,a5	#, tmp118
	call	strcmp@plt	#
	mv	a5,a0	# tmp119,
	beq	a5,zero,.L13	#, _4,,
# problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,41		#,
	lla	a1,.LC38	#,
	lla	a0,.LC51	#,
	call	__assert_fail@plt	#
.L13:
# problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	lla	a5,.LC52	# tmp120,
	ld	a2,0(a5)		# tmp121,
	ld	a3,8(a5)		# tmp122,
	ld	a4,16(a5)		# tmp123,
	ld	a5,24(a5)		# tmp124,
	sd	a2,-232(s0)	# tmp121, D.2123
	sd	a3,-224(s0)	# tmp122, D.2123
	sd	a4,-216(s0)	# tmp123, D.2123
	sd	a5,-208(s0)	# tmp124, D.2123
# problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	addi	a4,s0,-80	#, tmp125,
	addi	a5,s0,-232	#, tmp126,
	mv	a3,a4	#, tmp125
	li	a2,4		#,
	mv	a1,a5	#, tmp126
	lla	a0,.LC53	#,
	call	func0		#
# problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	addi	a5,s0,-80	#, tmp127,
	lla	a1,.LC54	#,
	mv	a0,a5	#, tmp127
	call	strcmp@plt	#
	mv	a5,a0	# tmp128,
	beq	a5,zero,.L14	#, _5,,
# problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,44		#,
	lla	a1,.LC38	#,
	lla	a0,.LC55	#,
	call	__assert_fail@plt	#
.L14:
# problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	lla	a5,.LC56	# tmp129,
	ld	a1,0(a5)		# tmp130,
	ld	a2,8(a5)		# tmp131,
	ld	a3,16(a5)		# tmp132,
	ld	a4,24(a5)		# tmp133,
	ld	a5,32(a5)		# tmp134,
	sd	a1,-168(s0)	# tmp130, D.2124
	sd	a2,-160(s0)	# tmp131, D.2124
	sd	a3,-152(s0)	# tmp132, D.2124
	sd	a4,-144(s0)	# tmp133, D.2124
	sd	a5,-136(s0)	# tmp134, D.2124
# problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	addi	a4,s0,-80	#, tmp135,
	addi	a5,s0,-168	#, tmp136,
	mv	a3,a4	#, tmp135
	li	a2,5		#,
	mv	a1,a5	#, tmp136
	lla	a0,.LC57	#,
	call	func0		#
# problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	addi	a5,s0,-80	#, tmp137,
	lla	a1,.LC58	#,
	mv	a0,a5	#, tmp137
	call	strcmp@plt	#
	mv	a5,a0	# tmp138,
	beq	a5,zero,.L15	#, _6,,
# problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,47		#,
	lla	a1,.LC38	#,
	lla	a0,.LC59	#,
	call	__assert_fail@plt	#
.L15:
# problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	lla	a5,.LC60	# tmp139,
	ld	a2,0(a5)		# tmp140,
	ld	a3,8(a5)		# tmp141,
	ld	a4,16(a5)		# tmp142,
	ld	a5,24(a5)		# tmp143,
	sd	a2,-200(s0)	# tmp140, D.2125
	sd	a3,-192(s0)	# tmp141, D.2125
	sd	a4,-184(s0)	# tmp142, D.2125
	sd	a5,-176(s0)	# tmp143, D.2125
# problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	addi	a4,s0,-80	#, tmp144,
	addi	a5,s0,-200	#, tmp145,
	mv	a3,a4	#, tmp144
	li	a2,4		#,
	mv	a1,a5	#, tmp145
	lla	a0,.LC61	#,
	call	func0		#
# problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	addi	a5,s0,-80	#, tmp146,
	lla	a1,.LC62	#,
	mv	a0,a5	#, tmp146
	call	strcmp@plt	#
	mv	a5,a0	# tmp147,
	beq	a5,zero,.L16	#, _7,,
# problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC38	#,
	lla	a0,.LC63	#,
	call	__assert_fail@plt	#
.L16:
# problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	lla	a5,.LC64	# tmp148,
	sd	a5,-352(s0)	# tmp148, D.2126[0]
	lla	a5,.LC65	# tmp149,
	sd	a5,-344(s0)	# tmp149, D.2126[1]
# problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	addi	a4,s0,-80	#, tmp150,
	addi	a5,s0,-352	#, tmp151,
	mv	a3,a4	#, tmp150
	li	a2,2		#,
	mv	a1,a5	#, tmp151
	lla	a0,.LC66	#,
	call	func0		#
# problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	addi	a5,s0,-80	#, tmp152,
	lla	a1,.LC67	#,
	mv	a0,a5	#, tmp152
	call	strcmp@plt	#
	mv	a5,a0	# tmp153,
	beq	a5,zero,.L17	#, _8,,
# problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,53		#,
	lla	a1,.LC38	#,
	lla	a0,.LC68	#,
	call	__assert_fail@plt	#
.L17:
# problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	lla	a5,.LC69	# tmp154,
	sd	a5,-336(s0)	# tmp154, D.2127[0]
	lla	a5,.LC64	# tmp155,
	sd	a5,-328(s0)	# tmp155, D.2127[1]
# problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	addi	a4,s0,-80	#, tmp156,
	addi	a5,s0,-336	#, tmp157,
	mv	a3,a4	#, tmp156
	li	a2,2		#,
	mv	a1,a5	#, tmp157
	lla	a0,.LC70	#,
	call	func0		#
# problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
	addi	a5,s0,-80	#, tmp158,
	lla	a1,.LC71	#,
	mv	a0,a5	#, tmp158
	call	strcmp@plt	#
	mv	a5,a0	# tmp159,
	beq	a5,zero,.L18	#, _9,,
# problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
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
	la	a5,__stack_chk_guard		# tmp161,
	ld	a3, -24(s0)	# tmp164, D.2204
	ld	a5, 0(a5)	# tmp162, __stack_chk_guard
	xor	a5, a3, a5	# tmp162, tmp164
	li	a3, 0	# tmp164
	beq	a5,zero,.L20	#, tmp162,,
	call	__stack_chk_fail@plt	#
.L20:
	mv	a0,a4	#, <retval>
	ld	ra,344(sp)		#,
	ld	s0,336(sp)		#,
	addi	sp,sp,352	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
