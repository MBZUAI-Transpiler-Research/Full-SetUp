	.file	"libmin_getopt.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	optarg
	.bss
	.align	3
	.type	optarg, @object
	.size	optarg, 8
optarg:
	.zero	8
	.globl	optind
	.data
	.align	2
	.type	optind, @object
	.size	optind, 4
optind:
	.word	1
	.globl	opterr
	.align	2
	.type	opterr, @object
	.size	opterr, 4
opterr:
	.word	1
	.globl	optopt
	.bss
	.align	2
	.type	optopt, @object
	.size	optopt, 4
optopt:
	.zero	4
	.globl	optpos
	.align	2
	.type	optpos, @object
	.size	optpos, 4
optpos:
	.zero	4
	.globl	optreset
	.align	2
	.type	optreset, @object
	.size	optreset, 4
optreset:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"%s: unrecognized option: %c\n"
	.text
	.align	1
	.globl	libmin_getopt
	.type	libmin_getopt, @function
libmin_getopt:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	sw	a5,-52(s0)
	lla	a5,optind
	lw	a5,0(a5)
	beq	a5,zero,.L2
	lla	a5,optreset
	lw	a5,0(a5)
	beq	a5,zero,.L3
.L2:
	lla	a5,optreset
	sw	zero,0(a5)
	lla	a5,optpos
	sw	zero,0(a5)
	lla	a5,optind
	li	a4,1
	sw	a4,0(a5)
.L3:
	lla	a5,optind
	lw	a4,0(a5)
	lw	a5,-52(s0)
	sext.w	a5,a5
	ble	a5,a4,.L4
	lla	a5,optind
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	bne	a5,zero,.L5
.L4:
	li	a5,-1
	j	.L6
.L5:
	lla	a5,optind
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	beq	a4,a5,.L7
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	bne	a4,a5,.L8
	lla	a5,optind
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	lla	a4,optind
	sw	a3,0(a4)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a4,0(a5)
	lla	a5,optarg
	sd	a4,0(a5)
	li	a5,1
	j	.L6
.L8:
	li	a5,-1
	j	.L6
.L7:
	lla	a5,optind
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,1
	lbu	a5,0(a5)
	bne	a5,zero,.L9
	li	a5,-1
	j	.L6
.L9:
	lla	a5,optind
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,1
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	bne	a4,a5,.L10
	lla	a5,optind
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	addi	a5,a5,2
	lbu	a5,0(a5)
	bne	a5,zero,.L10
	lla	a5,optind
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,optind
	sw	a4,0(a5)
	li	a5,-1
	j	.L6
.L10:
	lla	a5,optpos
	lw	a5,0(a5)
	bne	a5,zero,.L11
	lla	a5,optpos
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,optpos
	sw	a4,0(a5)
.L11:
	lla	a5,optind
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a4,optpos
	lw	a4,0(a4)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sw	a5,-40(s0)
	li	a5,1
	sw	a5,-36(s0)
	lla	a5,optind
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a4,optpos
	lw	a4,0(a4)
	add	a5,a5,a4
	sd	a5,-24(s0)
	lla	a5,optopt
	lw	a4,-40(s0)
	sw	a4,0(a5)
	lla	a5,optpos
	lw	a5,0(a5)
	lw	a4,-36(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lla	a5,optpos
	sw	a4,0(a5)
	lla	a5,optind
	lw	a5,0(a5)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a4,optpos
	lw	a4,0(a4)
	add	a5,a5,a4
	lbu	a5,0(a5)
	bne	a5,zero,.L12
	lla	a5,optind
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,optind
	sw	a4,0(a5)
	lla	a5,optpos
	sw	zero,0(a5)
.L12:
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,45
	beq	a4,a5,.L13
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,43
	bne	a4,a5,.L14
.L13:
	ld	a5,-72(s0)
	addi	a5,a5,1
	sd	a5,-72(s0)
.L14:
	sw	zero,-44(s0)
	sw	zero,-32(s0)
.L18:
	lw	a5,-44(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	sw	a5,-32(s0)
	li	a5,1
	sw	a5,-28(s0)
	lw	a5,-28(s0)
	sext.w	a5,a5
	ble	a5,zero,.L15
	lw	a5,-44(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	addw	a5,a4,a5
	sw	a5,-44(s0)
	j	.L16
.L15:
	lw	a5,-44(s0)
	addiw	a5,a5,1
	sw	a5,-44(s0)
.L16:
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L17
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bne	a4,a5,.L18
.L17:
	lw	a5,-32(s0)
	mv	a4,a5
	lw	a5,-40(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	beq	a4,a5,.L19
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,58
	beq	a4,a5,.L20
	lla	a5,opterr
	lw	a5,0(a5)
	beq	a5,zero,.L20
	ld	a5,-64(s0)
	ld	a5,0(a5)
	ld	a2,-24(s0)
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
.L20:
	li	a5,63
	j	.L6
.L19:
	lw	a5,-44(s0)
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,58
	bne	a4,a5,.L21
	lw	a5,-44(s0)
	addi	a5,a5,1
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,58
	bne	a4,a5,.L22
	lla	a5,optarg
	sd	zero,0(a5)
	j	.L23
.L22:
	lla	a5,optind
	lw	a4,0(a5)
	lw	a5,-52(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L23
	ld	a5,-72(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,58
	bne	a4,a5,.L24
	li	a5,58
	j	.L6
.L24:
	lla	a5,opterr
	lw	a5,0(a5)
	beq	a5,zero,.L25
	ld	a5,-64(s0)
	ld	a5,0(a5)
	ld	a2,-24(s0)
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
.L25:
	li	a5,63
	j	.L6
.L23:
	lw	a5,-44(s0)
	addi	a5,a5,1
	ld	a4,-72(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,58
	bne	a4,a5,.L26
	lla	a5,optpos
	lw	a5,0(a5)
	beq	a5,zero,.L21
.L26:
	lla	a5,optind
	lw	a5,0(a5)
	addiw	a4,a5,1
	sext.w	a3,a4
	lla	a4,optind
	sw	a3,0(a4)
	slli	a5,a5,3
	ld	a4,-64(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a4,optpos
	lw	a4,0(a4)
	add	a4,a5,a4
	lla	a5,optarg
	sd	a4,0(a5)
	lla	a5,optpos
	sw	zero,0(a5)
.L21:
	lw	a5,-40(s0)
.L6:
	mv	a0,a5
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	libmin_getopt, .-libmin_getopt
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
