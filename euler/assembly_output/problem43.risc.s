	.file	"problem43.cc"
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
	.align	2
	.type	_ZZ4mainE1N, @object
	.size	_ZZ4mainE1N, 4
_ZZ4mainE1N:
	.word	10
	.align	3
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2240:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	ld	a5,32(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	sd	zero,-80(s0)
.L7:
	lw	a4,-60(s0)
	li	a5,100
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-56(s0)
	mv	a3,a5
	mv	a5,a3
	slliw	a5,a5,2
	addw	a5,a5,a3
	slliw	a5,a5,1
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a4,-56(s0)
	li	a5,100
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-52(s0)
	mv	a3,a5
	mv	a5,a3
	slliw	a5,a5,2
	addw	a5,a5,a3
	slliw	a5,a5,1
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-48(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,3
	remuw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a4,-52(s0)
	li	a5,100
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-48(s0)
	mv	a3,a5
	mv	a5,a3
	slliw	a5,a5,2
	addw	a5,a5,a3
	slliw	a5,a5,1
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-44(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,5
	remuw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a4,-48(s0)
	li	a5,100
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-44(s0)
	mv	a3,a5
	mv	a5,a3
	slliw	a5,a5,2
	addw	a5,a5,a3
	slliw	a5,a5,1
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-40(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,7
	remuw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a4,-44(s0)
	li	a5,100
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-40(s0)
	mv	a3,a5
	mv	a5,a3
	slliw	a5,a5,2
	addw	a5,a5,a3
	slliw	a5,a5,1
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,11
	remuw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a4,-40(s0)
	li	a5,100
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	mv	a3,a5
	mv	a5,a3
	slliw	a5,a5,2
	addw	a5,a5,a3
	slliw	a5,a5,1
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-32(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,13
	remuw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	lw	a4,-36(s0)
	li	a5,100
	mulw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-32(s0)
	mv	a3,a5
	mv	a5,a3
	slliw	a5,a5,2
	addw	a5,a5,a3
	slliw	a5,a5,1
	sext.w	a5,a5
	addw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-28(s0)
	addw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	li	a5,17
	remuw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L4
	li	a5,1
	sd	a5,-72(s0)
	sw	zero,-84(s0)
	j	.L5
.L6:
	li	a5,9
	lw	a4,-84(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-48(a5)
	slli	a4,a5,32
	srli	a4,a4,32
	ld	a5,-72(s0)
	mul	a5,a4,a5
	ld	a4,-80(s0)
	add	a5,a4,a5
	sd	a5,-80(s0)
	ld	a4,-72(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	sd	a5,-72(s0)
	lw	a5,-84(s0)
	addiw	a5,a5,1
	sw	a5,-84(s0)
.L5:
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,9
	bleu	a4,a5,.L6
.L4:
	addi	a5,s0,-64
	addi	a5,a5,40
	addi	a4,s0,-64
	mv	a1,a5
	mv	a0,a4
	call	_ZSt16next_permutationIPjEbT_S1_
	mv	a5,a0
	bne	a5,zero,.L7
	ld	a1,-80(s0)
	la	a0,_ZSt4cout
	call	_ZNSolsEy@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
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
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2240:
	.size	main, .-main
	.section	.text._ZSt16next_permutationIPjEbT_S1_,"axG",@progbits,_ZSt16next_permutationIPjEbT_S1_,comdat
	.align	1
	.weak	_ZSt16next_permutationIPjEbT_S1_
	.type	_ZSt16next_permutationIPjEbT_S1_, @function
_ZSt16next_permutationIPjEbT_S1_:
.LFB2495:
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
	call	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
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
.LFE2495:
	.size	_ZSt16next_permutationIPjEbT_S1_, .-_ZSt16next_permutationIPjEbT_S1_
	.section	.text._ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	1
	.weak	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, @function
_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2598:
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
	bne	a4,a5,.L13
	li	a5,0
	j	.L14
.L13:
	ld	a5,-72(s0)
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	addi	a5,a5,4
	sd	a5,-56(s0)
	ld	a4,-56(s0)
	ld	a5,-80(s0)
	bne	a4,a5,.L15
	li	a5,0
	j	.L14
.L15:
	ld	a5,-80(s0)
	sd	a5,-56(s0)
	ld	a5,-56(s0)
	addi	a5,a5,-4
	sd	a5,-56(s0)
.L21:
	ld	a5,-56(s0)
	sd	a5,-40(s0)
	ld	a5,-56(s0)
	addi	a5,a5,-4
	sd	a5,-56(s0)
	addi	a5,s0,-88
	ld	a2,-40(s0)
	ld	a1,-56(s0)
	mv	a0,a5
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	mv	a5,a0
	beq	a5,zero,.L16
	ld	a5,-80(s0)
	sd	a5,-48(s0)
	nop
.L17:
	ld	a5,-48(s0)
	addi	a5,a5,-4
	sd	a5,-48(s0)
	addi	a5,s0,-88
	ld	a2,-48(s0)
	ld	a1,-56(s0)
	mv	a0,a5
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L17
	ld	a1,-48(s0)
	ld	a0,-56(s0)
	call	_ZSt9iter_swapIPjS0_EvT_T0_
	nop
	mv	a2,s2
	ld	a1,-80(s0)
	ld	a0,-40(s0)
	call	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	li	a5,1
	j	.L14
.L16:
	ld	a5,-72(s0)
	ld	a4,-56(s0)
	bne	a4,a5,.L21
	ld	a5,-72(s0)
	nop
	mv	a2,s1
	ld	a1,-80(s0)
	mv	a0,a5
	call	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	li	a5,0
.L14:
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
.LFE2598:
	.size	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_, @function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_:
.LFB2666:
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
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2666:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPjS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPjS0_EvT_T0_,comdat
	.align	1
	.weak	_ZSt9iter_swapIPjS0_EvT_T0_
	.type	_ZSt9iter_swapIPjS0_EvT_T0_, @function
_ZSt9iter_swapIPjS0_EvT_T0_:
.LFB2667:
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
	call	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
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
.LFE2667:
	.size	_ZSt9iter_swapIPjS0_EvT_T0_, .-_ZSt9iter_swapIPjS0_EvT_T0_
	.section	.text._ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag,comdat
	.align	1
	.weak	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag, @function
_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag:
.LFB2670:
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
	beq	a4,a5,.L30
	ld	a5,-32(s0)
	addi	a5,a5,-4
	sd	a5,-32(s0)
	j	.L28
.L29:
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_ZSt9iter_swapIPjS0_EvT_T0_
	ld	a5,-24(s0)
	addi	a5,a5,4
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,-4
	sd	a5,-32(s0)
.L28:
	ld	a4,-24(s0)
	ld	a5,-32(s0)
	bltu	a4,a5,.L29
	j	.L25
.L30:
	nop
.L25:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2670:
	.size	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	1
	.weak	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2724:
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
	call	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	mv	a5,a0
	lw	a5,0(a5)
	sw	a5,-28(s0)
	ld	a0,-48(s0)
	call	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	mv	a5,a0
	lw	a4,0(a5)
	ld	a5,-40(s0)
	sw	a4,0(a5)
	addi	a5,s0,-28
	mv	a0,a5
	call	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
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
	beq	a5,zero,.L32
	call	__stack_chk_fail@plt
.L32:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2724:
	.size	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	1
	.weak	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2745:
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
.LFE2745:
	.size	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
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
