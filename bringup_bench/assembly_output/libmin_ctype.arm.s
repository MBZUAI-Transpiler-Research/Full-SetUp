	.arch armv8-a
	.file	"libmin_ctype.c"
	.text
	.global	_ctype
	.data
	.align	3
	.type	_ctype, %object
	.size	_ctype, 514
_ctype:
	.hword	0
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	40
	.hword	40
	.hword	40
	.hword	40
	.hword	40
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	32
	.hword	72
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	132
	.hword	132
	.hword	132
	.hword	132
	.hword	132
	.hword	132
	.hword	132
	.hword	132
	.hword	132
	.hword	132
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	129
	.hword	129
	.hword	129
	.hword	129
	.hword	129
	.hword	129
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	1
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	130
	.hword	130
	.hword	130
	.hword	130
	.hword	130
	.hword	130
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	2
	.hword	16
	.hword	16
	.hword	16
	.hword	16
	.hword	32
	.zero	256
	.global	_pctype
	.section	.data.rel.local,"aw"
	.align	3
	.type	_pctype, %object
	.size	_pctype, 8
_pctype:
	.xword	_ctype+2
	.text
	.align	2
	.global	_isctype
	.type	_isctype, %function
_isctype:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	cmp	w0, 256
	bhi	.L2
	adrp	x0, _pctype
	add	x0, x0, :lo12:_pctype
	ldr	x1, [x0]
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 8]
	and	w0, w1, w0
	b	.L3
.L2:
	mov	w0, 0
.L3:
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	_isctype, .-_isctype
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
