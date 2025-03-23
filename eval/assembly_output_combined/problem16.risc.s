	.file	"problem16.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	" %d"
	.align	3
.LC1:
	.string	"0"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	mv	a5,a0
	sw	a5,-52(s0)
	li	a5,2
	sw	a5,-44(s0)
	li	a5,1
	sw	a5,-40(s0)
	j	.L2
.L3:
	lw	a5,-40(s0)
	mv	a3,a5
	lla	a2,.LC0
	li	a1,0
	li	a0,0
	call	snprintf@plt
	mv	a5,a0
	lw	a4,-44(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
	lw	a5,-40(s0)
	addiw	a5,a5,1
	sw	a5,-40(s0)
.L2:
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L3
	lw	a5,-44(s0)
	mv	a0,a5
	call	malloc@plt
	mv	a5,a0
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	bne	a5,zero,.L4
	li	a5,0
	j	.L5
.L4:
	ld	a5,-24(s0)
	sd	a5,-32(s0)
	lla	a1,.LC1
	ld	a0,-32(s0)
	call	sprintf@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-32(s0)
	add	a5,a5,a4
	sd	a5,-32(s0)
	li	a5,1
	sw	a5,-36(s0)
	j	.L6
.L7:
	lw	a5,-36(s0)
	mv	a2,a5
	lla	a1,.LC0
	ld	a0,-32(s0)
	call	sprintf@plt
	mv	a5,a0
	mv	a4,a5
	ld	a5,-32(s0)
	add	a5,a5,a4
	sd	a5,-32(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L6:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-52(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L7
	ld	a5,-24(s0)
.L5:
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC2:
	.string	"problem16.c"
	.align	3
.LC3:
	.string	"strcmp(result, \"0\") == 0"
	.align	3
.LC4:
	.string	"0 1 2 3"
	.align	3
.LC5:
	.string	"strcmp(result, \"0 1 2 3\") == 0"
	.align	3
.LC6:
	.string	"0 1 2 3 4 5 6 7 8 9 10"
	.align	3
.LC7:
	.string	"strcmp(result, \"0 1 2 3 4 5 6 7 8 9 10\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	li	a0,0
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC1
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L9
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,33
	lla	a1,.LC2
	lla	a0,.LC3
	call	__assert_fail@plt
.L9:
	ld	a0,-24(s0)
	call	free@plt
	li	a0,3
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC4
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L10
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,37
	lla	a1,.LC2
	lla	a0,.LC5
	call	__assert_fail@plt
.L10:
	ld	a0,-24(s0)
	call	free@plt
	li	a0,10
	call	func0
	sd	a0,-24(s0)
	lla	a1,.LC6
	ld	a0,-24(s0)
	call	strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L11
	lla	a3,__PRETTY_FUNCTION__.0
	li	a2,41
	lla	a1,.LC2
	lla	a0,.LC7
	call	__assert_fail@plt
.L11:
	ld	a0,-24(s0)
	call	free@plt
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
