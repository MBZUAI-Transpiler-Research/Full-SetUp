	.file	"spelt2num.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	p
	.section	.rodata
	.align	3
.LC0:
	.string	"fifty-two trillion six-hundred and seventy five million and sixty-one thousand and five-hundred sixty-two\n"
	.section	.data.rel.local,"aw"
	.align	3
	.type	p, @object
	.size	p, 8
p:
	.dword	.LC0
	.globl	n
	.bss
	.align	3
	.type	n, @object
	.size	n, 8
n:
	.zero	8
	.globl	u
	.align	3
	.type	u, @object
	.size	u, 8
u:
	.zero	8
	.globl	m
	.align	3
	.type	m, @object
	.size	m, 8
m:
	.zero	8
	.globl	b
	.align	3
	.type	b, @object
	.size	b, 8
b:
	.zero	8
	.section	.rodata
	.align	3
.LC3:
	.string	"%llx\n"
	.align	3
.LC1:
	.string	"1+DIY/.K430x9G(kC["
	.align	3
.LC2:
	.string	"ynwtsflrabg"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	j	.L2
.L21:
	lla	a5,b
	ld	a4,0(a5)
	srai	a5,a4,63
	srli	a5,a5,58
	add	a4,a4,a5
	andi	a4,a4,63
	sub	a5,a4,a5
	addi	a5,a5,-25
	sd	a5,-24(s0)
	j	.L3
.L18:
	lla	a5,n
	li	a4,19
	sd	a4,0(a5)
	j	.L4
.L16:
	lla	a5,n
	ld	a5,0(a5)
	addi	a3,a5,-1
	lla	a4,n
	sd	a3,0(a4)
	li	a4,8192
	addi	a4,a4,-2015
	rem	a5,a4,a5
	sext.w	a5,a5
	slliw	a5,a5,2
	sext.w	a5,a5
	li	a4,1
	sll	a4,a4,a5
	lla	a5,u
	sd	a4,0(a5)
	lla	a5,n
	ld	a5,0(a5)
	lla	a4,.LC1
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	addiw	a5,a5,-42
	sext.w	a5,a5
	andi	a4,a5,255
	lla	a5,b
	ld	a5,0(a5)
	bne	a4,a5,.L23
	lla	a5,n
	ld	a4,0(a5)
	li	a5,15
	bgt	a4,a5,.L6
	lla	a5,n
	ld	a4,0(a5)
	li	a5,9
	ble	a4,a5,.L7
	lla	a5,m
	ld	a4,0(a5)
	lla	a5,u
	ld	a5,0(a5)
	rem	a4,a4,a5
	lla	a5,u
	ld	a5,0(a5)
	addi	a5,a5,-1
	mul	a5,a4,a5
	j	.L13
.L7:
	ld	a4,-24(s0)
	li	a5,-1
	beq	a4,a5,.L9
	ld	a5,-24(s0)
	bne	a5,zero,.L10
	li	a5,16
	j	.L11
.L10:
	li	a5,0
.L11:
	lla	a4,n
	ld	a4,0(a4)
	add	a5,a5,a4
	j	.L13
.L9:
	lla	a5,n
	ld	a5,0(a5)
	slli	a5,a5,4
	j	.L13
.L6:
	lla	a5,n
	ld	a5,0(a5)
.L13:
	lla	a4,m
	ld	a4,0(a4)
	add	a4,a5,a4
	lla	a5,m
	sd	a4,0(a5)
	lla	a5,b
	sd	zero,0(a5)
.L23:
	nop
.L4:
	lla	a5,n
	ld	a5,0(a5)
	bne	a5,zero,.L16
	lla	a5,b
	ld	a5,0(a5)
	srai	a4,a5,63
	andi	a4,a4,7
	add	a5,a4,a5
	srai	a5,a5,3
	mv	a4,a5
	lla	a5,b
	sd	a4,0(a5)
.L3:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,46
	bgt	a4,a5,.L17
	lla	a5,b
	ld	a5,0(a5)
	bne	a5,zero,.L18
.L17:
	lla	a5,n
	ld	a4,0(a5)
	li	a5,11
	rem	a4,a4,a5
	lla	a5,n
	sd	a4,0(a5)
	lla	a5,n
	ld	a5,0(a5)
	lla	a4,.LC2
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a4,a5
	lw	a5,-28(s0)
	sext.w	a5,a5
	bne	a5,a4,.L19
	lla	a5,b
	ld	a5,0(a5)
	slli	a4,a5,3
	lla	a5,n
	ld	a5,0(a5)
	add	a5,a4,a5
	j	.L20
.L19:
	lla	a5,b
	ld	a5,0(a5)
.L20:
	lla	a4,b
	sd	a5,0(a4)
.L2:
	lla	a5,n
	ld	a5,0(a5)
	addi	a3,a5,1
	lla	a4,n
	sd	a3,0(a4)
	bne	a5,zero,.L21
	lla	a5,p
	ld	a5,0(a5)
	addi	a3,a5,1
	lla	a4,p
	sd	a3,0(a4)
	lbu	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L21
	lla	a5,m
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
