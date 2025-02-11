	.file	"problem41.cc"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text._ZN9__gnu_cxx5__ops16__iter_less_iterEv,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_less_iterEv,comdat
	.align	1
	.weak	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.type	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, @function
_ZN9__gnu_cxx5__ops16__iter_less_iterEv:
.LFB554:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	nop
	mv	a0,a5
	ld	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE554:
	.size	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, .-_ZN9__gnu_cxx5__ops16__iter_less_iterEv
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.rodata
	.align	3
	.type	_ZZ4mainE1N, @object
	.size	_ZZ4mainE1N, 8
_ZZ4mainE1N:
	.dword	9
	.align	3
.LC0:
	.word	9
	.word	8
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2268:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-80(s0)
	sd	a2,-72(s0)
	sd	a3,-64(s0)
	sd	a4,-56(s0)
	lw	a5,32(a5)
	sw	a5,-48(s0)
	sw	zero,-88(s0)
	j	.L4
.L7:
	lwu	a5,-88(s0)
	slli	a5,a5,2
	addi	a4,s0,-80
	add	a4,a4,a5
	addi	a5,s0,-80
	addi	a5,a5,36
	mv	a3,s1
	li	a2,0
	mv	a1,a5
	mv	a0,a4
	call	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	mv	a5,a0
	sw	a5,-84(s0)
	lw	a5,-84(s0)
	mv	a0,a5
	call	_ZL8is_primej
	mv	a5,a0
	beq	a5,zero,.L5
	lw	a5,-84(s0)
	mv	a1,a5
	la	a0,_ZSt4cout
	call	_ZNSolsEi@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	j	.L6
.L5:
	lwu	a5,-88(s0)
	slli	a5,a5,2
	addi	a4,s0,-80
	add	a4,a4,a5
	addi	a5,s0,-80
	addi	a5,a5,36
	mv	a1,a5
	mv	a0,a4
	call	_ZSt16prev_permutationIPiEbT_S1_
	mv	a5,a0
	bne	a5,zero,.L7
	lw	a5,-88(s0)
	addiw	a5,a5,1
	sw	a5,-88(s0)
.L4:
	lw	a5,-88(s0)
	sext.w	a4,a5
	li	a5,8
	bleu	a4,a5,.L7
	nop
.L6:
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L9
	call	__stack_chk_fail@plt
.L9:
	mv	a0,a4
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)
	.cfi_restore 9
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2268:
	.size	main, .-main
	.align	1
	.type	_ZL8is_primej, @function
_ZL8is_primej:
.LFB2269:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L11
	li	a5,0
	j	.L12
.L11:
	lw	a5,-36(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L13
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,2
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	j	.L12
.L13:
	li	a5,3
	sw	a5,-20(s0)
	j	.L14
.L16:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	remuw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L15
	li	a5,0
	j	.L12
.L15:
	lw	a5,-20(s0)
	addiw	a5,a5,2
	sw	a5,-20(s0)
.L14:
	lw	a5,-20(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bgtu	a5,a4,.L16
	li	a5,1
.L12:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2269:
	.size	_ZL8is_primej, .-_ZL8is_primej
	.section	.text._ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_,"axG",@progbits,_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_,comdat
	.align	1
	.weak	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	.type	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_, @function
_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_:
.LFB2524:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	mv	a5,a2
	sb	a3,-40(s0)
	sw	a5,-36(s0)
	j	.L18
.L19:
	ld	a5,-24(s0)
	lw	a3,0(a5)
	lw	a4,-36(s0)
	addi	a5,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	_ZNK4funcIiEclEii
	mv	a5,a0
	sw	a5,-36(s0)
	ld	a5,-24(s0)
	addi	a5,a5,4
	sd	a5,-24(s0)
.L18:
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	bne	a4,a5,.L19
	lw	a5,-36(s0)
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
.LFE2524:
	.size	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_, .-_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	.section	.text._ZSt16prev_permutationIPiEbT_S1_,"axG",@progbits,_ZSt16prev_permutationIPiEbT_S1_,comdat
	.align	1
	.weak	_ZSt16prev_permutationIPiEbT_S1_
	.type	_ZSt16prev_permutationIPiEbT_S1_, @function
_ZSt16prev_permutationIPiEbT_S1_:
.LFB2527:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	call	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	mv	a2,s1
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	mv	a5,a0
	mv	a0,a5
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	ld	s1,24(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2527:
	.size	_ZSt16prev_permutationIPiEbT_S1_, .-_ZSt16prev_permutationIPiEbT_S1_
	.section	.text._ZNK4funcIiEclEii,"axG",@progbits,_ZNK4funcIiEclEii,comdat
	.align	1
	.weak	_ZNK4funcIiEclEii
	.type	_ZNK4funcIiEclEii, @function
_ZNK4funcIiEclEii:
.LFB2627:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	mv	a4,a2
	sw	a5,-28(s0)
	mv	a5,a4
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	slliw	a5,a5,1
	sext.w	a5,a5
	lw	a4,-32(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2627:
	.size	_ZNK4funcIiEclEii, .-_ZNK4funcIiEclEii
	.section	.text._ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	1
	.weak	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, @function
_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2630:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	sd	s1,72(sp)
	sd	s2,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sb	a2,-88(s0)
	ld	a5,-72(s0)
	ld	a4,-80(s0)
	bne	a4,a5,.L26
	li	a5,0
	j	.L27
.L26:
	ld	a5,-72(s0)
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	addi	a5,a5,4
	sd	a5,-56(s0)
	ld	a4,-56(s0)
	ld	a5,-80(s0)
	bne	a4,a5,.L28
	li	a5,0
	j	.L27
.L28:
	ld	a5,-80(s0)
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	addi	a5,a5,-4
	sd	a5,-56(s0)
.L34:
	ld	a5,-56(s0)
	sd	a5,-40(s0)
	ld	a5,-56(s0)
	addi	a5,a5,-4
	sd	a5,-56(s0)
	addi	a5,s0,-88
	ld	a2,-56(s0)
	ld	a1,-40(s0)
	mv	a0,a5
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	mv	a5,a0
	beq	a5,zero,.L29
	ld	a5,-80(s0)
	sd	a5,-48(s0)
	nop
.L30:
	ld	a5,-48(s0)
	addi	a5,a5,-4
	sd	a5,-48(s0)
	addi	a5,s0,-88
	ld	a2,-56(s0)
	ld	a1,-48(s0)
	mv	a0,a5
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L30
	ld	a1,-48(s0)
	ld	a0,-56(s0)
	call	_ZSt9iter_swapIPiS0_EvT_T0_
	nop
	mv	a2,s2
	ld	a1,-80(s0)
	ld	a0,-40(s0)
	call	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	li	a5,1
	j	.L27
.L29:
	ld	a5,-72(s0)
	ld	a4,-56(s0)
	bne	a4,a5,.L34
	ld	a5,-72(s0)
	nop
	mv	a2,s1
	ld	a1,-80(s0)
	mv	a0,a5
	call	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	li	a5,0
.L27:
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	ld	s1,72(sp)
	.cfi_restore 9
	ld	s2,64(sp)
	.cfi_restore 18
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2630:
	.size	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, @function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_:
.LFB2697:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sd	a2,-40(s0)
	ld	a5,-32(s0)
	lw	a4,0(a5)
	ld	a5,-40(s0)
	lw	a5,0(a5)
	slt	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2697:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPiS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPiS0_EvT_T0_,comdat
	.align	1
	.weak	_ZSt9iter_swapIPiS0_EvT_T0_
	.type	_ZSt9iter_swapIPiS0_EvT_T0_, @function
_ZSt9iter_swapIPiS0_EvT_T0_:
.LFB2698:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2698:
	.size	_ZSt9iter_swapIPiS0_EvT_T0_, .-_ZSt9iter_swapIPiS0_EvT_T0_
	.section	.text._ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,comdat
	.align	1
	.weak	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, @function
_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag:
.LFB2701:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	sd	s0,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	sb	a2,-40(s0)
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	beq	a4,a5,.L43
	ld	a5,-32(s0)
	addi	a5,a5,-4
	sd	a5,-32(s0)
	j	.L41
.L42:
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_ZSt9iter_swapIPiS0_EvT_T0_
	ld	a5,-24(s0)
	addi	a5,a5,4
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,-4
	sd	a5,-32(s0)
.L41:
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	bltu	a4,a5,.L42
	j	.L38
.L43:
	nop
.L38:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2701:
	.size	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	1
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2754:
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
	sd	a1,-48(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a0,-40(s0)
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mv	a5,a0
	lw	a5,0(a5)
	sw	a5,-28(s0)
	ld	a0,-48(s0)
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mv	a5,a0
	lw	a4,0(a5)
	ld	a5,-40(s0)
	sw	a4,0(a5)
	addi	a5,s0,-28
	mv	a0,a5
	call	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	mv	a5,a0
	lw	a4,0(a5)
	ld	a5,-48(s0)
	sw	a4,0(a5)
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L45
	call	__stack_chk_fail@plt
.L45:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2754:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	1
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2775:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2775:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
