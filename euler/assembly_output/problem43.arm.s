	.arch armv8-a
	.file	"problem43.cc"
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
	.align	2
	.type	_ZZ4mainE1N, %object
	.size	_ZZ4mainE1N, 4
_ZZ4mainE1N:
	.word	10
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2240:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 72]
	mov	x1, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 32
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	str	xzr, [sp, 16]
.L7:
	ldr	w1, [sp, 36]
	mov	w0, 100
	mul	w2, w1, w0
	ldr	w1, [sp, 40]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w1, w2, w0
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 40]
	mov	w0, 100
	mul	w2, w1, w0
	ldr	w1, [sp, 44]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w1, w2, w0
	ldr	w0, [sp, 48]
	add	w2, w1, w0
	mov	w0, 43691
	movk	w0, 0xaaaa, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 1
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L4
	ldr	w1, [sp, 44]
	mov	w0, 100
	mul	w2, w1, w0
	ldr	w1, [sp, 48]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w1, w2, w0
	ldr	w0, [sp, 52]
	add	w2, w1, w0
	mov	w0, 52429
	movk	w0, 0xcccc, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L4
	ldr	w1, [sp, 48]
	mov	w0, 100
	mul	w2, w1, w0
	ldr	w1, [sp, 52]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w1, w2, w0
	ldr	w0, [sp, 56]
	add	w2, w1, w0
	mov	w0, 18725
	movk	w0, 0x2492, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	sub	w1, w2, w0
	lsr	w1, w1, 1
	add	w0, w1, w0
	lsr	w1, w0, 2
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L4
	ldr	w1, [sp, 52]
	mov	w0, 100
	mul	w2, w1, w0
	ldr	w1, [sp, 56]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w1, w2, w0
	ldr	w0, [sp, 60]
	add	w1, w1, w0
	mov	w0, 35747
	movk	w0, 0xba2e, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 3
	mov	w2, 11
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 56]
	mov	w0, 100
	mul	w2, w1, w0
	ldr	w1, [sp, 60]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w1, w2, w0
	ldr	w0, [sp, 64]
	add	w1, w1, w0
	mov	w0, 60495
	movk	w0, 0x4ec4, lsl 16
	umull	x0, w1, w0
	lsr	x0, x0, 32
	lsr	w0, w0, 2
	mov	w2, 13
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	bne	.L4
	ldr	w1, [sp, 60]
	mov	w0, 100
	mul	w2, w1, w0
	ldr	w1, [sp, 64]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	add	w1, w2, w0
	ldr	w0, [sp, 68]
	add	w2, w1, w0
	mov	w0, 61681
	movk	w0, 0xf0f0, lsl 16
	umull	x0, w2, w0
	lsr	x0, x0, 32
	lsr	w1, w0, 4
	mov	w0, w1
	lsl	w0, w0, 4
	add	w0, w0, w1
	sub	w1, w2, w0
	cmp	w1, 0
	bne	.L4
	mov	x0, 1
	str	x0, [sp, 24]
	str	wzr, [sp, 12]
	b	.L5
.L6:
	mov	w1, 9
	ldr	w0, [sp, 12]
	sub	w0, w1, w0
	uxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	uxtw	x1, w0
	ldr	x0, [sp, 24]
	mul	x0, x1, x0
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	str	x0, [sp, 24]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L5:
	ldr	w0, [sp, 12]
	cmp	w0, 9
	bls	.L6
.L4:
	add	x0, sp, 32
	add	x0, x0, 40
	add	x2, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZSt16next_permutationIPjEbT_S1_
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L7
	ldr	x1, [sp, 16]
	adrp	x0, :got:_ZSt4cout
	ldr	x0, [x0, :got_lo12:_ZSt4cout]
	bl	_ZNSolsEy
	adrp	x1, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	ldr	x1, [x1, :got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 72]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L9
	bl	__stack_chk_fail
.L9:
	mov	w0, w1
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2240:
	.size	main, .-main
	.section	.rodata
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
	.section	.text._ZSt16next_permutationIPjEbT_S1_,"axG",@progbits,_ZSt16next_permutationIPjEbT_S1_,comdat
	.align	2
	.weak	_ZSt16next_permutationIPjEbT_S1_
	.type	_ZSt16next_permutationIPjEbT_S1_, %function
_ZSt16next_permutationIPjEbT_S1_:
.LFB2495:
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
	bl	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	and	w0, w0, 255
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2495:
	.size	_ZSt16next_permutationIPjEbT_S1_, .-_ZSt16next_permutationIPjEbT_S1_
	.section	.text._ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,"axG",@progbits,_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_,comdat
	.align	2
	.weak	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.type	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, %function
_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_:
.LFB2598:
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
	bne	.L13
	mov	w0, 0
	b	.L14
.L13:
	ldr	x0, [sp, 56]
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	add	x0, x0, 4
	str	x0, [sp, 72]
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bne	.L15
	mov	w0, 0
	b	.L14
.L15:
	ldr	x0, [sp, 48]
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	sub	x0, x0, #4
	str	x0, [sp, 72]
.L21:
	ldr	x0, [sp, 72]
	str	x0, [sp, 88]
	ldr	x0, [sp, 72]
	sub	x0, x0, #4
	str	x0, [sp, 72]
	add	x0, sp, 40
	ldr	x2, [sp, 88]
	ldr	x1, [sp, 72]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L16
	ldr	x0, [sp, 48]
	str	x0, [sp, 80]
	nop
.L17:
	ldr	x0, [sp, 80]
	sub	x0, x0, #4
	str	x0, [sp, 80]
	add	x0, sp, 40
	ldr	x2, [sp, 80]
	ldr	x1, [sp, 72]
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L17
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 72]
	bl	_ZSt9iter_swapIPjS0_EvT_T0_
	nop
	mov	w2, w20
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 88]
	bl	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	mov	w0, 1
	b	.L14
.L16:
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 72]
	cmp	x1, x0
	bne	.L21
	ldr	x0, [sp, 56]
	nop
	mov	w2, w19
	ldr	x1, [sp, 48]
	bl	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	mov	w0, 0
.L14:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2598:
	.size	_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_, .-_ZSt18__next_permutationIPjN9__gnu_cxx5__ops15_Iter_less_iterEEbT_S4_T0_
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_, %function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_:
.LFB2666:
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
	cset	w0, cc
	and	w0, w0, 255
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2666:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPjS3_EEbT_T0_
	.section	.text._ZSt9iter_swapIPjS0_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIPjS0_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapIPjS0_EvT_T0_
	.type	_ZSt9iter_swapIPjS0_EvT_T0_, %function
_ZSt9iter_swapIPjS0_EvT_T0_:
.LFB2667:
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
	bl	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2667:
	.size	_ZSt9iter_swapIPjS0_EvT_T0_, .-_ZSt9iter_swapIPjS0_EvT_T0_
	.section	.text._ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	.type	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag, %function
_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag:
.LFB2670:
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
	beq	.L30
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	str	x0, [sp, 32]
	b	.L28
.L29:
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 40]
	bl	_ZSt9iter_swapIPjS0_EvT_T0_
	ldr	x0, [sp, 40]
	add	x0, x0, 4
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	sub	x0, x0, #4
	str	x0, [sp, 32]
.L28:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcc	.L29
	b	.L25
.L30:
	nop
.L25:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2670:
	.size	_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag, .-_ZSt9__reverseIPjEvT_S1_St26random_access_iterator_tag
	.section	.text._ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, %function
_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB2724:
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
	bl	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	ldr	w0, [x0]
	str	w0, [sp, 20]
	ldr	x0, [sp]
	bl	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	ldr	w1, [x0]
	ldr	x0, [sp, 8]
	str	w1, [x0]
	add	x0, sp, 20
	bl	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
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
	beq	.L32
	bl	__stack_chk_fail
.L32:
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2724:
	.size	_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIjENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2745:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE2745:
	.size	_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRjEONSt16remove_referenceIT_E4typeEOS2_
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
