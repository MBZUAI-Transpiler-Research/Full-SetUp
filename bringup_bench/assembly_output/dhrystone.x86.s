	.file	"dhrystone.c"
	.text
	.local	Ptr_Glob
	.comm	Ptr_Glob,8,8
	.local	Next_Ptr_Glob
	.comm	Next_Ptr_Glob,8,8
	.local	rec1
	.comm	rec1,56,32
	.local	rec2
	.comm	rec2,56,32
	.globl	Int_Glob
	.bss
	.align 4
	.type	Int_Glob, @object
	.size	Int_Glob, 4
Int_Glob:
	.zero	4
	.local	Bool_Glob
	.comm	Bool_Glob,4,4
	.globl	Ch_1_Glob
	.type	Ch_1_Glob, @object
	.size	Ch_1_Glob, 1
Ch_1_Glob:
	.zero	1
	.local	Ch_2_Glob
	.comm	Ch_2_Glob,1,1
	.local	Arr_1_Glob
	.comm	Arr_1_Glob,200,32
	.local	Arr_2_Glob
	.comm	Arr_2_Glob,10000,32
	.globl	Pnumber_of_runs
	.align 4
	.type	Pnumber_of_runs, @object
	.size	Pnumber_of_runs, 4
Pnumber_of_runs:
	.zero	4
	.section	.rodata
	.align 8
.LC0:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
	.align 8
.LC1:
	.string	"DHRYSTONE PROGRAM, 1'ST STRING"
.LC2:
	.string	"\n"
	.align 8
.LC3:
	.string	"Dhrystone Benchmark, Version 2.1 (Language: C)\n"
	.align 8
.LC4:
	.string	"Execution starts, %d runs through Dhrystone\n"
	.align 8
.LC5:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.align 8
.LC6:
	.string	"DHRYSTONE PROGRAM, 3'RD STRING"
.LC7:
	.string	"Execution ends\n"
	.align 8
.LC8:
	.string	"Final values of the variables used in the benchmark:\n"
.LC9:
	.string	"Int_Glob:            %d\n"
.LC10:
	.string	"        should be:   %d\n"
.LC11:
	.string	"Bool_Glob:           %d\n"
.LC12:
	.string	"Ch_1_Glob:           %c\n"
.LC13:
	.string	"        should be:   %c\n"
.LC14:
	.string	"Ch_2_Glob:           %c\n"
.LC15:
	.string	"Arr_1_Glob[8]:       %d\n"
.LC16:
	.string	"Arr_2_Glob[8][7]:    %d\n"
	.align 8
.LC17:
	.string	"        should be:   Pnumber_of_runs + 10\n"
.LC18:
	.string	"Ptr_Glob->\n"
	.align 8
.LC19:
	.string	"  Ptr_Comp:          (implementation-dependent)\n"
	.align 8
.LC20:
	.string	"        should be:   (implementation-dependent)\n"
.LC21:
	.string	"  Discr:             %d\n"
.LC22:
	.string	"  Enum_Comp:         %d\n"
.LC23:
	.string	"  Int_Comp:          %d\n"
.LC24:
	.string	"  Str_Comp:          %s\n"
	.align 8
.LC25:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
.LC26:
	.string	"Next_Ptr_Glob->\n"
	.align 8
.LC27:
	.string	"        should be:   (implementation-dependent), same as above\n"
.LC28:
	.string	"Int_1_Loc:           %d\n"
.LC29:
	.string	"Int_2_Loc:           %d\n"
.LC30:
	.string	"Int_3_Loc:           %d\n"
.LC31:
	.string	"Enum_Loc:            %d\n"
.LC32:
	.string	"Str_1_Loc:           %s\n"
	.align 8
.LC33:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
.LC34:
	.string	"Str_2_Loc:           %s\n"
	.align 8
.LC35:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10, -88(%rbp)
	leaq	rec1(%rip), %rax
	movq	%rax, Next_Ptr_Glob(%rip)
	leaq	rec2(%rip), %rax
	movq	%rax, Ptr_Glob(%rip)
	movq	Ptr_Glob(%rip), %rax
	movq	Next_Ptr_Glob(%rip), %rdx
	movq	%rdx, (%rax)
	movq	Ptr_Glob(%rip), %rax
	movl	$0, 8(%rax)
	movq	Ptr_Glob(%rip), %rax
	movl	$2, 12(%rax)
	movq	Ptr_Glob(%rip), %rax
	movl	$40, 16(%rax)
	movq	Ptr_Glob(%rip), %rax
	addq	$20, %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcpy@PLT
	leaq	-80(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcpy@PLT
	movl	$10, 1628+Arr_2_Glob(%rip)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-88(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, -92(%rbp)
	jmp	.L2
.L8:
	call	Proc_5
	call	Proc_4
	movl	$2, -108(%rbp)
	movl	$3, -96(%rbp)
	leaq	-48(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcpy@PLT
	movl	$1, -100(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PFunc_2
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, Bool_Glob(%rip)
	jmp	.L3
.L4:
	movl	-108(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	leaq	-104(%rbp), %rdx
	movl	-96(%rbp), %ecx
	movl	%ecx, %esi
	movl	%eax, %edi
	call	PProc_7
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
.L3:
	movl	-108(%rbp), %eax
	cmpl	%eax, -96(%rbp)
	jg	.L4
	movl	-104(%rbp), %edx
	movl	-108(%rbp), %eax
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	Arr_2_Glob(%rip), %rax
	movq	%rax, %rsi
	leaq	Arr_1_Glob(%rip), %rax
	movq	%rax, %rdi
	call	PProc_8
	movq	Ptr_Glob(%rip), %rax
	movq	%rax, %rdi
	call	Proc_1
	movb	$65, -109(%rbp)
	jmp	.L5
.L7:
	movsbl	-109(%rbp), %eax
	movl	$67, %esi
	movl	%eax, %edi
	call	PFunc_1
	movl	%eax, %edx
	movl	-100(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L6
	leaq	-100(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	PProc_6
	leaq	-48(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcpy@PLT
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, Int_Glob(%rip)
.L6:
	movzbl	-109(%rbp), %eax
	addl	$1, %eax
	movb	%al, -109(%rbp)
.L5:
	movzbl	Ch_2_Glob(%rip), %eax
	cmpb	%al, -109(%rbp)
	jle	.L7
	movl	-108(%rbp), %eax
	movl	-96(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -96(%rbp)
	movl	-104(%rbp), %ecx
	movl	-96(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -108(%rbp)
	movl	-104(%rbp), %eax
	movl	-96(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-108(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, -96(%rbp)
	leaq	-108(%rbp), %rax
	movq	%rax, %rdi
	call	Proc_2
	addl	$1, -92(%rbp)
.L2:
	movl	-92(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jle	.L8
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	Int_Glob(%rip), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$5, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	Bool_Glob(%rip), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movzbl	Ch_1_Glob(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$65, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movzbl	Ch_2_Glob(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$66, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	32+Arr_1_Glob(%rip), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$7, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	1628+Arr_2_Glob(%rip), %eax
	movl	%eax, %esi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	Ptr_Glob(%rip), %rax
	movl	8(%rax), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	Ptr_Glob(%rip), %rax
	movl	12(%rax), %eax
	movl	%eax, %esi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$2, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	Ptr_Glob(%rip), %rax
	movl	16(%rax), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$17, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	Ptr_Glob(%rip), %rax
	addq	$20, %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	Next_Ptr_Glob(%rip), %rax
	movl	8(%rax), %eax
	movl	%eax, %esi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$0, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	Next_Ptr_Glob(%rip), %rax
	movl	12(%rax), %eax
	movl	%eax, %esi
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	Next_Ptr_Glob(%rip), %rax
	movl	16(%rax), %eax
	movl	%eax, %esi
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$18, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movq	Next_Ptr_Glob(%rip), %rax
	addq	$20, %rax
	movq	%rax, %rsi
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-108(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$5, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-96(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$13, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-104(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$7, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	movl	$1, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.type	Proc_1, @function
Proc_1:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	Ptr_Glob(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movl	$5, 16(%rax)
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	Proc_3
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L12
	movq	-24(%rbp), %rax
	movl	$6, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	12(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	PProc_6
	movq	Ptr_Glob(%rip), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	PProc_7
	jmp	.L13
.L12:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
.L13:
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	Proc_1, .-Proc_1
	.type	Proc_2, @function
Proc_2:
.LFB5:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	addl	$10, %eax
	movl	%eax, -8(%rbp)
.L17:
	movzbl	Ch_1_Glob(%rip), %eax
	cmpb	$65, %al
	jne	.L16
	subl	$1, -8(%rbp)
	movl	Int_Glob(%rip), %eax
	movl	-8(%rbp), %edx
	subl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -4(%rbp)
.L16:
	cmpl	$0, -4(%rbp)
	jne	.L17
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Proc_2, .-Proc_2
	.type	Proc_3, @function
Proc_3:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	Ptr_Glob(%rip), %rax
	testq	%rax, %rax
	je	.L20
	movq	Ptr_Glob(%rip), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L20:
	movq	Ptr_Glob(%rip), %rax
	leaq	16(%rax), %rdx
	movl	Int_Glob(%rip), %eax
	movl	%eax, %esi
	movl	$10, %edi
	call	PProc_7
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Proc_3, .-Proc_3
	.type	Proc_4, @function
Proc_4:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	Ch_1_Glob(%rip), %eax
	cmpb	$65, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	Bool_Glob(%rip), %eax
	orl	-4(%rbp), %eax
	movl	%eax, Bool_Glob(%rip)
	movb	$66, Ch_2_Glob(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Proc_4, .-Proc_4
	.type	Proc_5, @function
Proc_5:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movb	$65, Ch_1_Glob(%rip)
	movl	$0, Bool_Glob(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Proc_5, .-Proc_5
	.globl	PProc_6
	.type	PProc_6, @function
PProc_6:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	PFunc_3
	testl	%eax, %eax
	jne	.L27
	movq	-16(%rbp), %rax
	movl	$3, (%rax)
.L27:
	cmpl	$4, -4(%rbp)
	ja	.L28
	movl	-4(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L30(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L30(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L30:
	.long	.L34-.L30
	.long	.L33-.L30
	.long	.L32-.L30
	.long	.L38-.L30
	.long	.L29-.L30
	.text
.L34:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L28
.L33:
	movl	Int_Glob(%rip), %eax
	cmpl	$100, %eax
	jle	.L35
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L28
.L35:
	movq	-16(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L28
.L32:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L28
.L29:
	movq	-16(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L28
.L38:
	nop
.L28:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	PProc_6, .-PProc_6
	.globl	PProc_7
	.type	PProc_7, @function
PProc_7:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	PProc_7, .-PProc_7
	.globl	PProc_8
	.type	PProc_8, @function
PProc_8:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-40(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	cltq
	addq	$30, %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L42
.L43:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movl	%edx, (%rcx,%rax,4)
	addl	$1, -8(%rbp)
.L42:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jle	.L43
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	(%rdx,%rax,4), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	addl	$1, %ecx
	cltq
	movl	%ecx, (%rdx,%rax,4)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	4000(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	(%rsi), %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, (%rcx,%rax,4)
	movl	$5, Int_Glob(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	PProc_8, .-PProc_8
	.globl	PFunc_1
	.type	PFunc_1, @function
PFunc_1:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -20(%rbp)
	movb	%al, -24(%rbp)
	movzbl	-20(%rbp), %eax
	movb	%al, -2(%rbp)
	movzbl	-2(%rbp), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	cmpb	-24(%rbp), %al
	je	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movzbl	-2(%rbp), %eax
	movb	%al, Ch_1_Glob(%rip)
	movl	$1, %eax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	PFunc_1, .-PFunc_1
	.globl	PFunc_2
	.type	PFunc_2, @function
PFunc_2:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$0, -5(%rbp)
	movl	$2, -4(%rbp)
	jmp	.L49
.L51:
	movl	-4(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	PFunc_1
	testl	%eax, %eax
	jne	.L49
	movb	$65, -5(%rbp)
	addl	$1, -4(%rbp)
.L49:
	cmpl	$2, -4(%rbp)
	jle	.L51
	cmpb	$86, -5(%rbp)
	jle	.L52
	cmpb	$89, -5(%rbp)
	jg	.L52
	movl	$7, -4(%rbp)
.L52:
	cmpb	$82, -5(%rbp)
	jne	.L53
	movl	$1, %eax
	jmp	.L54
.L53:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	libmin_strcmp@PLT
	testl	%eax, %eax
	jle	.L55
	addl	$7, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, Int_Glob(%rip)
	movl	$1, %eax
	jmp	.L54
.L55:
	movl	$0, %eax
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	PFunc_2, .-PFunc_2
	.globl	PFunc_3
	.type	PFunc_3, @function
PFunc_3:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$2, -4(%rbp)
	jne	.L57
	movl	$1, %eax
	jmp	.L58
.L57:
	movl	$0, %eax
.L58:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	PFunc_3, .-PFunc_3
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
