	.file	"boyer-moore-search.c"
	.text
	.globl	inp_pat
	.data
	.align 16
	.type	inp_pat, @object
	.size	inp_pat, 22
inp_pat:
	.string	"NzZVOzZXNoGXMl8yxesyY"
	.globl	inp_txt
	.align 32
	.type	inp_txt, @object
	.size	inp_txt, 761
inp_txt:
	.ascii	"zJfMus2WzLnMr82T4bmuzKTNjcylzYfNiGjMssyBZc2PzZPMvMyXzJnMvMyj"
	.ascii	"zZQgzYfMnMyxzKDNk82NzZVOzZXNoGXMl8yxesyYzJ3MnMy6zZlwzKTMusy5"
	.ascii	"zY3Mr82aZcygzLvMoM2ccsyozKTNjcy6zJbNlMyWzJZkzKDMn8ytzKzMnc2f"
	.ascii	"acymzZbMqc2TzZTMpGHMoMyXzKzNicyZbs2azZwgzLvMnsywzZrNhWjMtc2J"
	.ascii	"acyzzJ52zKLNh+G4mc2OzZ8t0onMrcypzLzNlG3MpMytzKtpzZXNh8ydzKZu"
	.ascii	"zJfNmeG4jcyfIMyvzLLNlc2ex6vMn8yvzLDMss2ZzLvMnWYgzKrMsMywzJfM"
	.ascii	"lsytzJjNmGPMps2NzLLMns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnN"
	.ascii	"jnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzN"
	.ascii	"oWzMssyrzLPNjcypZ8yhzJ/M"
	.string	"vMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1X"
	.text
	.globl	badCharHeuristic
	.type	badCharHeuristic, @function
badCharHeuristic:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	$-1, (%rax)
	addl	$1, -8(%rbp)
.L2:
	cmpl	$255, -8(%rbp)
	jle	.L3
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
.L4:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L5
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	badCharHeuristic, .-badCharHeuristic
	.globl	search
	.type	search, @function
search:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1104, %rsp
	movq	%rdi, -1080(%rbp)
	movl	%esi, -1084(%rbp)
	movq	%rdx, -1096(%rbp)
	movl	%ecx, -1088(%rbp)
	movq	%r8, -1104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-1040(%rbp), %rdx
	movl	-1088(%rbp), %ecx
	movq	-1096(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	badCharHeuristic
	movl	$0, -1060(%rbp)
	movl	$0, -1056(%rbp)
	jmp	.L7
.L17:
	movl	-1084(%rbp), %eax
	subl	-1088(%rbp), %eax
	cmpl	%eax, -1060(%rbp)
	jg	.L19
	movl	-1088(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -1052(%rbp)
	jmp	.L10
.L12:
	subl	$1, -1052(%rbp)
.L10:
	cmpl	$0, -1052(%rbp)
	js	.L11
	movl	-1052(%rbp), %eax
	movslq	%eax, %rdx
	movq	-1096(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-1060(%rbp), %ecx
	movl	-1052(%rbp), %eax
	addl	%ecx, %eax
	movslq	%eax, %rcx
	movq	-1080(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L12
.L11:
	movl	-1052(%rbp), %eax
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	%eax, -1048(%rbp)
	cmpl	$0, -1048(%rbp)
	je	.L13
	movl	-1060(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-1104(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
	movl	-1060(%rbp), %edx
	movl	-1088(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -1084(%rbp)
	jle	.L14
	movl	-1060(%rbp), %edx
	movl	-1088(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-1080(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cltq
	movl	-1040(%rbp,%rax,4), %edx
	movl	-1088(%rbp), %eax
	subl	%edx, %eax
	jmp	.L15
.L14:
	movl	$1, %eax
.L15:
	addl	%eax, -1060(%rbp)
	jmp	.L16
.L13:
	movl	-1060(%rbp), %edx
	movl	-1052(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-1080(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	movl	-1052(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -1044(%rbp)
	movl	-1044(%rbp), %eax
	movl	$1, %edx
	testl	%eax, %eax
	cmovle	%edx, %eax
	addl	%eax, -1060(%rbp)
.L16:
	addl	$1, -1056(%rbp)
.L7:
	movl	-1084(%rbp), %eax
	subl	-1088(%rbp), %eax
	cmpl	%eax, -1056(%rbp)
	jle	.L17
	jmp	.L9
.L19:
	nop
.L9:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	search, .-search
	.section	.rodata
.LC0:
	.string	"n = %d, m = %d\n"
.LC1:
	.string	"pattern occurs at shift = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	leaq	inp_txt(%rip), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movl	%eax, -80(%rbp)
	leaq	inp_pat(%rip), %rax
	movq	%rax, %rdi
	call	libmin_strlen@PLT
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	cltq
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L21:
	cmpq	%rdx, %rsp
	je	.L22
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L21
.L22:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L23
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L23:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -64(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L24
.L25:
	movl	-96(%rbp), %eax
	cltq
	leaq	inp_txt(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-64(%rbp), %rdx
	movl	-96(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -96(%rbp)
.L24:
	movl	-96(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L25
	movl	-76(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -56(%rbp)
	cltq
	movl	$16, %edx
	subq	$1, %rdx
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L26:
	cmpq	%rdx, %rsp
	je	.L27
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L26
.L27:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L28
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L28:
	movq	%rsp, %rax
	addq	$0, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L29
.L30:
	movl	-92(%rbp), %eax
	cltq
	leaq	inp_pat(%rip), %rdx
	movzbl	(%rax,%rdx), %ecx
	movq	-48(%rbp), %rdx
	movl	-92(%rbp), %eax
	cltq
	movb	%cl, (%rdx,%rax)
	addl	$1, -92(%rbp)
.L29:
	movl	-92(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.L30
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -40(%rbp)
	cltq
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L31:
	cmpq	%rdx, %rsp
	je	.L32
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L31
.L32:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L33
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L33:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L34
.L35:
	movq	-32(%rbp), %rax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	movl	$0, (%rax,%rdx,4)
	addl	$1, -88(%rbp)
.L34:
	movl	-88(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L35
	movq	-32(%rbp), %rdi
	movl	-76(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	-80(%rbp), %esi
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	search
	movl	$0, -84(%rbp)
	jmp	.L36
.L38:
	movq	-32(%rbp), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	.L37
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
.L37:
	addl	$1, -84(%rbp)
.L36:
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.L38
	call	libmin_success@PLT
	movl	$0, %eax
	movq	%rbx, %rsp
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
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
