	.file	"code.c"
	.option pic
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	mv	a5,a1
	sw	a5,-60(s0)
	sw	zero,-40(s0)
	sw	zero,-36(s0)
	j	.L2
.L3:
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	ceil@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	s1,a5
	lw	a5,-36(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	flw	fa5,0(a5)
	fcvt.d.s	fa5,fa5
	fmv.d	fa0,fa5
	call	ceil@plt
	fmv.d	fa5,fa0
	fcvt.w.d a5,fa5,rtz
	sext.w	a5,a5
	mulw	a5,s1,a5
	sext.w	a5,a5
	lw	a4,-40(s0)
	addw	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,1
	sw	a5,-36(s0)
.L2:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-60(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L3
	lw	a5,-40(s0)
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	addi	sp,sp,64
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
