	.file	"problem119.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"AEIOUaeiou"
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
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# word, word
# problem119.c:6:     const char *vowels = "AEIOUaeiou";
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, -16(%rbp)	# tmp106, vowels
# problem119.c:7:     size_t len = strlen(word);
	movq	-40(%rbp), %rax	# word, tmp107
	movq	%rax, %rdi	# tmp107,
	call	strlen@PLT	#
	movq	%rax, -8(%rbp)	# tmp108, len
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	movq	-8(%rbp), %rax	# len, tmp109
	subl	$2, %eax	#, _2
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	movl	%eax, -20(%rbp)	# _2, i
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	jmp	.L2	#
.L5:
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movl	-20(%rbp), %eax	# i, tmp110
	movslq	%eax, %rdx	# tmp110, _3
	movq	-40(%rbp), %rax	# word, tmp111
	addq	%rdx, %rax	# _3, _4
	movzbl	(%rax), %eax	# *_4, _5
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movsbl	%al, %edx	# _5, _6
	movq	-16(%rbp), %rax	# vowels, tmp112
	movl	%edx, %esi	# _6,
	movq	%rax, %rdi	# tmp112,
	call	strchr@PLT	#
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	testq	%rax, %rax	# _7
	je	.L3	#,
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movl	-20(%rbp), %eax	# i, tmp113
	cltq
	leaq	1(%rax), %rdx	#, _9
	movq	-40(%rbp), %rax	# word, tmp114
	addq	%rdx, %rax	# _9, _10
	movzbl	(%rax), %eax	# *_10, _11
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movsbl	%al, %edx	# _11, _12
	movq	-16(%rbp), %rax	# vowels, tmp115
	movl	%edx, %esi	# _12,
	movq	%rax, %rdi	# tmp115,
	call	strchr@PLT	#
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	testq	%rax, %rax	# _13
	jne	.L3	#,
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movl	-20(%rbp), %eax	# i, tmp116
	cltq
	leaq	-1(%rax), %rdx	#, _15
	movq	-40(%rbp), %rax	# word, tmp117
	addq	%rdx, %rax	# _15, _16
	movzbl	(%rax), %eax	# *_16, _17
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	movsbl	%al, %edx	# _17, _18
	movq	-16(%rbp), %rax	# vowels, tmp118
	movl	%edx, %esi	# _18,
	movq	%rax, %rdi	# tmp118,
	call	strchr@PLT	#
# problem119.c:10:         if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
	testq	%rax, %rax	# _19
	jne	.L3	#,
# problem119.c:11:             out[0] = word[i];
	movl	-20(%rbp), %eax	# i, tmp119
	movslq	%eax, %rdx	# tmp119, _20
	movq	-40(%rbp), %rax	# word, tmp120
	addq	%rdx, %rax	# _20, _21
	movzbl	(%rax), %eax	# *_21, _22
# problem119.c:11:             out[0] = word[i];
	movb	%al, out.1(%rip)	# _22, out[0]
# problem119.c:12:             return out;
	leaq	out.1(%rip), %rax	#, _24
	jmp	.L4	#
.L3:
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	subl	$1, -20(%rbp)	#, i
.L2:
# problem119.c:9:     for (int i = len - 2; i >= 1; i--) {
	cmpl	$0, -20(%rbp)	#, i
	jg	.L5	#,
# problem119.c:15:     out[0] = '\0';
	movb	$0, out.1(%rip)	#, out[0]
# problem119.c:16:     return out;
	leaq	out.1(%rip), %rax	#, _24
.L4:
# problem119.c:17: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC1:
	.string	"yogurt"
.LC2:
	.string	"u"
.LC3:
	.string	"problem119.c"
	.align 8
.LC4:
	.string	"strcmp(func0(\"yogurt\"), \"u\") == 0"
.LC5:
	.string	"full"
	.align 8
.LC6:
	.string	"strcmp(func0(\"full\"), \"u\") == 0"
.LC7:
	.string	"easy"
	.align 8
.LC8:
	.string	"strcmp(func0(\"easy\"), \"\") == 0"
.LC9:
	.string	"eAsy"
	.align 8
.LC10:
	.string	"strcmp(func0(\"eAsy\"), \"\") == 0"
.LC11:
	.string	"ali"
.LC12:
	.string	"strcmp(func0(\"ali\"), \"\") == 0"
.LC13:
	.string	"bad"
.LC14:
	.string	"a"
	.align 8
.LC15:
	.string	"strcmp(func0(\"bad\"), \"a\") == 0"
.LC16:
	.string	"most"
.LC17:
	.string	"o"
	.align 8
.LC18:
	.string	"strcmp(func0(\"most\"), \"o\") == 0"
.LC19:
	.string	"ab"
.LC20:
	.string	"strcmp(func0(\"ab\"), \"\") == 0"
.LC21:
	.string	"ba"
.LC22:
	.string	"strcmp(func0(\"ba\"), \"\") == 0"
.LC23:
	.string	"quick"
	.align 8
.LC24:
	.string	"strcmp(func0(\"quick\"), \"\") == 0"
.LC25:
	.string	"anime"
.LC26:
	.string	"i"
	.align 8
.LC27:
	.string	"strcmp(func0(\"anime\"), \"i\") == 0"
.LC28:
	.string	"Asia"
	.align 8
.LC29:
	.string	"strcmp(func0(\"Asia\"), \"\") == 0"
.LC30:
	.string	"Above"
	.align 8
.LC31:
	.string	"strcmp(func0(\"Above\"), \"o\") == 0"
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
# problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	leaq	.LC1(%rip), %rax	#, tmp117
	movq	%rax, %rdi	# tmp117,
	call	func0	#
	movq	%rax, %rdx	#, _1
# problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	leaq	.LC2(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	movq	%rdx, %rdi	# _1,
	call	strcmp@PLT	#
# problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	testl	%eax, %eax	# _2
	je	.L7	#,
# problem119.c:26:     assert(strcmp(func0("yogurt"), "u") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$26, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC4(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L7:
# problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	leaq	.LC5(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	func0	#
	movq	%rax, %rdx	#, _3
# problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	leaq	.LC2(%rip), %rax	#, tmp123
	movq	%rax, %rsi	# tmp123,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
# problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	testl	%eax, %eax	# _4
	je	.L8	#,
# problem119.c:27:     assert(strcmp(func0("full"), "u") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$27, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC6(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L8:
# problem119.c:28:     assert(strcmp(func0("easy"), "") == 0);
	leaq	.LC7(%rip), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	func0	#
# problem119.c:28:     assert(strcmp(func0("easy"), "") == 0);
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_5], _33
	movzbl	%al, %eax	# _33, _6
	testl	%eax, %eax	# _6
	je	.L9	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp128
	movq	%rax, %rcx	# tmp128,
	movl	$28, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp129
	movq	%rax, %rsi	# tmp129,
	leaq	.LC8(%rip), %rax	#, tmp130
	movq	%rax, %rdi	# tmp130,
	call	__assert_fail@PLT	#
.L9:
# problem119.c:29:     assert(strcmp(func0("eAsy"), "") == 0);
	leaq	.LC9(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	func0	#
# problem119.c:29:     assert(strcmp(func0("eAsy"), "") == 0);
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_7], _36
	movzbl	%al, %eax	# _36, _8
	testl	%eax, %eax	# _8
	je	.L10	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp132
	movq	%rax, %rcx	# tmp132,
	movl	$29, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp133
	movq	%rax, %rsi	# tmp133,
	leaq	.LC10(%rip), %rax	#, tmp134
	movq	%rax, %rdi	# tmp134,
	call	__assert_fail@PLT	#
.L10:
# problem119.c:30:     assert(strcmp(func0("ali"), "") == 0);
	leaq	.LC11(%rip), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	func0	#
# problem119.c:30:     assert(strcmp(func0("ali"), "") == 0);
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_9], _39
	movzbl	%al, %eax	# _39, _10
	testl	%eax, %eax	# _10
	je	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp136
	movq	%rax, %rcx	# tmp136,
	movl	$30, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	leaq	.LC12(%rip), %rax	#, tmp138
	movq	%rax, %rdi	# tmp138,
	call	__assert_fail@PLT	#
.L11:
# problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	leaq	.LC13(%rip), %rax	#, tmp139
	movq	%rax, %rdi	# tmp139,
	call	func0	#
	movq	%rax, %rdx	#, _11
# problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	leaq	.LC14(%rip), %rax	#, tmp140
	movq	%rax, %rsi	# tmp140,
	movq	%rdx, %rdi	# _11,
	call	strcmp@PLT	#
# problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	testl	%eax, %eax	# _12
	je	.L12	#,
# problem119.c:31:     assert(strcmp(func0("bad"), "a") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$31, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	leaq	.LC15(%rip), %rax	#, tmp143
	movq	%rax, %rdi	# tmp143,
	call	__assert_fail@PLT	#
.L12:
# problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	leaq	.LC16(%rip), %rax	#, tmp144
	movq	%rax, %rdi	# tmp144,
	call	func0	#
	movq	%rax, %rdx	#, _13
# problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	leaq	.LC17(%rip), %rax	#, tmp145
	movq	%rax, %rsi	# tmp145,
	movq	%rdx, %rdi	# _13,
	call	strcmp@PLT	#
# problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	testl	%eax, %eax	# _14
	je	.L13	#,
# problem119.c:32:     assert(strcmp(func0("most"), "o") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp146
	movq	%rax, %rcx	# tmp146,
	movl	$32, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp147
	movq	%rax, %rsi	# tmp147,
	leaq	.LC18(%rip), %rax	#, tmp148
	movq	%rax, %rdi	# tmp148,
	call	__assert_fail@PLT	#
.L13:
# problem119.c:33:     assert(strcmp(func0("ab"), "") == 0);
	leaq	.LC19(%rip), %rax	#, tmp149
	movq	%rax, %rdi	# tmp149,
	call	func0	#
# problem119.c:33:     assert(strcmp(func0("ab"), "") == 0);
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_15], _46
	movzbl	%al, %eax	# _46, _16
	testl	%eax, %eax	# _16
	je	.L14	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp150
	movq	%rax, %rcx	# tmp150,
	movl	$33, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp151
	movq	%rax, %rsi	# tmp151,
	leaq	.LC20(%rip), %rax	#, tmp152
	movq	%rax, %rdi	# tmp152,
	call	__assert_fail@PLT	#
.L14:
# problem119.c:34:     assert(strcmp(func0("ba"), "") == 0);
	leaq	.LC21(%rip), %rax	#, tmp153
	movq	%rax, %rdi	# tmp153,
	call	func0	#
# problem119.c:34:     assert(strcmp(func0("ba"), "") == 0);
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_17], _49
	movzbl	%al, %eax	# _49, _18
	testl	%eax, %eax	# _18
	je	.L15	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp154
	movq	%rax, %rcx	# tmp154,
	movl	$34, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp155
	movq	%rax, %rsi	# tmp155,
	leaq	.LC22(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	__assert_fail@PLT	#
.L15:
# problem119.c:35:     assert(strcmp(func0("quick"), "") == 0);
	leaq	.LC23(%rip), %rax	#, tmp157
	movq	%rax, %rdi	# tmp157,
	call	func0	#
# problem119.c:35:     assert(strcmp(func0("quick"), "") == 0);
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_19], _52
	movzbl	%al, %eax	# _52, _20
	testl	%eax, %eax	# _20
	je	.L16	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp158
	movq	%rax, %rcx	# tmp158,
	movl	$35, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp159
	movq	%rax, %rsi	# tmp159,
	leaq	.LC24(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	__assert_fail@PLT	#
.L16:
# problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	leaq	.LC25(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	func0	#
	movq	%rax, %rdx	#, _21
# problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	leaq	.LC26(%rip), %rax	#, tmp162
	movq	%rax, %rsi	# tmp162,
	movq	%rdx, %rdi	# _21,
	call	strcmp@PLT	#
# problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	testl	%eax, %eax	# _22
	je	.L17	#,
# problem119.c:36:     assert(strcmp(func0("anime"), "i") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp163
	movq	%rax, %rcx	# tmp163,
	movl	$36, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp164
	movq	%rax, %rsi	# tmp164,
	leaq	.LC27(%rip), %rax	#, tmp165
	movq	%rax, %rdi	# tmp165,
	call	__assert_fail@PLT	#
.L17:
# problem119.c:37:     assert(strcmp(func0("Asia"), "") == 0);
	leaq	.LC28(%rip), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	call	func0	#
# problem119.c:37:     assert(strcmp(func0("Asia"), "") == 0);
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})_23], _57
	movzbl	%al, %eax	# _57, _24
	testl	%eax, %eax	# _24
	je	.L18	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp167
	movq	%rax, %rcx	# tmp167,
	movl	$37, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp168
	movq	%rax, %rsi	# tmp168,
	leaq	.LC29(%rip), %rax	#, tmp169
	movq	%rax, %rdi	# tmp169,
	call	__assert_fail@PLT	#
.L18:
# problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	leaq	.LC30(%rip), %rax	#, tmp170
	movq	%rax, %rdi	# tmp170,
	call	func0	#
	movq	%rax, %rdx	#, _25
# problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	leaq	.LC17(%rip), %rax	#, tmp171
	movq	%rax, %rsi	# tmp171,
	movq	%rdx, %rdi	# _25,
	call	strcmp@PLT	#
# problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	testl	%eax, %eax	# _26
	je	.L19	#,
# problem119.c:38:     assert(strcmp(func0("Above"), "o") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp172
	movq	%rax, %rcx	# tmp172,
	movl	$38, %edx	#,
	leaq	.LC3(%rip), %rax	#, tmp173
	movq	%rax, %rsi	# tmp173,
	leaq	.LC31(%rip), %rax	#, tmp174
	movq	%rax, %rdi	# tmp174,
	call	__assert_fail@PLT	#
.L19:
# problem119.c:40:     return 0;
	movl	$0, %eax	#, _61
# problem119.c:41: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	out.1
	.comm	out.1,2,1
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
