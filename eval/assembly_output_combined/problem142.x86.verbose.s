	.file	"problem142.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"No"
.LC1:
	.string	".txt"
.LC2:
	.string	".exe"
.LC3:
	.string	".dll"
.LC4:
	.string	"Yes"
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
	movq	%rdi, -40(%rbp)	# file_name, file_name
# problem142.c:5:     int num_digit = 0, num_dot = 0;
	movl	$0, -24(%rbp)	#, num_digit
# problem142.c:5:     int num_digit = 0, num_dot = 0;
	movl	$0, -20(%rbp)	#, num_dot
# problem142.c:6:     int length = strlen(file_name);
	movq	-40(%rbp), %rax	# file_name, tmp99
	movq	%rax, %rdi	# tmp99,
	call	strlen@PLT	#
# problem142.c:6:     int length = strlen(file_name);
	movl	%eax, -12(%rbp)	# _1, length
# problem142.c:7:     if (length < 5) return "No";
	cmpl	$4, -12(%rbp)	#, length
	jg	.L2	#,
# problem142.c:7:     if (length < 5) return "No";
	leaq	.LC0(%rip), %rax	#, _21
	jmp	.L3	#
.L2:
# problem142.c:8:     char w = file_name[0];
	movq	-40(%rbp), %rax	# file_name, tmp100
	movzbl	(%rax), %eax	# *file_name_25(D), tmp101
	movb	%al, -25(%rbp)	# tmp101, w
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$64, -25(%rbp)	#, w
	jle	.L4	#,
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$90, -25(%rbp)	#, w
	jle	.L5	#,
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$96, -25(%rbp)	#, w
	jle	.L4	#,
.L5:
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	cmpb	$122, -25(%rbp)	#, w
	jle	.L6	#,
.L4:
# problem142.c:9:     if (w < 'A' || (w > 'Z' && w < 'a') || w > 'z') return "No";
	leaq	.LC0(%rip), %rax	#, _21
	jmp	.L3	#
.L6:
# problem142.c:10:     const char* last = file_name + length - 4;
	movl	-12(%rbp), %eax	# length, tmp102
	cltq
	leaq	-4(%rax), %rdx	#, _3
# problem142.c:10:     const char* last = file_name + length - 4;
	movq	-40(%rbp), %rax	# file_name, tmp106
	addq	%rdx, %rax	# _3, tmp105
	movq	%rax, -8(%rbp)	# tmp105, last
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	movq	-8(%rbp), %rax	# last, tmp107
	leaq	.LC1(%rip), %rdx	#, tmp108
	movq	%rdx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp107,
	call	strcmp@PLT	#
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	testl	%eax, %eax	# _4
	je	.L7	#,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	movq	-8(%rbp), %rax	# last, tmp109
	leaq	.LC2(%rip), %rdx	#, tmp110
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp109,
	call	strcmp@PLT	#
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	testl	%eax, %eax	# _5
	je	.L7	#,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	movq	-8(%rbp), %rax	# last, tmp111
	leaq	.LC3(%rip), %rdx	#, tmp112
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp111,
	call	strcmp@PLT	#
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	testl	%eax, %eax	# _6
	je	.L7	#,
# problem142.c:11:     if (strcmp(last, ".txt") != 0 && strcmp(last, ".exe") != 0 && strcmp(last, ".dll") != 0) return "No";
	leaq	.LC0(%rip), %rax	#, _21
	jmp	.L3	#
.L7:
# problem142.c:12:     for (int i = 0; i < length; i++) {
	movl	$0, -16(%rbp)	#, i
# problem142.c:12:     for (int i = 0; i < length; i++) {
	jmp	.L8	#
.L11:
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	movl	-16(%rbp), %eax	# i, tmp113
	movslq	%eax, %rdx	# tmp113, _7
	movq	-40(%rbp), %rax	# file_name, tmp114
	addq	%rdx, %rax	# _7, _8
	movzbl	(%rax), %eax	# *_8, _9
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmpb	$47, %al	#, _9
	jle	.L9	#,
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	movl	-16(%rbp), %eax	# i, tmp115
	movslq	%eax, %rdx	# tmp115, _10
	movq	-40(%rbp), %rax	# file_name, tmp116
	addq	%rdx, %rax	# _10, _11
	movzbl	(%rax), %eax	# *_11, _12
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	cmpb	$57, %al	#, _12
	jg	.L9	#,
# problem142.c:13:         if (file_name[i] >= '0' && file_name[i] <= '9') num_digit++;
	addl	$1, -24(%rbp)	#, num_digit
.L9:
# problem142.c:14:         if (file_name[i] == '.') num_dot++;
	movl	-16(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, _13
	movq	-40(%rbp), %rax	# file_name, tmp118
	addq	%rdx, %rax	# _13, _14
	movzbl	(%rax), %eax	# *_14, _15
# problem142.c:14:         if (file_name[i] == '.') num_dot++;
	cmpb	$46, %al	#, _15
	jne	.L10	#,
# problem142.c:14:         if (file_name[i] == '.') num_dot++;
	addl	$1, -20(%rbp)	#, num_dot
.L10:
# problem142.c:12:     for (int i = 0; i < length; i++) {
	addl	$1, -16(%rbp)	#, i
.L8:
# problem142.c:12:     for (int i = 0; i < length; i++) {
	movl	-16(%rbp), %eax	# i, tmp119
	cmpl	-12(%rbp), %eax	# length, tmp119
	jl	.L11	#,
# problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	cmpl	$3, -24(%rbp)	#, num_digit
	jg	.L12	#,
# problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	cmpl	$1, -20(%rbp)	#, num_dot
	je	.L13	#,
.L12:
# problem142.c:16:     if (num_digit > 3 || num_dot != 1) return "No";
	leaq	.LC0(%rip), %rax	#, _21
	jmp	.L3	#
.L13:
# problem142.c:17:     return "Yes";
	leaq	.LC4(%rip), %rax	#, _21
.L3:
# problem142.c:18: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.section	.rodata
.LC5:
	.string	"example.txt"
.LC6:
	.string	"problem142.c"
	.align 8
.LC7:
	.string	"strcmp(func0(\"example.txt\"), \"Yes\") == 0"
.LC8:
	.string	"1example.dll"
	.align 8
.LC9:
	.string	"strcmp(func0(\"1example.dll\"), \"No\") == 0"
.LC10:
	.string	"s1sdf3.asd"
	.align 8
.LC11:
	.string	"strcmp(func0(\"s1sdf3.asd\"), \"No\") == 0"
.LC12:
	.string	"K.dll"
	.align 8
.LC13:
	.string	"strcmp(func0(\"K.dll\"), \"Yes\") == 0"
.LC14:
	.string	"MY16FILE3.exe"
	.align 8
.LC15:
	.string	"strcmp(func0(\"MY16FILE3.exe\"), \"Yes\") == 0"
.LC16:
	.string	"His12FILE94.exe"
	.align 8
.LC17:
	.string	"strcmp(func0(\"His12FILE94.exe\"), \"No\") == 0"
.LC18:
	.string	"_Y.txt"
	.align 8
.LC19:
	.string	"strcmp(func0(\"_Y.txt\"), \"No\") == 0"
.LC20:
	.string	"?aREYA.exe"
	.align 8
.LC21:
	.string	"strcmp(func0(\"?aREYA.exe\"), \"No\") == 0"
.LC22:
	.string	"/this_is_valid.dll"
	.align 8
.LC23:
	.string	"strcmp(func0(\"/this_is_valid.dll\"), \"No\") == 0"
.LC24:
	.string	"this_is_valid.wow"
	.align 8
.LC25:
	.string	"strcmp(func0(\"this_is_valid.wow\"), \"No\") == 0"
.LC26:
	.string	"this_is_valid.txt"
	.align 8
.LC27:
	.string	"strcmp(func0(\"this_is_valid.txt\"), \"Yes\") == 0"
.LC28:
	.string	"this_is_valid.txtexe"
	.align 8
.LC29:
	.string	"strcmp(func0(\"this_is_valid.txtexe\"), \"No\") == 0"
.LC30:
	.string	"#this2_i4s_5valid.ten"
	.align 8
.LC31:
	.string	"strcmp(func0(\"#this2_i4s_5valid.ten\"), \"No\") == 0"
.LC32:
	.string	"@this1_is6_valid.exe"
	.align 8
.LC33:
	.string	"strcmp(func0(\"@this1_is6_valid.exe\"), \"No\") == 0"
.LC34:
	.string	"this_is_12valid.6exe4.txt"
	.align 8
.LC35:
	.string	"strcmp(func0(\"this_is_12valid.6exe4.txt\"), \"No\") == 0"
.LC36:
	.string	"all.exe.txt"
	.align 8
.LC37:
	.string	"strcmp(func0(\"all.exe.txt\"), \"No\") == 0"
.LC38:
	.string	"I563_No.exe"
	.align 8
.LC39:
	.string	"strcmp(func0(\"I563_No.exe\"), \"Yes\") == 0"
.LC40:
	.string	"Is3youfault.txt"
	.align 8
.LC41:
	.string	"strcmp(func0(\"Is3youfault.txt\"), \"Yes\") == 0"
.LC42:
	.string	"no_one#knows.dll"
	.align 8
.LC43:
	.string	"strcmp(func0(\"no_one#knows.dll\"), \"Yes\") == 0"
.LC44:
	.string	"1I563_Yes3.exe"
	.align 8
.LC45:
	.string	"strcmp(func0(\"1I563_Yes3.exe\"), \"No\") == 0"
.LC46:
	.string	"I563_Yes3.txtt"
	.align 8
.LC47:
	.string	"strcmp(func0(\"I563_Yes3.txtt\"), \"No\") == 0"
.LC48:
	.string	"final..txt"
	.align 8
.LC49:
	.string	"strcmp(func0(\"final..txt\"), \"No\") == 0"
.LC50:
	.string	"final132"
	.align 8
.LC51:
	.string	"strcmp(func0(\"final132\"), \"No\") == 0"
.LC52:
	.string	"_f4indsartal132."
	.align 8
.LC53:
	.string	"strcmp(func0(\"_f4indsartal132.\"), \"No\") == 0"
	.align 8
.LC54:
	.string	"strcmp(func0(\".txt\"), \"No\") == 0"
.LC55:
	.string	"s."
	.align 8
.LC56:
	.string	"strcmp(func0(\"s.\"), \"No\") == 0"
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
# problem142.c:26:     assert(strcmp(func0("example.txt"), "Yes") == 0);
	leaq	.LC5(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	func0	#
	movq	%rax, %rdx	#, _1
	leaq	.LC4(%rip), %rax	#, tmp137
	movq	%rax, %rsi	# tmp137,
	movq	%rdx, %rdi	# _1,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _2
	je	.L15	#,
# problem142.c:26:     assert(strcmp(func0("example.txt"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp138
	movq	%rax, %rcx	# tmp138,
	movl	$26, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp139
	movq	%rax, %rsi	# tmp139,
	leaq	.LC7(%rip), %rax	#, tmp140
	movq	%rax, %rdi	# tmp140,
	call	__assert_fail@PLT	#
.L15:
# problem142.c:27:     assert(strcmp(func0("1example.dll"), "No") == 0);
	leaq	.LC8(%rip), %rax	#, tmp141
	movq	%rax, %rdi	# tmp141,
	call	func0	#
	movq	%rax, %rdx	#, _3
	leaq	.LC0(%rip), %rax	#, tmp142
	movq	%rax, %rsi	# tmp142,
	movq	%rdx, %rdi	# _3,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _4
	je	.L16	#,
# problem142.c:27:     assert(strcmp(func0("1example.dll"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp143
	movq	%rax, %rcx	# tmp143,
	movl	$27, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp144
	movq	%rax, %rsi	# tmp144,
	leaq	.LC9(%rip), %rax	#, tmp145
	movq	%rax, %rdi	# tmp145,
	call	__assert_fail@PLT	#
.L16:
# problem142.c:28:     assert(strcmp(func0("s1sdf3.asd"), "No") == 0);
	leaq	.LC10(%rip), %rax	#, tmp146
	movq	%rax, %rdi	# tmp146,
	call	func0	#
	movq	%rax, %rdx	#, _5
	leaq	.LC0(%rip), %rax	#, tmp147
	movq	%rax, %rsi	# tmp147,
	movq	%rdx, %rdi	# _5,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _6
	je	.L17	#,
# problem142.c:28:     assert(strcmp(func0("s1sdf3.asd"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp148
	movq	%rax, %rcx	# tmp148,
	movl	$28, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	leaq	.LC11(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	__assert_fail@PLT	#
.L17:
# problem142.c:29:     assert(strcmp(func0("K.dll"), "Yes") == 0);
	leaq	.LC12(%rip), %rax	#, tmp151
	movq	%rax, %rdi	# tmp151,
	call	func0	#
	movq	%rax, %rdx	#, _7
	leaq	.LC4(%rip), %rax	#, tmp152
	movq	%rax, %rsi	# tmp152,
	movq	%rdx, %rdi	# _7,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _8
	je	.L18	#,
# problem142.c:29:     assert(strcmp(func0("K.dll"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp153
	movq	%rax, %rcx	# tmp153,
	movl	$29, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp154
	movq	%rax, %rsi	# tmp154,
	leaq	.LC13(%rip), %rax	#, tmp155
	movq	%rax, %rdi	# tmp155,
	call	__assert_fail@PLT	#
.L18:
# problem142.c:30:     assert(strcmp(func0("MY16FILE3.exe"), "Yes") == 0);
	leaq	.LC14(%rip), %rax	#, tmp156
	movq	%rax, %rdi	# tmp156,
	call	func0	#
	movq	%rax, %rdx	#, _9
	leaq	.LC4(%rip), %rax	#, tmp157
	movq	%rax, %rsi	# tmp157,
	movq	%rdx, %rdi	# _9,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _10
	je	.L19	#,
# problem142.c:30:     assert(strcmp(func0("MY16FILE3.exe"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp158
	movq	%rax, %rcx	# tmp158,
	movl	$30, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp159
	movq	%rax, %rsi	# tmp159,
	leaq	.LC15(%rip), %rax	#, tmp160
	movq	%rax, %rdi	# tmp160,
	call	__assert_fail@PLT	#
.L19:
# problem142.c:31:     assert(strcmp(func0("His12FILE94.exe"), "No") == 0);
	leaq	.LC16(%rip), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	func0	#
	movq	%rax, %rdx	#, _11
	leaq	.LC0(%rip), %rax	#, tmp162
	movq	%rax, %rsi	# tmp162,
	movq	%rdx, %rdi	# _11,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _12
	je	.L20	#,
# problem142.c:31:     assert(strcmp(func0("His12FILE94.exe"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp163
	movq	%rax, %rcx	# tmp163,
	movl	$31, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp164
	movq	%rax, %rsi	# tmp164,
	leaq	.LC17(%rip), %rax	#, tmp165
	movq	%rax, %rdi	# tmp165,
	call	__assert_fail@PLT	#
.L20:
# problem142.c:32:     assert(strcmp(func0("_Y.txt"), "No") == 0);
	leaq	.LC18(%rip), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	call	func0	#
	movq	%rax, %rdx	#, _13
	leaq	.LC0(%rip), %rax	#, tmp167
	movq	%rax, %rsi	# tmp167,
	movq	%rdx, %rdi	# _13,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _14
	je	.L21	#,
# problem142.c:32:     assert(strcmp(func0("_Y.txt"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp168
	movq	%rax, %rcx	# tmp168,
	movl	$32, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp169
	movq	%rax, %rsi	# tmp169,
	leaq	.LC19(%rip), %rax	#, tmp170
	movq	%rax, %rdi	# tmp170,
	call	__assert_fail@PLT	#
.L21:
# problem142.c:33:     assert(strcmp(func0("?aREYA.exe"), "No") == 0);
	leaq	.LC20(%rip), %rax	#, tmp171
	movq	%rax, %rdi	# tmp171,
	call	func0	#
	movq	%rax, %rdx	#, _15
	leaq	.LC0(%rip), %rax	#, tmp172
	movq	%rax, %rsi	# tmp172,
	movq	%rdx, %rdi	# _15,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _16
	je	.L22	#,
# problem142.c:33:     assert(strcmp(func0("?aREYA.exe"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp173
	movq	%rax, %rcx	# tmp173,
	movl	$33, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp174
	movq	%rax, %rsi	# tmp174,
	leaq	.LC21(%rip), %rax	#, tmp175
	movq	%rax, %rdi	# tmp175,
	call	__assert_fail@PLT	#
.L22:
# problem142.c:34:     assert(strcmp(func0("/this_is_valid.dll"), "No") == 0);
	leaq	.LC22(%rip), %rax	#, tmp176
	movq	%rax, %rdi	# tmp176,
	call	func0	#
	movq	%rax, %rdx	#, _17
	leaq	.LC0(%rip), %rax	#, tmp177
	movq	%rax, %rsi	# tmp177,
	movq	%rdx, %rdi	# _17,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _18
	je	.L23	#,
# problem142.c:34:     assert(strcmp(func0("/this_is_valid.dll"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp178
	movq	%rax, %rcx	# tmp178,
	movl	$34, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp179
	movq	%rax, %rsi	# tmp179,
	leaq	.LC23(%rip), %rax	#, tmp180
	movq	%rax, %rdi	# tmp180,
	call	__assert_fail@PLT	#
.L23:
# problem142.c:35:     assert(strcmp(func0("this_is_valid.wow"), "No") == 0);
	leaq	.LC24(%rip), %rax	#, tmp181
	movq	%rax, %rdi	# tmp181,
	call	func0	#
	movq	%rax, %rdx	#, _19
	leaq	.LC0(%rip), %rax	#, tmp182
	movq	%rax, %rsi	# tmp182,
	movq	%rdx, %rdi	# _19,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _20
	je	.L24	#,
# problem142.c:35:     assert(strcmp(func0("this_is_valid.wow"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp183
	movq	%rax, %rcx	# tmp183,
	movl	$35, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp184
	movq	%rax, %rsi	# tmp184,
	leaq	.LC25(%rip), %rax	#, tmp185
	movq	%rax, %rdi	# tmp185,
	call	__assert_fail@PLT	#
.L24:
# problem142.c:36:     assert(strcmp(func0("this_is_valid.txt"), "Yes") == 0);
	leaq	.LC26(%rip), %rax	#, tmp186
	movq	%rax, %rdi	# tmp186,
	call	func0	#
	movq	%rax, %rdx	#, _21
	leaq	.LC4(%rip), %rax	#, tmp187
	movq	%rax, %rsi	# tmp187,
	movq	%rdx, %rdi	# _21,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _22
	je	.L25	#,
# problem142.c:36:     assert(strcmp(func0("this_is_valid.txt"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp188
	movq	%rax, %rcx	# tmp188,
	movl	$36, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp189
	movq	%rax, %rsi	# tmp189,
	leaq	.LC27(%rip), %rax	#, tmp190
	movq	%rax, %rdi	# tmp190,
	call	__assert_fail@PLT	#
.L25:
# problem142.c:37:     assert(strcmp(func0("this_is_valid.txtexe"), "No") == 0);
	leaq	.LC28(%rip), %rax	#, tmp191
	movq	%rax, %rdi	# tmp191,
	call	func0	#
	movq	%rax, %rdx	#, _23
	leaq	.LC0(%rip), %rax	#, tmp192
	movq	%rax, %rsi	# tmp192,
	movq	%rdx, %rdi	# _23,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _24
	je	.L26	#,
# problem142.c:37:     assert(strcmp(func0("this_is_valid.txtexe"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp193
	movq	%rax, %rcx	# tmp193,
	movl	$37, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp194
	movq	%rax, %rsi	# tmp194,
	leaq	.LC29(%rip), %rax	#, tmp195
	movq	%rax, %rdi	# tmp195,
	call	__assert_fail@PLT	#
.L26:
# problem142.c:38:     assert(strcmp(func0("#this2_i4s_5valid.ten"), "No") == 0);
	leaq	.LC30(%rip), %rax	#, tmp196
	movq	%rax, %rdi	# tmp196,
	call	func0	#
	movq	%rax, %rdx	#, _25
	leaq	.LC0(%rip), %rax	#, tmp197
	movq	%rax, %rsi	# tmp197,
	movq	%rdx, %rdi	# _25,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _26
	je	.L27	#,
# problem142.c:38:     assert(strcmp(func0("#this2_i4s_5valid.ten"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp198
	movq	%rax, %rcx	# tmp198,
	movl	$38, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp199
	movq	%rax, %rsi	# tmp199,
	leaq	.LC31(%rip), %rax	#, tmp200
	movq	%rax, %rdi	# tmp200,
	call	__assert_fail@PLT	#
.L27:
# problem142.c:39:     assert(strcmp(func0("@this1_is6_valid.exe"), "No") == 0);
	leaq	.LC32(%rip), %rax	#, tmp201
	movq	%rax, %rdi	# tmp201,
	call	func0	#
	movq	%rax, %rdx	#, _27
	leaq	.LC0(%rip), %rax	#, tmp202
	movq	%rax, %rsi	# tmp202,
	movq	%rdx, %rdi	# _27,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _28
	je	.L28	#,
# problem142.c:39:     assert(strcmp(func0("@this1_is6_valid.exe"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp203
	movq	%rax, %rcx	# tmp203,
	movl	$39, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp204
	movq	%rax, %rsi	# tmp204,
	leaq	.LC33(%rip), %rax	#, tmp205
	movq	%rax, %rdi	# tmp205,
	call	__assert_fail@PLT	#
.L28:
# problem142.c:40:     assert(strcmp(func0("this_is_12valid.6exe4.txt"), "No") == 0);
	leaq	.LC34(%rip), %rax	#, tmp206
	movq	%rax, %rdi	# tmp206,
	call	func0	#
	movq	%rax, %rdx	#, _29
	leaq	.LC0(%rip), %rax	#, tmp207
	movq	%rax, %rsi	# tmp207,
	movq	%rdx, %rdi	# _29,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _30
	je	.L29	#,
# problem142.c:40:     assert(strcmp(func0("this_is_12valid.6exe4.txt"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp208
	movq	%rax, %rcx	# tmp208,
	movl	$40, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp209
	movq	%rax, %rsi	# tmp209,
	leaq	.LC35(%rip), %rax	#, tmp210
	movq	%rax, %rdi	# tmp210,
	call	__assert_fail@PLT	#
.L29:
# problem142.c:41:     assert(strcmp(func0("all.exe.txt"), "No") == 0);
	leaq	.LC36(%rip), %rax	#, tmp211
	movq	%rax, %rdi	# tmp211,
	call	func0	#
	movq	%rax, %rdx	#, _31
	leaq	.LC0(%rip), %rax	#, tmp212
	movq	%rax, %rsi	# tmp212,
	movq	%rdx, %rdi	# _31,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _32
	je	.L30	#,
# problem142.c:41:     assert(strcmp(func0("all.exe.txt"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp213
	movq	%rax, %rcx	# tmp213,
	movl	$41, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp214
	movq	%rax, %rsi	# tmp214,
	leaq	.LC37(%rip), %rax	#, tmp215
	movq	%rax, %rdi	# tmp215,
	call	__assert_fail@PLT	#
.L30:
# problem142.c:42:     assert(strcmp(func0("I563_No.exe"), "Yes") == 0);
	leaq	.LC38(%rip), %rax	#, tmp216
	movq	%rax, %rdi	# tmp216,
	call	func0	#
	movq	%rax, %rdx	#, _33
	leaq	.LC4(%rip), %rax	#, tmp217
	movq	%rax, %rsi	# tmp217,
	movq	%rdx, %rdi	# _33,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _34
	je	.L31	#,
# problem142.c:42:     assert(strcmp(func0("I563_No.exe"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp218
	movq	%rax, %rcx	# tmp218,
	movl	$42, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp219
	movq	%rax, %rsi	# tmp219,
	leaq	.LC39(%rip), %rax	#, tmp220
	movq	%rax, %rdi	# tmp220,
	call	__assert_fail@PLT	#
.L31:
# problem142.c:43:     assert(strcmp(func0("Is3youfault.txt"), "Yes") == 0);
	leaq	.LC40(%rip), %rax	#, tmp221
	movq	%rax, %rdi	# tmp221,
	call	func0	#
	movq	%rax, %rdx	#, _35
	leaq	.LC4(%rip), %rax	#, tmp222
	movq	%rax, %rsi	# tmp222,
	movq	%rdx, %rdi	# _35,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _36
	je	.L32	#,
# problem142.c:43:     assert(strcmp(func0("Is3youfault.txt"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp223
	movq	%rax, %rcx	# tmp223,
	movl	$43, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp224
	movq	%rax, %rsi	# tmp224,
	leaq	.LC41(%rip), %rax	#, tmp225
	movq	%rax, %rdi	# tmp225,
	call	__assert_fail@PLT	#
.L32:
# problem142.c:44:     assert(strcmp(func0("no_one#knows.dll"), "Yes") == 0);
	leaq	.LC42(%rip), %rax	#, tmp226
	movq	%rax, %rdi	# tmp226,
	call	func0	#
	movq	%rax, %rdx	#, _37
	leaq	.LC4(%rip), %rax	#, tmp227
	movq	%rax, %rsi	# tmp227,
	movq	%rdx, %rdi	# _37,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _38
	je	.L33	#,
# problem142.c:44:     assert(strcmp(func0("no_one#knows.dll"), "Yes") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp228
	movq	%rax, %rcx	# tmp228,
	movl	$44, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp229
	movq	%rax, %rsi	# tmp229,
	leaq	.LC43(%rip), %rax	#, tmp230
	movq	%rax, %rdi	# tmp230,
	call	__assert_fail@PLT	#
.L33:
# problem142.c:45:     assert(strcmp(func0("1I563_Yes3.exe"), "No") == 0);
	leaq	.LC44(%rip), %rax	#, tmp231
	movq	%rax, %rdi	# tmp231,
	call	func0	#
	movq	%rax, %rdx	#, _39
	leaq	.LC0(%rip), %rax	#, tmp232
	movq	%rax, %rsi	# tmp232,
	movq	%rdx, %rdi	# _39,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _40
	je	.L34	#,
# problem142.c:45:     assert(strcmp(func0("1I563_Yes3.exe"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp233
	movq	%rax, %rcx	# tmp233,
	movl	$45, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp234
	movq	%rax, %rsi	# tmp234,
	leaq	.LC45(%rip), %rax	#, tmp235
	movq	%rax, %rdi	# tmp235,
	call	__assert_fail@PLT	#
.L34:
# problem142.c:46:     assert(strcmp(func0("I563_Yes3.txtt"), "No") == 0);
	leaq	.LC46(%rip), %rax	#, tmp236
	movq	%rax, %rdi	# tmp236,
	call	func0	#
	movq	%rax, %rdx	#, _41
	leaq	.LC0(%rip), %rax	#, tmp237
	movq	%rax, %rsi	# tmp237,
	movq	%rdx, %rdi	# _41,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _42
	je	.L35	#,
# problem142.c:46:     assert(strcmp(func0("I563_Yes3.txtt"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp238
	movq	%rax, %rcx	# tmp238,
	movl	$46, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp239
	movq	%rax, %rsi	# tmp239,
	leaq	.LC47(%rip), %rax	#, tmp240
	movq	%rax, %rdi	# tmp240,
	call	__assert_fail@PLT	#
.L35:
# problem142.c:47:     assert(strcmp(func0("final..txt"), "No") == 0);
	leaq	.LC48(%rip), %rax	#, tmp241
	movq	%rax, %rdi	# tmp241,
	call	func0	#
	movq	%rax, %rdx	#, _43
	leaq	.LC0(%rip), %rax	#, tmp242
	movq	%rax, %rsi	# tmp242,
	movq	%rdx, %rdi	# _43,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _44
	je	.L36	#,
# problem142.c:47:     assert(strcmp(func0("final..txt"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp243
	movq	%rax, %rcx	# tmp243,
	movl	$47, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp244
	movq	%rax, %rsi	# tmp244,
	leaq	.LC49(%rip), %rax	#, tmp245
	movq	%rax, %rdi	# tmp245,
	call	__assert_fail@PLT	#
.L36:
# problem142.c:48:     assert(strcmp(func0("final132"), "No") == 0);
	leaq	.LC50(%rip), %rax	#, tmp246
	movq	%rax, %rdi	# tmp246,
	call	func0	#
	movq	%rax, %rdx	#, _45
	leaq	.LC0(%rip), %rax	#, tmp247
	movq	%rax, %rsi	# tmp247,
	movq	%rdx, %rdi	# _45,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _46
	je	.L37	#,
# problem142.c:48:     assert(strcmp(func0("final132"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp248
	movq	%rax, %rcx	# tmp248,
	movl	$48, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp249
	movq	%rax, %rsi	# tmp249,
	leaq	.LC51(%rip), %rax	#, tmp250
	movq	%rax, %rdi	# tmp250,
	call	__assert_fail@PLT	#
.L37:
# problem142.c:49:     assert(strcmp(func0("_f4indsartal132."), "No") == 0);
	leaq	.LC52(%rip), %rax	#, tmp251
	movq	%rax, %rdi	# tmp251,
	call	func0	#
	movq	%rax, %rdx	#, _47
	leaq	.LC0(%rip), %rax	#, tmp252
	movq	%rax, %rsi	# tmp252,
	movq	%rdx, %rdi	# _47,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _48
	je	.L38	#,
# problem142.c:49:     assert(strcmp(func0("_f4indsartal132."), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp253
	movq	%rax, %rcx	# tmp253,
	movl	$49, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp254
	movq	%rax, %rsi	# tmp254,
	leaq	.LC53(%rip), %rax	#, tmp255
	movq	%rax, %rdi	# tmp255,
	call	__assert_fail@PLT	#
.L38:
# problem142.c:50:     assert(strcmp(func0(".txt"), "No") == 0);
	leaq	.LC1(%rip), %rax	#, tmp256
	movq	%rax, %rdi	# tmp256,
	call	func0	#
	movq	%rax, %rdx	#, _49
	leaq	.LC0(%rip), %rax	#, tmp257
	movq	%rax, %rsi	# tmp257,
	movq	%rdx, %rdi	# _49,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _50
	je	.L39	#,
# problem142.c:50:     assert(strcmp(func0(".txt"), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp258
	movq	%rax, %rcx	# tmp258,
	movl	$50, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp259
	movq	%rax, %rsi	# tmp259,
	leaq	.LC54(%rip), %rax	#, tmp260
	movq	%rax, %rdi	# tmp260,
	call	__assert_fail@PLT	#
.L39:
# problem142.c:51:     assert(strcmp(func0("s."), "No") == 0);
	leaq	.LC55(%rip), %rax	#, tmp261
	movq	%rax, %rdi	# tmp261,
	call	func0	#
	movq	%rax, %rdx	#, _51
	leaq	.LC0(%rip), %rax	#, tmp262
	movq	%rax, %rsi	# tmp262,
	movq	%rdx, %rdi	# _51,
	call	strcmp@PLT	#
	testl	%eax, %eax	# _52
	je	.L40	#,
# problem142.c:51:     assert(strcmp(func0("s."), "No") == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp263
	movq	%rax, %rcx	# tmp263,
	movl	$51, %edx	#,
	leaq	.LC6(%rip), %rax	#, tmp264
	movq	%rax, %rsi	# tmp264,
	leaq	.LC56(%rip), %rax	#, tmp265
	movq	%rax, %rdi	# tmp265,
	call	__assert_fail@PLT	#
.L40:
# problem142.c:53:     return 0;
	movl	$0, %eax	#, _106
# problem142.c:54: }
	popq	%rbp	#
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
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
