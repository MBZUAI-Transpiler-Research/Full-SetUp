	.file	"distinctness.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	elements1
	.data
	.align	3
	.type	elements1, @object
	.size	elements1, 512
elements1:
	.word	25
	.word	97
	.word	1
	.word	0
	.word	36
	.word	22
	.word	74
	.word	3
	.word	9
	.word	12
	.word	30
	.word	81
	.word	63
	.word	148
	.word	99
	.word	13
	.word	64
	.word	49
	.word	80
	.word	15
	.word	125
	.word	197
	.word	101
	.word	100
	.word	136
	.word	122
	.word	174
	.word	103
	.word	109
	.word	112
	.word	130
	.word	181
	.word	163
	.word	1148
	.word	199
	.word	113
	.word	164
	.word	149
	.word	180
	.word	115
	.word	225
	.word	297
	.word	201
	.word	200
	.word	236
	.word	222
	.word	274
	.word	203
	.word	209
	.word	212
	.word	230
	.word	281
	.word	263
	.word	2148
	.word	299
	.word	213
	.word	264
	.word	249
	.word	280
	.word	215
	.word	325
	.word	397
	.word	301
	.word	300
	.word	336
	.word	322
	.word	374
	.word	303
	.word	309
	.word	312
	.word	330
	.word	381
	.word	363
	.word	3148
	.word	399
	.word	313
	.word	364
	.word	349
	.word	380
	.word	315
	.word	425
	.word	497
	.word	401
	.word	400
	.word	436
	.word	422
	.word	474
	.word	403
	.word	409
	.word	412
	.word	430
	.word	481
	.word	463
	.word	4148
	.word	499
	.word	413
	.word	464
	.word	449
	.word	480
	.word	415
	.word	525
	.word	597
	.word	501
	.word	500
	.word	536
	.word	522
	.word	574
	.word	503
	.word	509
	.word	512
	.word	530
	.word	581
	.word	563
	.word	5148
	.word	599
	.word	513
	.word	564
	.word	549
	.word	580
	.word	515
	.word	625
	.word	697
	.word	601
	.word	600
	.word	636
	.word	622
	.word	674
	.word	603
	.globl	elements2
	.align	3
	.type	elements2, @object
	.size	elements2, 512
elements2:
	.word	25
	.word	97
	.word	1
	.word	0
	.word	36
	.word	22
	.word	74
	.word	3
	.word	99
	.word	12
	.word	30
	.word	81
	.word	63
	.word	148
	.word	99
	.word	13
	.word	64
	.word	49
	.word	99
	.word	15
	.word	125
	.word	197
	.word	101
	.word	100
	.word	136
	.word	122
	.word	174
	.word	103
	.word	199
	.word	112
	.word	130
	.word	181
	.word	163
	.word	1148
	.word	119
	.word	113
	.word	164
	.word	149
	.word	199
	.word	115
	.word	225
	.word	297
	.word	201
	.word	200
	.word	236
	.word	222
	.word	274
	.word	203
	.word	299
	.word	212
	.word	230
	.word	281
	.word	263
	.word	2148
	.word	229
	.word	213
	.word	264
	.word	249
	.word	299
	.word	215
	.word	325
	.word	397
	.word	301
	.word	300
	.word	336
	.word	322
	.word	374
	.word	303
	.word	399
	.word	312
	.word	330
	.word	381
	.word	363
	.word	3148
	.word	339
	.word	313
	.word	364
	.word	349
	.word	399
	.word	315
	.word	425
	.word	497
	.word	401
	.word	400
	.word	436
	.word	422
	.word	474
	.word	403
	.word	409
	.word	412
	.word	430
	.word	481
	.word	463
	.word	4148
	.word	499
	.word	413
	.word	464
	.word	449
	.word	480
	.word	415
	.word	525
	.word	597
	.word	501
	.word	500
	.word	536
	.word	522
	.word	574
	.word	503
	.word	509
	.word	512
	.word	530
	.word	581
	.word	563
	.word	5148
	.word	599
	.word	513
	.word	564
	.word	549
	.word	580
	.word	515
	.word	625
	.word	697
	.word	601
	.word	600
	.word	636
	.word	622
	.word	674
	.word	603
	.text
	.align	1
	.globl	isDistinct
	.type	isDistinct, @function
isDistinct:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-1616
	.cfi_def_cfa_offset 1616
	sd	ra,1608(sp)
	sd	s0,1600(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1616
	.cfi_def_cfa 8, 0
	sd	a0,-1608(s0)
	sd	a1,-1616(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-1616(s0)
	li	a4,-2147483648
	addi	a4,a4,-1
	sw	a4,0(a5)
	sw	zero,-1588(s0)
	j	.L2
.L3:
	lw	a4,-1588(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-2147483648
	addi	a4,a4,-1
	sw	a4,-1544(a5)
	lw	a4,-1588(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-2147483648
	addi	a4,a4,-1
	sw	a4,-1540(a5)
	lw	a4,-1588(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	li	a4,-2147483648
	addi	a4,a4,-1
	sw	a4,-1536(a5)
	lw	a5,-1588(s0)
	addiw	a5,a5,1
	sw	a5,-1588(s0)
.L2:
	lw	a5,-1588(s0)
	sext.w	a4,a5
	li	a5,127
	ble	a4,a5,.L3
	ld	a5,-1608(s0)
	lw	a5,0(a5)
	sw	a5,-1560(s0)
	sw	zero,-1584(s0)
	li	a5,1
	sw	a5,-1580(s0)
	j	.L4
.L14:
	sw	zero,-1576(s0)
	lw	a5,-1560(s0)
	sw	a5,-1572(s0)
	lw	a5,-1556(s0)
	sw	a5,-1568(s0)
	lw	a5,-1552(s0)
	sw	a5,-1564(s0)
	j	.L5
.L13:
	lw	a5,-1580(s0)
	slli	a5,a5,2
	ld	a4,-1608(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-1572(s0)
	sext.w	a5,a5
	bge	a5,a4,.L6
	lw	a5,-1564(s0)
	sext.w	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	beq	a4,a5,.L7
	lw	a4,-1564(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1544(a5)
	sw	a5,-1572(s0)
	lw	a4,-1564(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1540(a5)
	sw	a5,-1568(s0)
	lw	a5,-1564(s0)
	sw	a5,-1576(s0)
	lw	a4,-1564(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1536(a5)
	sw	a5,-1564(s0)
	j	.L5
.L7:
	lw	a5,-1580(s0)
	slli	a5,a5,2
	ld	a4,-1608(s0)
	add	a5,a4,a5
	lw	a4,-1584(s0)
	addiw	a4,a4,1
	sext.w	a4,a4
	lw	a3,0(a5)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a3,-1544(a5)
	lw	a5,-1584(s0)
	addiw	a5,a5,1
	sext.w	a3,a5
	lw	a4,-1576(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a3,-1536(a5)
	lw	a5,-1584(s0)
	addiw	a5,a5,1
	sw	a5,-1584(s0)
	j	.L9
.L6:
	lw	a5,-1580(s0)
	slli	a5,a5,2
	ld	a4,-1608(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-1572(s0)
	sext.w	a5,a5
	ble	a5,a4,.L10
	lw	a5,-1568(s0)
	sext.w	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	beq	a4,a5,.L11
	lw	a4,-1568(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1544(a5)
	sw	a5,-1572(s0)
	lw	a4,-1568(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1536(a5)
	sw	a5,-1564(s0)
	lw	a5,-1568(s0)
	sw	a5,-1576(s0)
	lw	a4,-1568(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1540(a5)
	sw	a5,-1568(s0)
	j	.L5
.L11:
	lw	a5,-1584(s0)
	addiw	a5,a5,1
	sext.w	a3,a5
	lw	a4,-1576(s0)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a3,-1540(a5)
	lw	a5,-1580(s0)
	slli	a5,a5,2
	ld	a4,-1608(s0)
	add	a5,a4,a5
	lw	a4,-1584(s0)
	addiw	a4,a4,1
	sext.w	a4,a4
	lw	a3,0(a5)
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	sw	a3,-1544(a5)
	lw	a5,-1584(s0)
	addiw	a5,a5,1
	sw	a5,-1584(s0)
	j	.L9
.L10:
	lw	a5,-1580(s0)
	slli	a5,a5,2
	ld	a4,-1608(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	ld	a5,-1616(s0)
	sw	a4,0(a5)
	li	a5,0
	j	.L15
.L5:
	lw	a5,-1572(s0)
	sext.w	a4,a5
	li	a5,-2147483648
	xori	a5,a5,-1
	bne	a4,a5,.L13
.L9:
	lw	a5,-1580(s0)
	addiw	a5,a5,1
	sw	a5,-1580(s0)
.L4:
	lw	a5,-1580(s0)
	sext.w	a4,a5
	li	a5,127
	ble	a4,a5,.L14
	li	a5,1
.L15:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L16
	call	__stack_chk_fail@plt
.L16:
	mv	a0,a4
	ld	ra,1608(sp)
	.cfi_restore 1
	ld	s0,1600(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1616
	addi	sp,sp,1616
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	isDistinct, .-isDistinct
	.section	.rodata
	.align	3
.LC0:
	.string	"The elements of `elements1' are distinct\n"
	.align	3
.LC1:
	.string	"The elements of `elements1' are not distinct (e.g., %d is duplicated)\n"
	.align	3
.LC2:
	.string	"The elements of `elements2' are distinct\n"
	.align	3
.LC3:
	.string	"The elements of `elements2' are not distinct (e.g., %d is duplicated)\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a5,s0,-40
	mv	a1,a5
	lla	a0,elements1
	call	isDistinct
	mv	a5,a0
	sw	a5,-32(s0)
	addi	a5,s0,-36
	mv	a1,a5
	lla	a0,elements2
	call	isDistinct
	mv	a5,a0
	sw	a5,-28(s0)
	lw	a5,-32(s0)
	sext.w	a5,a5
	beq	a5,zero,.L18
	lla	a0,.LC0
	call	libmin_printf@plt
	j	.L19
.L18:
	lw	a5,-40(s0)
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
.L19:
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L20
	lla	a0,.LC2
	call	libmin_printf@plt
	j	.L21
.L20:
	lw	a5,-36(s0)
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
.L21:
	call	libmin_success@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L23
	call	__stack_chk_fail@plt
.L23:
	mv	a0,a4
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
