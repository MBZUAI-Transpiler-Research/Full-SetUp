	.file	"problem40.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC2:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
# problem40.c:10: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.4256
	xorl	%eax, %eax	# tmp125
# problem40.c:11:   int nth = 1;
	movl	$1, -72(%rbp)	#, nth
# problem40.c:14:   int p = 1;
	movl	$1, -60(%rbp)	#, p
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	movl	$1, -68(%rbp)	#, i
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	movl	$0, -64(%rbp)	#, l
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	jmp	.L2	#
.L7:
# problem40.c:17:     int digits = log10(i)+1;
	pxor	%xmm3, %xmm3	# _1
	cvtsi2sdl	-68(%rbp), %xmm3	# i, _1
	movq	%xmm3, %rax	# _1, _1
	movq	%rax, %xmm0	# _1,
	call	log10@PLT	#
# problem40.c:17:     int digits = log10(i)+1;
	movsd	.LC0(%rip), %xmm1	#, tmp99
	addsd	%xmm1, %xmm0	# tmp99, _3
# problem40.c:17:     int digits = log10(i)+1;
	cvttsd2sil	%xmm0, %eax	# _3, tmp100
	movl	%eax, -52(%rbp)	# tmp100, digits
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	movl	$0, -56(%rbp)	#, j
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	jmp	.L3	#
.L6:
# problem40.c:20:       if (nth == pow(10, l)) {
	pxor	%xmm2, %xmm2	# _4
	cvtsi2sdl	-72(%rbp), %xmm2	# nth, _4
	movsd	%xmm2, -88(%rbp)	# _4, %sfp
# problem40.c:20:       if (nth == pow(10, l)) {
	pxor	%xmm0, %xmm0	# _5
	cvtsi2sdl	-64(%rbp), %xmm0	# l, _5
	movq	.LC1(%rip), %rax	#, tmp101
	movapd	%xmm0, %xmm1	# _5,
	movq	%rax, %xmm0	# tmp101,
	call	pow@PLT	#
# problem40.c:20:       if (nth == pow(10, l)) {
	movsd	-88(%rbp), %xmm2	# %sfp, _4
	ucomisd	%xmm0, %xmm2	# _6, _4
	jp	.L4	#,
	ucomisd	%xmm0, %xmm2	# _6, _4
	jne	.L4	#,
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	movl	-52(%rbp), %eax	# digits, tmp102
	subl	-56(%rbp), %eax	# j, _7
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	subl	$1, %eax	#, _8
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	pxor	%xmm0, %xmm0	# _9
	cvtsi2sdl	%eax, %xmm0	# _8, _9
	movq	.LC1(%rip), %rax	#, tmp103
	movapd	%xmm0, %xmm1	# _9,
	movq	%rax, %xmm0	# tmp103,
	call	pow@PLT	#
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	cvttsd2sil	%xmm0, %edi	# _10, _11
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	movl	-68(%rbp), %eax	# i, tmp106
	cltd
	idivl	%edi	# _11
	movl	%eax, %ecx	# tmp104, _12
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	movl	-64(%rbp), %esi	# l, l.0_13
	leal	1(%rsi), %eax	#, tmp107
	movl	%eax, -64(%rbp)	# tmp107, l
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	movslq	%ecx, %rax	# _12, tmp108
	imulq	$1717986919, %rax, %rax	#, tmp108, tmp109
	shrq	$32, %rax	#, tmp110
	movl	%eax, %edx	# tmp110, tmp111
	sarl	$2, %edx	#, tmp111
	movl	%ecx, %eax	# _12, tmp112
	sarl	$31, %eax	#, tmp112
	subl	%eax, %edx	# tmp112, _14
	movl	%edx, %eax	# _14, tmp113
	sall	$2, %eax	#, tmp113
	addl	%edx, %eax	# _14, tmp113
	addl	%eax, %eax	# tmp114
	subl	%eax, %ecx	# tmp113, _12
	movl	%ecx, %edx	# _12, _14
# problem40.c:21:         d[l++] = (i / (int)pow(10, digits-j-1)) % 10; /* retrieve i's j-th digit */
	movslq	%esi, %rax	# l.0_13, tmp115
	movl	%edx, -48(%rbp,%rax,4)	# _14, d[l.0_13]
.L4:
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	addl	$1, -56(%rbp)	#, j
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	addl	$1, -72(%rbp)	#, nth
.L3:
# problem40.c:19:     for (j = 0; j < digits; j++, nth++) {
	movl	-56(%rbp), %eax	# j, tmp116
	cmpl	-52(%rbp), %eax	# digits, tmp116
	jl	.L6	#,
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	addl	$1, -68(%rbp)	#, i
.L2:
# problem40.c:16:   for (i = 1, l = 0; l < 7; i++) {
	cmpl	$6, -64(%rbp)	#, l
	jle	.L7	#,
# problem40.c:26:   for (i = 0; i < l; i++) {
	movl	$0, -68(%rbp)	#, i
# problem40.c:26:   for (i = 0; i < l; i++) {
	jmp	.L8	#
.L9:
# problem40.c:27:     p *= d[i];
	movl	-68(%rbp), %eax	# i, tmp118
	cltq
	movl	-48(%rbp,%rax,4), %eax	# d[i_19], _15
# problem40.c:27:     p *= d[i];
	movl	-60(%rbp), %edx	# p, tmp120
	imull	%edx, %eax	# tmp120, tmp119
	movl	%eax, -60(%rbp)	# tmp119, p
# problem40.c:26:   for (i = 0; i < l; i++) {
	addl	$1, -68(%rbp)	#, i
.L8:
# problem40.c:26:   for (i = 0; i < l; i++) {
	movl	-68(%rbp), %eax	# i, tmp121
	cmpl	-64(%rbp), %eax	# l, tmp121
	jl	.L9	#,
# problem40.c:29:   printf("%d\n", p);
	movl	-60(%rbp), %eax	# p, tmp122
	movl	%eax, %esi	# tmp122,
	leaq	.LC2(%rip), %rax	#, tmp123
	movq	%rax, %rdi	# tmp123,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem40.c:31:   return 0;
	movl	$0, %eax	#, _35
# problem40.c:32: }
	movq	-8(%rbp), %rdx	# D.4256, tmp126
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1076101120
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
