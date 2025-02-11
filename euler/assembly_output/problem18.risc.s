	.file	"problem18.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%d\n"
	.align	3
.LC0:
	.string	"K"
	.zero	13
	.string	"_@"
	.zero	12
	.string	"\021/R"
	.zero	11
	.string	"\022#W\n"
	.zero	10
	.string	"\024\004R/A"
	.zero	9
	.string	"\023\001\027K\003\""
	.zero	8
	.string	"X\002MI\007?C"
	.zero	7
	.string	"cA\004\034\006\020F\\"
	.zero	6
	.string	"))\0328S(PF!"
	.zero	5
	.string	")0H!/ %\020^\035"
	.zero	4
	.string	"5G,A\031+[4a3\016"
	.zero	3
	.string	"F\013!\034MI\021N'D\0219"
	.zero	2
	.string	"[G4&\021\016[+:2\033\0350"
	.zero	1
	.string	"?B\004DY5C\036I\020EW(\037"
	.ascii	"\004>b\033\027\tFbI]&5<\004\027"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sd	ra,248(sp)
	sd	s0,240(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,256
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a4,.LC0
	addi	a5,s0,-256
	mv	a3,a4
	li	a4,225
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy@plt
	addi	a5,s0,-256
	li	a2,0
	li	a1,0
	mv	a0,a5
	call	findmax
	mv	a5,a0
	mv	a1,a5
	lla	a0,.LC1
	call	printf@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L3
	call	__stack_chk_fail@plt
.L3:
	mv	a0,a4
	ld	ra,248(sp)
	.cfi_restore 1
	ld	s0,240(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 256
	addi	sp,sp,256
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.type	findmax, @function
findmax:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	mv	a4,a2
	sw	a5,-44(s0)
	mv	a5,a4
	sw	a5,-48(s0)
	lw	a5,-44(s0)
	sext.w	a4,a5
	li	a5,14
	bne	a4,a5,.L5
	lw	a4,-44(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a5,a5
	j	.L6
.L5:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lw	a4,-48(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-40(s0)
	call	findmax
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lw	a4,-48(s0)
	addiw	a4,a4,1
	sext.w	a4,a4
	mv	a2,a4
	mv	a1,a5
	ld	a0,-40(s0)
	call	findmax
	mv	a5,a0
	sw	a5,-20(s0)
	lw	a4,-44(s0)
	mv	a5,a4
	slli	a5,a5,4
	sub	a5,a5,a4
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sext.w	a4,a5
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a5,-20(s0)
	mv	a2,a5
	sext.w	a3,a2
	sext.w	a5,a1
	bge	a3,a5,.L7
	mv	a2,a1
.L7:
	sext.w	a5,a2
	addw	a5,a4,a5
	sext.w	a5,a5
.L6:
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	findmax, .-findmax
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
