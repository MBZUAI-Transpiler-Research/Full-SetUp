	.file	"libmin_ctype.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	_ctype
	.data
	.align	3
	.type	_ctype, @object
	.size	_ctype, 514
_ctype:
	.half	0
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	40
	.half	40
	.half	40
	.half	40
	.half	40
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	32
	.half	72
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	132
	.half	132
	.half	132
	.half	132
	.half	132
	.half	132
	.half	132
	.half	132
	.half	132
	.half	132
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	129
	.half	129
	.half	129
	.half	129
	.half	129
	.half	129
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	1
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	16
	.half	130
	.half	130
	.half	130
	.half	130
	.half	130
	.half	130
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	2
	.half	16
	.half	16
	.half	16
	.half	16
	.half	32
	.zero	256
	.globl	_pctype
	.section	.data.rel.local,"aw"
	.align	3
	.type	_pctype, @object
	.size	_pctype, 8
_pctype:
	.dword	_ctype+2
	.text
	.align	1
	.globl	_isctype
	.type	_isctype, @function
_isctype:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,256
	bgtu	a4,a5,.L2
	lla	a5,_pctype
	ld	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,1
	add	a5,a4,a5
	lhu	a5,0(a5)
	sext.w	a5,a5
	lw	a4,-24(s0)
	and	a5,a5,a4
	sext.w	a5,a5
	j	.L3
.L2:
	li	a5,0
.L3:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	_isctype, .-_isctype
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
