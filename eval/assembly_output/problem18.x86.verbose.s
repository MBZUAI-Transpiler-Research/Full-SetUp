	.file	"problem18.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
# problem18.c:5: int *func0(const char *music_string, int *count) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp174
	movq	%rax, -8(%rbp)	# tmp174, D.4034
	xorl	%eax, %eax	# tmp174
# problem18.c:6:     int *out = NULL;
	movq	$0, -40(%rbp)	#, out
# problem18.c:7:     int size = 0;
	movl	$0, -56(%rbp)	#, size
# problem18.c:8:     int capacity = 0;
	movl	$0, -52(%rbp)	#, capacity
# problem18.c:10:     char current[3] = "";
	movw	$0, -11(%rbp)	#, current
	movb	$0, -9(%rbp)	#, current
# problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	movq	-72(%rbp), %rax	# music_string, tmp122
	movq	%rax, %rdi	# tmp122,
	call	strlen@PLT	#
# problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	addl	$1, %eax	#, _3
# problem18.c:11:     int music_string_length = strlen(music_string) + 1;
	movl	%eax, -44(%rbp)	# _3, music_string_length
# problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	movl	-44(%rbp), %eax	# music_string_length, tmp123
	addl	$1, %eax	#, _4
# problem18.c:12:     char *temp_music_string = malloc(music_string_length + 1);
	cltq
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -32(%rbp)	# tmp124, temp_music_string
# problem18.c:13:     strcpy(temp_music_string, music_string);
	movq	-72(%rbp), %rdx	# music_string, tmp125
	movq	-32(%rbp), %rax	# temp_music_string, tmp126
	movq	%rdx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	strcpy@PLT	#
# problem18.c:14:     strcat(temp_music_string, " ");
	movq	-32(%rbp), %rax	# temp_music_string, tmp128
	movq	%rax, %rdi	# tmp128,
	call	strlen@PLT	#
	movq	%rax, %rdx	# tmp130, _77
# problem18.c:14:     strcat(temp_music_string, " ");
	movq	-32(%rbp), %rax	# temp_music_string, tmp131
	addq	%rdx, %rax	# _77, _78
	movw	$32, (%rax)	#, MEM <char[1:2]> [(void *)_78]
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	movl	$0, -48(%rbp)	#, i
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	jmp	.L2	#
.L17:
# problem18.c:17:         if (temp_music_string[i] == ' ') {
	movl	-48(%rbp), %eax	# i, tmp132
	movslq	%eax, %rdx	# tmp132, _6
	movq	-32(%rbp), %rax	# temp_music_string, tmp133
	addq	%rdx, %rax	# _6, _7
	movzbl	(%rax), %eax	# *_7, _8
# problem18.c:17:         if (temp_music_string[i] == ' ') {
	cmpb	$32, %al	#, _8
	jne	.L3	#,
# problem18.c:18:             if (strcmp(current, "o") == 0) {
	leaq	-11(%rbp), %rax	#, tmp134
	leaq	.LC0(%rip), %rdx	#, tmp135
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp134,
	call	strcmp@PLT	#
# problem18.c:18:             if (strcmp(current, "o") == 0) {
	testl	%eax, %eax	# _9
	jne	.L4	#,
# problem18.c:19:                 if (size == capacity) {
	movl	-56(%rbp), %eax	# size, tmp136
	cmpl	-52(%rbp), %eax	# capacity, tmp136
	jne	.L5	#,
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	cmpl	$0, -52(%rbp)	#, capacity
	jle	.L6	#,
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	-52(%rbp), %eax	# capacity, tmp137
	addl	%eax, %eax	# iftmp.0_56
	jmp	.L7	#
.L6:
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	$4, %eax	#, iftmp.0_56
.L7:
# problem18.c:20:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	%eax, -52(%rbp)	# iftmp.0_56, capacity
# problem18.c:21:                     out = realloc(out, capacity * sizeof(int));
	movl	-52(%rbp), %eax	# capacity, tmp138
	cltq
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-40(%rbp), %rax	# out, tmp139
	movq	%rdx, %rsi	# _11,
	movq	%rax, %rdi	# tmp139,
	call	realloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp140, out
.L5:
# problem18.c:23:                 out[size++] = 4;
	movl	-56(%rbp), %eax	# size, size.1_12
	leal	1(%rax), %edx	#, tmp141
	movl	%edx, -56(%rbp)	# tmp141, size
	cltq
# problem18.c:23:                 out[size++] = 4;
	leaq	0(,%rax,4), %rdx	#, _14
	movq	-40(%rbp), %rax	# out, tmp142
	addq	%rdx, %rax	# _14, _15
# problem18.c:23:                 out[size++] = 4;
	movl	$4, (%rax)	#, *_15
.L4:
# problem18.c:25:             if (strcmp(current, "o|") == 0) {
	leaq	-11(%rbp), %rax	#, tmp143
	leaq	.LC1(%rip), %rdx	#, tmp144
	movq	%rdx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp143,
	call	strcmp@PLT	#
# problem18.c:25:             if (strcmp(current, "o|") == 0) {
	testl	%eax, %eax	# _16
	jne	.L8	#,
# problem18.c:26:                 if (size == capacity) {
	movl	-56(%rbp), %eax	# size, tmp145
	cmpl	-52(%rbp), %eax	# capacity, tmp145
	jne	.L9	#,
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	cmpl	$0, -52(%rbp)	#, capacity
	jle	.L10	#,
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	-52(%rbp), %eax	# capacity, tmp146
	addl	%eax, %eax	# iftmp.2_57
	jmp	.L11	#
.L10:
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	$4, %eax	#, iftmp.2_57
.L11:
# problem18.c:27:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	%eax, -52(%rbp)	# iftmp.2_57, capacity
# problem18.c:28:                     out = realloc(out, capacity * sizeof(int));
	movl	-52(%rbp), %eax	# capacity, tmp147
	cltq
	leaq	0(,%rax,4), %rdx	#, _18
	movq	-40(%rbp), %rax	# out, tmp148
	movq	%rdx, %rsi	# _18,
	movq	%rax, %rdi	# tmp148,
	call	realloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp149, out
.L9:
# problem18.c:30:                 out[size++] = 2;
	movl	-56(%rbp), %eax	# size, size.3_19
	leal	1(%rax), %edx	#, tmp150
	movl	%edx, -56(%rbp)	# tmp150, size
	cltq
# problem18.c:30:                 out[size++] = 2;
	leaq	0(,%rax,4), %rdx	#, _21
	movq	-40(%rbp), %rax	# out, tmp151
	addq	%rdx, %rax	# _21, _22
# problem18.c:30:                 out[size++] = 2;
	movl	$2, (%rax)	#, *_22
.L8:
# problem18.c:32:             if (strcmp(current, ".|") == 0) {
	leaq	-11(%rbp), %rax	#, tmp152
	leaq	.LC2(%rip), %rdx	#, tmp153
	movq	%rdx, %rsi	# tmp153,
	movq	%rax, %rdi	# tmp152,
	call	strcmp@PLT	#
# problem18.c:32:             if (strcmp(current, ".|") == 0) {
	testl	%eax, %eax	# _23
	jne	.L12	#,
# problem18.c:33:                 if (size == capacity) {
	movl	-56(%rbp), %eax	# size, tmp154
	cmpl	-52(%rbp), %eax	# capacity, tmp154
	jne	.L13	#,
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	cmpl	$0, -52(%rbp)	#, capacity
	jle	.L14	#,
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	-52(%rbp), %eax	# capacity, tmp155
	addl	%eax, %eax	# iftmp.4_58
	jmp	.L15	#
.L14:
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	$4, %eax	#, iftmp.4_58
.L15:
# problem18.c:34:                     capacity = capacity > 0 ? 2 * capacity : 4;
	movl	%eax, -52(%rbp)	# iftmp.4_58, capacity
# problem18.c:35:                     out = realloc(out, capacity * sizeof(int));
	movl	-52(%rbp), %eax	# capacity, tmp156
	cltq
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-40(%rbp), %rax	# out, tmp157
	movq	%rdx, %rsi	# _25,
	movq	%rax, %rdi	# tmp157,
	call	realloc@PLT	#
	movq	%rax, -40(%rbp)	# tmp158, out
.L13:
# problem18.c:37:                 out[size++] = 1;
	movl	-56(%rbp), %eax	# size, size.5_26
	leal	1(%rax), %edx	#, tmp159
	movl	%edx, -56(%rbp)	# tmp159, size
	cltq
# problem18.c:37:                 out[size++] = 1;
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-40(%rbp), %rax	# out, tmp160
	addq	%rdx, %rax	# _28, _29
# problem18.c:37:                 out[size++] = 1;
	movl	$1, (%rax)	#, *_29
.L12:
# problem18.c:39:             strcpy(current, "");
	movb	$0, -11(%rbp)	#, MEM[(char * {ref-all})&current]
	jmp	.L16	#
.L3:
# problem18.c:41:             size_t len = strlen(current);
	leaq	-11(%rbp), %rax	#, tmp161
	movq	%rax, %rdi	# tmp161,
	call	strlen@PLT	#
	movq	%rax, -24(%rbp)	# tmp162, len
# problem18.c:42:             if (len < sizeof(current) - 1) {
	cmpq	$1, -24(%rbp)	#, len
	ja	.L16	#,
# problem18.c:43:                 current[len] = temp_music_string[i];
	movl	-48(%rbp), %eax	# i, tmp163
	movslq	%eax, %rdx	# tmp163, _30
	movq	-32(%rbp), %rax	# temp_music_string, tmp164
	addq	%rdx, %rax	# _30, _31
	movzbl	(%rax), %eax	# *_31, _32
# problem18.c:43:                 current[len] = temp_music_string[i];
	leaq	-11(%rbp), %rcx	#, tmp165
	movq	-24(%rbp), %rdx	# len, tmp167
	addq	%rcx, %rdx	# tmp165, tmp166
	movb	%al, (%rdx)	# _32, current[len_86]
# problem18.c:44:                 current[len + 1] = '\0';
	movq	-24(%rbp), %rax	# len, tmp168
	addq	$1, %rax	#, _33
# problem18.c:44:                 current[len + 1] = '\0';
	movb	$0, -11(%rbp,%rax)	#, current[_33]
.L16:
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	addl	$1, -48(%rbp)	#, i
.L2:
# problem18.c:16:     for (int i = 0; i < music_string_length; i++) {
	movl	-48(%rbp), %eax	# i, tmp169
	cmpl	-44(%rbp), %eax	# music_string_length, tmp169
	jl	.L17	#,
# problem18.c:48:     free(temp_music_string);
	movq	-32(%rbp), %rax	# temp_music_string, tmp170
	movq	%rax, %rdi	# tmp170,
	call	free@PLT	#
# problem18.c:49:     *count = size;
	movq	-80(%rbp), %rax	# count, tmp171
	movl	-56(%rbp), %edx	# size, tmp172
	movl	%edx, (%rax)	# tmp172, *count_82(D)
# problem18.c:50:     return out;
	movq	-40(%rbp), %rax	# out, _84
# problem18.c:51: }
	movq	-8(%rbp), %rdx	# D.4034, tmp175
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
	.globl	issame
	.type	issame, @function
issame:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# a, a
	movl	%esi, -28(%rbp)	# a_size, a_size
	movq	%rdx, -40(%rbp)	# b, b
	movl	%ecx, -32(%rbp)	# b_size, b_size
# problem18.c:59:     if (a_size != b_size) return 0;
	movl	-28(%rbp), %eax	# a_size, tmp92
	cmpl	-32(%rbp), %eax	# b_size, tmp92
	je	.L21	#,
# problem18.c:59:     if (a_size != b_size) return 0;
	movl	$0, %eax	#, _10
# problem18.c:59:     if (a_size != b_size) return 0;
	jmp	.L22	#
.L21:
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	jmp	.L23	#
.L25:
# problem18.c:61:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp94
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem18.c:61:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-40(%rbp), %rax	# b, tmp96
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem18.c:61:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L24	#,
# problem18.c:61:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
# problem18.c:61:         if (a[i] != b[i]) return 0;
	jmp	.L22	#
.L24:
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	addl	$1, -4(%rbp)	#, i
.L23:
# problem18.c:60:     for (int i = 0; i < a_size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-28(%rbp), %eax	# a_size, tmp97
	jl	.L25	#,
# problem18.c:63:     return 1;
	movl	$1, %eax	#, _10
.L22:
# problem18.c:64: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC3:
	.string	""
.LC4:
	.string	"problem18.c"
	.align 8
.LC5:
	.string	"issame(result, count, (int[]){}, 0)"
.LC6:
	.string	"o o o o"
	.align 8
.LC7:
	.string	"issame(result, count, (int[]){4, 4, 4, 4}, 4)"
.LC8:
	.string	".| .| .| .|"
	.align 8
.LC9:
	.string	"issame(result, count, (int[]){1, 1, 1, 1}, 4)"
.LC10:
	.string	"o| o| .| .| o o o o"
	.align 8
.LC11:
	.string	"issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8)"
.LC12:
	.string	"o| .| o| .| o o| o o|"
	.align 8
.LC13:
	.string	"issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# problem18.c:66: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp140
	movq	%rax, -8(%rbp)	# tmp140, D.4040
	xorl	%eax, %eax	# tmp140
# problem18.c:70:     result = func0("", &count);
	leaq	-60(%rbp), %rax	#, tmp94
	movq	%rax, %rsi	# tmp94,
	leaq	.LC3(%rip), %rax	#, tmp95
	movq	%rax, %rdi	# tmp95,
	call	func0	#
	movq	%rax, -56(%rbp)	# tmp96, result
# problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
	movl	-60(%rbp), %esi	# count, count.6_1
	leaq	-48(%rbp), %rdx	#, tmp97
	movq	-56(%rbp), %rax	# result, tmp98
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp98,
	call	issame	#
# problem18.c:71:     assert(issame(result, count, (int[]){}, 0));
	testl	%eax, %eax	# _2
	jne	.L27	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp99
	movq	%rax, %rcx	# tmp99,
	movl	$71, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp100
	movq	%rax, %rsi	# tmp100,
	leaq	.LC5(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	__assert_fail@PLT	#
.L27:
# problem18.c:72:     free(result);
	movq	-56(%rbp), %rax	# result, tmp102
	movq	%rax, %rdi	# tmp102,
	call	free@PLT	#
# problem18.c:74:     result = func0("o o o o", &count);
	leaq	-60(%rbp), %rax	#, tmp103
	movq	%rax, %rsi	# tmp103,
	leaq	.LC6(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	call	func0	#
	movq	%rax, -56(%rbp)	# tmp105, result
# problem18.c:75:     assert(issame(result, count, (int[]){4, 4, 4, 4}, 4));
	movl	$4, -48(%rbp)	#, MEM[(int[4] *)_74][0]
	movl	$4, -44(%rbp)	#, MEM[(int[4] *)_74][1]
	movl	$4, -40(%rbp)	#, MEM[(int[4] *)_74][2]
	movl	$4, -36(%rbp)	#, MEM[(int[4] *)_74][3]
	movl	-60(%rbp), %esi	# count, count.7_3
	leaq	-48(%rbp), %rdx	#, tmp106
	movq	-56(%rbp), %rax	# result, tmp107
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp107,
	call	issame	#
# problem18.c:75:     assert(issame(result, count, (int[]){4, 4, 4, 4}, 4));
	testl	%eax, %eax	# _4
	jne	.L28	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp108
	movq	%rax, %rcx	# tmp108,
	movl	$75, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp109
	movq	%rax, %rsi	# tmp109,
	leaq	.LC7(%rip), %rax	#, tmp110
	movq	%rax, %rdi	# tmp110,
	call	__assert_fail@PLT	#
.L28:
# problem18.c:76:     free(result);
	movq	-56(%rbp), %rax	# result, tmp111
	movq	%rax, %rdi	# tmp111,
	call	free@PLT	#
# problem18.c:78:     result = func0(".| .| .| .|", &count);
	leaq	-60(%rbp), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC8(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	func0	#
	movq	%rax, -56(%rbp)	# tmp114, result
# problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
	movl	$1, -48(%rbp)	#, MEM[(int[4] *)_74][0]
	movl	$1, -44(%rbp)	#, MEM[(int[4] *)_74][1]
	movl	$1, -40(%rbp)	#, MEM[(int[4] *)_74][2]
	movl	$1, -36(%rbp)	#, MEM[(int[4] *)_74][3]
	movl	-60(%rbp), %esi	# count, count.8_5
	leaq	-48(%rbp), %rdx	#, tmp115
	movq	-56(%rbp), %rax	# result, tmp116
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp116,
	call	issame	#
# problem18.c:79:     assert(issame(result, count, (int[]){1, 1, 1, 1}, 4));
	testl	%eax, %eax	# _6
	jne	.L29	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp117
	movq	%rax, %rcx	# tmp117,
	movl	$79, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp118
	movq	%rax, %rsi	# tmp118,
	leaq	.LC9(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	__assert_fail@PLT	#
.L29:
# problem18.c:80:     free(result);
	movq	-56(%rbp), %rax	# result, tmp120
	movq	%rax, %rdi	# tmp120,
	call	free@PLT	#
# problem18.c:82:     result = func0("o| o| .| .| o o o o", &count);
	leaq	-60(%rbp), %rax	#, tmp121
	movq	%rax, %rsi	# tmp121,
	leaq	.LC10(%rip), %rax	#, tmp122
	movq	%rax, %rdi	# tmp122,
	call	func0	#
	movq	%rax, -56(%rbp)	# tmp123, result
# problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
	movl	$2, -48(%rbp)	#, MEM[(int[8] *)_74][0]
	movl	$2, -44(%rbp)	#, MEM[(int[8] *)_74][1]
	movl	$1, -40(%rbp)	#, MEM[(int[8] *)_74][2]
	movl	$1, -36(%rbp)	#, MEM[(int[8] *)_74][3]
	movl	$4, -32(%rbp)	#, MEM[(int[8] *)_74][4]
	movl	$4, -28(%rbp)	#, MEM[(int[8] *)_74][5]
	movl	$4, -24(%rbp)	#, MEM[(int[8] *)_74][6]
	movl	$4, -20(%rbp)	#, MEM[(int[8] *)_74][7]
	movl	-60(%rbp), %esi	# count, count.9_7
	leaq	-48(%rbp), %rdx	#, tmp124
	movq	-56(%rbp), %rax	# result, tmp125
	movl	$8, %ecx	#,
	movq	%rax, %rdi	# tmp125,
	call	issame	#
# problem18.c:83:     assert(issame(result, count, (int[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
	testl	%eax, %eax	# _8
	jne	.L30	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp126
	movq	%rax, %rcx	# tmp126,
	movl	$83, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp127
	movq	%rax, %rsi	# tmp127,
	leaq	.LC11(%rip), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	__assert_fail@PLT	#
.L30:
# problem18.c:84:     free(result);
	movq	-56(%rbp), %rax	# result, tmp129
	movq	%rax, %rdi	# tmp129,
	call	free@PLT	#
# problem18.c:86:     result = func0("o| .| o| .| o o| o o|", &count);
	leaq	-60(%rbp), %rax	#, tmp130
	movq	%rax, %rsi	# tmp130,
	leaq	.LC12(%rip), %rax	#, tmp131
	movq	%rax, %rdi	# tmp131,
	call	func0	#
	movq	%rax, -56(%rbp)	# tmp132, result
# problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
	movl	$2, -48(%rbp)	#, MEM[(int[8] *)_74][0]
	movl	$1, -44(%rbp)	#, MEM[(int[8] *)_74][1]
	movl	$2, -40(%rbp)	#, MEM[(int[8] *)_74][2]
	movl	$1, -36(%rbp)	#, MEM[(int[8] *)_74][3]
	movl	$4, -32(%rbp)	#, MEM[(int[8] *)_74][4]
	movl	$2, -28(%rbp)	#, MEM[(int[8] *)_74][5]
	movl	$4, -24(%rbp)	#, MEM[(int[8] *)_74][6]
	movl	$2, -20(%rbp)	#, MEM[(int[8] *)_74][7]
	movl	-60(%rbp), %esi	# count, count.10_9
	leaq	-48(%rbp), %rdx	#, tmp133
	movq	-56(%rbp), %rax	# result, tmp134
	movl	$8, %ecx	#,
	movq	%rax, %rdi	# tmp134,
	call	issame	#
# problem18.c:87:     assert(issame(result, count, (int[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
	testl	%eax, %eax	# _10
	jne	.L31	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp135
	movq	%rax, %rcx	# tmp135,
	movl	$87, %edx	#,
	leaq	.LC4(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	.LC13(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	__assert_fail@PLT	#
.L31:
# problem18.c:88:     free(result);
	movq	-56(%rbp), %rax	# result, tmp138
	movq	%rax, %rdi	# tmp138,
	call	free@PLT	#
# problem18.c:90:     return 0;
	movl	$0, %eax	#, _66
# problem18.c:91: }
	movq	-8(%rbp), %rdx	# D.4040, tmp141
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp141
	je	.L33	#,
	call	__stack_chk_fail@PLT	#
.L33:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
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
