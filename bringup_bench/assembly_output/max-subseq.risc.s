	.file	"max-subseq.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	S1
	.data
	.align	3
	.type	S1, @object
	.size	S1, 20
S1:
	.string	"ACADBFEDSFSDFDSEFE"
	.zero	1
	.globl	S2
	.align	3
	.type	S2, @object
	.size	S2, 20
S2:
	.string	"CBDAEFEFESAFEASDD"
	.zero	2
	.globl	i
	.bss
	.align	2
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	j
	.align	2
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.globl	m
	.align	2
	.type	m, @object
	.size	m, 4
m:
	.zero	4
	.globl	n
	.align	2
	.type	n, @object
	.size	n, 4
n:
	.zero	4
	.globl	LCS_table
	.align	3
	.type	LCS_table, @object
	.size	LCS_table, 6400
LCS_table:
	.zero	6400
	.globl	b
	.align	3
	.type	b, @object
	.size	b, 1600
b:
	.zero	1600
	.section	.rodata
	.align	3
.LC0:
	.string	"LCS: %s"
	.text
	.align	1
	.globl	lcsAlgo
	.type	lcsAlgo, @function
lcsAlgo:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	la	a1,__stack_chk_guard
	ld	a0, 0(a1)
	sd	a0, -40(s0)
	li	a0, 0
	mv	a1,sp
	mv	s1,a1
	lla	a1,i
	sw	zero,0(a1)
	j	.L2
.L3:
	lla	a1,i
	lw	a0,0(a1)
	lla	t3,LCS_table
	mv	a1,a0
	slli	a1,a1,2
	add	a1,a1,a0
	slli	a1,a1,5
	add	a1,t3,a1
	sw	zero,0(a1)
	lla	a1,i
	lw	a1,0(a1)
	addiw	a1,a1,1
	sext.w	a0,a1
	lla	a1,i
	sw	a0,0(a1)
.L2:
	lla	a1,i
	lw	a0,0(a1)
	lla	a1,m
	lw	a1,0(a1)
	ble	a0,a1,.L3
	lla	a1,i
	sw	zero,0(a1)
	j	.L4
.L5:
	lla	a1,i
	lw	a1,0(a1)
	lla	a0,LCS_table
	slli	a1,a1,2
	add	a1,a0,a1
	sw	zero,0(a1)
	lla	a1,i
	lw	a1,0(a1)
	addiw	a1,a1,1
	sext.w	a0,a1
	lla	a1,i
	sw	a0,0(a1)
.L4:
	lla	a1,i
	lw	a0,0(a1)
	lla	a1,n
	lw	a1,0(a1)
	ble	a0,a1,.L5
	lla	a1,i
	li	a0,1
	sw	a0,0(a1)
	j	.L6
.L12:
	lla	a1,j
	li	a0,1
	sw	a0,0(a1)
	j	.L7
.L11:
	lla	a1,i
	lw	a1,0(a1)
	addiw	a1,a1,-1
	sext.w	a1,a1
	lla	a0,S1
	add	a1,a0,a1
	lbu	t3,0(a1)
	lla	a1,j
	lw	a1,0(a1)
	addiw	a1,a1,-1
	sext.w	a1,a1
	lla	a0,S2
	add	a1,a0,a1
	lbu	a1,0(a1)
	mv	a0,t3
	bne	a0,a1,.L8
	lla	a1,i
	lw	a1,0(a1)
	addiw	a1,a1,-1
	sext.w	a0,a1
	lla	a1,j
	lw	a1,0(a1)
	addiw	a1,a1,-1
	sext.w	t4,a1
	lla	t3,LCS_table
	mv	a1,a0
	slli	a1,a1,2
	add	a1,a1,a0
	slli	a1,a1,3
	add	a1,a1,t4
	slli	a1,a1,2
	add	a1,t3,a1
	lw	a1,0(a1)
	lla	a0,i
	lw	a0,0(a0)
	lla	t3,j
	lw	t5,0(t3)
	addiw	a1,a1,1
	sext.w	t3,a1
	lla	t4,LCS_table
	mv	a1,a0
	slli	a1,a1,2
	add	a1,a1,a0
	slli	a1,a1,3
	add	a1,a1,t5
	slli	a1,a1,2
	add	a1,t4,a1
	sw	t3,0(a1)
	j	.L9
.L8:
	lla	a1,i
	lw	a1,0(a1)
	addiw	a1,a1,-1
	sext.w	a0,a1
	lla	a1,j
	lw	t4,0(a1)
	lla	t3,LCS_table
	mv	a1,a0
	slli	a1,a1,2
	add	a1,a1,a0
	slli	a1,a1,3
	add	a1,a1,t4
	slli	a1,a1,2
	add	a1,t3,a1
	lw	t5,0(a1)
	lla	a1,i
	lw	a0,0(a1)
	lla	a1,j
	lw	a1,0(a1)
	addiw	a1,a1,-1
	sext.w	t4,a1
	lla	t3,LCS_table
	mv	a1,a0
	slli	a1,a1,2
	add	a1,a1,a0
	slli	a1,a1,3
	add	a1,a1,t4
	slli	a1,a1,2
	add	a1,t3,a1
	lw	a1,0(a1)
	mv	a0,t5
	blt	a0,a1,.L10
	lla	a1,i
	lw	a1,0(a1)
	addiw	a1,a1,-1
	sext.w	t3,a1
	lla	a1,j
	lw	t6,0(a1)
	lla	a1,i
	lw	a0,0(a1)
	lla	a1,j
	lw	t5,0(a1)
	lla	t4,LCS_table
	mv	a1,t3
	slli	a1,a1,2
	add	a1,a1,t3
	slli	a1,a1,3
	add	a1,a1,t6
	slli	a1,a1,2
	add	a1,t4,a1
	lw	t3,0(a1)
	lla	t4,LCS_table
	mv	a1,a0
	slli	a1,a1,2
	add	a1,a1,a0
	slli	a1,a1,3
	add	a1,a1,t5
	slli	a1,a1,2
	add	a1,t4,a1
	sw	t3,0(a1)
	j	.L9
.L10:
	lla	a1,i
	lw	t3,0(a1)
	lla	a1,j
	lw	a1,0(a1)
	addiw	a1,a1,-1
	sext.w	t6,a1
	lla	a1,i
	lw	a0,0(a1)
	lla	a1,j
	lw	t5,0(a1)
	lla	t4,LCS_table
	mv	a1,t3
	slli	a1,a1,2
	add	a1,a1,t3
	slli	a1,a1,3
	add	a1,a1,t6
	slli	a1,a1,2
	add	a1,t4,a1
	lw	t3,0(a1)
	lla	t4,LCS_table
	mv	a1,a0
	slli	a1,a1,2
	add	a1,a1,a0
	slli	a1,a1,3
	add	a1,a1,t5
	slli	a1,a1,2
	add	a1,t4,a1
	sw	t3,0(a1)
.L9:
	lla	a1,j
	lw	a1,0(a1)
	addiw	a1,a1,1
	sext.w	a0,a1
	lla	a1,j
	sw	a0,0(a1)
.L7:
	lla	a1,j
	lw	a0,0(a1)
	lla	a1,n
	lw	a1,0(a1)
	ble	a0,a1,.L11
	lla	a1,i
	lw	a1,0(a1)
	addiw	a1,a1,1
	sext.w	a0,a1
	lla	a1,i
	sw	a0,0(a1)
.L6:
	lla	a1,i
	lw	a0,0(a1)
	lla	a1,m
	lw	a1,0(a1)
	ble	a0,a1,.L12
	lla	a1,m
	lw	a0,0(a1)
	lla	a1,n
	lw	t4,0(a1)
	lla	t3,LCS_table
	mv	a1,a0
	slli	a1,a1,2
	add	a1,a1,a0
	slli	a1,a1,3
	add	a1,a1,t4
	slli	a1,a1,2
	add	a1,t3,a1
	lw	a1,0(a1)
	sw	a1,-68(s0)
	lw	a1,-68(s0)
	addiw	a1,a1,1
	sext.w	a1,a1
	mv	a0,a1
	addi	a0,a0,-1
	sd	a0,-56(s0)
	mv	a0,a1
	mv	t1,a0
	li	t2,0
	srli	a0,t1,61
	slli	a3,t2,3
	or	a3,a0,a3
	slli	a2,t1,3
	mv	a3,a1
	mv	a6,a3
	li	a7,0
	srli	a3,a6,61
	slli	a5,a7,3
	or	a5,a3,a5
	slli	a4,a6,3
	mv	a5,a1
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,0
	sd	a5,-48(s0)
	ld	a4,-48(s0)
	lw	a5,-68(s0)
	add	a5,a4,a5
	sb	zero,0(a5)
	lla	a5,m
	lw	a5,0(a5)
	sw	a5,-64(s0)
	lla	a5,n
	lw	a5,0(a5)
	sw	a5,-60(s0)
	j	.L13
.L18:
	lw	a5,-64(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a4,S1
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-60(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a4,S2
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a3
	bne	a4,a5,.L14
	lw	a5,-64(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-68(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	lla	a3,S1
	add	a4,a3,a4
	lbu	a4,0(a4)
	ld	a3,-48(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	lw	a5,-64(s0)
	addiw	a5,a5,-1
	sw	a5,-64(s0)
	lw	a5,-60(s0)
	addiw	a5,a5,-1
	sw	a5,-60(s0)
	lw	a5,-68(s0)
	addiw	a5,a5,-1
	sw	a5,-68(s0)
	j	.L13
.L14:
	lw	a5,-64(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lla	a3,LCS_table
	lw	a2,-60(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a1,0(a5)
	lw	a5,-60(s0)
	addiw	a5,a5,-1
	sext.w	a2,a5
	lla	a3,LCS_table
	lw	a4,-64(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,3
	add	a5,a5,a2
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	mv	a4,a1
	ble	a4,a5,.L16
	lw	a5,-64(s0)
	addiw	a5,a5,-1
	sw	a5,-64(s0)
	j	.L13
.L16:
	lw	a5,-60(s0)
	addiw	a5,a5,-1
	sw	a5,-60(s0)
.L13:
	lw	a5,-64(s0)
	sext.w	a5,a5
	ble	a5,zero,.L17
	lw	a5,-60(s0)
	sext.w	a5,a5
	bgt	a5,zero,.L18
.L17:
	ld	a1,-48(s0)
	lla	a0,.LC0
	call	libmin_printf@plt
	mv	sp,s1
	nop
	la	a5,__stack_chk_guard
	ld	a4, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
	addi	sp,s0,-80
	.cfi_def_cfa 2, 80
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	ld	s1,56(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	lcsAlgo, .-lcsAlgo
	.section	.rodata
	.align	3
.LC1:
	.string	"S1 : %s (%d) \nS2 : %s  (%d)\n"
	.align	3
.LC2:
	.string	"\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a0,S1
	call	libmin_strlen@plt
	mv	a5,a0
	sext.w	a4,a5
	lla	a5,m
	sw	a4,0(a5)
	lla	a0,S2
	call	libmin_strlen@plt
	mv	a5,a0
	sext.w	a4,a5
	lla	a5,n
	sw	a4,0(a5)
	lla	a5,m
	lw	a2,0(a5)
	lla	a5,n
	lw	a5,0(a5)
	mv	a4,a5
	lla	a3,S2
	lla	a1,S1
	lla	a0,.LC1
	call	libmin_printf@plt
	call	lcsAlgo
	lla	a0,.LC2
	call	libmin_printf@plt
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
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
