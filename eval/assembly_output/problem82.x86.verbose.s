	.file	"problem82.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC1:
	.string	"A+"
.LC3:
	.string	"A"
.LC5:
	.string	"A-"
.LC7:
	.string	"B+"
.LC9:
	.string	"B"
.LC11:
	.string	"B-"
.LC13:
	.string	"C+"
.LC15:
	.string	"C"
.LC17:
	.string	"C-"
.LC19:
	.string	"D+"
.LC21:
	.string	"D"
.LC23:
	.string	"D-"
.LC24:
	.string	"E"
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
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# grades, grades
	movl	%esi, -28(%rbp)	# size, size
# problem82.c:5:     char** out = malloc(size * sizeof(char*));
	movl	-28(%rbp), %eax	# size, tmp185
	cltq
	salq	$3, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp186, out
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	movl	$0, -12(%rbp)	#, i
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	jmp	.L2	#
.L28:
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	movl	-12(%rbp), %eax	# i, tmp187
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# grades, tmp188
	addq	%rdx, %rax	# _4, _5
	movss	(%rax), %xmm0	# *_5, _6
	cvtss2sd	%xmm0, %xmm0	# _6, _7
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	comisd	.LC0(%rip), %xmm0	#, _7
	jb	.L42	#,
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	movl	-12(%rbp), %eax	# i, tmp189
	cltq
	leaq	0(,%rax,8), %rdx	#, _9
	movq	-8(%rbp), %rax	# out, tmp190
	addq	%rdx, %rax	# _9, _10
# problem82.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	leaq	.LC1(%rip), %rdx	#, tmp191
	movq	%rdx, (%rax)	# tmp191, *_10
	jmp	.L5	#
.L42:
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	movl	-12(%rbp), %eax	# i, tmp192
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-24(%rbp), %rax	# grades, tmp193
	addq	%rdx, %rax	# _12, _13
	movss	(%rax), %xmm0	# *_13, _14
	cvtss2sd	%xmm0, %xmm0	# _14, _15
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	comisd	.LC2(%rip), %xmm0	#, _15
	jbe	.L43	#,
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	movl	-12(%rbp), %eax	# i, tmp194
	cltq
	leaq	0(,%rax,8), %rdx	#, _17
	movq	-8(%rbp), %rax	# out, tmp195
	addq	%rdx, %rax	# _17, _18
# problem82.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	leaq	.LC3(%rip), %rdx	#, tmp196
	movq	%rdx, (%rax)	# tmp196, *_18
	jmp	.L5	#
.L43:
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	movl	-12(%rbp), %eax	# i, tmp197
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-24(%rbp), %rax	# grades, tmp198
	addq	%rdx, %rax	# _20, _21
	movss	(%rax), %xmm0	# *_21, _22
	cvtss2sd	%xmm0, %xmm0	# _22, _23
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	comisd	.LC4(%rip), %xmm0	#, _23
	jbe	.L44	#,
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	movl	-12(%rbp), %eax	# i, tmp199
	cltq
	leaq	0(,%rax,8), %rdx	#, _25
	movq	-8(%rbp), %rax	# out, tmp200
	addq	%rdx, %rax	# _25, _26
# problem82.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	leaq	.LC5(%rip), %rdx	#, tmp201
	movq	%rdx, (%rax)	# tmp201, *_26
	jmp	.L5	#
.L44:
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	movl	-12(%rbp), %eax	# i, tmp202
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-24(%rbp), %rax	# grades, tmp203
	addq	%rdx, %rax	# _28, _29
	movss	(%rax), %xmm0	# *_29, _30
	cvtss2sd	%xmm0, %xmm0	# _30, _31
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	comisd	.LC6(%rip), %xmm0	#, _31
	jbe	.L45	#,
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	movl	-12(%rbp), %eax	# i, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, _33
	movq	-8(%rbp), %rax	# out, tmp205
	addq	%rdx, %rax	# _33, _34
# problem82.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	leaq	.LC7(%rip), %rdx	#, tmp206
	movq	%rdx, (%rax)	# tmp206, *_34
	jmp	.L5	#
.L45:
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	movl	-12(%rbp), %eax	# i, tmp207
	cltq
	leaq	0(,%rax,4), %rdx	#, _36
	movq	-24(%rbp), %rax	# grades, tmp208
	addq	%rdx, %rax	# _36, _37
	movss	(%rax), %xmm0	# *_37, _38
	cvtss2sd	%xmm0, %xmm0	# _38, _39
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	comisd	.LC8(%rip), %xmm0	#, _39
	jbe	.L46	#,
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	movl	-12(%rbp), %eax	# i, tmp209
	cltq
	leaq	0(,%rax,8), %rdx	#, _41
	movq	-8(%rbp), %rax	# out, tmp210
	addq	%rdx, %rax	# _41, _42
# problem82.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	leaq	.LC9(%rip), %rdx	#, tmp211
	movq	%rdx, (%rax)	# tmp211, *_42
	jmp	.L5	#
.L46:
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	movl	-12(%rbp), %eax	# i, tmp212
	cltq
	leaq	0(,%rax,4), %rdx	#, _44
	movq	-24(%rbp), %rax	# grades, tmp213
	addq	%rdx, %rax	# _44, _45
	movss	(%rax), %xmm0	# *_45, _46
	cvtss2sd	%xmm0, %xmm0	# _46, _47
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	comisd	.LC10(%rip), %xmm0	#, _47
	jbe	.L47	#,
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	movl	-12(%rbp), %eax	# i, tmp214
	cltq
	leaq	0(,%rax,8), %rdx	#, _49
	movq	-8(%rbp), %rax	# out, tmp215
	addq	%rdx, %rax	# _49, _50
# problem82.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	leaq	.LC11(%rip), %rdx	#, tmp216
	movq	%rdx, (%rax)	# tmp216, *_50
	jmp	.L5	#
.L47:
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	movl	-12(%rbp), %eax	# i, tmp217
	cltq
	leaq	0(,%rax,4), %rdx	#, _52
	movq	-24(%rbp), %rax	# grades, tmp218
	addq	%rdx, %rax	# _52, _53
	movss	(%rax), %xmm0	# *_53, _54
	cvtss2sd	%xmm0, %xmm0	# _54, _55
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	comisd	.LC12(%rip), %xmm0	#, _55
	jbe	.L48	#,
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	movl	-12(%rbp), %eax	# i, tmp219
	cltq
	leaq	0(,%rax,8), %rdx	#, _57
	movq	-8(%rbp), %rax	# out, tmp220
	addq	%rdx, %rax	# _57, _58
# problem82.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	leaq	.LC13(%rip), %rdx	#, tmp221
	movq	%rdx, (%rax)	# tmp221, *_58
	jmp	.L5	#
.L48:
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	movl	-12(%rbp), %eax	# i, tmp222
	cltq
	leaq	0(,%rax,4), %rdx	#, _60
	movq	-24(%rbp), %rax	# grades, tmp223
	addq	%rdx, %rax	# _60, _61
	movss	(%rax), %xmm0	# *_61, _62
	cvtss2sd	%xmm0, %xmm0	# _62, _63
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	comisd	.LC14(%rip), %xmm0	#, _63
	jbe	.L49	#,
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	movl	-12(%rbp), %eax	# i, tmp224
	cltq
	leaq	0(,%rax,8), %rdx	#, _65
	movq	-8(%rbp), %rax	# out, tmp225
	addq	%rdx, %rax	# _65, _66
# problem82.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	leaq	.LC15(%rip), %rdx	#, tmp226
	movq	%rdx, (%rax)	# tmp226, *_66
	jmp	.L5	#
.L49:
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	movl	-12(%rbp), %eax	# i, tmp227
	cltq
	leaq	0(,%rax,4), %rdx	#, _68
	movq	-24(%rbp), %rax	# grades, tmp228
	addq	%rdx, %rax	# _68, _69
	movss	(%rax), %xmm0	# *_69, _70
	cvtss2sd	%xmm0, %xmm0	# _70, _71
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	comisd	.LC16(%rip), %xmm0	#, _71
	jbe	.L50	#,
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	movl	-12(%rbp), %eax	# i, tmp229
	cltq
	leaq	0(,%rax,8), %rdx	#, _73
	movq	-8(%rbp), %rax	# out, tmp230
	addq	%rdx, %rax	# _73, _74
# problem82.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	leaq	.LC17(%rip), %rdx	#, tmp231
	movq	%rdx, (%rax)	# tmp231, *_74
	jmp	.L5	#
.L50:
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	movl	-12(%rbp), %eax	# i, tmp232
	cltq
	leaq	0(,%rax,4), %rdx	#, _76
	movq	-24(%rbp), %rax	# grades, tmp233
	addq	%rdx, %rax	# _76, _77
	movss	(%rax), %xmm0	# *_77, _78
	cvtss2sd	%xmm0, %xmm0	# _78, _79
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	comisd	.LC18(%rip), %xmm0	#, _79
	jbe	.L51	#,
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	movl	-12(%rbp), %eax	# i, tmp234
	cltq
	leaq	0(,%rax,8), %rdx	#, _81
	movq	-8(%rbp), %rax	# out, tmp235
	addq	%rdx, %rax	# _81, _82
# problem82.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	leaq	.LC19(%rip), %rdx	#, tmp236
	movq	%rdx, (%rax)	# tmp236, *_82
	jmp	.L5	#
.L51:
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	movl	-12(%rbp), %eax	# i, tmp237
	cltq
	leaq	0(,%rax,4), %rdx	#, _84
	movq	-24(%rbp), %rax	# grades, tmp238
	addq	%rdx, %rax	# _84, _85
	movss	(%rax), %xmm0	# *_85, _86
	cvtss2sd	%xmm0, %xmm0	# _86, _87
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	comisd	.LC20(%rip), %xmm0	#, _87
	jbe	.L52	#,
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	movl	-12(%rbp), %eax	# i, tmp239
	cltq
	leaq	0(,%rax,8), %rdx	#, _89
	movq	-8(%rbp), %rax	# out, tmp240
	addq	%rdx, %rax	# _89, _90
# problem82.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	leaq	.LC21(%rip), %rdx	#, tmp241
	movq	%rdx, (%rax)	# tmp241, *_90
	jmp	.L5	#
.L52:
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	movl	-12(%rbp), %eax	# i, tmp242
	cltq
	leaq	0(,%rax,4), %rdx	#, _92
	movq	-24(%rbp), %rax	# grades, tmp243
	addq	%rdx, %rax	# _92, _93
	movss	(%rax), %xmm0	# *_93, _94
	cvtss2sd	%xmm0, %xmm0	# _94, _95
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	comisd	.LC22(%rip), %xmm0	#, _95
	jbe	.L53	#,
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	movl	-12(%rbp), %eax	# i, tmp244
	cltq
	leaq	0(,%rax,8), %rdx	#, _97
	movq	-8(%rbp), %rax	# out, tmp245
	addq	%rdx, %rax	# _97, _98
# problem82.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	leaq	.LC23(%rip), %rdx	#, tmp246
	movq	%rdx, (%rax)	# tmp246, *_98
	jmp	.L5	#
.L53:
# problem82.c:19:         else out[i] = "E";
	movl	-12(%rbp), %eax	# i, tmp247
	cltq
	leaq	0(,%rax,8), %rdx	#, _100
	movq	-8(%rbp), %rax	# out, tmp248
	addq	%rdx, %rax	# _100, _101
# problem82.c:19:         else out[i] = "E";
	leaq	.LC24(%rip), %rdx	#, tmp249
	movq	%rdx, (%rax)	# tmp249, *_101
.L5:
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	addl	$1, -12(%rbp)	#, i
.L2:
# problem82.c:6:     for (int i = 0; i < size; ++i) {
	movl	-12(%rbp), %eax	# i, tmp250
	cmpl	-28(%rbp), %eax	# size, tmp250
	jl	.L28	#,
# problem82.c:21:     return out;
	movq	-8(%rbp), %rax	# out, _110
# problem82.c:22: }
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
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# a, a
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# size, size
# problem82.c:32:     for (int i = 0; i < size; i++) {
	movl	$0, -4(%rbp)	#, i
# problem82.c:32:     for (int i = 0; i < size; i++) {
	jmp	.L55	#
.L58:
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	movl	-4(%rbp), %eax	# i, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-32(%rbp), %rax	# b, tmp94
	addq	%rdx, %rax	# _2, _3
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	movq	(%rax), %rdx	# *_3, _4
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,8), %rcx	#, _6
	movq	-24(%rbp), %rax	# a, tmp96
	addq	%rcx, %rax	# _6, _7
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	movq	(%rax), %rax	# *_7, _8
	movq	%rdx, %rsi	# _4,
	movq	%rax, %rdi	# _8,
	call	strcmp@PLT	#
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	testl	%eax, %eax	# _9
	je	.L56	#,
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	movl	$0, %eax	#, _11
# problem82.c:33:         if (strcmp(a[i], b[i]) != 0) return false;
	jmp	.L57	#
.L56:
# problem82.c:32:     for (int i = 0; i < size; i++) {
	addl	$1, -4(%rbp)	#, i
.L55:
# problem82.c:32:     for (int i = 0; i < size; i++) {
	movl	-4(%rbp), %eax	# i, tmp97
	cmpl	-36(%rbp), %eax	# size, tmp97
	jl	.L58	#,
# problem82.c:35:     return true;
	movl	$1, %eax	#, _11
.L57:
# problem82.c:36: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC30:
	.string	"problem82.c"
.LC31:
	.string	"issame(result1, expected1, 5)"
.LC33:
	.string	"issame(result2, expected2, 1)"
.LC35:
	.string	"issame(result3, expected3, 1)"
.LC37:
	.string	"issame(result4, expected4, 1)"
.LC43:
	.string	"issame(result5, expected5, 5)"
.LC45:
	.string	"issame(result6, expected6, 2)"
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
	subq	$272, %rsp	#,
# problem82.c:38: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp169
	movq	%rax, -8(%rbp)	# tmp169, D.4051
	xorl	%eax, %eax	# tmp169
# problem82.c:39:     float grades1[] = {4.0, 3, 1.7, 2, 3.5};
	movss	.LC25(%rip), %xmm0	#, tmp90
	movss	%xmm0, -160(%rbp)	# tmp90, grades1[0]
	movss	.LC26(%rip), %xmm0	#, tmp91
	movss	%xmm0, -156(%rbp)	# tmp91, grades1[1]
	movss	.LC27(%rip), %xmm0	#, tmp92
	movss	%xmm0, -152(%rbp)	# tmp92, grades1[2]
	movss	.LC28(%rip), %xmm0	#, tmp93
	movss	%xmm0, -148(%rbp)	# tmp93, grades1[3]
	movss	.LC29(%rip), %xmm0	#, tmp94
	movss	%xmm0, -144(%rbp)	# tmp94, grades1[4]
# problem82.c:40:     char* expected1[] = {"A+", "B", "C-", "C", "A-"};
	leaq	.LC1(%rip), %rax	#, tmp95
	movq	%rax, -96(%rbp)	# tmp95, expected1[0]
	leaq	.LC9(%rip), %rax	#, tmp96
	movq	%rax, -88(%rbp)	# tmp96, expected1[1]
	leaq	.LC17(%rip), %rax	#, tmp97
	movq	%rax, -80(%rbp)	# tmp97, expected1[2]
	leaq	.LC15(%rip), %rax	#, tmp98
	movq	%rax, -72(%rbp)	# tmp98, expected1[3]
	leaq	.LC5(%rip), %rax	#, tmp99
	movq	%rax, -64(%rbp)	# tmp99, expected1[4]
# problem82.c:41:     char** result1 = func0(grades1, 5);
	leaq	-160(%rbp), %rax	#, tmp100
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
	movq	%rax, -272(%rbp)	# tmp101, result1
# problem82.c:42:     assert(issame(result1, expected1, 5));
	leaq	-96(%rbp), %rcx	#, tmp102
	movq	-272(%rbp), %rax	# result1, tmp103
	movl	$5, %edx	#,
	movq	%rcx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	issame	#
# problem82.c:42:     assert(issame(result1, expected1, 5));
	testb	%al, %al	# _1
	jne	.L60	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp104
	movq	%rax, %rcx	# tmp104,
	movl	$42, %edx	#,
	leaq	.LC30(%rip), %rax	#, tmp105
	movq	%rax, %rsi	# tmp105,
	leaq	.LC31(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	__assert_fail@PLT	#
.L60:
# problem82.c:43:     free(result1);
	movq	-272(%rbp), %rax	# result1, tmp107
	movq	%rax, %rdi	# tmp107,
	call	free@PLT	#
# problem82.c:45:     float grades2[] = {1.2};
	movss	.LC32(%rip), %xmm0	#, tmp108
	movss	%xmm0, -220(%rbp)	# tmp108, grades2[0]
# problem82.c:46:     char* expected2[] = {"D+"};
	leaq	.LC19(%rip), %rax	#, tmp109
	movq	%rax, -208(%rbp)	# tmp109, expected2[0]
# problem82.c:47:     char** result2 = func0(grades2, 1);
	leaq	-220(%rbp), %rax	#, tmp110
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp110,
	call	func0	#
	movq	%rax, -264(%rbp)	# tmp111, result2
# problem82.c:48:     assert(issame(result2, expected2, 1));
	leaq	-208(%rbp), %rcx	#, tmp112
	movq	-264(%rbp), %rax	# result2, tmp113
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	issame	#
# problem82.c:48:     assert(issame(result2, expected2, 1));
	testb	%al, %al	# _2
	jne	.L61	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp114
	movq	%rax, %rcx	# tmp114,
	movl	$48, %edx	#,
	leaq	.LC30(%rip), %rax	#, tmp115
	movq	%rax, %rsi	# tmp115,
	leaq	.LC33(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	call	__assert_fail@PLT	#
.L61:
# problem82.c:49:     free(result2);
	movq	-264(%rbp), %rax	# result2, tmp117
	movq	%rax, %rdi	# tmp117,
	call	free@PLT	#
# problem82.c:51:     float grades3[] = {0.5};
	movss	.LC34(%rip), %xmm0	#, tmp118
	movss	%xmm0, -216(%rbp)	# tmp118, grades3[0]
# problem82.c:52:     char* expected3[] = {"D-"};
	leaq	.LC23(%rip), %rax	#, tmp119
	movq	%rax, -200(%rbp)	# tmp119, expected3[0]
# problem82.c:53:     char** result3 = func0(grades3, 1);
	leaq	-216(%rbp), %rax	#, tmp120
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp120,
	call	func0	#
	movq	%rax, -256(%rbp)	# tmp121, result3
# problem82.c:54:     assert(issame(result3, expected3, 1));
	leaq	-200(%rbp), %rcx	#, tmp122
	movq	-256(%rbp), %rax	# result3, tmp123
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp122,
	movq	%rax, %rdi	# tmp123,
	call	issame	#
# problem82.c:54:     assert(issame(result3, expected3, 1));
	testb	%al, %al	# _3
	jne	.L62	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp124
	movq	%rax, %rcx	# tmp124,
	movl	$54, %edx	#,
	leaq	.LC30(%rip), %rax	#, tmp125
	movq	%rax, %rsi	# tmp125,
	leaq	.LC35(%rip), %rax	#, tmp126
	movq	%rax, %rdi	# tmp126,
	call	__assert_fail@PLT	#
.L62:
# problem82.c:55:     free(result3);
	movq	-256(%rbp), %rax	# result3, tmp127
	movq	%rax, %rdi	# tmp127,
	call	free@PLT	#
# problem82.c:57:     float grades4[] = {0.0};
	pxor	%xmm0, %xmm0	# tmp128
	movss	%xmm0, -212(%rbp)	# tmp128, grades4[0]
# problem82.c:58:     char* expected4[] = {"E"};
	leaq	.LC24(%rip), %rax	#, tmp129
	movq	%rax, -192(%rbp)	# tmp129, expected4[0]
# problem82.c:59:     char** result4 = func0(grades4, 1);
	leaq	-212(%rbp), %rax	#, tmp130
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	func0	#
	movq	%rax, -248(%rbp)	# tmp131, result4
# problem82.c:60:     assert(issame(result4, expected4, 1));
	leaq	-192(%rbp), %rcx	#, tmp132
	movq	-248(%rbp), %rax	# result4, tmp133
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp132,
	movq	%rax, %rdi	# tmp133,
	call	issame	#
# problem82.c:60:     assert(issame(result4, expected4, 1));
	testb	%al, %al	# _4
	jne	.L63	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp134
	movq	%rax, %rcx	# tmp134,
	movl	$60, %edx	#,
	leaq	.LC30(%rip), %rax	#, tmp135
	movq	%rax, %rsi	# tmp135,
	leaq	.LC37(%rip), %rax	#, tmp136
	movq	%rax, %rdi	# tmp136,
	call	__assert_fail@PLT	#
.L63:
# problem82.c:61:     free(result4);
	movq	-248(%rbp), %rax	# result4, tmp137
	movq	%rax, %rdi	# tmp137,
	call	free@PLT	#
# problem82.c:63:     float grades5[] = {1, 0.3, 1.5, 2.8, 3.3};
	movss	.LC38(%rip), %xmm0	#, tmp138
	movss	%xmm0, -128(%rbp)	# tmp138, grades5[0]
	movss	.LC39(%rip), %xmm0	#, tmp139
	movss	%xmm0, -124(%rbp)	# tmp139, grades5[1]
	movss	.LC40(%rip), %xmm0	#, tmp140
	movss	%xmm0, -120(%rbp)	# tmp140, grades5[2]
	movss	.LC41(%rip), %xmm0	#, tmp141
	movss	%xmm0, -116(%rbp)	# tmp141, grades5[3]
	movss	.LC42(%rip), %xmm0	#, tmp142
	movss	%xmm0, -112(%rbp)	# tmp142, grades5[4]
# problem82.c:64:     char* expected5[] = {"D", "D-", "C-", "B", "B+"};
	leaq	.LC21(%rip), %rax	#, tmp143
	movq	%rax, -48(%rbp)	# tmp143, expected5[0]
	leaq	.LC23(%rip), %rax	#, tmp144
	movq	%rax, -40(%rbp)	# tmp144, expected5[1]
	leaq	.LC17(%rip), %rax	#, tmp145
	movq	%rax, -32(%rbp)	# tmp145, expected5[2]
	leaq	.LC9(%rip), %rax	#, tmp146
	movq	%rax, -24(%rbp)	# tmp146, expected5[3]
	leaq	.LC7(%rip), %rax	#, tmp147
	movq	%rax, -16(%rbp)	# tmp147, expected5[4]
# problem82.c:65:     char** result5 = func0(grades5, 5);
	leaq	-128(%rbp), %rax	#, tmp148
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	func0	#
	movq	%rax, -240(%rbp)	# tmp149, result5
# problem82.c:66:     assert(issame(result5, expected5, 5));
	leaq	-48(%rbp), %rcx	#, tmp150
	movq	-240(%rbp), %rax	# result5, tmp151
	movl	$5, %edx	#,
	movq	%rcx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	issame	#
# problem82.c:66:     assert(issame(result5, expected5, 5));
	testb	%al, %al	# _5
	jne	.L64	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp152
	movq	%rax, %rcx	# tmp152,
	movl	$66, %edx	#,
	leaq	.LC30(%rip), %rax	#, tmp153
	movq	%rax, %rsi	# tmp153,
	leaq	.LC43(%rip), %rax	#, tmp154
	movq	%rax, %rdi	# tmp154,
	call	__assert_fail@PLT	#
.L64:
# problem82.c:67:     free(result5);
	movq	-240(%rbp), %rax	# result5, tmp155
	movq	%rax, %rdi	# tmp155,
	call	free@PLT	#
# problem82.c:69:     float grades6[] = {0, 0.7};
	pxor	%xmm0, %xmm0	# tmp156
	movss	%xmm0, -184(%rbp)	# tmp156, grades6[0]
	movss	.LC44(%rip), %xmm0	#, tmp157
	movss	%xmm0, -180(%rbp)	# tmp157, grades6[1]
# problem82.c:70:     char* expected6[] = {"E", "D-"};
	leaq	.LC24(%rip), %rax	#, tmp158
	movq	%rax, -176(%rbp)	# tmp158, expected6[0]
	leaq	.LC23(%rip), %rax	#, tmp159
	movq	%rax, -168(%rbp)	# tmp159, expected6[1]
# problem82.c:71:     char** result6 = func0(grades6, 2);
	leaq	-184(%rbp), %rax	#, tmp160
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	func0	#
	movq	%rax, -232(%rbp)	# tmp161, result6
# problem82.c:72:     assert(issame(result6, expected6, 2));
	leaq	-176(%rbp), %rcx	#, tmp162
	movq	-232(%rbp), %rax	# result6, tmp163
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp162,
	movq	%rax, %rdi	# tmp163,
	call	issame	#
# problem82.c:72:     assert(issame(result6, expected6, 2));
	testb	%al, %al	# _6
	jne	.L65	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp164
	movq	%rax, %rcx	# tmp164,
	movl	$72, %edx	#,
	leaq	.LC30(%rip), %rax	#, tmp165
	movq	%rax, %rsi	# tmp165,
	leaq	.LC45(%rip), %rax	#, tmp166
	movq	%rax, %rdi	# tmp166,
	call	__assert_fail@PLT	#
.L65:
# problem82.c:73:     free(result6);
	movq	-232(%rbp), %rax	# result6, tmp167
	movq	%rax, %rdi	# tmp167,
	call	free@PLT	#
# problem82.c:75:     return 0;
	movl	$0, %eax	#, _68
# problem82.c:76: }
	movq	-8(%rbp), %rdx	# D.4051, tmp170
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp170
	je	.L67	#,
	call	__stack_chk_fail@PLT	#
.L67:
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
	.align 8
.LC0:
	.long	-1841681977
	.long	1074790347
	.align 8
.LC2:
	.long	123695058
	.long	1074633166
	.align 8
.LC4:
	.long	-735298401
	.long	1074423450
	.align 8
.LC6:
	.long	1841681977
	.long	1074266164
	.align 8
.LC8:
	.long	123695058
	.long	1074108878
	.align 8
.LC10:
	.long	-735298401
	.long	1073899162
	.align 8
.LC12:
	.long	1841681977
	.long	1073741876
	.align 8
.LC14:
	.long	247390116
	.long	1073427356
	.align 8
.LC16:
	.long	-1470596802
	.long	1073007925
	.align 8
.LC18:
	.long	-611603343
	.long	1072693352
	.align 8
.LC20:
	.long	494780232
	.long	1072064312
	.align 8
.LC22:
	.long	-350469331
	.long	1058682594
	.align 4
.LC25:
	.long	1082130432
	.align 4
.LC26:
	.long	1077936128
	.align 4
.LC27:
	.long	1071225242
	.align 4
.LC28:
	.long	1073741824
	.align 4
.LC29:
	.long	1080033280
	.align 4
.LC32:
	.long	1067030938
	.align 4
.LC34:
	.long	1056964608
	.align 4
.LC38:
	.long	1065353216
	.align 4
.LC39:
	.long	1050253722
	.align 4
.LC40:
	.long	1069547520
	.align 4
.LC41:
	.long	1077097267
	.align 4
.LC42:
	.long	1079194419
	.align 4
.LC44:
	.long	1060320051
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
