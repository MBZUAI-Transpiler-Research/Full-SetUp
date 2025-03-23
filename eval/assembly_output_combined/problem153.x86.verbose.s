	.file	"problem153.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
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
	movq	%rdi, -24(%rbp)	# game, game
	movq	%rsi, -32(%rbp)	# guess, guess
	movq	%rdx, -40(%rbp)	# out, out
	movl	%ecx, -44(%rbp)	# length, length
# problem153.c:5:     for (int i = 0; i < length; i++) {
	movl	$0, -4(%rbp)	#, i
# problem153.c:5:     for (int i = 0; i < length; i++) {
	jmp	.L2	#
.L3:
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# game, tmp96
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %eax	# *_3, _4
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	-4(%rbp), %edx	# i, tmp97
	movslq	%edx, %rdx	# tmp97, _5
	leaq	0(,%rdx,4), %rcx	#, _6
	movq	-32(%rbp), %rdx	# guess, tmp98
	addq	%rcx, %rdx	# _6, _7
	movl	(%rdx), %edx	# *_7, _8
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	subl	%edx, %eax	# _8, _9
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	-4(%rbp), %edx	# i, tmp99
	movslq	%edx, %rdx	# tmp99, _10
	leaq	0(,%rdx,4), %rcx	#, _11
	movq	-40(%rbp), %rdx	# out, tmp100
	addq	%rcx, %rdx	# _11, _12
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	%eax, %ecx	# _9, tmp102
	negl	%ecx	# tmp102
	cmovns	%ecx, %eax	# tmp102,, _13
# problem153.c:6:         out[i] = abs(game[i] - guess[i]);
	movl	%eax, (%rdx)	# _13, *_12
# problem153.c:5:     for (int i = 0; i < length; i++) {
	addl	$1, -4(%rbp)	#, i
.L2:
# problem153.c:5:     for (int i = 0; i < length; i++) {
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-44(%rbp), %eax	# length, tmp101
	jl	.L3	#,
# problem153.c:8: }
	nop	
	nop	
	popq	%rbp	#
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
	movq	%rsi, -32(%rbp)	# b, b
	movl	%edx, -36(%rbp)	# length, length
# problem153.c:16:     for (int i = 0; i < length; i++) {
	movl	$0, -4(%rbp)	#, i
# problem153.c:16:     for (int i = 0; i < length; i++) {
	jmp	.L5	#
.L8:
# problem153.c:17:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-24(%rbp), %rax	# a, tmp93
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %edx	# *_3, _4
# problem153.c:17:         if (a[i] != b[i]) return 0;
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,4), %rcx	#, _6
	movq	-32(%rbp), %rax	# b, tmp95
	addq	%rcx, %rax	# _6, _7
	movl	(%rax), %eax	# *_7, _8
# problem153.c:17:         if (a[i] != b[i]) return 0;
	cmpl	%eax, %edx	# _8, _4
	je	.L6	#,
# problem153.c:17:         if (a[i] != b[i]) return 0;
	movl	$0, %eax	#, _10
	jmp	.L7	#
.L6:
# problem153.c:16:     for (int i = 0; i < length; i++) {
	addl	$1, -4(%rbp)	#, i
.L5:
# problem153.c:16:     for (int i = 0; i < length; i++) {
	movl	-4(%rbp), %eax	# i, tmp96
	cmpl	-36(%rbp), %eax	# length, tmp96
	jl	.L8	#,
# problem153.c:19:     return 1;
	movl	$1, %eax	#, _10
.L7:
# problem153.c:20: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	issame, .-issame
	.section	.rodata
.LC0:
	.string	"problem153.c"
	.align 8
.LC1:
	.string	"issame(result, (int[]){0,0,0,0,3,3}, 6)"
	.align 8
.LC2:
	.string	"issame(result, (int[]){4,4,1,0,0,6}, 6)"
	.align 8
.LC3:
	.string	"issame(result, (int[]){0,0,0,0,0,0}, 6)"
	.align 8
.LC4:
	.string	"issame(result, (int[]){2,4,6}, 3)"
	.align 8
.LC5:
	.string	"issame(result, (int[]){2,0,0,1}, 4)"
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
	subq	$384, %rsp	#,
# problem153.c:22: int main() {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp139
	movq	%rax, -8(%rbp)	# tmp139, D.3149
	xorl	%eax, %eax	# tmp139
# problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	movl	$1, -256(%rbp)	#, D.3095[0]
	movl	$2, -252(%rbp)	#, D.3095[1]
	movl	$3, -248(%rbp)	#, D.3095[2]
	movl	$4, -244(%rbp)	#, D.3095[3]
	movl	$2, -240(%rbp)	#, D.3095[4]
	movl	$-2, -236(%rbp)	#, D.3095[5]
# problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	movl	$1, -288(%rbp)	#, D.3094[0]
	movl	$2, -284(%rbp)	#, D.3094[1]
	movl	$3, -280(%rbp)	#, D.3094[2]
	movl	$4, -276(%rbp)	#, D.3094[3]
	movl	$5, -272(%rbp)	#, D.3094[4]
	movl	$1, -268(%rbp)	#, D.3094[5]
# problem153.c:25:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	leaq	-320(%rbp), %rdx	#, tmp90
	leaq	-256(%rbp), %rsi	#, tmp91
	leaq	-288(%rbp), %rax	#, tmp92
	movl	$6, %ecx	#,
	movq	%rax, %rdi	# tmp92,
	call	func0	#
# problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	movl	$0, -32(%rbp)	#, MEM[(int[6] *)_146][0]
	movl	$0, -28(%rbp)	#, MEM[(int[6] *)_146][1]
	movl	$0, -24(%rbp)	#, MEM[(int[6] *)_146][2]
	movl	$0, -20(%rbp)	#, MEM[(int[6] *)_146][3]
	movl	$3, -16(%rbp)	#, MEM[(int[6] *)_146][4]
	movl	$3, -12(%rbp)	#, MEM[(int[6] *)_146][5]
	leaq	-32(%rbp), %rcx	#, tmp93
	leaq	-320(%rbp), %rax	#, tmp94
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	issame	#
	testl	%eax, %eax	# _1
	jne	.L10	#,
# problem153.c:26:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp95
	movq	%rax, %rcx	# tmp95,
	movl	$26, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp96
	movq	%rax, %rsi	# tmp96,
	leaq	.LC1(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	__assert_fail@PLT	#
.L10:
# problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	movl	$4, -192(%rbp)	#, D.3100[0]
	movl	$1, -188(%rbp)	#, D.3100[1]
	movl	$1, -184(%rbp)	#, D.3100[2]
	movl	$0, -180(%rbp)	#, D.3100[3]
	movl	$0, -176(%rbp)	#, D.3100[4]
	movl	$-2, -172(%rbp)	#, D.3100[5]
# problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	movl	$0, -224(%rbp)	#, D.3099[0]
	movl	$5, -220(%rbp)	#, D.3099[1]
	movl	$0, -216(%rbp)	#, D.3099[2]
	movl	$0, -212(%rbp)	#, D.3099[3]
	movl	$0, -208(%rbp)	#, D.3099[4]
	movl	$4, -204(%rbp)	#, D.3099[5]
# problem153.c:28:     func0((int[]){0,5,0,0,0,4}, (int[]){4,1,1,0,0,-2}, result, 6);
	leaq	-320(%rbp), %rdx	#, tmp98
	leaq	-192(%rbp), %rsi	#, tmp99
	leaq	-224(%rbp), %rax	#, tmp100
	movl	$6, %ecx	#,
	movq	%rax, %rdi	# tmp100,
	call	func0	#
# problem153.c:29:     assert(issame(result, (int[]){4,4,1,0,0,6}, 6));
	movl	$4, -32(%rbp)	#, MEM[(int[6] *)_146][0]
	movl	$4, -28(%rbp)	#, MEM[(int[6] *)_146][1]
	movl	$1, -24(%rbp)	#, MEM[(int[6] *)_146][2]
	movl	$0, -20(%rbp)	#, MEM[(int[6] *)_146][3]
	movl	$0, -16(%rbp)	#, MEM[(int[6] *)_146][4]
	movl	$6, -12(%rbp)	#, MEM[(int[6] *)_146][5]
	leaq	-32(%rbp), %rcx	#, tmp101
	leaq	-320(%rbp), %rax	#, tmp102
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	issame	#
	testl	%eax, %eax	# _2
	jne	.L11	#,
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp103
	movq	%rax, %rcx	# tmp103,
	movl	$29, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rsi	# tmp104,
	leaq	.LC2(%rip), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	__assert_fail@PLT	#
.L11:
# problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	movl	$1, -128(%rbp)	#, D.3104[0]
	movl	$2, -124(%rbp)	#, D.3104[1]
	movl	$3, -120(%rbp)	#, D.3104[2]
	movl	$4, -116(%rbp)	#, D.3104[3]
	movl	$2, -112(%rbp)	#, D.3104[4]
	movl	$-2, -108(%rbp)	#, D.3104[5]
# problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	movl	$1, -160(%rbp)	#, D.3103[0]
	movl	$2, -156(%rbp)	#, D.3103[1]
	movl	$3, -152(%rbp)	#, D.3103[2]
	movl	$4, -148(%rbp)	#, D.3103[3]
	movl	$5, -144(%rbp)	#, D.3103[4]
	movl	$1, -140(%rbp)	#, D.3103[5]
# problem153.c:31:     func0((int[]){1,2,3,4,5,1}, (int[]){1,2,3,4,2,-2}, result, 6);
	leaq	-320(%rbp), %rdx	#, tmp106
	leaq	-128(%rbp), %rsi	#, tmp107
	leaq	-160(%rbp), %rax	#, tmp108
	movl	$6, %ecx	#,
	movq	%rax, %rdi	# tmp108,
	call	func0	#
# problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	movl	$0, -32(%rbp)	#, MEM[(int[6] *)_146][0]
	movl	$0, -28(%rbp)	#, MEM[(int[6] *)_146][1]
	movl	$0, -24(%rbp)	#, MEM[(int[6] *)_146][2]
	movl	$0, -20(%rbp)	#, MEM[(int[6] *)_146][3]
	movl	$3, -16(%rbp)	#, MEM[(int[6] *)_146][4]
	movl	$3, -12(%rbp)	#, MEM[(int[6] *)_146][5]
	leaq	-32(%rbp), %rcx	#, tmp109
	leaq	-320(%rbp), %rax	#, tmp110
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	issame	#
	testl	%eax, %eax	# _3
	jne	.L12	#,
# problem153.c:32:     assert(issame(result, (int[]){0,0,0,0,3,3}, 6));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp111
	movq	%rax, %rcx	# tmp111,
	movl	$32, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp112
	movq	%rax, %rsi	# tmp112,
	leaq	.LC1(%rip), %rax	#, tmp113
	movq	%rax, %rdi	# tmp113,
	call	__assert_fail@PLT	#
.L12:
# problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	movl	$0, -64(%rbp)	#, D.3108[0]
	movl	$0, -60(%rbp)	#, D.3108[1]
	movl	$0, -56(%rbp)	#, D.3108[2]
	movl	$0, -52(%rbp)	#, D.3108[3]
	movl	$0, -48(%rbp)	#, D.3108[4]
	movl	$0, -44(%rbp)	#, D.3108[5]
# problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	movl	$0, -96(%rbp)	#, D.3107[0]
	movl	$0, -92(%rbp)	#, D.3107[1]
	movl	$0, -88(%rbp)	#, D.3107[2]
	movl	$0, -84(%rbp)	#, D.3107[3]
	movl	$0, -80(%rbp)	#, D.3107[4]
	movl	$0, -76(%rbp)	#, D.3107[5]
# problem153.c:34:     func0((int[]){0,0,0,0,0,0}, (int[]){0,0,0,0,0,0}, result, 6);
	leaq	-320(%rbp), %rdx	#, tmp114
	leaq	-64(%rbp), %rsi	#, tmp115
	leaq	-96(%rbp), %rax	#, tmp116
	movl	$6, %ecx	#,
	movq	%rax, %rdi	# tmp116,
	call	func0	#
# problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	movl	$0, -32(%rbp)	#, MEM[(int[6] *)_146][0]
	movl	$0, -28(%rbp)	#, MEM[(int[6] *)_146][1]
	movl	$0, -24(%rbp)	#, MEM[(int[6] *)_146][2]
	movl	$0, -20(%rbp)	#, MEM[(int[6] *)_146][3]
	movl	$0, -16(%rbp)	#, MEM[(int[6] *)_146][4]
	movl	$0, -12(%rbp)	#, MEM[(int[6] *)_146][5]
	leaq	-32(%rbp), %rcx	#, tmp117
	leaq	-320(%rbp), %rax	#, tmp118
	movl	$6, %edx	#,
	movq	%rcx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	issame	#
	testl	%eax, %eax	# _4
	jne	.L13	#,
# problem153.c:35:     assert(issame(result, (int[]){0,0,0,0,0,0}, 6));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp119
	movq	%rax, %rcx	# tmp119,
	movl	$35, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp120
	movq	%rax, %rsi	# tmp120,
	leaq	.LC3(%rip), %rax	#, tmp121
	movq	%rax, %rdi	# tmp121,
	call	__assert_fail@PLT	#
.L13:
# problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	movl	$-1, -364(%rbp)	#, D.3112[0]
	movl	$-2, -360(%rbp)	#, D.3112[1]
	movl	$-3, -356(%rbp)	#, D.3112[2]
# problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	movl	$1, -376(%rbp)	#, D.3111[0]
	movl	$2, -372(%rbp)	#, D.3111[1]
	movl	$3, -368(%rbp)	#, D.3111[2]
# problem153.c:37:     func0((int[]){1,2,3}, (int[]){-1,-2,-3}, result, 3);
	leaq	-320(%rbp), %rdx	#, tmp122
	leaq	-364(%rbp), %rsi	#, tmp123
	leaq	-376(%rbp), %rax	#, tmp124
	movl	$3, %ecx	#,
	movq	%rax, %rdi	# tmp124,
	call	func0	#
# problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	movl	$2, -32(%rbp)	#, MEM[(int[3] *)_146][0]
	movl	$4, -28(%rbp)	#, MEM[(int[3] *)_146][1]
	movl	$6, -24(%rbp)	#, MEM[(int[3] *)_146][2]
	leaq	-32(%rbp), %rcx	#, tmp125
	leaq	-320(%rbp), %rax	#, tmp126
	movl	$3, %edx	#,
	movq	%rcx, %rsi	# tmp125,
	movq	%rax, %rdi	# tmp126,
	call	issame	#
	testl	%eax, %eax	# _5
	jne	.L14	#,
# problem153.c:38:     assert(issame(result, (int[]){2,4,6}, 3));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp127
	movq	%rax, %rcx	# tmp127,
	movl	$38, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp128
	movq	%rax, %rsi	# tmp128,
	leaq	.LC4(%rip), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	__assert_fail@PLT	#
.L14:
# problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	movl	$-1, -336(%rbp)	#, D.3116[0]
	movl	$2, -332(%rbp)	#, D.3116[1]
	movl	$3, -328(%rbp)	#, D.3116[2]
	movl	$4, -324(%rbp)	#, D.3116[3]
# problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	movl	$1, -352(%rbp)	#, D.3115[0]
	movl	$2, -348(%rbp)	#, D.3115[1]
	movl	$3, -344(%rbp)	#, D.3115[2]
	movl	$5, -340(%rbp)	#, D.3115[3]
# problem153.c:40:     func0((int[]){1,2,3,5}, (int[]){-1,2,3,4}, result, 4);
	leaq	-320(%rbp), %rdx	#, tmp130
	leaq	-336(%rbp), %rsi	#, tmp131
	leaq	-352(%rbp), %rax	#, tmp132
	movl	$4, %ecx	#,
	movq	%rax, %rdi	# tmp132,
	call	func0	#
# problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	movl	$2, -32(%rbp)	#, MEM[(int[4] *)_146][0]
	movl	$0, -28(%rbp)	#, MEM[(int[4] *)_146][1]
	movl	$0, -24(%rbp)	#, MEM[(int[4] *)_146][2]
	movl	$1, -20(%rbp)	#, MEM[(int[4] *)_146][3]
	leaq	-32(%rbp), %rcx	#, tmp133
	leaq	-320(%rbp), %rax	#, tmp134
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	issame	#
	testl	%eax, %eax	# _6
	jne	.L15	#,
# problem153.c:41:     assert(issame(result, (int[]){2,0,0,1}, 4));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rax	#, tmp135
	movq	%rax, %rcx	# tmp135,
	movl	$41, %edx	#,
	leaq	.LC0(%rip), %rax	#, tmp136
	movq	%rax, %rsi	# tmp136,
	leaq	.LC5(%rip), %rax	#, tmp137
	movq	%rax, %rdi	# tmp137,
	call	__assert_fail@PLT	#
.L15:
# problem153.c:43:     return 0;
	movl	$0, %eax	#, _125
# problem153.c:44: }
	movq	-8(%rbp), %rdx	# D.3149, tmp140
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp140
	je	.L17	#,
# problem153.c:44: }
	call	__stack_chk_fail@PLT	#
.L17:
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
