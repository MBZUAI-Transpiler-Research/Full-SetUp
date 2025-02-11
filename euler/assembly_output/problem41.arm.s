	.arch armv8-a
	.file	"problem41.cc"
	.text
	.section	.text._ZN9__gnu_cxx5__ops16__iter_less_iterEv,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_less_iterEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.type	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, %function
_ZN9__gnu_cxx5__ops16__iter_less_iterEv:
.LFB554:
	.cfi_startproc
	nop
	ret
	.cfi_endproc
.LFE554:
	.size	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, .-_ZN9__gnu_cxx5__ops16__iter_less_iterEv
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.rodata
	.align	3
	.type	_ZZ4mainE1N, %object
	.size	_ZZ4mainE1N, 8
_ZZ4mainE1N:
	.xword	9
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2268:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64
	str	x19, [sp, 80]
	.cfi_offset 19, -16
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 16
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	w1, [x1, 32]
	str	w1, [x0, 32]
	str	wzr, [sp, 8]
	b	.L4
.L7:
	ldr	w0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 16
	add	x4, x1, x0
	add	x0, sp, 16
	add	x0, x0, 36
	mov	w3, w19
	mov	w2, 0
	mov	x1, x0
	mov	x0, x4
	bl	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	bl	_ZL8is_primej
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L5
	ldr	w1, [sp, 12]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSolsEi
	adrp	x1, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x1, :got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	bl	_ZNSolsEPFRSoS_E
	b	.L6
.L5:
	ldr	w0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 16
	add	x2, x1, x0
	add	x0, sp, 16
	add	x0, x0, 36
	mov	x1, x0
	mov	x0, x2
	bl	_ZSt16prev_permutationIPiEbT_S1_
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L4:
	ldr	w0, [sp, 8]
	cmp	w0, 8
	bls	.L7
	nop
.L6:
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L9
	bl	__stack_chk_fail
.L9:
	mov	w0, w1
	ldr	x19, [sp, 80]
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2268:
	.size	main, .-main
	.section	.rodata
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
	.align	2
	.type	_ZL8is_primej, %function
_ZL8is_primej:
.LFB2269:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L11
	mov	w0, 0
	b	.L12
.L11:
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L13
	ldr	w0, [sp, 12]
	cmp	w0, 2
	cset	w0, eq
	and	w0, w0, 255
	b	.L12
.L13:
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L14
.L16:
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 28]
	udiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	b	.L12
.L15:
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
.L14:
	ldr	w0, [sp, 28]
	mul	w0, w0, w0
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bhi	.L16
	mov	w0, 1
.L12:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2269:
	.size	_ZL8is_primej, .-_ZL8is_primej
	.section	.text._ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_,"axG",@progbits,_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_,comdat
	.align	2
	.weak	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	.type	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_, %function
_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_:
.LFB2524:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	str	w2, [sp, 28]
	strb	w3, [sp, 24]
	b	.L18
.L19:
	ldr	x0, [sp, 40]
	ldr	w1, [x0]
	add	x0, sp, 24
	mov	w2, w1
	ldr	w1, [sp, 28]
	bl	_ZNK4funcIiEclEii
	str	w0, [sp, 28]
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
.L18:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bne	.L19
	ldr	w0, [sp, 28]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2524:
	.size	_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_, .-_ZSt10accumulateIPii4funcIiEET0_T_S4_S3_T1_
	.section	.text._ZSt16prev_permutationIPiEbT_S1_,"axG",@progbits,_ZSt16prev_permutationIPiEbT_S1_,comdat
	.align	2
	.weak	_ZSt16prev_permutationIPiEbT_S1_
	.type	_ZSt16prev_permutationIPiEbT_S1_, %function
_ZSt16prev_permutationIPiEbT_S1_:
.LFB2527:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -32
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	bl	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	mov	w2, w19
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2527:
	.size	_ZSt16prev_permutationIPiEbT_S1_, .-_ZSt16prev_permutationIPiEbT_S1_
	.section	.text._ZNK4funcIiEclEii,"axG",@progbits,_ZNK4funcIiEclEii,comdat
	.align	2
	.weak	_ZNK4funcIiEclEii
	.type	_ZNK4funcIiEclEii, %function
_ZNK4funcIiEclEii:
.LFB2627:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	ldr	w1, [sp, 4]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp]
	add	w0, w1, w0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2627:
	.size	_ZNK4funcIiEclEii, .-_ZNK4funcIiEclEii
	.section	.text._ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	2
	.weak	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, %function
_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2630:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	str	x0, [sp, 56]
	str	x1, [sp, 48]
	strb	w2, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 48]
	cmp	x1, x0
	bne	.L26
	mov	w0, 0
	b	.L27
.L26:
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 4
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L28
	mov	w0, 0
	b	.L27
.L28:
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	sub	x0, x0, #4
	str	x0, [sp, 72]
.L34:
	ldr	x0, [sp, 72]
	str	x0, [sp, 88]
	ldr	x0, [sp, 72]
	sub	x0, x0, #4
	str	x0, [sp, 72]
	add	x0, sp, 40
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 88]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L29
	ldr	x0, [sp, 48]
	str	x0, [sp, 80]
	nop
.L30:
	ldr	x0, [sp, 80]
	sub	x0, x0, #4
	str	x0, [sp, 80]
	add	x0, sp, 40
	ldr	x2, [sp, 72]
	ldr	x1, [sp, 80]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L30
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 72]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	nop
	mov	w2, w20
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 88]
	bl	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	mov	w0, 1
	b	.L27
.L29:
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 72]
	cmp	x1, x0
	bne	.L34
	ldr	x0, [sp, 56]
	nop
	mov	w2, w19
	ldr	x1, [sp, 48]
	bl	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	mov	w0, 0
.L27:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2630:
	.size	_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__prev_permutationIPiN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, %function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_:
.LFB2697:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 16]
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	cmp	w1, w0
	cset	w0, lt
	and	w0, w0, 255
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2697:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPiS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPiS0_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapIPiS0_EvT_T0_
	.type	_ZSt9iter_swapIPiS0_EvT_T0_, %function
_ZSt9iter_swapIPiS0_EvT_T0_:
.LFB2698:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2698:
	.size	_ZSt9iter_swapIPiS0_EvT_T0_, .-_ZSt9iter_swapIPiS0_EvT_T0_
	.section	.text._ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, %function
_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag:
.LFB2701:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 24]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	beq	.L43
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	str	x0, [sp, 32]
	b	.L41
.L42:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9iter_swapIPiS0_EvT_T0_
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	str	x0, [sp, 32]
.L41:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L42
	b	.L38
.L43:
	nop
.L38:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2701:
	.size	_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPiEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, %function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2754:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	str	x0, [sp, 8]
	str	x1, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	ldr	x0, [sp, 8]
	bl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	ldr	w0, [x0]
	str	w0, [sp, 20]
	ldr	x0, [sp]
	bl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	str	w1, [x0]
	add	x0, sp, 20
	bl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	ldr	w1, [x0]
	ldr	x0, [sp]
	str	w1, [x0]
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 24]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L45
	bl	__stack_chk_fail
.L45:
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2754:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2775:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2775:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, %object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, %object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, %object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
