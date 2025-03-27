	.file	"libmin_pow.c"
	.text
	.section	.rodata
	.align 16
	.type	bp, @object
	.size	bp, 16
bp:
	.long	0
	.long	1072693248
	.long	0
	.long	1073217536
	.align 16
	.type	dp_h, @object
	.size	dp_h, 16
dp_h:
	.long	0
	.long	0
	.long	1073741824
	.long	1071822851
	.align 16
	.type	dp_l, @object
	.size	dp_l, 16
dp_l:
	.long	0
	.long	0
	.long	1137692678
	.long	1045233131
	.align 8
	.type	two53, @object
	.size	two53, 8
two53:
	.long	0
	.long	1128267776
	.align 8
	.type	huge, @object
	.size	huge, 8
huge:
	.long	-2013235812
	.long	2117592124
	.align 8
	.type	tiny, @object
	.size	tiny, 8
tiny:
	.long	-1023872167
	.long	27618847
	.align 8
	.type	L1, @object
	.size	L1, 8
L1:
	.long	858993411
	.long	1071854387
	.align 8
	.type	L2, @object
	.size	L2, 8
L2:
	.long	-613438465
	.long	1071345078
	.align 8
	.type	L3, @object
	.size	L3, 8
L3:
	.long	1368335949
	.long	1070945621
	.align 8
	.type	L4, @object
	.size	L4, 8
L4:
	.long	-1457700607
	.long	1070691424
	.align 8
	.type	L5, @object
	.size	L5, 8
L5:
	.long	-1815487643
	.long	1070433866
	.align 8
	.type	L6, @object
	.size	L6, 8
L6:
	.long	1246056175
	.long	1070235176
	.align 8
	.type	P1, @object
	.size	P1, 8
P1:
	.long	1431655742
	.long	1069897045
	.align 8
	.type	P2, @object
	.size	P2, 8
P2:
	.long	381599123
	.long	-1083784852
	.align 8
	.type	P3, @object
	.size	P3, 8
P3:
	.long	-1356472788
	.long	1058100842
	.align 8
	.type	P4, @object
	.size	P4, 8
P4:
	.long	-976065551
	.long	-1094992575
	.align 8
	.type	P5, @object
	.size	P5, 8
P5:
	.long	1925096656
	.long	1046886249
	.align 8
	.type	lg2, @object
	.size	lg2, 8
lg2:
	.long	-17155601
	.long	1072049730
	.align 8
	.type	lg2_h, @object
	.size	lg2_h, 8
lg2_h:
	.long	0
	.long	1072049731
	.align 8
	.type	lg2_l, @object
	.size	lg2_l, 8
lg2_l:
	.long	212364345
	.long	-1105175455
	.align 8
	.type	ovt, @object
	.size	ovt, 8
ovt:
	.long	1697350398
	.long	1016534343
	.align 8
	.type	cp, @object
	.size	cp, 8
cp:
	.long	-600177667
	.long	1072613129
	.align 8
	.type	cp_h, @object
	.size	cp_h, 8
cp_h:
	.long	-536870912
	.long	1072613129
	.align 8
	.type	cp_l, @object
	.size	cp_l, 8
cp_l:
	.long	341508597
	.long	-1103220768
	.align 8
	.type	ivln2, @object
	.size	ivln2, 8
ivln2:
	.long	1697350398
	.long	1073157447
	.align 8
	.type	ivln2_h, @object
	.size	ivln2_h, 8
ivln2_h:
	.long	1610612736
	.long	1073157447
	.align 8
	.type	ivln2_l, @object
	.size	ivln2_l, 8
ivln2_l:
	.long	-128065724
	.long	1045736971
	.text
	.globl	libmin_pow
	.type	libmin_pow, @function
libmin_pow:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movsd	%xmm0, -232(%rbp)
	movsd	%xmm1, -240(%rbp)
	movsd	-232(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -204(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, -200(%rbp)
	movsd	-240(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -196(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, -192(%rbp)
	movl	-204(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -208(%rbp)
	movl	-196(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -188(%rbp)
	movl	-188(%rbp), %eax
	orl	-192(%rbp), %eax
	testl	%eax, %eax
	jne	.L2
	movq	.LC0(%rip), %rax
	jmp	.L3
.L2:
	cmpl	$1072693248, -204(%rbp)
	jne	.L4
	cmpl	$0, -200(%rbp)
	jne	.L4
	movq	.LC0(%rip), %rax
	jmp	.L3
.L4:
	cmpl	$2146435072, -208(%rbp)
	jg	.L5
	cmpl	$2146435072, -208(%rbp)
	jne	.L6
	cmpl	$0, -200(%rbp)
	jne	.L5
.L6:
	cmpl	$2146435072, -188(%rbp)
	jg	.L5
	cmpl	$2146435072, -188(%rbp)
	jne	.L7
	cmpl	$0, -192(%rbp)
	je	.L7
.L5:
	movsd	-232(%rbp), %xmm0
	addsd	-240(%rbp), %xmm0
	movq	%xmm0, %rax
	jmp	.L3
.L7:
	movl	$0, -216(%rbp)
	cmpl	$0, -204(%rbp)
	jns	.L8
	cmpl	$1128267775, -188(%rbp)
	jle	.L9
	movl	$2, -216(%rbp)
	jmp	.L8
.L9:
	cmpl	$1072693247, -188(%rbp)
	jle	.L8
	movl	-188(%rbp), %eax
	sarl	$20, %eax
	subl	$1023, %eax
	movl	%eax, -220(%rbp)
	cmpl	$20, -220(%rbp)
	jle	.L10
	movl	$52, %eax
	subl	-220(%rbp), %eax
	movl	-192(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -184(%rbp)
	movl	$52, %eax
	subl	-220(%rbp), %eax
	movl	-184(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -192(%rbp)
	jne	.L8
	movl	-184(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	$2, %eax
	subl	%edx, %eax
	movl	%eax, -216(%rbp)
	jmp	.L8
.L10:
	cmpl	$0, -192(%rbp)
	jne	.L8
	movl	$20, %eax
	subl	-220(%rbp), %eax
	movl	-188(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -184(%rbp)
	movl	$20, %eax
	subl	-220(%rbp), %eax
	movl	-184(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%eax, -188(%rbp)
	jne	.L8
	movl	-184(%rbp), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	$2, %eax
	subl	%edx, %eax
	movl	%eax, -216(%rbp)
.L8:
	cmpl	$0, -192(%rbp)
	jne	.L11
	cmpl	$2146435072, -188(%rbp)
	jne	.L12
	movl	-208(%rbp), %eax
	subl	$1072693248, %eax
	orl	-200(%rbp), %eax
	testl	%eax, %eax
	jne	.L13
	movq	.LC0(%rip), %rax
	jmp	.L3
.L13:
	cmpl	$1072693247, -208(%rbp)
	jle	.L14
	cmpl	$0, -196(%rbp)
	js	.L15
	movq	-240(%rbp), %rax
	jmp	.L3
.L15:
	movq	.LC1(%rip), %rax
	jmp	.L3
.L14:
	cmpl	$0, -196(%rbp)
	jns	.L17
	movsd	-240(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	jmp	.L3
.L17:
	movq	.LC1(%rip), %rax
	jmp	.L3
.L12:
	cmpl	$1072693248, -188(%rbp)
	jne	.L19
	cmpl	$0, -196(%rbp)
	jns	.L20
	movsd	.LC0(%rip), %xmm0
	divsd	-232(%rbp), %xmm0
	movq	%xmm0, %rax
	jmp	.L3
.L20:
	movq	-232(%rbp), %rax
	jmp	.L3
.L19:
	cmpl	$1073741824, -196(%rbp)
	jne	.L22
	movsd	-232(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	jmp	.L3
.L22:
	cmpl	$1071644672, -196(%rbp)
	jne	.L11
	cmpl	$0, -204(%rbp)
	js	.L11
	movq	-232(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_sqrt@PLT
	movq	%xmm0, %rax
	jmp	.L3
.L11:
	movq	-232(%rbp), %rax
	movq	%rax, %xmm0
	call	libmin_fabs@PLT
	movq	%xmm0, %rax
	movq	%rax, -160(%rbp)
	cmpl	$0, -200(%rbp)
	jne	.L23
	cmpl	$2146435072, -208(%rbp)
	je	.L24
	cmpl	$0, -208(%rbp)
	je	.L24
	cmpl	$1072693248, -208(%rbp)
	jne	.L23
.L24:
	movsd	-160(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	cmpl	$0, -196(%rbp)
	jns	.L25
	movsd	.LC0(%rip), %xmm0
	divsd	-168(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
.L25:
	cmpl	$0, -204(%rbp)
	jns	.L26
	movl	-208(%rbp), %eax
	subl	$1072693248, %eax
	orl	-216(%rbp), %eax
	testl	%eax, %eax
	jne	.L27
	movsd	-168(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm0, %xmm1
	movsd	-168(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	jmp	.L26
.L27:
	cmpl	$1, -216(%rbp)
	jne	.L26
	movsd	-168(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
.L26:
	movq	-168(%rbp), %rax
	jmp	.L3
.L23:
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -128(%rbp)
	cmpl	$0, -204(%rbp)
	jns	.L28
	cmpl	$0, -216(%rbp)
	jne	.L29
	movsd	-232(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm0, %xmm1
	movsd	-232(%rbp), %xmm0
	subsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L29:
	cmpl	$1, -216(%rbp)
	jne	.L28
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -128(%rbp)
.L28:
	cmpl	$1105199104, -188(%rbp)
	jle	.L30
	cmpl	$1139802112, -188(%rbp)
	jle	.L31
	cmpl	$1072693247, -208(%rbp)
	jg	.L32
	cmpl	$0, -196(%rbp)
	jns	.L33
	movsd	.LC4(%rip), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L33:
	movsd	.LC5(%rip), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L32:
	cmpl	$1072693247, -208(%rbp)
	jle	.L31
	cmpl	$0, -196(%rbp)
	jle	.L35
	movsd	.LC4(%rip), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L35:
	movsd	.LC5(%rip), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L31:
	cmpl	$1072693246, -208(%rbp)
	jg	.L37
	cmpl	$0, -196(%rbp)
	jns	.L38
	movsd	.LC4(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-128(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L38:
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-128(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L37:
	cmpl	$1072693248, -208(%rbp)
	jle	.L40
	cmpl	$0, -196(%rbp)
	jle	.L41
	movsd	.LC4(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-128(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L41:
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-128(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L40:
	movsd	-160(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm2
	movsd	.LC6(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	.LC7(%rip), %xmm0
	subsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	-24(%rbp), %xmm2
	movsd	.LC8(%rip), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	.LC10(%rip), %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	.LC11(%rip), %xmm1
	mulsd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-120(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-120(%rbp), %xmm1
	movsd	-112(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	jmp	.L43
.L30:
	movl	$0, -212(%rbp)
	cmpl	$1048575, -208(%rbp)
	jg	.L44
	movsd	.LC12(%rip), %xmm0
	movsd	-160(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	subl	$53, -212(%rbp)
	movsd	-160(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -208(%rbp)
.L44:
	movl	-208(%rbp), %eax
	sarl	$20, %eax
	subl	$1023, %eax
	addl	%eax, -212(%rbp)
	movl	-208(%rbp), %eax
	andl	$1048575, %eax
	movl	%eax, -184(%rbp)
	movl	-184(%rbp), %eax
	orl	$1072693248, %eax
	movl	%eax, -208(%rbp)
	cmpl	$235662, -184(%rbp)
	jg	.L45
	movl	$0, -220(%rbp)
	jmp	.L46
.L45:
	cmpl	$767609, -184(%rbp)
	jg	.L47
	movl	$1, -220(%rbp)
	jmp	.L46
.L47:
	movl	$0, -220(%rbp)
	addl	$1, -212(%rbp)
	subl	$1048576, -208(%rbp)
.L46:
	movsd	-160(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	-208(%rbp), %edx
	movslq	%edx, %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
	movl	-220(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bp(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-160(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movl	-220(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bp(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movapd	%xmm0, %xmm1
	addsd	-160(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-120(%rbp), %xmm0
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-96(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	-208(%rbp), %edx
	sarl	%edx
	orl	$536870912, %edx
	leal	524288(%rdx), %ecx
	movl	-220(%rbp), %edx
	sall	$18, %edx
	addl	%ecx, %edx
	movslq	%edx, %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movl	-220(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	bp(%rip), %rax
	movsd	(%rdx,%rax), %xmm2
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	-160(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-96(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-88(%rbp), %xmm1
	movsd	-120(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1
	mulsd	-80(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-104(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LC13(%rip), %xmm0
	movapd	%xmm0, %xmm2
	mulsd	-64(%rbp), %xmm2
	movsd	.LC14(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	-64(%rbp), %xmm2
	movsd	.LC15(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	-64(%rbp), %xmm2
	movsd	.LC16(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	-64(%rbp), %xmm2
	movsd	.LC17(%rip), %xmm0
	addsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm2
	mulsd	-64(%rbp), %xmm2
	movsd	.LC18(%rip), %xmm0
	addsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-96(%rbp), %xmm0
	addsd	-104(%rbp), %xmm0
	mulsd	-72(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-96(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm1
	movsd	.LC19(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movsd	.LC19(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	subsd	-64(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-96(%rbp), %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-72(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-88(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-120(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-152(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-120(%rbp), %xmm1
	movsd	-112(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	.LC20(%rip), %xmm0
	movsd	-152(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC21(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-152(%rbp), %xmm1
	movsd	.LC22(%rip), %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movl	-220(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dp_l(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-212(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-40(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	addsd	-32(%rbp), %xmm1
	movl	-220(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dp_h(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-144(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	movl	-220(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	dp_h(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	subsd	-40(%rbp), %xmm1
	movsd	-32(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
.L43:
	movsd	-240(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-240(%rbp), %xmm0
	subsd	-8(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-144(%rbp), %xmm1
	movsd	-240(%rbp), %xmm0
	mulsd	-136(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-8(%rbp), %xmm0
	mulsd	-144(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-48(%rbp), %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -184(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, -180(%rbp)
	cmpl	$1083179007, -184(%rbp)
	jle	.L48
	movl	-184(%rbp), %eax
	subl	$1083179008, %eax
	orl	-180(%rbp), %eax
	testl	%eax, %eax
	je	.L49
	movsd	.LC4(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-128(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L49:
	movsd	.LC23(%rip), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	-168(%rbp), %xmm1
	subsd	-152(%rbp), %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L50
	movsd	.LC4(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-128(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L48:
	movl	-184(%rbp), %eax
	andl	$2147483647, %eax
	cmpl	$1083231231, %eax
	jle	.L50
	movl	-184(%rbp), %eax
	leal	1064252416(%rax), %edx
	movl	-180(%rbp), %eax
	orl	%edx, %eax
	testl	%eax, %eax
	je	.L52
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-128(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L52:
	movsd	-168(%rbp), %xmm0
	subsd	-152(%rbp), %xmm0
	comisd	-48(%rbp), %xmm0
	jb	.L50
	movsd	.LC5(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-128(%rbp), %xmm1
	movsd	.LC5(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	jmp	.L3
.L50:
	movl	-184(%rbp), %eax
	andl	$2147483647, %eax
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	sarl	$20, %eax
	subl	$1023, %eax
	movl	%eax, -220(%rbp)
	movl	$0, -212(%rbp)
	cmpl	$1071644672, -180(%rbp)
	jle	.L54
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	$1048576, %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	-184(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -212(%rbp)
	movl	-212(%rbp), %eax
	sarl	$20, %eax
	andl	$2047, %eax
	subl	$1023, %eax
	movl	%eax, -220(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdx
	movl	-220(%rbp), %eax
	movl	$-1048576, %esi
	movl	%eax, %ecx
	sarl	%cl, %esi
	movl	%esi, %eax
	andl	-212(%rbp), %eax
	cltq
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	-212(%rbp), %eax
	andl	$1048575, %eax
	orl	$1048576, %eax
	movl	%eax, %edx
	movl	$20, %eax
	subl	-220(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -212(%rbp)
	cmpl	$0, -184(%rbp)
	jns	.L55
	negl	-212(%rbp)
.L55:
	movsd	-152(%rbp), %xmm0
	subsd	-24(%rbp), %xmm0
	movsd	%xmm0, -152(%rbp)
.L54:
	movsd	-48(%rbp), %xmm0
	addsd	-152(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movabsq	$-4294967296, %rdx
	andq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC24(%rip), %xmm0
	movsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-24(%rbp), %xmm0
	movapd	%xmm0, %xmm2
	subsd	-152(%rbp), %xmm2
	movsd	-48(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC25(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC26(%rip), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-120(%rbp), %xmm0
	addsd	-112(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-120(%rbp), %xmm1
	movsd	-112(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-168(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC27(%rip), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	.LC28(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	.LC29(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	.LC30(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	.LC31(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	-168(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-168(%rbp), %xmm0
	mulsd	-144(%rbp), %xmm0
	movsd	-144(%rbp), %xmm1
	movsd	.LC32(%rip), %xmm2
	subsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	-168(%rbp), %xmm1
	mulsd	-16(%rbp), %xmm1
	addsd	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-168(%rbp), %xmm1
	movsd	.LC0(%rip), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	-168(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, -184(%rbp)
	movl	-212(%rbp), %eax
	sall	$20, %eax
	addl	%eax, -184(%rbp)
	movl	-184(%rbp), %eax
	sarl	$20, %eax
	testl	%eax, %eax
	jg	.L56
	movl	-212(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %edi
	movq	%rax, %xmm0
	call	libmin_scalbn@PLT
	movq	%xmm0, %rax
	movq	%rax, -168(%rbp)
	jmp	.L57
.L56:
	movsd	-168(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	%eax, %eax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	-184(%rbp), %edx
	movslq	%edx, %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movsd	-176(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)
.L57:
	movsd	-128(%rbp), %xmm0
	mulsd	-168(%rbp), %xmm0
	movq	%xmm0, %rax
.L3:
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_pow, .-libmin_pow
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	0
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	-1074790400
	.align 8
.LC4:
	.long	-2013235812
	.long	2117592124
	.align 8
.LC5:
	.long	-1023872167
	.long	27618847
	.align 8
.LC6:
	.long	0
	.long	1070596096
	.align 8
.LC7:
	.long	1431655765
	.long	1070945621
	.align 8
.LC8:
	.long	0
	.long	1071644672
	.align 8
.LC9:
	.long	1610612736
	.long	1073157447
	.align 8
.LC10:
	.long	-128065724
	.long	1045736971
	.align 8
.LC11:
	.long	1697350398
	.long	1073157447
	.align 8
.LC12:
	.long	0
	.long	1128267776
	.align 8
.LC13:
	.long	1246056175
	.long	1070235176
	.align 8
.LC14:
	.long	-1815487643
	.long	1070433866
	.align 8
.LC15:
	.long	-1457700607
	.long	1070691424
	.align 8
.LC16:
	.long	1368335949
	.long	1070945621
	.align 8
.LC17:
	.long	-613438465
	.long	1071345078
	.align 8
.LC18:
	.long	858993411
	.long	1071854387
	.align 8
.LC19:
	.long	0
	.long	1074266112
	.align 8
.LC20:
	.long	-536870912
	.long	1072613129
	.align 8
.LC21:
	.long	341508597
	.long	-1103220768
	.align 8
.LC22:
	.long	-600177667
	.long	1072613129
	.align 8
.LC23:
	.long	1697350398
	.long	1016534343
	.align 8
.LC24:
	.long	0
	.long	1072049731
	.align 8
.LC25:
	.long	-17155601
	.long	1072049730
	.align 8
.LC26:
	.long	212364345
	.long	-1105175455
	.align 8
.LC27:
	.long	1925096656
	.long	1046886249
	.align 8
.LC28:
	.long	-976065551
	.long	-1094992575
	.align 8
.LC29:
	.long	-1356472788
	.long	1058100842
	.align 8
.LC30:
	.long	381599123
	.long	-1083784852
	.align 8
.LC31:
	.long	1431655742
	.long	1069897045
	.align 8
.LC32:
	.long	0
	.long	1073741824
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
