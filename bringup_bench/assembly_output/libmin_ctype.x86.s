	.file	"libmin_ctype.c"
	.text
	.globl	_ctype
	.data
	.align 32
	.type	_ctype, @object
	.size	_ctype, 514
_ctype:
	.value	0
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	40
	.value	40
	.value	40
	.value	40
	.value	40
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	32
	.value	72
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	132
	.value	132
	.value	132
	.value	132
	.value	132
	.value	132
	.value	132
	.value	132
	.value	132
	.value	132
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	129
	.value	129
	.value	129
	.value	129
	.value	129
	.value	129
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	1
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	16
	.value	130
	.value	130
	.value	130
	.value	130
	.value	130
	.value	130
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	16
	.value	16
	.value	16
	.value	16
	.value	32
	.zero	256
	.globl	_pctype
	.section	.data.rel.local,"aw"
	.align 8
	.type	_pctype, @object
	.size	_pctype, 8
_pctype:
	.quad	_ctype+2
	.text
	.globl	_isctype
	.type	_isctype, @function
_isctype:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cmpl	$256, %eax
	ja	.L2
	movq	_pctype(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	-8(%rbp), %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_isctype, .-_isctype
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
