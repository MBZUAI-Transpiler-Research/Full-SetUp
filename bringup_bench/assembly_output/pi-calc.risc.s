	.file	"pi-calc.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	a
	.bss
	.align	3
	.type	a, @object
	.size	a, 210056
a:
	.zero	210056
	.globl	b
	.align	2
	.type	b, @object
	.size	b, 4
b:
	.zero	4
	.globl	c
	.data
	.align	2
	.type	c, @object
	.size	c, 4
c:
	.word	52514
	.globl	d
	.bss
	.align	2
	.type	d, @object
	.size	d, 4
d:
	.zero	4
	.globl	e
	.align	2
	.type	e, @object
	.size	e, 4
e:
	.zero	4
	.globl	f
	.data
	.align	2
	.type	f, @object
	.size	f, 4
f:
	.word	10000
	.globl	g
	.bss
	.align	2
	.type	g, @object
	.size	g, 4
g:
	.zero	4
	.globl	h
	.align	2
	.type	h, @object
	.size	h, 4
h:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%04d"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	j	.L2
.L7:
	lla	a5,d
	lw	a4,0(a5)
	lla	a5,f
	lw	a5,0(a5)
	remw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,d
	sw	a4,0(a5)
	lla	a5,d
	lw	a4,0(a5)
	lla	a5,e
	sw	a4,0(a5)
	j	.L3
.L6:
	lla	a5,d
	lw	a4,0(a5)
	lla	a5,b
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,h
	lw	a5,0(a5)
	beq	a5,zero,.L4
	lla	a5,b
	lw	a5,0(a5)
	lla	a3,a
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	j	.L5
.L4:
	lla	a5,f
	lw	a5,0(a5)
	mv	a3,a5
	li	a5,5
	divw	a5,a3,a5
	sext.w	a5,a5
.L5:
	lla	a3,f
	lw	a3,0(a3)
	mulw	a5,a5,a3
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,d
	sw	a4,0(a5)
	lla	a5,d
	lw	a3,0(a5)
	lla	a5,g
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lla	a5,g
	sw	a4,0(a5)
	lla	a5,g
	lw	a4,0(a5)
	lla	a5,b
	lw	a5,0(a5)
	remw	a4,a3,a4
	sext.w	a4,a4
	lla	a3,a
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lla	a5,d
	lw	a4,0(a5)
	lla	a5,g
	lw	a5,0(a5)
	divw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,d
	sw	a4,0(a5)
.L3:
	lla	a5,b
	lw	a5,0(a5)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lla	a5,b
	sw	a4,0(a5)
	lla	a5,b
	lw	a5,0(a5)
	slliw	a5,a5,1
	sext.w	a4,a5
	lla	a5,g
	sw	a4,0(a5)
	lla	a5,g
	lw	a5,0(a5)
	bne	a5,zero,.L6
	lla	a5,d
	lw	a4,0(a5)
	lla	a5,f
	lw	a5,0(a5)
	divw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,e
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
	mv	a5,a0
	mv	a4,a5
	lla	a5,h
	sw	a4,0(a5)
.L2:
	lla	a5,c
	lw	a5,0(a5)
	addiw	a5,a5,-14
	sext.w	a4,a5
	lla	a5,c
	sw	a4,0(a5)
	lla	a5,c
	lw	a4,0(a5)
	lla	a5,b
	sw	a4,0(a5)
	lla	a5,b
	lw	a5,0(a5)
	bne	a5,zero,.L7
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
