	.file	"code.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"o"
.LC1:
	.string	"o|"
.LC2:
	.string	".|"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# music_string, music_string
	movq	%rsi, -80(%rbp)	# count, count
# code.c:5: int *func0(const char *music_string, int *count) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp174
	movq	%rax, -8(%rbp)	# tmp174, D.3963
	xorl	%eax, %eax	# tmp174
# code.c:6:     int *out = NULL;
	movq	$0, -40(%rbp)	#, out
# code.c:7:     int size = 0;
	movl	$0, -56(%rbp)	#, size
# code.c:8:     int capacity = 0;
	movl	$0, -52(%rbp)	#, capacity
# code.c:10:     char current[3] = "";
	movw	$0, -11(%rbp)	#, current
	movb	$0, -9(%rbp)	#, current
# code.c:11:     int music_string_length = strlen(music_string) + 1;
	movq	-72(%rbp), %rax	# music_string, tmp122
	movq	%rax, %rdi	# tmp122,
	call	strlen@PLT	#
# code.c:11:     int music_string_length = strlen(music_string) + 1;
	addl	$1, %eax	#, _3
# code.c:11:     int music_string_length = strlen(music_string) + 1;
	movl	%eax, -44(%rbp)	# _3, music_string_length
# code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	movl	-44(%rbp), %eax	# music_string_length, tmp123
	addl	$1, %eax	#, _4
# code.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	cltq
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp124, temp_music_string
# code.c:13:     strcpy(temp_music_string, music_string);
	movq	-72(%rbp), %rdx	# music_string, tmp125
	movq	-32(%rbp), %rax	# temp_music_string, tmp126
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	strcpy@PLT	#
# code.c:14:     strcat(temp_music_string, " ");
	movq	-32(%rbp), %rax	# temp_music_string, tmp128
	movq	%rax, %rdi	# tmp128,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp130, _77
# code.c:14:     strcat(temp_music_string, " ");
	movq	-32(%rbp), %rax	# temp_music_string, tmp131
	addq	%rdx, %rax	# _77, _78
	movw	$32, (%rax)	#, MEM <char[1:2]> [(void *)_78]
# code.c:16:     for (int i = 0; i < music_string_length; i++) {
	movl	$0, -48(%rbp)	#, i
# code.c:16:     for (int i = 0; i < music_string_length; i++) {
	jmp	.L2	#
.L17:
# code.c:17:         if (temp_music_string[i] == ' ') {
	movl	-48(%rbp), %eax	# i, tmp132
	movslq	%eax, %rdx	# tmp132, _6
	movq	-32(%rbp), %rax	# temp_music_string, tmp133
	addq	%rdx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# code.c:17:         if (temp_music_string[i] == ' ') {
	cmpb	$32, %al	#, _8
	jne	.L3	#,
# code.c:18:             if (strcmp(current, "o") == 0) {
	leaq	-11(%rbp), %rax	#, tmp134
	leaq	.LC0(%rip), %rdx	#, tmp135
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp134,
	call	strcmp@PLT	#
# code.c:18:             if (strcmp(current, "o") == 0) {
	testl	%eax, %eax	# _9
	jne	.L4	#,
# code.c:19:                 if (size == capacity) {
	movl	-56(%rbp), %eax	# size, tmp136
	cmpl	-52(%rbp), %eax	# capacity, tmp136
	jne	.L5	#,
# code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	cmpl	$0, -52(%rbp)	#, capacity
	jle	.L6	#,
# code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	-52(%rbp), %eax	# capacity, tmp137
	addl	%eax, %eax	# iftmp.0_56
	jmp	.L7	#
.L6:
# code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	$4, %eax	#, iftmp.0_56
.L7:
# code.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	%eax, -52(%rbp)	# iftmp.0_56, capacity
# code.c:21:                     out = realloc(out, capacity * sizeof(int));
	movl	-52(%rbp), %eax	# capacity, tmp138
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-40(%rbp), %rax	# out, tmp139
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp139,
	call	realloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp140, out
.L5:
# code.c:23:                 out[size++] = 4;
	movl	-56(%rbp), %eax	# size, size.1_12
	leal	1(%rax), %edx	#, tmp141
	movl	%edx, -56(%rbp)	# tmp141, size
	cltq
# code.c:23:                 out[size++] = 4;
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-40(%rbp), %rax	# out, tmp142
	addq	%rdx, %rax	# _14, _15
# code.c:23:                 out[size++] = 4;
	movl	$4, (%rax)	#, *_15
.L4:
# code.c:25:             if (strcmp(current, "o|") == 0) {
	leaq	-11(%rbp), %rax	#, tmp143
	leaq	.LC1(%rip), %rdx	#, tmp144
	movq	%rdx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp143,
	call	strcmp@PLT	#
# code.c:25:             if (strcmp(current, "o|") == 0) {
	testl	%eax, %eax	# _16
	jne	.L8	#,
# code.c:26:                 if (size == capacity) {
	movl	-56(%rbp), %eax	# size, tmp145
	cmpl	-52(%rbp), %eax	# capacity, tmp145
	jne	.L9	#,
# code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	cmpl	$0, -52(%rbp)	#, capacity
	jle	.L10	#,
# code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	-52(%rbp), %eax	# capacity, tmp146
	addl	%eax, %eax	# iftmp.2_57
	jmp	.L11	#
.L10:
# code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	$4, %eax	#, iftmp.2_57
.L11:
# code.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	%eax, -52(%rbp)	# iftmp.2_57, capacity
# code.c:28:                     out = realloc(out, capacity * sizeof(int));
	movl	-52(%rbp), %eax	# capacity, tmp147
	cltq
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-40(%rbp), %rax	# out, tmp148
	movq	%rdx, %rsi	# _18,
	movq	%rax, %rdi	# tmp148,
	call	realloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp149, out
.L9:
# code.c:30:                 out[size++] = 2;
	movl	-56(%rbp), %eax	# size, size.3_19
	leal	1(%rax), %edx	#, tmp150
	movl	%edx, -56(%rbp)	# tmp150, size
	cltq
# code.c:30:                 out[size++] = 2;
	leaq	0(,%rax,4), %rdx	#, _21
	movq	-40(%rbp), %rax	# out, tmp151
	addq	%rdx, %rax	# _21, _22
# code.c:30:                 out[size++] = 2;
	movl	$2, (%rax)	#, *_22
.L8:
# code.c:32:             if (strcmp(current, ".|") == 0) {
	leaq	-11(%rbp), %rax	#, tmp152
	leaq	.LC2(%rip), %rdx	#, tmp153
	movq	%rdx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp152,
	call	strcmp@PLT	#
# code.c:32:             if (strcmp(current, ".|") == 0) {
	testl	%eax, %eax	# _23
	jne	.L12	#,
# code.c:33:                 if (size == capacity) {
	movl	-56(%rbp), %eax	# size, tmp154
	cmpl	-52(%rbp), %eax	# capacity, tmp154
	jne	.L13	#,
# code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	cmpl	$0, -52(%rbp)	#, capacity
	jle	.L14	#,
# code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	-52(%rbp), %eax	# capacity, tmp155
	addl	%eax, %eax	# iftmp.4_58
	jmp	.L15	#
.L14:
# code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	$4, %eax	#, iftmp.4_58
.L15:
# code.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	%eax, -52(%rbp)	# iftmp.4_58, capacity
# code.c:35:                     out = realloc(out, capacity * sizeof(int));
	movl	-52(%rbp), %eax	# capacity, tmp156
	cltq
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-40(%rbp), %rax	# out, tmp157
	movq	%rdx, %rsi	# _25,
	movq	%rax, %rdi	# tmp157,
	call	realloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp158, out
.L13:
# code.c:37:                 out[size++] = 1;
	movl	-56(%rbp), %eax	# size, size.5_26
	leal	1(%rax), %edx	#, tmp159
	movl	%edx, -56(%rbp)	# tmp159, size
	cltq
# code.c:37:                 out[size++] = 1;
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-40(%rbp), %rax	# out, tmp160
	addq	%rdx, %rax	# _28, _29
# code.c:37:                 out[size++] = 1;
	movl	$1, (%rax)	#, *_29
.L12:
# code.c:39:             strcpy(current, "");
	movb	$0, -11(%rbp)	#, MEM[(char * {ref-all})&current]
	jmp	.L16	#
.L3:
# code.c:41:             size_t len = strlen(current);
	leaq	-11(%rbp), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	strlen@PLT	#
	movq	%rax, -24(%rbp)	# tmp162, len
# code.c:42:             if (len < sizeof(current) - 1) {
	cmpq	$1, -24(%rbp)	#, len
	ja	.L16	#,
# code.c:43:                 current[len] = temp_music_string[i];
	movl	-48(%rbp), %eax	# i, tmp163
	movslq	%eax, %rdx	# tmp163, _30
	movq	-32(%rbp), %rax	# temp_music_string, tmp164
	addq	%rdx, %rax	# _30, _31
	movzbl	(%rax), %eax	# *_31, _32
# code.c:43:                 current[len] = temp_music_string[i];
	leaq	-11(%rbp), %rcx	#, tmp165
	movq	-24(%rbp), %rdx	# len, tmp167
	addq	%rcx, %rdx	# tmp165, tmp166
	movb	%al, (%rdx)	# _32, current[len_86]
# code.c:44:                 current[len + 1] = '\0';
	movq	-24(%rbp), %rax	# len, tmp168
	addq	$1, %rax	#, _33
# code.c:44:                 current[len + 1] = '\0';
	movb	$0, -11(%rbp,%rax)	#, current[_33]
.L16:
# code.c:16:     for (int i = 0; i < music_string_length; i++) {
	addl	$1, -48(%rbp)	#, i
.L2:
# code.c:16:     for (int i = 0; i < music_string_length; i++) {
	movl	-48(%rbp), %eax	# i, tmp169
	cmpl	-44(%rbp), %eax	# music_string_length, tmp169
	jl	.L17	#,
# code.c:48:     free(temp_music_string);
	movq	-32(%rbp), %rax	# temp_music_string, tmp170
	movq	%rax, %rdi	# tmp170,
	call	free@PLT	#
# code.c:49:     *count = size;
	movq	-80(%rbp), %rax	# count, tmp171
	movl	-56(%rbp), %edx	# size, tmp172
	movl	%edx, (%rax)	# tmp172, *count_82(D)
# code.c:50:     return out;
	movq	-40(%rbp), %rax	# out, _84
# code.c:51: }
	movq	-8(%rbp), %rdx	# D.3963, tmp175
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp175
	je	.L19	#,
	call	__stack_chk_fail@PLT	#
.L19:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
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
