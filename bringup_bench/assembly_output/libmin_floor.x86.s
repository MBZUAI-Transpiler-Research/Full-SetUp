	.file	"libmin_floor.c"
	.text
	.section	.rodata
	.align 8
	.type	toint0, @object
	.size	toint0, 8
toint0:
	.long	0
	.long	1127219200
	.text
	.globl	libmin_floor
	.type	libmin_floor, @function
libmin_floor:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	shrq	$52, %rax
	andl	$2047, %eax
	movl	%eax, -36(%rbp)
	cmpl	$1074, -36(%rbp)
	jg	.L2
	pxor	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jp	.L3
	pxor	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jne	.L3
.L2:
	movsd	-56(%rbp), %xmm0
	jmp	.L13
.L3:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	.L6
	movsd	.LC1(%rip), %xmm2
	movsd	-56(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm2, %xmm1
	movsd	.LC1(%rip), %xmm0
	addsd	%xmm1, %xmm0
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	jmp	.L7
.L6:
	movsd	.LC1(%rip), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.L7:
	cmpl	$1022, -36(%rbp)
	jg	.L8
	movsd	-24(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jns	.L9
	movsd	.LC2(%rip), %xmm0
	jmp	.L13
.L9:
	pxor	%xmm0, %xmm0
	jmp	.L13
.L8:
	movsd	-24(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L15
	movsd	-56(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	.LC3(%rip), %xmm1
	subsd	%xmm1, %xmm0
	jmp	.L13
.L15:
	movsd	-56(%rbp), %xmm0
	addsd	-24(%rbp), %xmm0
.L13:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	libmin_floor, .-libmin_floor
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1127219200
	.align 8
.LC2:
	.long	0
	.long	-1074790400
	.align 8
.LC3:
	.long	0
	.long	1072693248
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
