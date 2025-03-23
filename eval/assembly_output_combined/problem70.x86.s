	.file	"problem70.c"
	.text
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	$4, %esi
	movq	%rax, %rdi
	call	calloc@PLT
	movq	%rax, -8(%rbp)
	movl	$-1, -16(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L2
.L4:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L3
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jge	.L3
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
.L3:
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L4
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-16(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1440, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$5, -1408(%rbp)
	movl	$5, -1404(%rbp)
	movl	$5, -1400(%rbp)
	movl	$5, -1396(%rbp)
	movl	$1, -1392(%rbp)
	movl	$4, -1280(%rbp)
	movl	$1, -1276(%rbp)
	movl	$4, -1272(%rbp)
	movl	$1, -1268(%rbp)
	movl	$4, -1264(%rbp)
	movl	$4, -1260(%rbp)
	movl	$3, -1432(%rbp)
	movl	$3, -1428(%rbp)
	movl	$8, -1216(%rbp)
	movl	$8, -1212(%rbp)
	movl	$8, -1208(%rbp)
	movl	$8, -1204(%rbp)
	movl	$8, -1200(%rbp)
	movl	$8, -1196(%rbp)
	movl	$8, -1192(%rbp)
	movl	$8, -1188(%rbp)
	movl	$2, -1376(%rbp)
	movl	$3, -1372(%rbp)
	movl	$3, -1368(%rbp)
	movl	$2, -1364(%rbp)
	movl	$2, -1360(%rbp)
	movl	$2, -720(%rbp)
	movl	$7, -716(%rbp)
	movl	$8, -712(%rbp)
	movl	$8, -708(%rbp)
	movl	$4, -704(%rbp)
	movl	$8, -700(%rbp)
	movl	$7, -696(%rbp)
	movl	$3, -692(%rbp)
	movl	$9, -688(%rbp)
	movl	$6, -684(%rbp)
	movl	$5, -680(%rbp)
	movl	$10, -676(%rbp)
	movl	$4, -672(%rbp)
	movl	$3, -668(%rbp)
	movl	$6, -664(%rbp)
	movl	$7, -660(%rbp)
	movl	$1, -656(%rbp)
	movl	$7, -652(%rbp)
	movl	$4, -648(%rbp)
	movl	$10, -644(%rbp)
	movl	$8, -640(%rbp)
	movl	$1, -636(%rbp)
	movl	$3, -1424(%rbp)
	movl	$2, -1420(%rbp)
	movl	$8, -1416(%rbp)
	movl	$2, -1412(%rbp)
	movl	$6, -1184(%rbp)
	movl	$7, -1180(%rbp)
	movl	$1, -1176(%rbp)
	movl	$8, -1172(%rbp)
	movl	$8, -1168(%rbp)
	movl	$10, -1164(%rbp)
	movl	$5, -1160(%rbp)
	movl	$8, -1156(%rbp)
	movl	$5, -1152(%rbp)
	movl	$3, -1148(%rbp)
	movl	$10, -1144(%rbp)
	movl	$8, -1248(%rbp)
	movl	$8, -1244(%rbp)
	movl	$3, -1240(%rbp)
	movl	$6, -1236(%rbp)
	movl	$5, -1232(%rbp)
	movl	$6, -1228(%rbp)
	movl	$4, -1224(%rbp)
	movl	$6, -240(%rbp)
	movl	$9, -236(%rbp)
	movl	$6, -232(%rbp)
	movl	$7, -228(%rbp)
	movl	$1, -224(%rbp)
	movl	$4, -220(%rbp)
	movl	$7, -216(%rbp)
	movl	$1, -212(%rbp)
	movl	$8, -208(%rbp)
	movl	$8, -204(%rbp)
	movl	$9, -200(%rbp)
	movl	$8, -196(%rbp)
	movl	$10, -192(%rbp)
	movl	$10, -188(%rbp)
	movl	$8, -184(%rbp)
	movl	$4, -180(%rbp)
	movl	$10, -176(%rbp)
	movl	$4, -172(%rbp)
	movl	$10, -168(%rbp)
	movl	$1, -164(%rbp)
	movl	$2, -160(%rbp)
	movl	$9, -156(%rbp)
	movl	$5, -152(%rbp)
	movl	$7, -148(%rbp)
	movl	$9, -144(%rbp)
	movl	$1, -1344(%rbp)
	movl	$9, -1340(%rbp)
	movl	$10, -1336(%rbp)
	movl	$1, -1332(%rbp)
	movl	$3, -1328(%rbp)
	movl	$6, -336(%rbp)
	movl	$9, -332(%rbp)
	movl	$7, -328(%rbp)
	movl	$5, -324(%rbp)
	movl	$8, -320(%rbp)
	movl	$7, -316(%rbp)
	movl	$5, -312(%rbp)
	movl	$3, -308(%rbp)
	movl	$7, -304(%rbp)
	movl	$5, -300(%rbp)
	movl	$10, -296(%rbp)
	movl	$10, -292(%rbp)
	movl	$3, -288(%rbp)
	movl	$6, -284(%rbp)
	movl	$10, -280(%rbp)
	movl	$2, -276(%rbp)
	movl	$8, -272(%rbp)
	movl	$6, -268(%rbp)
	movl	$5, -264(%rbp)
	movl	$4, -260(%rbp)
	movl	$9, -256(%rbp)
	movl	$5, -252(%rbp)
	movl	$3, -248(%rbp)
	movl	$10, -244(%rbp)
	movl	$1, -1440(%rbp)
	movl	$8, -528(%rbp)
	movl	$8, -524(%rbp)
	movl	$10, -520(%rbp)
	movl	$6, -516(%rbp)
	movl	$4, -512(%rbp)
	movl	$3, -508(%rbp)
	movl	$5, -504(%rbp)
	movl	$8, -500(%rbp)
	movl	$2, -496(%rbp)
	movl	$4, -492(%rbp)
	movl	$2, -488(%rbp)
	movl	$8, -484(%rbp)
	movl	$4, -480(%rbp)
	movl	$6, -476(%rbp)
	movl	$10, -472(%rbp)
	movl	$4, -468(%rbp)
	movl	$2, -464(%rbp)
	movl	$1, -460(%rbp)
	movl	$10, -456(%rbp)
	movl	$2, -452(%rbp)
	movl	$1, -448(%rbp)
	movl	$1, -444(%rbp)
	movl	$5, -440(%rbp)
	movl	$2, -976(%rbp)
	movl	$10, -972(%rbp)
	movl	$4, -968(%rbp)
	movl	$8, -964(%rbp)
	movl	$2, -960(%rbp)
	movl	$10, -956(%rbp)
	movl	$5, -952(%rbp)
	movl	$1, -948(%rbp)
	movl	$2, -944(%rbp)
	movl	$9, -940(%rbp)
	movl	$5, -936(%rbp)
	movl	$5, -932(%rbp)
	movl	$6, -928(%rbp)
	movl	$3, -924(%rbp)
	movl	$8, -920(%rbp)
	movl	$6, -916(%rbp)
	movl	$4, -912(%rbp)
	movl	$10, -908(%rbp)
	movl	$1, -1088(%rbp)
	movl	$6, -1084(%rbp)
	movl	$10, -1080(%rbp)
	movl	$1, -1076(%rbp)
	movl	$6, -1072(%rbp)
	movl	$9, -1068(%rbp)
	movl	$10, -1064(%rbp)
	movl	$8, -1060(%rbp)
	movl	$6, -1056(%rbp)
	movl	$8, -1052(%rbp)
	movl	$7, -1048(%rbp)
	movl	$3, -1044(%rbp)
	movl	$9, -128(%rbp)
	movl	$2, -124(%rbp)
	movl	$4, -120(%rbp)
	movl	$1, -116(%rbp)
	movl	$5, -112(%rbp)
	movl	$1, -108(%rbp)
	movl	$5, -104(%rbp)
	movl	$2, -100(%rbp)
	movl	$5, -96(%rbp)
	movl	$7, -92(%rbp)
	movl	$7, -88(%rbp)
	movl	$7, -84(%rbp)
	movl	$3, -80(%rbp)
	movl	$10, -76(%rbp)
	movl	$1, -72(%rbp)
	movl	$5, -68(%rbp)
	movl	$4, -64(%rbp)
	movl	$2, -60(%rbp)
	movl	$8, -56(%rbp)
	movl	$4, -52(%rbp)
	movl	$1, -48(%rbp)
	movl	$9, -44(%rbp)
	movl	$10, -40(%rbp)
	movl	$7, -36(%rbp)
	movl	$10, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$8, -24(%rbp)
	movl	$10, -20(%rbp)
	movl	$9, -16(%rbp)
	movl	$4, -12(%rbp)
	movl	$2, -432(%rbp)
	movl	$6, -428(%rbp)
	movl	$4, -424(%rbp)
	movl	$2, -420(%rbp)
	movl	$8, -416(%rbp)
	movl	$7, -412(%rbp)
	movl	$5, -408(%rbp)
	movl	$6, -404(%rbp)
	movl	$4, -400(%rbp)
	movl	$10, -396(%rbp)
	movl	$4, -392(%rbp)
	movl	$6, -388(%rbp)
	movl	$3, -384(%rbp)
	movl	$7, -380(%rbp)
	movl	$8, -376(%rbp)
	movl	$8, -372(%rbp)
	movl	$3, -368(%rbp)
	movl	$1, -364(%rbp)
	movl	$4, -360(%rbp)
	movl	$2, -356(%rbp)
	movl	$2, -352(%rbp)
	movl	$10, -348(%rbp)
	movl	$7, -344(%rbp)
	movl	$9, -896(%rbp)
	movl	$8, -892(%rbp)
	movl	$6, -888(%rbp)
	movl	$10, -884(%rbp)
	movl	$2, -880(%rbp)
	movl	$6, -876(%rbp)
	movl	$10, -872(%rbp)
	movl	$2, -868(%rbp)
	movl	$7, -864(%rbp)
	movl	$8, -860(%rbp)
	movl	$10, -856(%rbp)
	movl	$3, -852(%rbp)
	movl	$8, -848(%rbp)
	movl	$2, -844(%rbp)
	movl	$6, -840(%rbp)
	movl	$2, -836(%rbp)
	movl	$3, -832(%rbp)
	movl	$1, -828(%rbp)
	movl	$5, -816(%rbp)
	movl	$5, -812(%rbp)
	movl	$3, -808(%rbp)
	movl	$9, -804(%rbp)
	movl	$5, -800(%rbp)
	movl	$6, -796(%rbp)
	movl	$3, -792(%rbp)
	movl	$2, -788(%rbp)
	movl	$8, -784(%rbp)
	movl	$5, -780(%rbp)
	movl	$6, -776(%rbp)
	movl	$10, -772(%rbp)
	movl	$10, -768(%rbp)
	movl	$6, -764(%rbp)
	movl	$8, -760(%rbp)
	movl	$4, -756(%rbp)
	movl	$10, -752(%rbp)
	movl	$7, -748(%rbp)
	movl	$7, -744(%rbp)
	movl	$10, -740(%rbp)
	movl	$8, -736(%rbp)
	movl	$10, -1436(%rbp)
	movl	$9, -1040(%rbp)
	movl	$7, -1036(%rbp)
	movl	$7, -1032(%rbp)
	movl	$2, -1028(%rbp)
	movl	$4, -1024(%rbp)
	movl	$7, -1020(%rbp)
	movl	$2, -1016(%rbp)
	movl	$10, -1012(%rbp)
	movl	$9, -1008(%rbp)
	movl	$7, -1004(%rbp)
	movl	$5, -1000(%rbp)
	movl	$7, -996(%rbp)
	movl	$2, -992(%rbp)
	movl	$5, -1136(%rbp)
	movl	$4, -1132(%rbp)
	movl	$10, -1128(%rbp)
	movl	$2, -1124(%rbp)
	movl	$1, -1120(%rbp)
	movl	$1, -1116(%rbp)
	movl	$10, -1112(%rbp)
	movl	$3, -1108(%rbp)
	movl	$6, -1104(%rbp)
	movl	$1, -1100(%rbp)
	movl	$8, -1096(%rbp)
	movl	$7, -624(%rbp)
	movl	$9, -620(%rbp)
	movl	$9, -616(%rbp)
	movl	$9, -612(%rbp)
	movl	$3, -608(%rbp)
	movl	$4, -604(%rbp)
	movl	$1, -600(%rbp)
	movl	$5, -596(%rbp)
	movl	$9, -592(%rbp)
	movl	$1, -588(%rbp)
	movl	$2, -584(%rbp)
	movl	$1, -580(%rbp)
	movl	$1, -576(%rbp)
	movl	$10, -572(%rbp)
	movl	$7, -568(%rbp)
	movl	$5, -564(%rbp)
	movl	$6, -560(%rbp)
	movl	$7, -556(%rbp)
	movl	$6, -552(%rbp)
	movl	$7, -548(%rbp)
	movl	$7, -544(%rbp)
	movl	$6, -540(%rbp)
	movl	$3, -1312(%rbp)
	movl	$10, -1308(%rbp)
	movl	$10, -1304(%rbp)
	movl	$9, -1300(%rbp)
	movl	$2, -1296(%rbp)
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
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
