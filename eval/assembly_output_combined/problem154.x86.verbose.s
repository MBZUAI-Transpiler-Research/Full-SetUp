	.file	"problem154.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%s.%s"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# class_name, class_name
	movq	%rsi, -64(%rbp)	# extensions, extensions
	movl	%edx, -68(%rbp)	# ext_count, ext_count
	movq	%rcx, -80(%rbp)	# output, output
# problem154.c:5:     int max_strength = -1000;
	movl	$-1000, -32(%rbp)	#, max_strength
# problem154.c:6:     const char* strongest = NULL;
	movq	$0, -16(%rbp)	#, strongest
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	movl	$0, -28(%rbp)	#, i
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	jmp	.L2	#
.L8:
# problem154.c:8:         const char* extension = extensions[i];
	movl	-28(%rbp), %eax	# i, tmp90
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-64(%rbp), %rax	# extensions, tmp91
	addq	%rdx, %rax	# _2, _3
# problem154.c:8:         const char* extension = extensions[i];
	movq	(%rax), %rax	# *_3, tmp92
	movq	%rax, -8(%rbp)	# tmp92, extension
# problem154.c:9:         int strength = 0;
	movl	$0, -24(%rbp)	#, strength
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	movl	$0, -20(%rbp)	#, j
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	jmp	.L3	#
.L6:
# problem154.c:11:             char chr = extension[j];
	movl	-20(%rbp), %eax	# j, tmp93
	movslq	%eax, %rdx	# tmp93, _4
	movq	-8(%rbp), %rax	# extension, tmp94
	addq	%rdx, %rax	# _4, _5
# problem154.c:11:             char chr = extension[j];
	movzbl	(%rax), %eax	# *_5, tmp95
	movb	%al, -33(%rbp)	# tmp95, chr
# problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	cmpb	$64, -33(%rbp)	#, chr
	jle	.L4	#,
# problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	cmpb	$90, -33(%rbp)	#, chr
	jg	.L4	#,
# problem154.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	addl	$1, -24(%rbp)	#, strength
.L4:
# problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	cmpb	$96, -33(%rbp)	#, chr
	jle	.L5	#,
# problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	cmpb	$122, -33(%rbp)	#, chr
	jg	.L5	#,
# problem154.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	subl	$1, -24(%rbp)	#, strength
.L5:
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	addl	$1, -20(%rbp)	#, j
.L3:
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	movl	-20(%rbp), %eax	# j, tmp96
	movslq	%eax, %rdx	# tmp96, _6
	movq	-8(%rbp), %rax	# extension, tmp97
	addq	%rdx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# problem154.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	testb	%al, %al	# _8
	jne	.L6	#,
# problem154.c:15:         if (strength > max_strength) {
	movl	-24(%rbp), %eax	# strength, tmp98
	cmpl	-32(%rbp), %eax	# max_strength, tmp98
	jle	.L7	#,
# problem154.c:16:             max_strength = strength;
	movl	-24(%rbp), %eax	# strength, tmp99
	movl	%eax, -32(%rbp)	# tmp99, max_strength
# problem154.c:17:             strongest = extension;
	movq	-8(%rbp), %rax	# extension, tmp100
	movq	%rax, -16(%rbp)	# tmp100, strongest
.L7:
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	addl	$1, -28(%rbp)	#, i
.L2:
# problem154.c:7:     for (int i = 0; i < ext_count; i++) {
	movl	-28(%rbp), %eax	# i, tmp101
	cmpl	-68(%rbp), %eax	# ext_count, tmp101
	jl	.L8	#,
# problem154.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	movq	-16(%rbp), %rcx	# strongest, tmp102
	movq	-56(%rbp), %rdx	# class_name, tmp103
	movq	-80(%rbp), %rax	# output, tmp104
	leaq	.LC0(%rip), %rsi	#, tmp105
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	sprintf@PLT	#
# problem154.c:21: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"tEN"
.LC2:
	.string	"niNE"
.LC3:
	.string	"eIGHt8OKe"
.LC4:
	.string	"Watashi"
.LC5:
	.string	"Watashi.eIGHt8OKe"
.LC6:
	.string	"problem154.c"
	.align 8
.LC7:
	.string	"strcmp(result, \"Watashi.eIGHt8OKe\") == 0"
.LC8:
	.string	"nani"
.LC9:
	.string	"NazeDa"
.LC10:
	.string	"YEs.WeCaNe"
.LC11:
	.string	"32145tggg"
.LC12:
	.string	"Boku123"
.LC13:
	.string	"Boku123.YEs.WeCaNe"
	.align 8
.LC14:
	.string	"strcmp(result, \"Boku123.YEs.WeCaNe\") == 0"
.LC15:
	.string	"t"
.LC16:
	.string	"eMptY"
.LC17:
	.string	"(nothing"
.LC18:
	.string	"zeR00"
.LC19:
	.string	"NuLl__"
.LC20:
	.string	"123NoooneB321"
.LC21:
	.string	"__YESIMHERE"
.LC22:
	.string	"__YESIMHERE.NuLl__"
	.align 8
.LC23:
	.string	"strcmp(result, \"__YESIMHERE.NuLl__\") == 0"
.LC24:
	.string	"Ta"
.LC25:
	.string	"TAR"
.LC26:
	.string	"t234An"
.LC27:
	.string	"cosSo"
.LC28:
	.string	"K"
.LC29:
	.string	"K.TAR"
.LC30:
	.string	"strcmp(result, \"K.TAR\") == 0"
.LC31:
	.string	"Tab"
.LC32:
	.string	"123"
.LC33:
	.string	"781345"
.LC34:
	.string	"-_-"
.LC35:
	.string	"__HAHA"
.LC36:
	.string	"__HAHA.123"
	.align 8
.LC37:
	.string	"strcmp(result, \"__HAHA.123\") == 0"
.LC38:
	.string	"HhAas"
.LC39:
	.string	"okIWILL123"
.LC40:
	.string	"WorkOut"
.LC41:
	.string	"Fails"
.LC42:
	.string	"YameRore"
.LC43:
	.string	"YameRore.okIWILL123"
	.align 8
.LC44:
	.string	"strcmp(result, \"YameRore.okIWILL123\") == 0"
.LC45:
	.string	"Die"
.LC46:
	.string	"NowW"
.LC47:
	.string	"Wow"
.LC48:
	.string	"WoW"
.LC49:
	.string	"finNNalLLly"
.LC50:
	.string	"finNNalLLly.WoW"
	.align 8
.LC51:
	.string	"strcmp(result, \"finNNalLLly.WoW\") == 0"
.LC52:
	.string	"Bb"
.LC53:
	.string	"91245"
.LC54:
	.string	"_"
.LC55:
	.string	"_.Bb"
.LC56:
	.string	"strcmp(result, \"_.Bb\") == 0"
.LC57:
	.string	"671235"
.LC58:
	.string	"Sp"
.LC59:
	.string	"Sp.671235"
	.align 8
.LC60:
	.string	"strcmp(result, \"Sp.671235\") == 0"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$352, %rsp	#,
# problem154.c:28: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp200
	movq	%rax, -8(%rbp)	# tmp200, D.3486
	xorl	%eax, %eax	# tmp200
# problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, -320(%rbp)	# tmp93, D.3432[0]
	leaq	.LC2(%rip), %rax	#, tmp94
	movq	%rax, -312(%rbp)	# tmp94, D.3432[1]
	leaq	.LC3(%rip), %rax	#, tmp95
	movq	%rax, -304(%rbp)	# tmp95, D.3432[2]
# problem154.c:31:     func0("Watashi", (const char* []){"tEN", "niNE", "eIGHt8OKe"}, 3, result);
	leaq	-64(%rbp), %rdx	#, tmp96
	leaq	-320(%rbp), %rax	#, tmp97
	movq	%rdx, %rcx	# tmp96,
	movl	$3, %edx	#,
	movq	%rax, %rsi	# tmp97,
	leaq	.LC4(%rip), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	func0	#
# problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	leaq	-64(%rbp), %rax	#, tmp99
	leaq	.LC5(%rip), %rdx	#, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# tmp99,
	call	strcmp@PLT	#
# problem154.c:32:     assert(strcmp(result, "Watashi.eIGHt8OKe") == 0);
	testl	%eax, %eax	# _1
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp101
	movq	%rax, %rcx	# tmp101,
	movl	$32, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp102
	movq	%rax, %rsi	# tmp102,
	leaq	.LC7(%rip), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	__assert_fail@PLT	#
.L10:
# problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	leaq	.LC8(%rip), %rax	#, tmp104
	movq	%rax, -288(%rbp)	# tmp104, D.3434[0]
	leaq	.LC9(%rip), %rax	#, tmp105
	movq	%rax, -280(%rbp)	# tmp105, D.3434[1]
	leaq	.LC10(%rip), %rax	#, tmp106
	movq	%rax, -272(%rbp)	# tmp106, D.3434[2]
	leaq	.LC11(%rip), %rax	#, tmp107
	movq	%rax, -264(%rbp)	# tmp107, D.3434[3]
# problem154.c:34:     func0("Boku123", (const char* []){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4, result);
	leaq	-64(%rbp), %rdx	#, tmp108
	leaq	-288(%rbp), %rax	#, tmp109
	movq	%rdx, %rcx	# tmp108,
	movl	$4, %edx	#,
	movq	%rax, %rsi	# tmp109,
	leaq	.LC12(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	func0	#
# problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	leaq	-64(%rbp), %rax	#, tmp111
	leaq	.LC13(%rip), %rdx	#, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp111,
	call	strcmp@PLT	#
# problem154.c:35:     assert(strcmp(result, "Boku123.YEs.WeCaNe") == 0);
	testl	%eax, %eax	# _2
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp113
	movq	%rax, %rcx	# tmp113,
	movl	$35, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp114
	movq	%rax, %rsi	# tmp114,
	leaq	.LC14(%rip), %rax	#, tmp115
	movq	%rax, %rdi	# tmp115,
	call	__assert_fail@PLT	#
.L11:
# problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	leaq	.LC15(%rip), %rax	#, tmp116
	movq	%rax, -112(%rbp)	# tmp116, D.3435[0]
	leaq	.LC16(%rip), %rax	#, tmp117
	movq	%rax, -104(%rbp)	# tmp117, D.3435[1]
	leaq	.LC17(%rip), %rax	#, tmp118
	movq	%rax, -96(%rbp)	# tmp118, D.3435[2]
	leaq	.LC18(%rip), %rax	#, tmp119
	movq	%rax, -88(%rbp)	# tmp119, D.3435[3]
	leaq	.LC19(%rip), %rax	#, tmp120
	movq	%rax, -80(%rbp)	# tmp120, D.3435[4]
	leaq	.LC20(%rip), %rax	#, tmp121
	movq	%rax, -72(%rbp)	# tmp121, D.3435[5]
# problem154.c:37:     func0("__YESIMHERE", (const char* []){"t", "eMptY", "(nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6, result);
	leaq	-64(%rbp), %rdx	#, tmp122
	leaq	-112(%rbp), %rax	#, tmp123
	movq	%rdx, %rcx	# tmp122,
	movl	$6, %edx	#,
	movq	%rax, %rsi	# tmp123,
	leaq	.LC21(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	func0	#
# problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	leaq	-64(%rbp), %rax	#, tmp125
	leaq	.LC22(%rip), %rdx	#, tmp126
	movq	%rdx, %rsi	# tmp126,
	movq	%rax, %rdi	# tmp125,
	call	strcmp@PLT	#
# problem154.c:38:     assert(strcmp(result, "__YESIMHERE.NuLl__") == 0);
	testl	%eax, %eax	# _3
	je	.L12	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$38, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC23(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L12:
# problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	leaq	.LC24(%rip), %rax	#, tmp130
	movq	%rax, -256(%rbp)	# tmp130, D.3436[0]
	leaq	.LC25(%rip), %rax	#, tmp131
	movq	%rax, -248(%rbp)	# tmp131, D.3436[1]
	leaq	.LC26(%rip), %rax	#, tmp132
	movq	%rax, -240(%rbp)	# tmp132, D.3436[2]
	leaq	.LC27(%rip), %rax	#, tmp133
	movq	%rax, -232(%rbp)	# tmp133, D.3436[3]
# problem154.c:40:     func0("K", (const char* []){"Ta", "TAR", "t234An", "cosSo"}, 4, result);
	leaq	-64(%rbp), %rdx	#, tmp134
	leaq	-256(%rbp), %rax	#, tmp135
	movq	%rdx, %rcx	# tmp134,
	movl	$4, %edx	#,
	movq	%rax, %rsi	# tmp135,
	leaq	.LC28(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	func0	#
# problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	leaq	-64(%rbp), %rax	#, tmp137
	leaq	.LC29(%rip), %rdx	#, tmp138
	movq	%rdx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp137,
	call	strcmp@PLT	#
# problem154.c:41:     assert(strcmp(result, "K.TAR") == 0);
	testl	%eax, %eax	# _4
	je	.L13	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp139
	movq	%rax, %rcx	# tmp139,
	movl	$41, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	leaq	.LC30(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	__assert_fail@PLT	#
.L13:
# problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	leaq	.LC31(%rip), %rax	#, tmp142
	movq	%rax, -224(%rbp)	# tmp142, D.3437[0]
	leaq	.LC32(%rip), %rax	#, tmp143
	movq	%rax, -216(%rbp)	# tmp143, D.3437[1]
	leaq	.LC33(%rip), %rax	#, tmp144
	movq	%rax, -208(%rbp)	# tmp144, D.3437[2]
	leaq	.LC34(%rip), %rax	#, tmp145
	movq	%rax, -200(%rbp)	# tmp145, D.3437[3]
# problem154.c:43:     func0("__HAHA", (const char* []){"Tab", "123", "781345", "-_-"}, 4, result);
	leaq	-64(%rbp), %rdx	#, tmp146
	leaq	-224(%rbp), %rax	#, tmp147
	movq	%rdx, %rcx	# tmp146,
	movl	$4, %edx	#,
	movq	%rax, %rsi	# tmp147,
	leaq	.LC35(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	call	func0	#
# problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	leaq	-64(%rbp), %rax	#, tmp149
	leaq	.LC36(%rip), %rdx	#, tmp150
	movq	%rdx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp149,
	call	strcmp@PLT	#
# problem154.c:44:     assert(strcmp(result, "__HAHA.123") == 0);
	testl	%eax, %eax	# _5
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp151
	movq	%rax, %rcx	# tmp151,
	movl	$44, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	leaq	.LC37(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	__assert_fail@PLT	#
.L14:
# problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	leaq	.LC38(%rip), %rax	#, tmp154
	movq	%rax, -160(%rbp)	# tmp154, D.3438[0]
	leaq	.LC39(%rip), %rax	#, tmp155
	movq	%rax, -152(%rbp)	# tmp155, D.3438[1]
	leaq	.LC40(%rip), %rax	#, tmp156
	movq	%rax, -144(%rbp)	# tmp156, D.3438[2]
	leaq	.LC41(%rip), %rax	#, tmp157
	movq	%rax, -136(%rbp)	# tmp157, D.3438[3]
	leaq	.LC34(%rip), %rax	#, tmp158
	movq	%rax, -128(%rbp)	# tmp158, D.3438[4]
# problem154.c:46:     func0("YameRore", (const char* []){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5, result);
	leaq	-64(%rbp), %rdx	#, tmp159
	leaq	-160(%rbp), %rax	#, tmp160
	movq	%rdx, %rcx	# tmp159,
	movl	$5, %edx	#,
	movq	%rax, %rsi	# tmp160,
	leaq	.LC42(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	func0	#
# problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	leaq	-64(%rbp), %rax	#, tmp162
	leaq	.LC43(%rip), %rdx	#, tmp163
	movq	%rdx, %rsi	# tmp163,
	movq	%rax, %rdi	# tmp162,
	call	strcmp@PLT	#
# problem154.c:47:     assert(strcmp(result, "YameRore.okIWILL123") == 0);
	testl	%eax, %eax	# _6
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp164
	movq	%rax, %rcx	# tmp164,
	movl	$47, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp165
	movq	%rax, %rsi	# tmp165,
	leaq	.LC44(%rip), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	call	__assert_fail@PLT	#
.L15:
# problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	leaq	.LC45(%rip), %rax	#, tmp167
	movq	%rax, -192(%rbp)	# tmp167, D.3439[0]
	leaq	.LC46(%rip), %rax	#, tmp168
	movq	%rax, -184(%rbp)	# tmp168, D.3439[1]
	leaq	.LC47(%rip), %rax	#, tmp169
	movq	%rax, -176(%rbp)	# tmp169, D.3439[2]
	leaq	.LC48(%rip), %rax	#, tmp170
	movq	%rax, -168(%rbp)	# tmp170, D.3439[3]
# problem154.c:49:     func0("finNNalLLly", (const char* []){"Die", "NowW", "Wow", "WoW"}, 4, result);
	leaq	-64(%rbp), %rdx	#, tmp171
	leaq	-192(%rbp), %rax	#, tmp172
	movq	%rdx, %rcx	# tmp171,
	movl	$4, %edx	#,
	movq	%rax, %rsi	# tmp172,
	leaq	.LC49(%rip), %rax	#, tmp173
	movq	%rax, %rdi	# tmp173,
	call	func0	#
# problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	leaq	-64(%rbp), %rax	#, tmp174
	leaq	.LC50(%rip), %rdx	#, tmp175
	movq	%rdx, %rsi	# tmp175,
	movq	%rax, %rdi	# tmp174,
	call	strcmp@PLT	#
# problem154.c:50:     assert(strcmp(result, "finNNalLLly.WoW") == 0);
	testl	%eax, %eax	# _7
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp176
	movq	%rax, %rcx	# tmp176,
	movl	$50, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp177
	movq	%rax, %rsi	# tmp177,
	leaq	.LC51(%rip), %rax	#, tmp178
	movq	%rax, %rdi	# tmp178,
	call	__assert_fail@PLT	#
.L16:
# problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	leaq	.LC52(%rip), %rax	#, tmp179
	movq	%rax, -352(%rbp)	# tmp179, D.3440[0]
	leaq	.LC53(%rip), %rax	#, tmp180
	movq	%rax, -344(%rbp)	# tmp180, D.3440[1]
# problem154.c:52:     func0("_", (const char* []){"Bb", "91245"}, 2, result);
	leaq	-64(%rbp), %rdx	#, tmp181
	leaq	-352(%rbp), %rax	#, tmp182
	movq	%rdx, %rcx	# tmp181,
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp182,
	leaq	.LC54(%rip), %rax	#, tmp183
	movq	%rax, %rdi	# tmp183,
	call	func0	#
# problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	leaq	-64(%rbp), %rax	#, tmp184
	leaq	.LC55(%rip), %rdx	#, tmp185
	movq	%rdx, %rsi	# tmp185,
	movq	%rax, %rdi	# tmp184,
	call	strcmp@PLT	#
# problem154.c:53:     assert(strcmp(result, "_.Bb") == 0);
	testl	%eax, %eax	# _8
	je	.L17	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp186
	movq	%rax, %rcx	# tmp186,
	movl	$53, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp187
	movq	%rax, %rsi	# tmp187,
	leaq	.LC56(%rip), %rax	#, tmp188
	movq	%rax, %rdi	# tmp188,
	call	__assert_fail@PLT	#
.L17:
# problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	leaq	.LC57(%rip), %rax	#, tmp189
	movq	%rax, -336(%rbp)	# tmp189, D.3441[0]
	leaq	.LC52(%rip), %rax	#, tmp190
	movq	%rax, -328(%rbp)	# tmp190, D.3441[1]
# problem154.c:55:     func0("Sp", (const char* []){"671235", "Bb"}, 2, result);
	leaq	-64(%rbp), %rdx	#, tmp191
	leaq	-336(%rbp), %rax	#, tmp192
	movq	%rdx, %rcx	# tmp191,
	movl	$2, %edx	#,
	movq	%rax, %rsi	# tmp192,
	leaq	.LC58(%rip), %rax	#, tmp193
	movq	%rax, %rdi	# tmp193,
	call	func0	#
# problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
	leaq	-64(%rbp), %rax	#, tmp194
	leaq	.LC59(%rip), %rdx	#, tmp195
	movq	%rdx, %rsi	# tmp195,
	movq	%rax, %rdi	# tmp194,
	call	strcmp@PLT	#
# problem154.c:56:     assert(strcmp(result, "Sp.671235") == 0);
	testl	%eax, %eax	# _9
	je	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp196
	movq	%rax, %rcx	# tmp196,
	movl	$56, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp197
	movq	%rax, %rsi	# tmp197,
	leaq	.LC60(%rip), %rax	#, tmp198
	movq	%rax, %rdi	# tmp198,
	call	__assert_fail@PLT	#
.L18:
# problem154.c:58:     return 0;
	movl	$0, %eax	#, _63
# problem154.c:59: }
	movq	-8(%rbp), %rdx	# D.3486, tmp201
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp201
	je	.L20	#,
	call	__stack_chk_fail@PLT	#
.L20:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
