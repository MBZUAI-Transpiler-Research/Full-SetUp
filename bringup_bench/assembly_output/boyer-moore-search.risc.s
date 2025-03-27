	.file	"boyer-moore-search.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	inp_pat
	.data
	.align	3
	.type	inp_pat, @object
	.size	inp_pat, 22
inp_pat:
	.string	"NzZVOzZXNoGXMl8yxesyY"
	.globl	inp_txt
	.align	3
	.type	inp_txt, @object
	.size	inp_txt, 761
inp_txt:
	.ascii	"zJfMus2WzLnMr82T4bmuzKTNjcylzYfNiGjMssyBZc2PzZPMvMyXzJnMvMyj"
	.ascii	"zZQgzYfMnMyxzKDNk82NzZVOzZXNoGXMl8yxesyYzJ3MnMy6zZlwzKTMusy5"
	.ascii	"zY3Mr82aZcygzLvMoM2ccsyozKTNjcy6zJbNlMyWzJZkzKDMn8ytzKzMnc2f"
	.ascii	"acymzZbMqc2TzZTMpGHMoMyXzKzNicyZbs2azZwgzLvMnsywzZrNhWjMtc2J"
	.ascii	"acyzzJ52zKLNh+G4mc2OzZ8t0onMrcypzLzNlG3MpMytzKtpzZXNh8ydzKZu"
	.ascii	"zJfNmeG4jcyfIMyvzLLNlc2ex6vMn8yvzLDMss2ZzLvMnWYgzKrMsMywzJfM"
	.ascii	"lsytzJjNmGPMps2NzLLMns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnN"
	.ascii	"jnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzN"
	.ascii	"oWzMssyrzLPNjcypZ8yhzJ/M"
	.string	"vMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1X"
	.text
	.align	1
	.globl	badCharHeuristic
	.type	badCharHeuristic, @function
badCharHeuristic:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sd	a2,-56(s0)
	sw	a5,-44(s0)
	sw	zero,-24(s0)
	j	.L2
.L3:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	li	a4,-1
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,255
	ble	a4,a5,.L3
	sw	zero,-20(s0)
	j	.L4
.L5:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L5
	nop
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	badCharHeuristic, .-badCharHeuristic
	.align	1
	.globl	search
	.type	search, @function
search:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-1104
	.cfi_def_cfa_offset 1104
	sd	ra,1096(sp)
	sd	s0,1088(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1104
	.cfi_def_cfa 8, 0
	sd	a0,-1080(s0)
	mv	a5,a1
	sd	a2,-1096(s0)
	sd	a4,-1104(s0)
	sw	a5,-1084(s0)
	mv	a5,a3
	sw	a5,-1088(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	addi	a4,s0,-1048
	lw	a5,-1088(s0)
	mv	a2,a4
	mv	a1,a5
	ld	a0,-1096(s0)
	call	badCharHeuristic
	sw	zero,-1068(s0)
	sw	zero,-1064(s0)
	j	.L7
.L18:
	lw	a5,-1084(s0)
	mv	a4,a5
	lw	a5,-1088(s0)
	subw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-1068(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L20
	lw	a5,-1088(s0)
	addiw	a5,a5,-1
	sw	a5,-1060(s0)
	j	.L10
.L12:
	lw	a5,-1060(s0)
	addiw	a5,a5,-1
	sw	a5,-1060(s0)
.L10:
	lw	a5,-1060(s0)
	sext.w	a5,a5
	blt	a5,zero,.L11
	lw	a5,-1060(s0)
	ld	a4,-1096(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	lw	a5,-1068(s0)
	mv	a3,a5
	lw	a5,-1060(s0)
	addw	a5,a3,a5
	sext.w	a5,a5
	mv	a3,a5
	ld	a5,-1080(s0)
	add	a5,a5,a3
	lbu	a5,0(a5)
	beq	a4,a5,.L12
.L11:
	lw	a5,-1060(s0)
	srliw	a5,a5,31
	andi	a5,a5,0xff
	sw	a5,-1056(s0)
	lw	a5,-1056(s0)
	sext.w	a5,a5
	beq	a5,zero,.L13
	lw	a5,-1068(s0)
	slli	a5,a5,2
	ld	a4,-1104(s0)
	add	a5,a4,a5
	li	a4,1
	sw	a4,0(a5)
	lw	a5,-1068(s0)
	mv	a4,a5
	lw	a5,-1088(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-1084(s0)
	sext.w	a5,a5
	ble	a5,a4,.L14
	lw	a5,-1068(s0)
	mv	a4,a5
	lw	a5,-1088(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-1080(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1032(a5)
	lw	a4,-1088(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	j	.L15
.L14:
	li	a5,1
.L15:
	lw	a4,-1068(s0)
	addw	a5,a4,a5
	sw	a5,-1068(s0)
	j	.L16
.L13:
	lw	a5,-1068(s0)
	mv	a4,a5
	lw	a5,-1060(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	ld	a5,-1080(s0)
	add	a5,a5,a4
	lbu	a5,0(a5)
	sext.w	a5,a5
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-1032(a5)
	lw	a4,-1060(s0)
	subw	a5,a4,a5
	sw	a5,-1052(s0)
	lw	a5,-1052(s0)
	sext.w	a4,a5
	bgt	a4,zero,.L17
	li	a5,1
.L17:
	sext.w	a5,a5
	lw	a4,-1068(s0)
	addw	a5,a4,a5
	sw	a5,-1068(s0)
.L16:
	lw	a5,-1064(s0)
	addiw	a5,a5,1
	sw	a5,-1064(s0)
.L7:
	lw	a5,-1084(s0)
	mv	a4,a5
	lw	a5,-1088(s0)
	subw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-1064(s0)
	sext.w	a5,a5
	ble	a5,a4,.L18
	j	.L9
.L20:
	nop
.L9:
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L19
	call	__stack_chk_fail@plt
.L19:
	ld	ra,1096(sp)
	.cfi_restore 1
	ld	s0,1088(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 1104
	addi	sp,sp,1104
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	search, .-search
	.section	.rodata
	.align	3
.LC0:
	.string	"n = %d, m = %d\n"
	.align	3
.LC1:
	.string	"pattern occurs at shift = %d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-304
	.cfi_def_cfa_offset 304
	sd	ra,296(sp)
	sd	s0,288(sp)
	sd	s1,280(sp)
	sd	s2,272(sp)
	sd	s3,264(sp)
	sd	s4,256(sp)
	sd	s5,248(sp)
	sd	s6,240(sp)
	sd	s7,232(sp)
	sd	s8,224(sp)
	sd	s9,216(sp)
	sd	s10,208(sp)
	sd	s11,200(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	.cfi_offset 20, -48
	.cfi_offset 21, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	.cfi_offset 26, -96
	.cfi_offset 27, -104
	addi	s0,sp,304
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -120(s0)
	li	a4, 0
	mv	a5,sp
	mv	s1,a5
	lla	a0,inp_txt
	call	libmin_strlen@plt
	mv	a5,a0
	sw	a5,-176(s0)
	lla	a0,inp_pat
	call	libmin_strlen@plt
	mv	a5,a0
	sw	a5,-172(s0)
	lw	a4,-172(s0)
	lw	a5,-176(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC0
	call	libmin_printf@plt
	lw	a5,-176(s0)
	mv	a4,a5
	addi	a4,a4,-1
	sd	a4,-168(s0)
	mv	a4,a5
	sd	a4,-208(s0)
	sd	zero,-200(s0)
	ld	a4,-208(s0)
	srli	a4,a4,61
	ld	a3,-200(s0)
	slli	a3,a3,3
	sd	a3,-296(s0)
	ld	a3,-296(s0)
	or	a4,a4,a3
	sd	a4,-296(s0)
	ld	a4,-208(s0)
	slli	a4,a4,3
	sd	a4,-304(s0)
	mv	a4,a5
	sd	a4,-224(s0)
	sd	zero,-216(s0)
	ld	a4,-224(s0)
	srli	a4,a4,61
	ld	a3,-216(s0)
	slli	s11,a3,3
	or	s11,a4,s11
	ld	a4,-224(s0)
	slli	s10,a4,3
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,0
	sd	a5,-160(s0)
	sw	zero,-192(s0)
	j	.L22
.L23:
	lla	a4,inp_txt
	lw	a5,-192(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a3,-160(s0)
	lw	a5,-192(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	lw	a5,-192(s0)
	addiw	a5,a5,1
	sw	a5,-192(s0)
.L22:
	lw	a5,-192(s0)
	mv	a4,a5
	lw	a5,-176(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L23
	lw	a5,-172(s0)
	mv	a4,a5
	addi	a4,a4,-1
	sd	a4,-152(s0)
	mv	a4,a5
	sd	a4,-240(s0)
	sd	zero,-232(s0)
	ld	a4,-240(s0)
	srli	a4,a4,61
	ld	a3,-232(s0)
	slli	s9,a3,3
	or	s9,a4,s9
	ld	a4,-240(s0)
	slli	s8,a4,3
	mv	a4,a5
	sd	a4,-256(s0)
	sd	zero,-248(s0)
	ld	a4,-256(s0)
	srli	a4,a4,61
	ld	a3,-248(s0)
	slli	s7,a3,3
	or	s7,a4,s7
	ld	a4,-256(s0)
	slli	s6,a4,3
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,0
	sd	a5,-144(s0)
	sw	zero,-188(s0)
	j	.L24
.L25:
	lla	a4,inp_pat
	lw	a5,-188(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	ld	a3,-144(s0)
	lw	a5,-188(s0)
	add	a5,a3,a5
	sb	a4,0(a5)
	lw	a5,-188(s0)
	addiw	a5,a5,1
	sw	a5,-188(s0)
.L24:
	lw	a5,-188(s0)
	mv	a4,a5
	lw	a5,-172(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L25
	lw	a5,-176(s0)
	mv	a4,a5
	addi	a4,a4,-1
	sd	a4,-136(s0)
	mv	a4,a5
	sd	a4,-272(s0)
	sd	zero,-264(s0)
	ld	a4,-272(s0)
	srli	a4,a4,59
	ld	a3,-264(s0)
	slli	s5,a3,5
	or	s5,a4,s5
	ld	a4,-272(s0)
	slli	s4,a4,5
	mv	a4,a5
	sd	a4,-288(s0)
	sd	zero,-280(s0)
	ld	a4,-288(s0)
	srli	a4,a4,59
	ld	a3,-280(s0)
	slli	s3,a3,5
	or	s3,a4,s3
	ld	a4,-288(s0)
	slli	s2,a4,5
	slli	a5,a5,2
	addi	a5,a5,15
	srli	a5,a5,4
	slli	a5,a5,4
	sub	sp,sp,a5
	mv	a5,sp
	addi	a5,a5,3
	srli	a5,a5,2
	slli	a5,a5,2
	sd	a5,-128(s0)
	sw	zero,-184(s0)
	j	.L26
.L27:
	ld	a4,-128(s0)
	lw	a5,-184(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	lw	a5,-184(s0)
	addiw	a5,a5,1
	sw	a5,-184(s0)
.L26:
	lw	a5,-184(s0)
	mv	a4,a5
	lw	a5,-176(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L27
	lw	a3,-172(s0)
	lw	a5,-176(s0)
	ld	a4,-128(s0)
	ld	a2,-144(s0)
	mv	a1,a5
	ld	a0,-160(s0)
	call	search
	sw	zero,-180(s0)
	j	.L28
.L30:
	ld	a4,-128(s0)
	lw	a5,-180(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	beq	a5,zero,.L29
	lw	a5,-180(s0)
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
.L29:
	lw	a5,-180(s0)
	addiw	a5,a5,1
	sw	a5,-180(s0)
.L28:
	lw	a5,-180(s0)
	mv	a4,a5
	lw	a5,-176(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L30
	call	libmin_success@plt
	li	a5,0
	mv	sp,s1
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -120(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L32
	call	__stack_chk_fail@plt
.L32:
	mv	a0,a4
	addi	sp,s0,-304
	.cfi_def_cfa 2, 304
	ld	ra,296(sp)
	.cfi_restore 1
	ld	s0,288(sp)
	.cfi_restore 8
	ld	s1,280(sp)
	.cfi_restore 9
	ld	s2,272(sp)
	.cfi_restore 18
	ld	s3,264(sp)
	.cfi_restore 19
	ld	s4,256(sp)
	.cfi_restore 20
	ld	s5,248(sp)
	.cfi_restore 21
	ld	s6,240(sp)
	.cfi_restore 22
	ld	s7,232(sp)
	.cfi_restore 23
	ld	s8,224(sp)
	.cfi_restore 24
	ld	s9,216(sp)
	.cfi_restore 25
	ld	s10,208(sp)
	.cfi_restore 26
	ld	s11,200(sp)
	.cfi_restore 27
	addi	sp,sp,304
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
