	.file	"problem8.c"
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC1:
	.string	"%u\n"
	.align 8
.LC0:
	.ascii	"731671765313306249192251196744265747423553491949349698352031"
	.ascii	"277450632623957831801698480186947885184385861560789112949495"
	.ascii	"459501737958331952853208805511125406987471585238630507156932"
	.ascii	"909632952274430435576689664895044524452316173185640309871112"
	.ascii	"172238311362229893423380308135336276614282806444486645238749"
	.ascii	"303589072962904915604407723907138105158593079608667017242712"
	.ascii	"188399879790879227492190169972088809377665727333001053367881"
	.ascii	"220235421809751254540594752243525849077116705560136048395864"
	.ascii	"467063244157221553975369781797784617406495514929086256932197"
	.ascii	"846862248283972241375657056057490261407972968652414535100474"
	.ascii	"821663704844031998900088952434506585412275886668811642717147"
	.ascii	"992444292823086346567481391912316282458617866458359124566529"
	.ascii	"476545682848912883142607"
	.string	"6900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
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
	subq	$1056, %rsp	#,
# problem8.c:9: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp104
	movq	%rax, -8(%rbp)	# tmp104, D.2368
	xorl	%eax, %eax	# tmp104
# problem8.c:10:   char str[] =
	leaq	-1024(%rbp), %rax	#, tmp90
	leaq	.LC0(%rip), %rdx	#, tmp91
	movl	$125, %ecx	#, tmp92
	movq	%rax, %rdi	# tmp90, tmp90
	movq	%rdx, %rsi	# tmp91, tmp91
	rep movsq
	movq	%rsi, %rdx	# tmp91, tmp91
	movq	%rdi, %rax	# tmp90, tmp90
	movzbl	(%rdx), %ecx	#, tmp93
	movb	%cl, (%rax)	# tmp93, str
# problem8.c:31:   size_t len = sizeof str - 1;
	movq	$1000, -1032(%rbp)	#, len
# problem8.c:33:   unsigned max = 0;
	movl	$0, -1056(%rbp)	#, max
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	movq	$0, -1048(%rbp)	#, i
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	jmp	.L2	#
.L6:
# problem8.c:36:     unsigned p = 1;
	movl	$1, -1052(%rbp)	#, p
# problem8.c:39:     for (j = 0; j < 5; j++) {
	movq	$0, -1040(%rbp)	#, j
# problem8.c:39:     for (j = 0; j < 5; j++) {
	jmp	.L3	#
.L4:
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	movq	-1048(%rbp), %rdx	# i, tmp94
	movq	-1040(%rbp), %rax	# j, tmp95
	addq	%rdx, %rax	# tmp94, _1
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	movzbl	-1024(%rbp,%rax), %eax	# str[_1], _2
	movsbl	%al, %eax	# _2, _3
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	subl	$48, %eax	#, _4
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	movl	%eax, %edx	# _4, _5
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	movl	-1052(%rbp), %eax	# p, tmp97
	imull	%edx, %eax	# _5, tmp96
	movl	%eax, -1052(%rbp)	# tmp96, p
# problem8.c:39:     for (j = 0; j < 5; j++) {
	addq	$1, -1040(%rbp)	#, j
.L3:
# problem8.c:39:     for (j = 0; j < 5; j++) {
	cmpq	$4, -1040(%rbp)	#, j
	jbe	.L4	#,
# problem8.c:42:     if (p > max) {
	movl	-1052(%rbp), %eax	# p, tmp98
	cmpl	-1056(%rbp), %eax	# max, tmp98
	jbe	.L5	#,
# problem8.c:43:       max = p;
	movl	-1052(%rbp), %eax	# p, tmp99
	movl	%eax, -1056(%rbp)	# tmp99, max
.L5:
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	addq	$1, -1048(%rbp)	#, i
.L2:
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	movq	-1032(%rbp), %rax	# len, tmp100
	subq	$4, %rax	#, _6
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	cmpq	%rax, -1048(%rbp)	# _6, i
	jb	.L6	#,
# problem8.c:46:   printf("%u\n", max);
	movl	-1056(%rbp), %eax	# max, tmp101
	movl	%eax, %esi	# tmp101,
	leaq	.LC1(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	movl	$0, %eax	#,
	call	printf@PLT	#
# problem8.c:47:   return 0;
	movl	$0, %eax	#, _18
# problem8.c:48: }
	movq	-8(%rbp), %rdx	# D.2368, tmp105
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp105
	je	.L8	#,
	call	__stack_chk_fail@PLT	#
.L8:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
