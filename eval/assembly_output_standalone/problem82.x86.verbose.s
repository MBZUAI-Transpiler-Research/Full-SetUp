	.file	"code.c"
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
# eval/problem82//code.c:5:     char** out = malloc(size * sizeof(char*));
	movl	-28(%rbp), %eax	# size, tmp185
	cltq
	salq	$3, %rax	#, _2
	movq	%rax, %rdi	# _2,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp186, out
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	movl	$0, -12(%rbp)	#, i
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	jmp	.L2	#
.L28:
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	movl	-12(%rbp), %eax	# i, tmp187
	cltq
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-24(%rbp), %rax	# grades, tmp188
	addq	%rdx, %rax	# _4, _5
	movss	(%rax), %xmm0	# *_5, _6
	cvtss2sd	%xmm0, %xmm0	# _6, _7
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	comisd	.LC0(%rip), %xmm0	#, _7
	jb	.L42	#,
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	movl	-12(%rbp), %eax	# i, tmp189
	cltq
	leaq	0(,%rax,8), %rdx	#, _9
	movq	-8(%rbp), %rax	# out, tmp190
	addq	%rdx, %rax	# _9, _10
# eval/problem82//code.c:7:         if (grades[i] >= 3.9999) out[i] = "A+";
	leaq	.LC1(%rip), %rdx	#, tmp191
	movq	%rdx, (%rax)	# tmp191, *_10
	jmp	.L5	#
.L42:
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	movl	-12(%rbp), %eax	# i, tmp192
	cltq
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-24(%rbp), %rax	# grades, tmp193
	addq	%rdx, %rax	# _12, _13
	movss	(%rax), %xmm0	# *_13, _14
	cvtss2sd	%xmm0, %xmm0	# _14, _15
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	comisd	.LC2(%rip), %xmm0	#, _15
	jbe	.L43	#,
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	movl	-12(%rbp), %eax	# i, tmp194
	cltq
	leaq	0(,%rax,8), %rdx	#, _17
	movq	-8(%rbp), %rax	# out, tmp195
	addq	%rdx, %rax	# _17, _18
# eval/problem82//code.c:8:         else if (grades[i] > 3.7001) out[i] = "A";
	leaq	.LC3(%rip), %rdx	#, tmp196
	movq	%rdx, (%rax)	# tmp196, *_18
	jmp	.L5	#
.L43:
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	movl	-12(%rbp), %eax	# i, tmp197
	cltq
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-24(%rbp), %rax	# grades, tmp198
	addq	%rdx, %rax	# _20, _21
	movss	(%rax), %xmm0	# *_21, _22
	cvtss2sd	%xmm0, %xmm0	# _22, _23
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	comisd	.LC4(%rip), %xmm0	#, _23
	jbe	.L44	#,
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	movl	-12(%rbp), %eax	# i, tmp199
	cltq
	leaq	0(,%rax,8), %rdx	#, _25
	movq	-8(%rbp), %rax	# out, tmp200
	addq	%rdx, %rax	# _25, _26
# eval/problem82//code.c:9:         else if (grades[i] > 3.3001) out[i] = "A-";
	leaq	.LC5(%rip), %rdx	#, tmp201
	movq	%rdx, (%rax)	# tmp201, *_26
	jmp	.L5	#
.L44:
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	movl	-12(%rbp), %eax	# i, tmp202
	cltq
	leaq	0(,%rax,4), %rdx	#, _28
	movq	-24(%rbp), %rax	# grades, tmp203
	addq	%rdx, %rax	# _28, _29
	movss	(%rax), %xmm0	# *_29, _30
	cvtss2sd	%xmm0, %xmm0	# _30, _31
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	comisd	.LC6(%rip), %xmm0	#, _31
	jbe	.L45	#,
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	movl	-12(%rbp), %eax	# i, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, _33
	movq	-8(%rbp), %rax	# out, tmp205
	addq	%rdx, %rax	# _33, _34
# eval/problem82//code.c:10:         else if (grades[i] > 3.0001) out[i] = "B+";
	leaq	.LC7(%rip), %rdx	#, tmp206
	movq	%rdx, (%rax)	# tmp206, *_34
	jmp	.L5	#
.L45:
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	movl	-12(%rbp), %eax	# i, tmp207
	cltq
	leaq	0(,%rax,4), %rdx	#, _36
	movq	-24(%rbp), %rax	# grades, tmp208
	addq	%rdx, %rax	# _36, _37
	movss	(%rax), %xmm0	# *_37, _38
	cvtss2sd	%xmm0, %xmm0	# _38, _39
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	comisd	.LC8(%rip), %xmm0	#, _39
	jbe	.L46	#,
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	movl	-12(%rbp), %eax	# i, tmp209
	cltq
	leaq	0(,%rax,8), %rdx	#, _41
	movq	-8(%rbp), %rax	# out, tmp210
	addq	%rdx, %rax	# _41, _42
# eval/problem82//code.c:11:         else if (grades[i] > 2.7001) out[i] = "B";
	leaq	.LC9(%rip), %rdx	#, tmp211
	movq	%rdx, (%rax)	# tmp211, *_42
	jmp	.L5	#
.L46:
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	movl	-12(%rbp), %eax	# i, tmp212
	cltq
	leaq	0(,%rax,4), %rdx	#, _44
	movq	-24(%rbp), %rax	# grades, tmp213
	addq	%rdx, %rax	# _44, _45
	movss	(%rax), %xmm0	# *_45, _46
	cvtss2sd	%xmm0, %xmm0	# _46, _47
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	comisd	.LC10(%rip), %xmm0	#, _47
	jbe	.L47	#,
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	movl	-12(%rbp), %eax	# i, tmp214
	cltq
	leaq	0(,%rax,8), %rdx	#, _49
	movq	-8(%rbp), %rax	# out, tmp215
	addq	%rdx, %rax	# _49, _50
# eval/problem82//code.c:12:         else if (grades[i] > 2.3001) out[i] = "B-";
	leaq	.LC11(%rip), %rdx	#, tmp216
	movq	%rdx, (%rax)	# tmp216, *_50
	jmp	.L5	#
.L47:
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	movl	-12(%rbp), %eax	# i, tmp217
	cltq
	leaq	0(,%rax,4), %rdx	#, _52
	movq	-24(%rbp), %rax	# grades, tmp218
	addq	%rdx, %rax	# _52, _53
	movss	(%rax), %xmm0	# *_53, _54
	cvtss2sd	%xmm0, %xmm0	# _54, _55
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	comisd	.LC12(%rip), %xmm0	#, _55
	jbe	.L48	#,
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	movl	-12(%rbp), %eax	# i, tmp219
	cltq
	leaq	0(,%rax,8), %rdx	#, _57
	movq	-8(%rbp), %rax	# out, tmp220
	addq	%rdx, %rax	# _57, _58
# eval/problem82//code.c:13:         else if (grades[i] > 2.0001) out[i] = "C+";
	leaq	.LC13(%rip), %rdx	#, tmp221
	movq	%rdx, (%rax)	# tmp221, *_58
	jmp	.L5	#
.L48:
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	movl	-12(%rbp), %eax	# i, tmp222
	cltq
	leaq	0(,%rax,4), %rdx	#, _60
	movq	-24(%rbp), %rax	# grades, tmp223
	addq	%rdx, %rax	# _60, _61
	movss	(%rax), %xmm0	# *_61, _62
	cvtss2sd	%xmm0, %xmm0	# _62, _63
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	comisd	.LC14(%rip), %xmm0	#, _63
	jbe	.L49	#,
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	movl	-12(%rbp), %eax	# i, tmp224
	cltq
	leaq	0(,%rax,8), %rdx	#, _65
	movq	-8(%rbp), %rax	# out, tmp225
	addq	%rdx, %rax	# _65, _66
# eval/problem82//code.c:14:         else if (grades[i] > 1.7001) out[i] = "C";
	leaq	.LC15(%rip), %rdx	#, tmp226
	movq	%rdx, (%rax)	# tmp226, *_66
	jmp	.L5	#
.L49:
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	movl	-12(%rbp), %eax	# i, tmp227
	cltq
	leaq	0(,%rax,4), %rdx	#, _68
	movq	-24(%rbp), %rax	# grades, tmp228
	addq	%rdx, %rax	# _68, _69
	movss	(%rax), %xmm0	# *_69, _70
	cvtss2sd	%xmm0, %xmm0	# _70, _71
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	comisd	.LC16(%rip), %xmm0	#, _71
	jbe	.L50	#,
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	movl	-12(%rbp), %eax	# i, tmp229
	cltq
	leaq	0(,%rax,8), %rdx	#, _73
	movq	-8(%rbp), %rax	# out, tmp230
	addq	%rdx, %rax	# _73, _74
# eval/problem82//code.c:15:         else if (grades[i] > 1.3001) out[i] = "C-";
	leaq	.LC17(%rip), %rdx	#, tmp231
	movq	%rdx, (%rax)	# tmp231, *_74
	jmp	.L5	#
.L50:
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	movl	-12(%rbp), %eax	# i, tmp232
	cltq
	leaq	0(,%rax,4), %rdx	#, _76
	movq	-24(%rbp), %rax	# grades, tmp233
	addq	%rdx, %rax	# _76, _77
	movss	(%rax), %xmm0	# *_77, _78
	cvtss2sd	%xmm0, %xmm0	# _78, _79
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	comisd	.LC18(%rip), %xmm0	#, _79
	jbe	.L51	#,
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	movl	-12(%rbp), %eax	# i, tmp234
	cltq
	leaq	0(,%rax,8), %rdx	#, _81
	movq	-8(%rbp), %rax	# out, tmp235
	addq	%rdx, %rax	# _81, _82
# eval/problem82//code.c:16:         else if (grades[i] > 1.0001) out[i] = "D+";
	leaq	.LC19(%rip), %rdx	#, tmp236
	movq	%rdx, (%rax)	# tmp236, *_82
	jmp	.L5	#
.L51:
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	movl	-12(%rbp), %eax	# i, tmp237
	cltq
	leaq	0(,%rax,4), %rdx	#, _84
	movq	-24(%rbp), %rax	# grades, tmp238
	addq	%rdx, %rax	# _84, _85
	movss	(%rax), %xmm0	# *_85, _86
	cvtss2sd	%xmm0, %xmm0	# _86, _87
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	comisd	.LC20(%rip), %xmm0	#, _87
	jbe	.L52	#,
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	movl	-12(%rbp), %eax	# i, tmp239
	cltq
	leaq	0(,%rax,8), %rdx	#, _89
	movq	-8(%rbp), %rax	# out, tmp240
	addq	%rdx, %rax	# _89, _90
# eval/problem82//code.c:17:         else if (grades[i] > 0.7001) out[i] = "D";
	leaq	.LC21(%rip), %rdx	#, tmp241
	movq	%rdx, (%rax)	# tmp241, *_90
	jmp	.L5	#
.L52:
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	movl	-12(%rbp), %eax	# i, tmp242
	cltq
	leaq	0(,%rax,4), %rdx	#, _92
	movq	-24(%rbp), %rax	# grades, tmp243
	addq	%rdx, %rax	# _92, _93
	movss	(%rax), %xmm0	# *_93, _94
	cvtss2sd	%xmm0, %xmm0	# _94, _95
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	comisd	.LC22(%rip), %xmm0	#, _95
	jbe	.L53	#,
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	movl	-12(%rbp), %eax	# i, tmp244
	cltq
	leaq	0(,%rax,8), %rdx	#, _97
	movq	-8(%rbp), %rax	# out, tmp245
	addq	%rdx, %rax	# _97, _98
# eval/problem82//code.c:18:         else if (grades[i] > 0.0001) out[i] = "D-";
	leaq	.LC23(%rip), %rdx	#, tmp246
	movq	%rdx, (%rax)	# tmp246, *_98
	jmp	.L5	#
.L53:
# eval/problem82//code.c:19:         else out[i] = "E";
	movl	-12(%rbp), %eax	# i, tmp247
	cltq
	leaq	0(,%rax,8), %rdx	#, _100
	movq	-8(%rbp), %rax	# out, tmp248
	addq	%rdx, %rax	# _100, _101
# eval/problem82//code.c:19:         else out[i] = "E";
	leaq	.LC24(%rip), %rdx	#, tmp249
	movq	%rdx, (%rax)	# tmp249, *_101
.L5:
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	addl	$1, -12(%rbp)	#, i
.L2:
# eval/problem82//code.c:6:     for (int i = 0; i < size; ++i) {
	movl	-12(%rbp), %eax	# i, tmp250
	cmpl	-28(%rbp), %eax	# size, tmp250
	jl	.L28	#,
# eval/problem82//code.c:21:     return out;
	movq	-8(%rbp), %rax	# out, _110
# eval/problem82//code.c:22: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.section	.rodata
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
