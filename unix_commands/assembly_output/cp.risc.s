	.file	"cp.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nUsage: cpcmd source destination"
	.align	3
.LC2:
	.string	"\nError opening file %s errno = %d\n"
	.align	3
.LC3:
	.string	"\nError in writing data to "
	.align	3
.LC4:
	.string	"\nError in closing file"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	addi	s0,sp,80
	li	t0,-8192
	add	sp,sp,t0
	mv	a4,a0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	sd	a1,-48(a5)
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	a4,-36(a5)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-36(a5)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L2
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,8
	ld	a4,0(a5)
	lla	a5,.LC0
	bne	a4,a5,.L3
.L2:
	lla	a0,.LC1
	call	puts@plt
	li	a0,1
	call	exit@plt
.L3:
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,8
	ld	a4,0(a5)
	li	a5,-8192
	addi	a5,a5,-32
	add	s1,a5,s0
	li	a1,0
	mv	a0,a4
	call	open@plt
	mv	a5,a0
	sw	a5,-20(s1)
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-20(a5)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L4
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,8
	ld	s1,0(a5)
	call	__errno_location@plt
	mv	a5,a0
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,s1
	lla	a0,.LC2
	call	printf@plt
	li	a0,1
	call	exit@plt
.L4:
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,16
	ld	a4,0(a5)
	li	a5,-8192
	addi	a5,a5,-32
	add	s1,a5,s0
	li	a2,438
	li	a1,577
	mv	a0,a4
	call	open@plt
	mv	a5,a0
	sw	a5,-16(s1)
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-16(a5)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L6
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	ld	a5,-48(a5)
	addi	a5,a5,16
	ld	s1,0(a5)
	call	__errno_location@plt
	mv	a5,a0
	lw	a5,0(a5)
	mv	a2,a5
	mv	a1,s1
	lla	a0,.LC2
	call	printf@plt
	li	a0,1
	call	exit@plt
.L7:
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a3,-12(a5)
	li	a5,-8192
	addi	a5,a5,-8
	addi	a5,a5,-32
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-16(a5)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	write@plt
	mv	a4,a0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-12(a5)
	beq	a4,a5,.L6
	lla	a0,.LC3
	call	puts@plt
.L6:
	li	a5,-8192
	addi	a5,a5,-8
	addi	a5,a5,-32
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-20(a5)
	li	a2,1024
	mv	a1,a4
	mv	a0,a5
	call	read@plt
	mv	a4,a0
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	sw	a4,-12(a5)
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-12(a5)
	sext.w	a5,a5
	bgt	a5,zero,.L7
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-20(a5)
	mv	a0,a5
	call	close@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	bne	a4,a5,.L8
	lla	a0,.LC4
	call	puts@plt
.L8:
	li	a5,-8192
	addi	a5,a5,-32
	add	a5,a5,s0
	lw	a5,-16(a5)
	mv	a0,a5
	call	close@plt
	mv	a5,a0
	mv	a4,a5
	li	a5,-1
	bne	a4,a5,.L9
	lla	a0,.LC4
	call	puts@plt
.L9:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L11
	call	__stack_chk_fail@plt
.L11:
	mv	a0,a4
	li	t0,8192
	add	sp,sp,t0
	ld	ra,72(sp)
	ld	s0,64(sp)
	ld	s1,56(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
