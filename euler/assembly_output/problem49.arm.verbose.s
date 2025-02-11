	.arch armv8-a
	.file	"problem49.cc"
// GNU C++17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
.LFB40:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.5905, D.5905
	str	x1, [sp]	// __p, __p
// /usr/aarch64-linux-gnu/include/c++/13/new:175: { return __p; }
	ldr	x0, [sp]	// _2, __p
// /usr/aarch64-linux-gnu/include/c++/13/new:175: { return __p; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE40:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZN9__gnu_cxx5__ops16__iter_less_iterEv,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_less_iterEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.type	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, %function
_ZN9__gnu_cxx5__ops16__iter_less_iterEv:
.LFB554:
	.cfi_startproc
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:51:   { return _Iter_less_iter(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:51:   { return _Iter_less_iter(); }
	ret	
	.cfi_endproc
.LFE554:
	.size	_ZN9__gnu_cxx5__ops16__iter_less_iterEv, .-_ZN9__gnu_cxx5__ops16__iter_less_iterEv
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.align	2
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, %function
_ZSt17__size_to_integerm:
.LFB658:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __n, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1018:   __size_to_integer(unsigned long __n) { return __n; }
	ldr	x0, [sp, 8]	// _2, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1018:   __size_to_integer(unsigned long __n) { return __n; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE658:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, %function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev:
.LFB2636:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
	ldr	x0, [sp, 24]	// tmp92, this
	str	x0, [sp, 40]	// tmp92, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	ldr	x0, [sp, 40]	//, this
	bl	_ZNSt15__new_allocatorIiED2Ev		//
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:133:       struct _Vector_impl
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2636:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEEC2Ev, %function
_ZNSt12_Vector_baseIiSaIiEEC2Ev:
.LFB2638:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:315:       _Vector_base() = default;
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev		//
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2638:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2Ev, .-_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEEC1Ev,_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.section	.text._ZNSt6vectorIiSaIiEEC2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEC2Ev
	.type	_ZNSt6vectorIiSaIiEEC2Ev, %function
_ZNSt6vectorIiSaIiEEC2Ev:
.LFB2640:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:531:       vector() = default;
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt12_Vector_baseIiSaIiEEC2Ev		//
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2640:
	.size	_ZNSt6vectorIiSaIiEEC2Ev, .-_ZNSt6vectorIiSaIiEEC2Ev
	.weak	_ZNSt6vectorIiSaIiEEC1Ev
	.set	_ZNSt6vectorIiSaIiEEC1Ev,_ZNSt6vectorIiSaIiEEC2Ev
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB2631:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2631
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	str	x21, [sp, 32]	//,
	mov	x13, 10096	//,
	sub	sp, sp, x13	//,,
	.cfi_def_cfa_offset 10144
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	str	xzr, [sp, 1024]	//,
// problem49.cc:22: {
	adrp	x0, :got:__stack_chk_guard	// tmp154,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp154,
	ldr	x1, [x0]	// tmp256,
	str	x1, [sp, 10088]	// tmp256, D.67738
	mov	x1, 0	// tmp256
// problem49.cc:26:   fill(seen, seen+10000, false);
	add	x0, sp, 88	// _1,,
	mov	x1, 10000	// tmp157,
	add	x0, x0, x1	// tmp156, _1, tmp157
// problem49.cc:26:   fill(seen, seen+10000, false);
	strb	wzr, [sp, 64]	//, MEM[(bool *)_145]
// problem49.cc:26:   fill(seen, seen+10000, false);
	add	x1, sp, 64	// tmp158,,
	add	x3, sp, 88	// tmp159,,
	mov	x2, x1	//, tmp158
	mov	x1, x0	//, _1
	mov	x0, x3	//, tmp159
.LEHB0:
	bl	_ZSt4fillIPbbEvT_S1_RKT0_		//
.LEHE0:
// problem49.cc:28:   for (int i = 1000; i < 10000; i++) {
	mov	w0, 1000	// tmp160,
	str	w0, [sp, 8]	// tmp160, i
// problem49.cc:28:   for (int i = 1000; i < 10000; i++) {
	b	.L11		//
.L27:
	add	x0, sp, 64	// tmp161,,
	str	x0, [sp, 32]	// tmp161, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/allocator.h:163:       allocator() _GLIBCXX_NOTHROW { }
	nop	
// problem49.cc:30:     vector<int> a(4);
	add	x1, sp, 64	// tmp162,,
	add	x0, sp, 40	// tmp163,,
	mov	x2, x1	//, tmp162
	mov	x1, 4	//,
.LEHB1:
	bl	_ZNSt6vectorIiSaIiEEC1EmRKS0_		//
.LEHE1:
// /usr/aarch64-linux-gnu/include/c++/13/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	add	x0, sp, 64	// tmp164,,
	bl	_ZNSt15__new_allocatorIiED2Ev		//
	nop	
// problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	str	wzr, [sp, 12]	//, j
// problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	ldr	w0, [sp, 8]	// tmp165, i
	str	w0, [sp, 16]	// tmp165, t
// problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	b	.L12		//
.L13:
// problem49.cc:32:       a[3-j] = t % 10;
	ldr	w1, [sp, 16]	// tmp166, t
	mov	w0, 26215	// tmp168,
	movk	w0, 0x6666, lsl 16	// tmp168,,
	smull	x0, w1, w0	// tmp167, tmp166, tmp168
	lsr	x0, x0, 32	// tmp169, tmp167,
	asr	w2, w0, 2	// tmp170, tmp169,
	asr	w0, w1, 31	// tmp171, tmp166,
	sub	w19, w2, w0	// _2, tmp170, tmp171
	mov	w0, w19	// tmp172, _2
	lsl	w0, w0, 2	// tmp173, tmp172,
	add	w0, w0, w19	// tmp172, tmp172, _2
	lsl	w0, w0, 1	// tmp174, tmp172,
	sub	w19, w1, w0	// _2, tmp166, tmp172
// problem49.cc:32:       a[3-j] = t % 10;
	mov	w1, 3	// tmp175,
	ldr	w0, [sp, 12]	// tmp176, j
	sub	w0, w1, w0	// _3, tmp175, tmp176
// problem49.cc:32:       a[3-j] = t % 10;
	sxtw	x1, w0	// _4, _3
	add	x0, sp, 40	// tmp177,,
	bl	_ZNSt6vectorIiSaIiEEixEm		//
// problem49.cc:32:       a[3-j] = t % 10;
	str	w19, [x0]	// _2, *_5
// problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	ldr	w0, [sp, 12]	// tmp179, j
	add	w0, w0, 1	// tmp178, tmp179,
	str	w0, [sp, 12]	// tmp178, j
// problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	ldr	w0, [sp, 16]	// tmp181, t
	mov	w1, 26215	// tmp183,
	movk	w1, 0x6666, lsl 16	// tmp183,,
	smull	x1, w0, w1	// tmp182, tmp181, tmp183
	lsr	x1, x1, 32	// tmp184, tmp182,
	asr	w1, w1, 2	// tmp185, tmp184,
	asr	w0, w0, 31	// tmp186, tmp181,
	sub	w0, w1, w0	// tmp180, tmp185, tmp186
	str	w0, [sp, 16]	// tmp180, t
.L12:
// problem49.cc:31:     for (int j = 0, t = i; j < 4; j++, t /= 10) {
	ldr	w0, [sp, 12]	// tmp187, j
	cmp	w0, 3	// tmp187,
	ble	.L13		//,
// problem49.cc:35:     vector<int> s;
	add	x0, sp, 64	// tmp188,,
	bl	_ZNSt6vectorIiSaIiEEC1Ev		//
.L17:
// problem49.cc:38:       int n = accumulate(a.begin(), a.end(), 0, func<int>());
	add	x0, sp, 40	// tmp189,,
	bl	_ZNSt6vectorIiSaIiEE5beginEv		//
	mov	x19, x0	// D.67306,
// problem49.cc:38:       int n = accumulate(a.begin(), a.end(), 0, func<int>());
	add	x0, sp, 40	// tmp190,,
	bl	_ZNSt6vectorIiSaIiEE3endEv		//
// problem49.cc:38:       int n = accumulate(a.begin(), a.end(), 0, func<int>());
	mov	w3, w21	//, D.67308
	mov	w2, 0	//,
	mov	x1, x0	//, D.67307
	mov	x0, x19	//, D.67306
.LEHB2:
	bl	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_		//
// problem49.cc:38:       int n = accumulate(a.begin(), a.end(), 0, func<int>());
	str	w0, [sp, 4]	// _6, n
// problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	ldr	w0, [sp, 4]	// n.2_7, n
	sxtw	x0, w0	// tmp191, n.2_7
	add	x1, sp, 88	// tmp192,,
	ldrb	w0, [x1, x0]	// _8, seen[n.2_7]
// problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	eor	w0, w0, 1	// tmp193, _8,
	and	w0, w0, 255	// _9, tmp193
// problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	and	w0, w0, 1	// tmp194, _9,
	cmp	w0, 0	// tmp194,
	beq	.L14		//,
// problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	ldr	w0, [sp, 4]	// n.3_10, n
	bl	_ZL8is_primei		//
	and	w0, w0, 255	// _11, tmp195
// problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	and	w0, w0, 1	// tmp196, _11,
	cmp	w0, 0	// tmp196,
	beq	.L14		//,
// problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	mov	w0, 1	// iftmp.1_54,
// problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	b	.L15		//
.L14:
// problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	mov	w0, 0	// iftmp.1_54,
.L15:
// problem49.cc:40:       if (!seen[n] && is_prime(n)) {
	and	w0, w0, 1	// tmp197, iftmp.1_54,
	cmp	w0, 0	// tmp197,
	beq	.L16		//,
// problem49.cc:41:         s.push_back(n);
	add	x1, sp, 4	// tmp198,,
	add	x0, sp, 64	// tmp199,,
	bl	_ZNSt6vectorIiSaIiEE9push_backERKi		//
// problem49.cc:42:         seen[n] = true;
	ldr	w0, [sp, 4]	// n.4_12, n
// problem49.cc:42:         seen[n] = true;
	sxtw	x0, w0	// tmp200, n.4_12
	add	x1, sp, 88	// tmp201,,
	mov	w2, 1	// tmp202,
	strb	w2, [x1, x0]	// tmp202, seen[n.4_12]
.L16:
// problem49.cc:44:     } while (next_permutation(a.begin(), a.end()));
	add	x0, sp, 40	// tmp203,,
	bl	_ZNSt6vectorIiSaIiEE5beginEv		//
	mov	x19, x0	// D.67319,
// problem49.cc:44:     } while (next_permutation(a.begin(), a.end()));
	add	x0, sp, 40	// tmp204,,
	bl	_ZNSt6vectorIiSaIiEE3endEv		//
// problem49.cc:44:     } while (next_permutation(a.begin(), a.end()));
	mov	x1, x0	//, D.67320
	mov	x0, x19	//, D.67319
	bl	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_		//
	and	w0, w0, 255	// _99, tmp205
// problem49.cc:44:     } while (next_permutation(a.begin(), a.end()));
	and	w0, w0, 1	// tmp206, _99,
	cmp	w0, 0	// tmp206,
	bne	.L17		//,
// problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	str	wzr, [sp, 20]	//, j
// problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	b	.L18		//
.L26:
// problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	ldr	w0, [sp, 20]	// tmp208, j
	add	w0, w0, 1	// tmp207, tmp208,
	str	w0, [sp, 24]	// tmp207, k
// problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	b	.L19		//
.L25:
// problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	ldr	w0, [sp, 24]	// tmp210, k
	add	w0, w0, 1	// tmp209, tmp210,
	str	w0, [sp, 28]	// tmp209, l
// problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	b	.L20		//
.L24:
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldrsw	x1, [sp, 20]	// _13, j
	add	x0, sp, 64	// tmp211,,
	bl	_ZNSt6vectorIiSaIiEEixEm		//
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldr	w0, [x0]	// _15, *_14
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	cmp	w0, 1487	// _15,
	beq	.L21		//,
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldrsw	x1, [sp, 28]	// _16, l
	add	x0, sp, 64	// tmp212,,
	bl	_ZNSt6vectorIiSaIiEEixEm		//
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldr	w19, [x0]	// _18, *_17
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldrsw	x1, [sp, 24]	// _19, k
	add	x0, sp, 64	// tmp213,,
	bl	_ZNSt6vectorIiSaIiEEixEm		//
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldr	w0, [x0]	// _21, *_20
	sub	w19, w19, w0	// _22, _18, _21
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldrsw	x1, [sp, 24]	// _23, k
	add	x0, sp, 64	// tmp214,,
	bl	_ZNSt6vectorIiSaIiEEixEm		//
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldr	w20, [x0]	// _25, *_24
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldrsw	x1, [sp, 20]	// _26, j
	add	x0, sp, 64	// tmp215,,
	bl	_ZNSt6vectorIiSaIiEEixEm		//
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	ldr	w0, [x0]	// _28, *_27
	sub	w0, w20, w0	// _29, _25, _28
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	cmp	w19, w0	// _22, _29
	bne	.L21		//,
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	mov	w0, 1	// iftmp.7_55,
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	b	.L22		//
.L21:
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	mov	w0, 0	// iftmp.7_55,
.L22:
// problem49.cc:49:           if (s[j] != 1487 && s[l] - s[k] == s[k] - s[j]) {
	and	w0, w0, 1	// tmp216, iftmp.7_55,
	cmp	w0, 0	// tmp216,
	beq	.L23		//,
// problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	ldrsw	x1, [sp, 20]	// _30, j
	add	x0, sp, 64	// tmp217,,
	bl	_ZNSt6vectorIiSaIiEEixEm		//
// problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	ldr	w0, [x0]	// _32, *_31
	mov	w1, w0	//, _32
	adrp	x0, :got:_ZSt4cout	//,
	ldr	x0, [x0, :got_lo12:_ZSt4cout]	//,
	bl	_ZNSolsEi		//
	mov	x19, x0	// _33,
// problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	ldrsw	x1, [sp, 24]	// _34, k
	add	x0, sp, 64	// tmp218,,
	bl	_ZNSt6vectorIiSaIiEEixEm		//
	ldr	w0, [x0]	// _36, *_35
	mov	w1, w0	//, _36
	mov	x0, x19	//, _33
	bl	_ZNSolsEi		//
	mov	x19, x0	// _37,
// problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	ldrsw	x1, [sp, 28]	// _38, l
	add	x0, sp, 64	// tmp219,,
	bl	_ZNSt6vectorIiSaIiEEixEm		//
// problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	ldr	w0, [x0]	// _40, *_39
	mov	w1, w0	//, _40
	mov	x0, x19	//, _37
	bl	_ZNSolsEi		//
// problem49.cc:50:             cout << s[j] << s[k] << s[l] << endl;
	adrp	x1, :got:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_	//,
	ldr	x1, [x1, :got_lo12:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_]	//,
	bl	_ZNSolsEPFRSoS_E		//
.LEHE2:
.L23:
// problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	ldr	w0, [sp, 28]	// tmp221, l
	add	w0, w0, 1	// tmp220, tmp221,
	str	w0, [sp, 28]	// tmp220, l
.L20:
// problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	ldrsw	x19, [sp, 28]	// _42, l
// problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	add	x0, sp, 64	// tmp222,,
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv		//
// problem49.cc:48:         for (int l = k+1; l < s.size(); l++) {
	cmp	x19, x0	// _42, _43
	cset	w0, cc	// tmp224,
	and	w0, w0, 255	// retval.8_115, tmp223
	and	w0, w0, 1	// tmp225, retval.8_115,
	cmp	w0, 0	// tmp225,
	bne	.L24		//,
// problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	ldr	w0, [sp, 24]	// tmp227, k
	add	w0, w0, 1	// tmp226, tmp227,
	str	w0, [sp, 24]	// tmp226, k
.L19:
// problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	ldrsw	x19, [sp, 24]	// _44, k
// problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	add	x0, sp, 64	// tmp228,,
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv		//
// problem49.cc:47:       for (int k = j+1; k < s.size(); k++) {
	cmp	x19, x0	// _44, _45
	cset	w0, cc	// tmp230,
	and	w0, w0, 255	// retval.9_111, tmp229
	and	w0, w0, 1	// tmp231, retval.9_111,
	cmp	w0, 0	// tmp231,
	bne	.L25		//,
// problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	ldr	w0, [sp, 20]	// tmp233, j
	add	w0, w0, 1	// tmp232, tmp233,
	str	w0, [sp, 20]	// tmp232, j
.L18:
// problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	ldrsw	x19, [sp, 20]	// _46, j
// problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	add	x0, sp, 64	// tmp234,,
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv		//
// problem49.cc:46:     for (int j = 0; j < s.size(); j++) {
	cmp	x19, x0	// _46, _47
	cset	w0, cc	// tmp236,
	and	w0, w0, 255	// retval.10_103, tmp235
	and	w0, w0, 1	// tmp237, retval.10_103,
	cmp	w0, 0	// tmp237,
	bne	.L26		//,
// problem49.cc:55:   }
	add	x0, sp, 64	// tmp238,,
	bl	_ZNSt6vectorIiSaIiEED1Ev		//
// problem49.cc:55:   }
	add	x0, sp, 40	// tmp239,,
	bl	_ZNSt6vectorIiSaIiEED1Ev		//
// problem49.cc:28:   for (int i = 1000; i < 10000; i++) {
	ldr	w0, [sp, 8]	// tmp241, i
	add	w0, w0, 1	// tmp240, tmp241,
	str	w0, [sp, 8]	// tmp240, i
.L11:
// problem49.cc:28:   for (int i = 1000; i < 10000; i++) {
	ldr	w1, [sp, 8]	// tmp242, i
	mov	w0, 9999	// tmp243,
	cmp	w1, w0	// tmp242, tmp243
	ble	.L27		//,
// problem49.cc:57:   return 0;
	mov	w0, 0	// _77,
// problem49.cc:58: }
	mov	w1, w0	// <retval>, _77
	adrp	x0, :got:__stack_chk_guard	// tmp255,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp255,
	ldr	x3, [sp, 10088]	// tmp257, D.67738
	ldr	x2, [x0]	// tmp258,
	subs	x3, x3, x2	// tmp257, tmp258
	mov	x2, 0	// tmp258
	beq	.L33		//,
	b	.L36		//
.L34:
// /usr/aarch64-linux-gnu/include/c++/13/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	mov	x19, x0	// tmp246,
	add	x0, sp, 64	// tmp245,,
	bl	_ZNSt15__new_allocatorIiED2Ev		//
	nop	
	mov	x1, x19	// D.67735, tmp246
	adrp	x0, :got:__stack_chk_guard	// tmp247,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp247,
	ldr	x3, [sp, 10088]	// tmp259, D.67738
	ldr	x2, [x0]	// tmp260,
	subs	x3, x3, x2	// tmp259, tmp260
	mov	x2, 0	// tmp260
	beq	.L30		//,
	bl	__stack_chk_fail		//
.L30:
	mov	x0, x1	//, D.67735
.LEHB3:
	bl	_Unwind_Resume		//
.L35:
// problem49.cc:55:   }
	mov	x19, x0	// tmp250,
	add	x0, sp, 64	// tmp248,,
	bl	_ZNSt6vectorIiSaIiEED1Ev		//
	add	x0, sp, 40	// tmp253,,
	bl	_ZNSt6vectorIiSaIiEED1Ev		//
	mov	x1, x19	// D.67736, tmp249
	adrp	x0, :got:__stack_chk_guard	// tmp254,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp254,
	ldr	x3, [sp, 10088]	// tmp261, D.67738
	ldr	x2, [x0]	// tmp262,
	subs	x3, x3, x2	// tmp261, tmp262
	mov	x2, 0	// tmp262
	beq	.L32		//,
	bl	__stack_chk_fail		//
.L32:
	mov	x0, x1	//, D.67736
	bl	_Unwind_Resume		//
.LEHE3:
.L36:
// problem49.cc:58: }
	bl	__stack_chk_fail		//
.L33:
	mov	w0, w1	//, <retval>
	mov	x13, 10096	//,
	add	sp, sp, x13	//,,
	.cfi_def_cfa_offset 48
	ldp	x19, x20, [sp, 16]	//,,
	ldr	x21, [sp, 32]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2631:
	.global	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2631:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2631-.LLSDACSB2631
.LLSDACSB2631:
	.uleb128 .LEHB0-.LFB2631
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2631
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L34-.LFB2631
	.uleb128 0
	.uleb128 .LEHB2-.LFB2631
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L35-.LFB2631
	.uleb128 0
	.uleb128 .LEHB3-.LFB2631
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE2631:
	.text
	.size	main, .-main
	.align	2
	.type	_ZL8is_primei, %function
_ZL8is_primei:
.LFB2642:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// n, n
// problem49.cc:62:   if (n < 2) {
	ldr	w0, [sp, 12]	// tmp98, n
	cmp	w0, 1	// tmp98,
	bgt	.L38		//,
// problem49.cc:63:     return false;
	mov	w0, 0	// _6,
	b	.L39		//
.L38:
// problem49.cc:65:   else if (n % 2 == 0) {
	ldr	w0, [sp, 12]	// n.28_1, n
	and	w0, w0, 1	// _2, n.28_1,
// problem49.cc:65:   else if (n % 2 == 0) {
	cmp	w0, 0	// _2,
	bne	.L40		//,
// problem49.cc:66:     return n == 2;
	ldr	w0, [sp, 12]	// tmp100, n
	cmp	w0, 2	// tmp100,
	cset	w0, eq	// tmp101,
	and	w0, w0, 255	// _6, tmp99
	b	.L39		//
.L40:
// problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	mov	w0, 3	// tmp102,
	str	w0, [sp, 28]	// tmp102, d
// problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	b	.L41		//
.L43:
// problem49.cc:70:       if (n % d == 0) {
	ldr	w0, [sp, 12]	// tmp103, n
	ldr	w1, [sp, 28]	// tmp116, d
	sdiv	w2, w0, w1	// tmp115, tmp103, tmp116
	ldr	w1, [sp, 28]	// tmp118, d
	mul	w1, w2, w1	// tmp117, tmp115, tmp118
	sub	w0, w0, w1	// _3, tmp103, tmp117
// problem49.cc:70:       if (n % d == 0) {
	cmp	w0, 0	// _3,
	bne	.L42		//,
// problem49.cc:71:         return false;
	mov	w0, 0	// _6,
	b	.L39		//
.L42:
// problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	ldr	w0, [sp, 28]	// tmp120, d
	add	w0, w0, 2	// tmp119, tmp120,
	str	w0, [sp, 28]	// tmp119, d
.L41:
// problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	ldr	w0, [sp, 28]	// tmp121, d
	mul	w0, w0, w0	// _4, tmp121, tmp121
// problem49.cc:69:     for (int d = 3; d*d <= n; d += 2) {
	ldr	w1, [sp, 12]	// tmp122, n
	cmp	w1, w0	// tmp122, _4
	bge	.L43		//,
// problem49.cc:74:     return true;
	mov	w0, 1	// _6,
.L39:
// problem49.cc:76: }
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2642:
	.size	_ZL8is_primei, .-_ZL8is_primei
	.section	.text._ZSt4fillIPbbEvT_S1_RKT0_,"axG",@progbits,_ZSt4fillIPbbEvT_S1_RKT0_,comdat
	.align	2
	.weak	_ZSt4fillIPbbEvT_S1_RKT0_
	.type	_ZSt4fillIPbbEvT_S1_RKT0_, %function
_ZSt4fillIPbbEvT_S1_RKT0_:
.LFB2897:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	str	x2, [sp, 24]	// __value, __value
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1007:       std::__fill_a(__first, __last, __value);
	ldr	x2, [sp, 24]	//, __value
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt8__fill_aIPbbEvT_S1_RKT0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1008:     }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2897:
	.size	_ZSt4fillIPbbEvT_S1_RKT0_, .-_ZSt4fillIPbbEvT_S1_RKT0_
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.type	_ZNSt6vectorIiSaIiEEC2EmRKS0_, %function
_ZNSt6vectorIiSaIiEEC2EmRKS0_:
.LFB2905:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2905
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 56]	// this, this
	str	x1, [sp, 48]	// __n, __n
	str	x2, [sp, 40]	// __a, __a
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:557:       : _Base(_S_check_init_len(__n, __a), __a)
	ldr	x19, [sp, 56]	// _1, this
	ldr	x1, [sp, 40]	//, __a
	ldr	x0, [sp, 48]	//, __n
.LEHB4:
	bl	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:557:       : _Base(_S_check_init_len(__n, __a), __a)
	ldr	x2, [sp, 40]	//, __a
	mov	x1, x0	//, _2
	mov	x0, x19	//, _1
	bl	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_		//
.LEHE4:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:558:       { _M_default_initialize(__n); }
	ldr	x1, [sp, 48]	//, __n
	ldr	x0, [sp, 56]	//, this
.LEHB5:
	bl	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm		//
.LEHE5:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:558:       { _M_default_initialize(__n); }
	b	.L48		//
.L47:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:558:       { _M_default_initialize(__n); }
	mov	x19, x0	// tmp96,
	ldr	x0, [sp, 56]	// _3, this
	bl	_ZNSt12_Vector_baseIiSaIiEED2Ev		//
	mov	x0, x19	// D.67742, tmp96
.LEHB6:
	bl	_Unwind_Resume		//
.LEHE6:
.L48:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:558:       { _M_default_initialize(__n); }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2905:
	.section	.gcc_except_table
.LLSDA2905:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2905-.LLSDACSB2905
.LLSDACSB2905:
	.uleb128 .LEHB4-.LFB2905
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2905
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L47-.LFB2905
	.uleb128 0
	.uleb128 .LEHB6-.LFB2905
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2905:
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIiSaIiEEC2EmRKS0_, .-_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.weak	_ZNSt6vectorIiSaIiEEC1EmRKS0_
	.set	_ZNSt6vectorIiSaIiEEC1EmRKS0_,_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEED2Ev
	.type	_ZNSt6vectorIiSaIiEED2Ev, %function
_ZNSt6vectorIiSaIiEED2Ev:
.LFB2908:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2908
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -64
	.cfi_offset 20, -56
	str	x0, [sp, 40]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:735: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	ldr	x0, [sp, 40]	// tmp97, this
	ldr	x20, [x0]	// _1, this_7(D)->D.61696._M_impl.D.61003._M_start
	ldr	x0, [sp, 40]	// tmp98, this
	ldr	x19, [x0, 8]	// _2, this_7(D)->D.61696._M_impl.D.61003._M_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:736: 		      _M_get_Tp_allocator());
	ldr	x0, [sp, 40]	// _3, this
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		//
	str	x20, [sp, 56]	// _1, __first
	str	x19, [sp, 64]	// _2, __last
	str	x0, [sp, 72]	// _4, D.67649
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:948:       std::_Destroy(__first, __last);
	ldr	x1, [sp, 64]	//, __last
	ldr	x0, [sp, 56]	//, __first
	bl	_ZSt8_DestroyIPiEvT_S1_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:949:     }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:738:       }
	ldr	x0, [sp, 40]	// _5, this
	bl	_ZNSt12_Vector_baseIiSaIiEED2Ev		//
	nop	
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2908:
	.section	.gcc_except_table
.LLSDA2908:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2908-.LLSDACSB2908
.LLSDACSB2908:
.LLSDACSE2908:
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.size	_ZNSt6vectorIiSaIiEED2Ev, .-_ZNSt6vectorIiSaIiEED2Ev
	.weak	_ZNSt6vectorIiSaIiEED1Ev
	.set	_ZNSt6vectorIiSaIiEED1Ev,_ZNSt6vectorIiSaIiEED2Ev
	.section	.text._ZNSt6vectorIiSaIiEEixEm,"axG",@progbits,_ZNSt6vectorIiSaIiEEixEm,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEEixEm
	.type	_ZNSt6vectorIiSaIiEEixEm, %function
_ZNSt6vectorIiSaIiEEixEm:
.LFB2910:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	x1, [sp]	// __n, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	ldr	x0, [sp, 8]	// tmp96, this
	ldr	x1, [x0]	// _1, this_4(D)->D.61696._M_impl.D.61003._M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	ldr	x0, [sp]	// tmp97, __n
	lsl	x0, x0, 2	// _2, tmp97,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1129: 	return *(this->_M_impl._M_start + __n);
	add	x0, x1, x0	// _6, _1, _2
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1130:       }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2910:
	.size	_ZNSt6vectorIiSaIiEEixEm, .-_ZNSt6vectorIiSaIiEEixEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, %function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev:
.LFB2912:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
	ldr	x0, [sp, 24]	// tmp93, this
	str	x0, [sp, 32]	// tmp93, this
	ldr	x0, [sp, 32]	// tmp94, this
	str	x0, [sp, 40]	// tmp94, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:88:       __new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/allocator.h:163:       allocator() _GLIBCXX_NOTHROW { }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:142: 	: _Tp_alloc_type()
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:143: 	{ }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2912:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev, %function
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB2915:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2915
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	ldr	x0, [sp, 24]	// tmp99, this
	ldr	x3, [x0]	// _1, this_9(D)->_M_impl.D.61003._M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x0, [sp, 24]	// tmp100, this
	ldr	x1, [x0, 16]	// _2, this_9(D)->_M_impl.D.61003._M_end_of_storage
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	ldr	x0, [sp, 24]	// tmp101, this
	ldr	x0, [x0]	// _3, this_9(D)->_M_impl.D.61003._M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:370: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	x0, x1, x0	// _4, _2, _3
	asr	x0, x0, 2	// tmp102, _4,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:369: 	_M_deallocate(_M_impl._M_start,
	mov	x2, x0	//, _6
	mov	x1, x3	//, _1
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:371:       }
	ldr	x0, [sp, 24]	// _7, this
	bl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev		//
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2915:
	.section	.gcc_except_table
.LLSDA2915:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2915-.LLSDACSB2915
.LLSDACSB2915:
.LLSDACSE2915:
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEED1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEED1Ev,_ZNSt12_Vector_baseIiSaIiEED2Ev
	.section	.text._ZNSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE5beginEv,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE5beginEv
	.type	_ZNSt6vectorIiSaIiEE5beginEv, %function
_ZNSt6vectorIiSaIiEE5beginEv:
.LFB2917:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32	//,,
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:873:       begin() _GLIBCXX_NOEXCEPT
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp95,
	ldr	x1, [x0]	// tmp99,
	str	x1, [sp, 24]	// tmp99, D.67743
	mov	x1, 0	// tmp99
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	ldr	x1, [sp, 8]	// _1, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	add	x0, sp, 16	// tmp96,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	ldr	x0, [sp, 16]	// D.67491, D.64157
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	mov	x1, x0	// <retval>, D.67491
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:874:       { return iterator(this->_M_impl._M_start); }
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp98,
	ldr	x3, [sp, 24]	// tmp100, D.67743
	ldr	x2, [x0]	// tmp101,
	subs	x3, x3, x2	// tmp100, tmp101
	mov	x2, 0	// tmp101
	beq	.L56		//,
	bl	__stack_chk_fail		//
.L56:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 32]	//,,
	add	sp, sp, 48	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2917:
	.size	_ZNSt6vectorIiSaIiEE5beginEv, .-_ZNSt6vectorIiSaIiEE5beginEv
	.section	.text._ZNSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE3endEv,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE3endEv
	.type	_ZNSt6vectorIiSaIiEE3endEv, %function
_ZNSt6vectorIiSaIiEE3endEv:
.LFB2918:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32	//,,
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:893:       end() _GLIBCXX_NOEXCEPT
	adrp	x0, :got:__stack_chk_guard	// tmp95,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp95,
	ldr	x1, [x0]	// tmp100,
	str	x1, [sp, 24]	// tmp100, D.67744
	mov	x1, 0	// tmp100
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	ldr	x0, [sp, 8]	// tmp96, this
	add	x1, x0, 8	// _1, tmp96,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	add	x0, sp, 16	// tmp97,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	ldr	x0, [sp, 16]	// D.67494, D.64159
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	mov	x1, x0	// <retval>, D.67494
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:894:       { return iterator(this->_M_impl._M_finish); }
	adrp	x0, :got:__stack_chk_guard	// tmp99,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp99,
	ldr	x3, [sp, 24]	// tmp101, D.67744
	ldr	x2, [x0]	// tmp102,
	subs	x3, x3, x2	// tmp101, tmp102
	mov	x2, 0	// tmp102
	beq	.L59		//,
	bl	__stack_chk_fail		//
.L59:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 32]	//,,
	add	sp, sp, 48	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2918:
	.size	_ZNSt6vectorIiSaIiEE3endEv, .-_ZNSt6vectorIiSaIiEE3endEv
	.section	.text._ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_,"axG",@progbits,_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_,comdat
	.align	2
	.weak	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_
	.type	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_, %function
_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_:
.LFB2919:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	str	w2, [sp, 28]	// __init, __init
	strb	w3, [sp, 24]	// __binary_op, __binary_op
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	b	.L61		//
.L62:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:169: 	__init = __binary_op(_GLIBCXX_MOVE_IF_20(__init), *__first);
	add	x0, sp, 40	// tmp97,,
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:169: 	__init = __binary_op(_GLIBCXX_MOVE_IF_20(__init), *__first);
	ldr	w1, [x0]	// _2, *_1
	add	x0, sp, 24	// tmp98,,
	mov	w2, w1	//, _2
	ldr	w1, [sp, 28]	//, __init
	bl	_ZNK4funcIiEclEii		//
	str	w0, [sp, 28]	//, __init
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	add	x0, sp, 40	// tmp99,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv		//
.L61:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:168:       for (; __first != __last; ++__first)
	add	x1, sp, 32	// tmp100,,
	add	x0, sp, 40	// tmp101,,
	bl	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		//
	and	w0, w0, 255	// retval.15_8, tmp102
	and	w0, w0, 1	// tmp103, retval.15_8,
	cmp	w0, 0	// tmp103,
	bne	.L62		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:170:       return __init;
	ldr	w0, [sp, 28]	// _9, __init
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_numeric.h:171:     }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2919:
	.size	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_, .-_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_
	.section	.text._ZNSt6vectorIiSaIiEE9push_backERKi,"axG",@progbits,_ZNSt6vectorIiSaIiEE9push_backERKi,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE9push_backERKi
	.type	_ZNSt6vectorIiSaIiEE9push_backERKi, %function
_ZNSt6vectorIiSaIiEE9push_backERKi:
.LFB2920:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!	//,,,
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -80
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __x, __x
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1283: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ldr	x0, [sp, 40]	// tmp106, this
	ldr	x1, [x0, 8]	// _1, this_9(D)->D.61696._M_impl.D.61003._M_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1283: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	ldr	x0, [sp, 40]	// tmp107, this
	ldr	x0, [x0, 16]	// _2, this_9(D)->D.61696._M_impl.D.61003._M_end_of_storage
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1283: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmp	x1, x0	// _1, _2
	beq	.L65		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1286: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	ldr	x1, [sp, 40]	// _3, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1286: 	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
	ldr	x0, [sp, 40]	// tmp108, this
	ldr	x0, [x0, 8]	// _4, this_9(D)->D.61696._M_impl.D.61003._M_finish
	str	x1, [sp, 48]	// _3, __a
	str	x0, [sp, 56]	// _4, __p
	ldr	x0, [sp, 32]	// tmp109, __x
	str	x0, [sp, 64]	// tmp109, __args#0
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:538: 	  __a.construct(__p, std::forward<_Args>(__args)...);
	ldr	x0, [sp, 64]	//, __args#0
	bl	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		//
	mov	x1, x0	// _17,
	ldr	x0, [sp, 48]	// tmp110, __a
	str	x0, [sp, 72]	// tmp110, this
	ldr	x0, [sp, 56]	// tmp111, __p
	str	x0, [sp, 80]	// tmp111, __p
	str	x1, [sp, 88]	// _17, __args#0
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	x0, [sp, 80]	// _21, __p
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mov	x1, x0	//, _21
	mov	x0, 4	//,
	bl	_ZnwmPv		//
	mov	x19, x0	// _22,
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	x0, [sp, 88]	//, __args#0
	bl	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	w0, [x0]	// _25, *_24
	str	w0, [x19]	// _25, MEM[(int *)_22]
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:542: 	}
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1288: 	    ++this->_M_impl._M_finish;
	ldr	x0, [sp, 40]	// tmp112, this
	ldr	x0, [x0, 8]	// _5, this_9(D)->D.61696._M_impl.D.61003._M_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1288: 	    ++this->_M_impl._M_finish;
	add	x1, x0, 4	// _6, _5,
	ldr	x0, [sp, 40]	// tmp113, this
	str	x1, [x0, 8]	// _6, this_9(D)->D.61696._M_impl.D.61003._M_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1293:       }
	b	.L67		//
.L65:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1292: 	  _M_realloc_insert(end(), __x);
	ldr	x0, [sp, 40]	//, this
	bl	_ZNSt6vectorIiSaIiEE3endEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1292: 	  _M_realloc_insert(end(), __x);
	ldr	x2, [sp, 32]	//, __x
	mov	x1, x0	//, D.67449
	ldr	x0, [sp, 40]	//, this
	bl	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_		//
.L67:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1293:       }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 96	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2920:
	.size	_ZNSt6vectorIiSaIiEE9push_backERKi, .-_ZNSt6vectorIiSaIiEE9push_backERKi
	.section	.text._ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_,"axG",@progbits,_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_,comdat
	.align	2
	.weak	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_
	.type	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_, %function
_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_:
.LFB2922:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -32
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2993: 	(__first, __last, __gnu_cxx::__ops::__iter_less_iter());
	bl	_ZN9__gnu_cxx5__ops16__iter_less_iterEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2993: 	(__first, __last, __gnu_cxx::__ops::__iter_less_iter());
	mov	w2, w19	//, D.67498
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_		//
	and	w0, w0, 255	// _4, tmp95
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2994:     }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2922:
	.size	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_, .-_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv, %function
_ZNKSt6vectorIiSaIiEE4sizeEv:
.LFB2923:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x0, [sp, 8]	// tmp98, this
	ldr	x1, [x0, 8]	// _1, this_6(D)->D.61696._M_impl.D.61003._M_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	ldr	x0, [sp, 8]	// tmp99, this
	ldr	x0, [x0]	// _2, this_6(D)->D.61696._M_impl.D.61003._M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	sub	x0, x1, x0	// _3, _1, _2
	asr	x0, x0, 2	// tmp100, _3,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:993:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE2923:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .-_ZNKSt6vectorIiSaIiEE4sizeEv
	.section	.text._ZSt8__fill_aIPbbEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPbbEvT_S1_RKT0_,comdat
	.align	2
	.weak	_ZSt8__fill_aIPbbEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPbbEvT_S1_RKT0_, %function
_ZSt8__fill_aIPbbEvT_S1_RKT0_:
.LFB3025:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	str	x2, [sp, 24]	// __value, __value
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:977:     { std::__fill_a1(__first, __last, __value); }
	ldr	x2, [sp, 24]	//, __value
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:977:     { std::__fill_a1(__first, __last, __value); }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3025:
	.size	_ZSt8__fill_aIPbbEvT_S1_RKT0_, .-_ZSt8__fill_aIPbbEvT_S1_RKT0_
	.section	.text._ZNSt15__new_allocatorIiED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIiED5Ev,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIiED2Ev
	.type	_ZNSt15__new_allocatorIiED2Ev, %function
_ZNSt15__new_allocatorIiED2Ev:
.LFB3030:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:104:       ~__new_allocator() _GLIBCXX_USE_NOEXCEPT { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3030:
	.size	_ZNSt15__new_allocatorIiED2Ev, .-_ZNSt15__new_allocatorIiED2Ev
	.weak	_ZNSt15__new_allocatorIiED1Ev
	.set	_ZNSt15__new_allocatorIiED1Ev,_ZNSt15__new_allocatorIiED2Ev
	.section	.rodata
	.align	3
.LC0:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, %function
_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_:
.LFB3032:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64	//,,
	str	x19, [sp, 80]	//,
	.cfi_offset 19, -16
	str	x0, [sp, 8]	// __n, __n
	str	x1, [sp]	// __a, __a
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1907:       _S_check_init_len(size_type __n, const allocator_type& __a)
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp96,
	ldr	x1, [x0]	// tmp110,
	str	x1, [sp, 56]	// tmp110, D.67745
	mov	x1, 0	// tmp110
	ldr	x0, [sp]	// tmp97, __a
	str	x0, [sp, 32]	// tmp97, __a
	add	x0, sp, 24	// tmp98,,
	str	x0, [sp, 40]	// tmp98, this
	ldr	x0, [sp, 32]	// tmp99, __a
	str	x0, [sp, 48]	// tmp99, D.67703
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/allocator.h:168:       : __allocator_base<_Tp>(__a) { }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	add	x0, sp, 24	// tmp100,,
	bl	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_		//
	mov	x1, x0	// _1,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	ldr	x0, [sp, 8]	// tmp102, __n
	cmp	x0, x1	// tmp102, _1
	cset	w0, hi	// tmp103,
	and	w19, w0, 255	// retval.11_6, tmp101
// /usr/aarch64-linux-gnu/include/c++/13/bits/allocator.h:184:       ~allocator() _GLIBCXX_NOTHROW { }
	add	x0, sp, 24	// tmp104,,
	bl	_ZNSt15__new_allocatorIiED2Ev		//
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1909: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	and	w0, w19, 1	// tmp105, retval.11_6,
	cmp	w0, 0	// tmp105,
	beq	.L75		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1910: 	  __throw_length_error(
	adrp	x0, :got:__stack_chk_guard	// tmp106,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp106,
	ldr	x2, [sp, 56]	// tmp111, D.67745
	ldr	x1, [x0]	// tmp112,
	subs	x2, x2, x1	// tmp111, tmp112
	mov	x1, 0	// tmp112
	beq	.L76		//,
	bl	__stack_chk_fail		//
.L76:
	adrp	x0, .LC0	// tmp107,
	add	x0, x0, :lo12:.LC0	//, tmp107,
	bl	_ZSt20__throw_length_errorPKc		//
.L75:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1912: 	return __n;
	ldr	x0, [sp, 8]	// _8, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1912: 	return __n;
	mov	x1, x0	// <retval>, _8
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1913:       }
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp109,
	ldr	x3, [sp, 56]	// tmp113, D.67745
	ldr	x2, [x0]	// tmp114,
	subs	x3, x3, x2	// tmp113, tmp114
	mov	x2, 0	// tmp114
	beq	.L78		//,
	bl	__stack_chk_fail		//
.L78:
	mov	x0, x1	//, <retval>
	ldr	x19, [sp, 80]	//,
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3032:
	.size	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, %function
_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_:
.LFB3034:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3034
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 56]	// this, this
	str	x1, [sp, 48]	// __n, __n
	str	x2, [sp, 40]	// __a, __a
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:334:       : _M_impl(__a)
	ldr	x0, [sp, 56]	// _1, this
	ldr	x1, [sp, 40]	//, __a
	bl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:335:       { _M_create_storage(__n); }
	ldr	x1, [sp, 48]	//, __n
	ldr	x0, [sp, 56]	//, this
.LEHB7:
	bl	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm		//
.LEHE7:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:335:       { _M_create_storage(__n); }
	b	.L82		//
.L81:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:335:       { _M_create_storage(__n); }
	mov	x19, x0	// tmp95,
	ldr	x0, [sp, 56]	// _2, this
	bl	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev		//
	mov	x0, x19	// D.67747, tmp95
.LEHB8:
	bl	_Unwind_Resume		//
.LEHE8:
.L82:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:335:       { _M_create_storage(__n); }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3034:
	.section	.gcc_except_table
.LLSDA3034:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3034-.LLSDACSB3034
.LLSDACSB3034:
	.uleb128 .LEHB7-.LFB3034
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L81-.LFB3034
	.uleb128 0
	.uleb128 .LEHB8-.LFB3034
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE3034:
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, .-_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_,_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.section	.text._ZNSt6vectorIiSaIiEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE21_M_default_initializeEm,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.type	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, %function
_ZNSt6vectorIiSaIiEE21_M_default_initializeEm:
.LFB3036:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -32
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __n, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1718: 	  std::__uninitialized_default_n_a(this->_M_impl._M_start, __n,
	ldr	x0, [sp, 40]	// tmp96, this
	ldr	x19, [x0]	// _1, this_6(D)->D.61696._M_impl.D.61003._M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1719: 					   _M_get_Tp_allocator());
	ldr	x0, [sp, 40]	// _2, this
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1718: 	  std::__uninitialized_default_n_a(this->_M_impl._M_start, __n,
	mov	x2, x0	//, _3
	ldr	x1, [sp, 32]	//, __n
	mov	x0, x19	//, _1
	bl	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E		//
	mov	x1, x0	// _4,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1717: 	this->_M_impl._M_finish =
	ldr	x0, [sp, 40]	// tmp97, this
	str	x1, [x0, 8]	// _4, this_6(D)->D.61696._M_impl.D.61003._M_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1720:       }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3036:
	.size	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, .-_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, %function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3037:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:302:       { return this->_M_impl; }
	ldr	x0, [sp, 8]	// _2, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:302:       { return this->_M_impl; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3037:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC5Ev,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, %function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev:
.LFB3040:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	ldr	x0, [sp, 8]	// tmp92, this
	str	xzr, [x0]	//, this_2(D)->_M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	ldr	x0, [sp, 8]	// tmp93, this
	str	xzr, [x0, 8]	//, this_2(D)->_M_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:100: 	: _M_start(), _M_finish(), _M_end_of_storage()
	ldr	x0, [sp, 8]	// tmp94, this
	str	xzr, [x0, 16]	//, this_2(D)->_M_end_of_storage
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:101: 	{ }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3040:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, %function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim:
.LFB3042:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!	//,,,
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp	//,
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __p, __p
	str	x2, [sp, 24]	// __n, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:389: 	if (__p)
	ldr	x0, [sp, 32]	// tmp93, __p
	cmp	x0, 0	// tmp93,
	beq	.L89		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:390: 	  _Tr::deallocate(_M_impl, __p, __n);
	ldr	x0, [sp, 40]	// _1, this
	str	x0, [sp, 56]	// _1, __a
	ldr	x0, [sp, 32]	// tmp94, __p
	str	x0, [sp, 64]	// tmp94, __p
	ldr	x0, [sp, 24]	// tmp95, __n
	str	x0, [sp, 72]	// tmp95, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:517:       { __a.deallocate(__p, __n); }
	ldr	x2, [sp, 72]	//, __n
	ldr	x1, [sp, 64]	//, __p
	ldr	x0, [sp, 56]	//, __a
	bl	_ZNSt15__new_allocatorIiE10deallocateEPim		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:517:       { __a.deallocate(__p, __n); }
	nop	
.L89:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:391:       }
	nop	
	ldp	x29, x30, [sp], 80	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3042:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC5ERKS1_,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, %function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_:
.LFB3044:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	x1, [sp]	// __i, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	ldr	x0, [sp]	// tmp93, __i
	ldr	x1, [x0]	// _1, *__i_5(D)
	ldr	x0, [sp, 8]	// tmp94, this
	str	x1, [x0]	// _1, this_3(D)->_M_current
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1077:       : _M_current(__i) { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3044:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.section	.text._ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, %function
_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3046:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -32
	str	x0, [sp, 40]	// __lhs, __lhs
	str	x1, [sp, 32]	// __rhs, __rhs
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	ldr	x0, [sp, 40]	//, __lhs
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	ldr	x19, [x0]	// _2, *_1
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	ldr	x0, [sp, 32]	//, __rhs
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	ldr	x0, [x0]	// _4, *_3
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	cmp	x19, x0	// _2, _4
	cset	w0, ne	// tmp99,
	and	w0, w0, 255	// _10, tmp98
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1244:     { return __lhs.base() != __rhs.base(); }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3046:
	.size	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv, %function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv:
.LFB3047:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1111: 	++_M_current;
	ldr	x0, [sp, 8]	// tmp96, this
	ldr	x0, [x0]	// _1, this_4(D)->_M_current
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1111: 	++_M_current;
	add	x1, x0, 4	// _2, _1,
	ldr	x0, [sp, 8]	// tmp97, this
	str	x1, [x0]	// _2, this_4(D)->_M_current
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1112: 	return *this;
	ldr	x0, [sp, 8]	// _6, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1113:       }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3047:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv:
.LFB3048:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1100:       { return *_M_current; }
	ldr	x0, [sp, 8]	// tmp94, this
	ldr	x0, [x0]	// _3, this_2(D)->_M_current
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1100:       { return *_M_current; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3048:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.section	.text._ZNK4funcIiEclEii,"axG",@progbits,_ZNK4funcIiEclEii,comdat
	.align	2
	.weak	_ZNK4funcIiEclEii
	.type	_ZNK4funcIiEclEii, %function
_ZNK4funcIiEclEii:
.LFB3049:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
	str	w1, [sp, 4]	// a, a
	str	w2, [sp]	// b, b
// problem49.cc:15:     return 10*a + b;
	ldr	w1, [sp, 4]	// tmp95, a
	mov	w0, w1	// tmp96, tmp95
	lsl	w0, w0, 2	// tmp97, tmp96,
	add	w0, w0, w1	// tmp96, tmp96, tmp95
	lsl	w0, w0, 1	// tmp98, tmp96,
	mov	w1, w0	// _1, tmp96
// problem49.cc:15:     return 10*a + b;
	ldr	w0, [sp]	// tmp99, b
	add	w0, w1, w0	// _4, _1, tmp99
// problem49.cc:16:   }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3049:
	.size	_ZNK4funcIiEclEii, .-_ZNK4funcIiEclEii
	.section	.rodata
	.align	3
.LC1:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, %function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB3051:
	.cfi_startproc
	sub	sp, sp, #176	//,,
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, 144]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 144	//,,
	stp	x19, x20, [sp, 160]	//,,
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __position, __position
	str	x2, [sp, 8]	// __args#0, __args#0
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:445:       vector<_Tp, _Alloc>::
	adrp	x0, :got:__stack_chk_guard	// tmp129,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp129,
	ldr	x1, [x0]	// tmp158,
	str	x1, [sp, 136]	// tmp158, D.67748
	mov	x1, 0	// tmp158
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:455: 	_M_check_len(size_type(1), "vector::_M_realloc_insert");
	adrp	x0, .LC1	// tmp130,
	add	x2, x0, :lo12:.LC1	//, tmp130,
	mov	x1, 1	//,
	ldr	x0, [sp, 24]	//, this
	bl	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:455: 	_M_check_len(size_type(1), "vector::_M_realloc_insert");
	str	x0, [sp, 40]	// _32, __len
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:456:       pointer __old_start = this->_M_impl._M_start;
	ldr	x0, [sp, 24]	// tmp131, this
	ldr	x0, [x0]	// tmp132, this_30(D)->D.61696._M_impl.D.61003._M_start
	str	x0, [sp, 48]	// tmp132, __old_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:457:       pointer __old_finish = this->_M_impl._M_finish;
	ldr	x0, [sp, 24]	// tmp133, this
	ldr	x0, [x0, 8]	// tmp134, this_30(D)->D.61696._M_impl.D.61003._M_finish
	str	x0, [sp, 56]	// tmp134, __old_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:458:       const size_type __elems_before = __position - begin();
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt6vectorIiSaIiEE5beginEv		//
	str	x0, [sp, 32]	// tmp135, D.65666
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:458:       const size_type __elems_before = __position - begin();
	add	x1, sp, 32	// tmp136,,
	add	x0, sp, 16	// tmp137,,
	bl	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:458:       const size_type __elems_before = __position - begin();
	str	x0, [sp, 64]	// _1, __elems_before
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:459:       pointer __new_start(this->_M_allocate(__len));
	ldr	x0, [sp, 24]	// _2, this
	ldr	x1, [sp, 40]	//, __len
	bl	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:459:       pointer __new_start(this->_M_allocate(__len));
	str	x0, [sp, 72]	// _41, __new_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:460:       pointer __new_finish(__new_start);
	ldr	x0, [sp, 72]	// tmp138, __new_start
	str	x0, [sp, 80]	// tmp138, __new_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	ldr	x20, [sp, 24]	// _3, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:469: 				   __new_start + __elems_before,
	ldr	x0, [sp, 64]	// tmp139, __elems_before
	lsl	x0, x0, 2	// _4, tmp139,
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:468: 	  _Alloc_traits::construct(this->_M_impl,
	ldr	x1, [sp, 72]	// tmp140, __new_start
	add	x19, x1, x0	// _5, tmp140, _4
	ldr	x0, [sp, 8]	//, __args#0
	bl	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		//
	str	x20, [sp, 88]	// _3, __a
	str	x19, [sp, 96]	// _5, __p
	str	x0, [sp, 104]	// _6, __args#0
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:538: 	  __a.construct(__p, std::forward<_Args>(__args)...);
	ldr	x0, [sp, 104]	//, __args#0
	bl	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		//
	mov	x1, x0	// _63,
	ldr	x0, [sp, 88]	// tmp141, __a
	str	x0, [sp, 112]	// tmp141, this
	ldr	x0, [sp, 96]	// tmp142, __p
	str	x0, [sp, 120]	// tmp142, __p
	str	x1, [sp, 128]	// _63, __args#0
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	x0, [sp, 120]	// _67, __p
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	mov	x1, x0	//, _67
	mov	x0, 4	//,
	bl	_ZnwmPv		//
	mov	x19, x0	// _68,
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	x0, [sp, 128]	//, __args#0
	bl	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	ldr	w0, [x0]	// _71, *_70
	str	w0, [x19]	// _71, MEM[(int *)_68]
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:191: 	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:542: 	}
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:475: 	  __new_finish = pointer();
	str	xzr, [sp, 80]	//, __new_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:480: 	      __new_finish = _S_relocate(__old_start, __position.base(),
	add	x0, sp, 16	// tmp143,,
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:480: 	      __new_finish = _S_relocate(__old_start, __position.base(),
	ldr	x19, [x0]	// _8, *_7
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:481: 					 __new_start, _M_get_Tp_allocator());
	ldr	x0, [sp, 24]	// _9, this
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:480: 	      __new_finish = _S_relocate(__old_start, __position.base(),
	mov	x3, x0	//, _10
	ldr	x2, [sp, 72]	//, __new_start
	mov	x1, x19	//, _8
	ldr	x0, [sp, 48]	//, __old_start
	bl	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_		//
	str	x0, [sp, 80]	//, __new_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:483: 	      ++__new_finish;
	ldr	x0, [sp, 80]	// tmp145, __new_finish
	add	x0, x0, 4	// tmp144, tmp145,
	str	x0, [sp, 80]	// tmp144, __new_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:485: 	      __new_finish = _S_relocate(__position.base(), __old_finish,
	add	x0, sp, 16	// tmp146,,
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:485: 	      __new_finish = _S_relocate(__position.base(), __old_finish,
	ldr	x19, [x0]	// _12, *_11
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:486: 					 __new_finish, _M_get_Tp_allocator());
	ldr	x0, [sp, 24]	// _13, this
	bl	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:485: 	      __new_finish = _S_relocate(__position.base(), __old_finish,
	mov	x3, x0	//, _14
	ldr	x2, [sp, 80]	//, __new_finish
	ldr	x1, [sp, 56]	//, __old_finish
	mov	x0, x19	//, _12
	bl	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_		//
	str	x0, [sp, 80]	//, __new_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:519:       _M_deallocate(__old_start,
	ldr	x3, [sp, 24]	// _22, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:520: 		    this->_M_impl._M_end_of_storage - __old_start);
	ldr	x0, [sp, 24]	// tmp147, this
	ldr	x1, [x0, 16]	// _23, this_30(D)->D.61696._M_impl.D.61003._M_end_of_storage
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:520: 		    this->_M_impl._M_end_of_storage - __old_start);
	ldr	x0, [sp, 48]	// tmp148, __old_start
	sub	x0, x1, x0	// _24, _23, tmp148
	asr	x0, x0, 2	// tmp149, _24,
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:519:       _M_deallocate(__old_start,
	mov	x2, x0	//, _26
	ldr	x1, [sp, 48]	//, __old_start
	mov	x0, x3	//, _22
	bl	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:521:       this->_M_impl._M_start = __new_start;
	ldr	x0, [sp, 24]	// tmp150, this
	ldr	x1, [sp, 72]	// tmp151, __new_start
	str	x1, [x0]	// tmp151, this_30(D)->D.61696._M_impl.D.61003._M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:522:       this->_M_impl._M_finish = __new_finish;
	ldr	x0, [sp, 24]	// tmp152, this
	ldr	x1, [sp, 80]	// tmp153, __new_finish
	str	x1, [x0, 8]	// tmp153, this_30(D)->D.61696._M_impl.D.61003._M_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	ldr	x0, [sp, 40]	// tmp154, __len
	lsl	x0, x0, 2	// _27, tmp154,
	ldr	x1, [sp, 72]	// tmp155, __new_start
	add	x1, x1, x0	// _28, tmp155, _27
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:523:       this->_M_impl._M_end_of_storage = __new_start + __len;
	ldr	x0, [sp, 24]	// tmp156, this
	str	x1, [x0, 16]	// _28, this_30(D)->D.61696._M_impl.D.61003._M_end_of_storage
// /usr/aarch64-linux-gnu/include/c++/13/bits/vector.tcc:524:     }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp157,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp157,
	ldr	x2, [sp, 136]	// tmp159, D.67748
	ldr	x1, [x0]	// tmp160,
	subs	x2, x2, x1	// tmp159, tmp160
	mov	x1, 0	// tmp160
	beq	.L100		//,
	bl	__stack_chk_fail		//
.L100:
	ldp	x19, x20, [sp, 160]	//,,
	ldp	x29, x30, [sp, 144]	//,,
	add	sp, sp, 176	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3051:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.section	.text._ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_,"axG",@progbits,_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_,comdat
	.align	2
	.weak	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_
	.type	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_, %function
_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_:
.LFB3055:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64	//,,
	stp	x19, x20, [sp, 80]	//,,
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	str	x0, [sp, 24]	// __first, __first
	str	x1, [sp, 16]	// __last, __last
	strb	w2, [sp, 8]	// __comp, __comp
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2931:     __next_permutation(_BidirectionalIterator __first,
	adrp	x0, :got:__stack_chk_guard	// tmp107,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp107,
	ldr	x1, [x0]	// tmp137,
	str	x1, [sp, 56]	// tmp137, D.67750
	mov	x1, 0	// tmp137
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	add	x1, sp, 16	// tmp108,,
	add	x0, sp, 24	// tmp109,,
	bl	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		//
	and	w0, w0, 255	// retval.21_11, tmp110
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2934:       if (__first == __last)
	and	w0, w0, 1	// tmp111, retval.21_11,
	cmp	w0, 0	// tmp111,
	beq	.L102		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2935: 	return false;
	mov	w0, 0	// _3,
	b	.L112		//
.L102:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2936:       _BidirectionalIterator __i = __first;
	ldr	x0, [sp, 24]	// tmp112, __first
	str	x0, [sp, 32]	// tmp112, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2937:       ++__i;
	add	x0, sp, 32	// tmp113,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2938:       if (__i == __last)
	add	x1, sp, 16	// tmp114,,
	add	x0, sp, 32	// tmp115,,
	bl	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		//
	and	w0, w0, 255	// retval.22_15, tmp116
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2938:       if (__i == __last)
	and	w0, w0, 1	// tmp117, retval.22_15,
	cmp	w0, 0	// tmp117,
	beq	.L104		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2939: 	return false;
	mov	w0, 0	// _3,
	b	.L112		//
.L104:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2940:       __i = __last;
	ldr	x0, [sp, 16]	// tmp118, __last
	str	x0, [sp, 32]	// tmp118, __i
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2941:       --__i;
	add	x0, sp, 32	// tmp119,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		//
.L111:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2945: 	  _BidirectionalIterator __ii = __i;
	ldr	x0, [sp, 32]	// tmp120, __i
	str	x0, [sp, 40]	// tmp120, __ii
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2946: 	  --__i;
	add	x0, sp, 32	// tmp121,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	add	x0, sp, 8	// tmp122,,
	ldr	x2, [sp, 40]	//, __ii
	ldr	x1, [sp, 32]	//, __i
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_		//
	and	w0, w0, 255	// retval.23_21, tmp123
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2947: 	  if (__comp(__i, __ii))
	and	w0, w0, 1	// tmp124, retval.23_21,
	cmp	w0, 0	// tmp124,
	beq	.L105		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2949: 	      _BidirectionalIterator __j = __last;
	ldr	x0, [sp, 16]	// tmp125, __last
	str	x0, [sp, 48]	// tmp125, __j
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	nop	
.L106:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	add	x0, sp, 48	// tmp126,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		//
	mov	x1, x0	// _1,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2950: 	      while (!__comp(__i, --__j))
	add	x0, sp, 8	// tmp127,,
	ldr	x2, [x1]	//, MEM[(const struct __normal_iterator &)_1]
	ldr	x1, [sp, 32]	//, __i
	bl	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_		//
	and	w0, w0, 255	// _2, tmp128
	eor	w0, w0, 1	// tmp129, _2,
	and	w0, w0, 255	// retval.24_30, tmp129
	and	w0, w0, 1	// tmp130, retval.24_30,
	cmp	w0, 0	// tmp130,
	bne	.L106		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2952: 	      std::iter_swap(__i, __j);
	ldr	x1, [sp, 48]	//, __j
	ldr	x0, [sp, 32]	//, __i
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2953: 	      std::__reverse(__ii, __last,
	mov	w2, w20	//, D.67513
	ldr	x1, [sp, 16]	//, __last
	ldr	x0, [sp, 40]	//, __ii
	bl	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2955: 	      return true;
	mov	w0, 1	// _3,
	b	.L112		//
.L105:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	add	x1, sp, 24	// tmp131,,
	add	x0, sp, 32	// tmp132,,
	bl	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		//
	and	w0, w0, 255	// retval.25_23, tmp133
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2957: 	  if (__i == __first)
	and	w0, w0, 1	// tmp134, retval.25_23,
	cmp	w0, 0	// tmp134,
	beq	.L111		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2959: 	      std::__reverse(__first, __last,
	mov	w2, w19	//, D.67517
	ldr	x1, [sp, 16]	//, __last
	ldr	x0, [sp, 24]	//, __first
	bl	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2961: 	      return false;
	mov	w0, 0	// _3,
.L112:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:2964:     }
	mov	w1, w0	// <retval>, _3
	adrp	x0, :got:__stack_chk_guard	// tmp136,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp136,
	ldr	x3, [sp, 56]	// tmp138, D.67750
	ldr	x2, [x0]	// tmp139,
	subs	x3, x3, x2	// tmp138, tmp139
	mov	x2, 0	// tmp139
	beq	.L113		//,
	bl	__stack_chk_fail		//
.L113:
	mov	w0, w1	//, <retval>
	ldp	x19, x20, [sp, 80]	//,,
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3055:
	.size	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_, .-_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_
	.section	.text._ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.align	2
	.weak	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, %function
_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB3123:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// __first, __first
	str	x1, [sp, 16]	// __last, __last
	str	x2, [sp, 8]	// __value, __value
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:929:       const _Tp __tmp = __value;
	ldr	x0, [sp, 8]	// tmp92, __value
	ldrb	w0, [x0]	// tmp93, *__value_4(D)
	strb	w0, [sp, 47]	// tmp93, __tmp
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	b	.L115		//
.L116:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:931: 	*__first = __tmp;
	ldr	x0, [sp, 24]	// tmp94, __first
	ldrb	w1, [sp, 47]	// tmp95, __tmp
	strb	w1, [x0]	// tmp95, *__first_1
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	ldr	x0, [sp, 24]	// tmp97, __first
	add	x0, x0, 1	// tmp96, tmp97,
	str	x0, [sp, 24]	// tmp96, __first
.L115:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	ldr	x1, [sp, 24]	// tmp98, __first
	ldr	x0, [sp, 16]	// tmp99, __last
	cmp	x1, x0	// tmp98, tmp99
	bne	.L116		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:932:     }
	nop	
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3123:
	.size	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, %function
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_:
.LFB3124:
	.cfi_startproc
	sub	sp, sp, #80	//,,
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64	//,,
	str	x0, [sp, 8]	// __a, __a
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1916:       _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp96,
	ldr	x1, [x0]	// tmp105,
	str	x1, [sp, 56]	// tmp105, D.67751
	mov	x1, 0	// tmp105
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1921: 	const size_t __diffmax
	mov	x0, 2305843009213693951	// tmp97,
	str	x0, [sp, 16]	// tmp97, __diffmax
	ldr	x0, [sp, 8]	// tmp98, __a
	str	x0, [sp, 32]	// tmp98, __a
	ldr	x0, [sp, 32]	// tmp99, __a
	str	x0, [sp, 40]	// tmp99, this
	ldr	x0, [sp, 40]	// tmp100, this
	str	x0, [sp, 48]	// tmp100, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	mov	x0, 2305843009213693951	// D.67693,
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:183:       { return _M_max_size(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:574: 	return __a.max_size();
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1923: 	const size_t __allocmax = _Alloc_traits::max_size(__a);
	str	x0, [sp, 24]	// D.67693, __allocmax
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1924: 	return (std::min)(__diffmax, __allocmax);
	add	x1, sp, 24	// tmp101,,
	add	x0, sp, 16	// tmp102,,
	bl	_ZSt3minImERKT_S2_S2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1924: 	return (std::min)(__diffmax, __allocmax);
	ldr	x0, [x0]	// _8, *_2
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1924: 	return (std::min)(__diffmax, __allocmax);
	mov	x1, x0	// <retval>, _8
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1925:       }
	adrp	x0, :got:__stack_chk_guard	// tmp104,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp104,
	ldr	x3, [sp, 56]	// tmp106, D.67751
	ldr	x2, [x0]	// tmp107,
	subs	x3, x3, x2	// tmp106, tmp107
	mov	x2, 0	// tmp107
	beq	.L122		//,
	bl	__stack_chk_fail		//
.L122:
	mov	x0, x1	//, <retval>
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 80	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3124:
	.size	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5ERKS0_,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, %function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_:
.LFB3129:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __a, __a
	ldr	x0, [sp, 24]	// tmp93, this
	str	x0, [sp, 32]	// tmp93, this
	ldr	x0, [sp, 16]	// tmp94, __a
	str	x0, [sp, 40]	// tmp94, __a
	ldr	x0, [sp, 32]	// tmp95, this
	str	x0, [sp, 48]	// tmp95, this
	ldr	x0, [sp, 40]	// tmp96, __a
	str	x0, [sp, 56]	// tmp96, D.67660
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:92:       __new_allocator(const __new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/allocator.h:168:       : __allocator_base<_Tp>(__a) { }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:147: 	: _Tp_alloc_type(__a)
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:148: 	{ }
	nop	
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3129:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, %function
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm:
.LFB3131:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __n, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	ldr	x1, [sp, 16]	//, __n
	ldr	x0, [sp, 24]	//, this
	bl	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm		//
	mov	x1, x0	// _1,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:398: 	this->_M_impl._M_start = this->_M_allocate(__n);
	ldr	x0, [sp, 24]	// tmp97, this
	str	x1, [x0]	// _1, this_7(D)->_M_impl.D.61003._M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:399: 	this->_M_impl._M_finish = this->_M_impl._M_start;
	ldr	x0, [sp, 24]	// tmp98, this
	ldr	x1, [x0]	// _2, this_7(D)->_M_impl.D.61003._M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:399: 	this->_M_impl._M_finish = this->_M_impl._M_start;
	ldr	x0, [sp, 24]	// tmp99, this
	str	x1, [x0, 8]	// _2, this_7(D)->_M_impl.D.61003._M_finish
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	ldr	x0, [sp, 24]	// tmp100, this
	ldr	x1, [x0]	// _3, this_7(D)->_M_impl.D.61003._M_start
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	ldr	x0, [sp, 16]	// tmp101, __n
	lsl	x0, x0, 2	// _4, tmp101,
	add	x1, x1, x0	// _5, _3, _4
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:400: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	ldr	x0, [sp, 24]	// tmp102, this
	str	x1, [x0, 16]	// _5, this_7(D)->_M_impl.D.61003._M_end_of_storage
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:401:       }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3131:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.section	.text._ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,comdat
	.align	2
	.weak	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, %function
_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E:
.LFB3132:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __n, __n
	str	x2, [sp, 24]	// D.66488, D.66488
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:779:     { return std::__uninitialized_default_n(__first, __n); }
	ldr	x1, [sp, 32]	//, __n
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt25__uninitialized_default_nIPimET_S1_T0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:779:     { return std::__uninitialized_default_n(__first, __n); }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3132:
	.size	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.align	2
	.weak	_ZSt8_DestroyIPiEvT_S1_
	.type	_ZSt8_DestroyIPiEvT_S1_, %function
_ZSt8_DestroyIPiEvT_S1_:
.LFB3133:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// __first, __first
	str	x1, [sp, 16]	// __last, __last
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_construct.h:196: 	__destroy(__first, __last);
	ldr	x1, [sp, 16]	//, __last
	ldr	x0, [sp, 24]	//, __first
	bl	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_construct.h:197:     }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3133:
	.size	_ZSt8_DestroyIPiEvT_S1_, .-_ZSt8_DestroyIPiEvT_S1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, %function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv:
.LFB3135:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1163:       { return _M_current; }
	ldr	x0, [sp, 8]	// _2, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1163:       { return _M_current; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3135:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3136:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __t, __t
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	ldr	x0, [sp, 8]	// _2, __t
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:71:     { return static_cast<_Tp&&>(__t); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3136:
	.size	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,comdat
	.align	2
	.weak	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, %function
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc:
.LFB3138:
	.cfi_startproc
	sub	sp, sp, #96	//,,
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, 64]	//,,
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 64	//,,
	str	x19, [sp, 80]	//,
	.cfi_offset 19, -16
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __n, __n
	str	x2, [sp, 8]	// __s, __s
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1896:       _M_check_len(size_type __n, const char* __s) const
	adrp	x0, :got:__stack_chk_guard	// tmp105,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp105,
	ldr	x1, [x0]	// tmp117,
	str	x1, [sp, 56]	// tmp117, D.67752
	mov	x1, 0	// tmp117
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	ldr	x0, [sp, 24]	//, this
	bl	_ZNKSt6vectorIiSaIiEE8max_sizeEv		//
	mov	x19, x0	// _1,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	ldr	x0, [sp, 24]	//, this
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	sub	x1, x19, x0	// _3, _1, _2
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	ldr	x0, [sp, 16]	// __n.17_4, __n
	cmp	x1, x0	// _3, __n.17_4
	cset	w0, cc	// tmp107,
	and	w0, w0, 255	// retval.16_18, tmp106
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1898: 	if (max_size() - size() < __n)
	and	w0, w0, 1	// tmp108, retval.16_18,
	cmp	w0, 0	// tmp108,
	beq	.L133		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1899: 	  __throw_length_error(__N(__s));
	adrp	x0, :got:__stack_chk_guard	// tmp109,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp109,
	ldr	x2, [sp, 56]	// tmp118, D.67752
	ldr	x1, [x0]	// tmp119,
	subs	x2, x2, x1	// tmp118, tmp119
	mov	x1, 0	// tmp119
	beq	.L134		//,
	bl	__stack_chk_fail		//
.L134:
	ldr	x0, [sp, 8]	//, __s
	bl	_ZSt20__throw_length_errorPKc		//
.L133:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	ldr	x0, [sp, 24]	//, this
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv		//
	mov	x19, x0	// _5,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	ldr	x0, [sp, 24]	//, this
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	str	x0, [sp, 40]	// _6, D.66534
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x1, sp, 16	// tmp110,,
	add	x0, sp, 40	// tmp111,,
	bl	_ZSt3maxImERKT_S2_S2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	ldr	x0, [x0]	// _8, *_7
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1901: 	const size_type __len = size() + (std::max)(size(), __n);
	add	x0, x19, x0	// tmp112, _5, _8
	str	x0, [sp, 48]	// tmp112, __len
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ldr	x0, [sp, 24]	//, this
	bl	_ZNKSt6vectorIiSaIiEE4sizeEv		//
	mov	x1, x0	// _9,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ldr	x0, [sp, 48]	// tmp113, __len
	cmp	x0, x1	// tmp113, _9
	bcc	.L135		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ldr	x0, [sp, 24]	//, this
	bl	_ZNKSt6vectorIiSaIiEE8max_sizeEv		//
	mov	x1, x0	// _10,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ldr	x0, [sp, 48]	// tmp114, __len
	cmp	x0, x1	// tmp114, _10
	bls	.L136		//,
.L135:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ldr	x0, [sp, 24]	//, this
	bl	_ZNKSt6vectorIiSaIiEE8max_sizeEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	b	.L137		//
.L136:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	ldr	x0, [sp, 48]	// iftmp.18_11, __len
.L137:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1902: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	mov	x1, x0	// <retval>, iftmp.18_11
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:1903:       }
	adrp	x0, :got:__stack_chk_guard	// tmp116,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp116,
	ldr	x3, [sp, 56]	// tmp120, D.67752
	ldr	x2, [x0]	// tmp121,
	subs	x3, x3, x2	// tmp120, tmp121
	mov	x2, 0	// tmp121
	beq	.L139		//,
	bl	__stack_chk_fail		//
.L139:
	mov	x0, x1	//, <retval>
	ldr	x19, [sp, 80]	//,
	ldp	x29, x30, [sp, 64]	//,,
	add	sp, sp, 96	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3138:
	.size	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, %function
_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB3139:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -32
	str	x0, [sp, 40]	// __lhs, __lhs
	str	x1, [sp, 32]	// __rhs, __rhs
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	ldr	x0, [sp, 40]	//, __lhs
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	ldr	x19, [x0]	// _2, *_1
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	ldr	x0, [sp, 32]	//, __rhs
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	ldr	x0, [x0]	// _4, *_3
	sub	x0, x19, x0	// _5, _2, _4
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	asr	x0, x0, 2	// tmp99, _5,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1337:     { return __lhs.base() - __rhs.base(); }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3139:
	.size	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.align	2
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, %function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm:
.LFB3140:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
	str	x1, [sp, 16]	// __n, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	ldr	x0, [sp, 16]	// tmp95, __n
	cmp	x0, 0	// tmp95,
	beq	.L143		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	ldr	x0, [sp, 24]	// _1, this
	str	x0, [sp, 32]	// _1, __a
	ldr	x0, [sp, 16]	// tmp96, __n
	str	x0, [sp, 40]	// tmp96, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:482:       { return __a.allocate(__n); }
	mov	x2, 0	//,
	ldr	x1, [sp, 40]	//, __n
	ldr	x0, [sp, 32]	//, __a
	bl	_ZNSt15__new_allocatorIiE8allocateEmPKv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/alloc_traits.h:482:       { return __a.allocate(__n); }
	nop	
	b	.L145		//
.L143:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:381: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	mov	x0, 0	// D.67664,
.L145:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:382:       }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3140:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.section	.text._ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,comdat
	.align	2
	.weak	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, %function
_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_:
.LFB3141:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	str	x2, [sp, 24]	// __result, __result
	str	x3, [sp, 16]	// __alloc, __alloc
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:509: 	return std::__relocate_a(__first, __last, __result, __alloc);
	ldr	x3, [sp, 16]	//, __alloc
	ldr	x2, [sp, 24]	//, __result
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:514:       }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3141:
	.size	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, .-_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.section	.text._ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, %function
_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3143:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -32
	str	x0, [sp, 40]	// __lhs, __lhs
	str	x1, [sp, 32]	// __rhs, __rhs
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	ldr	x0, [sp, 40]	//, __lhs
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	ldr	x19, [x0]	// _2, *_1
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	ldr	x0, [sp, 32]	//, __rhs
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	ldr	x0, [x0]	// _4, *_3
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	cmp	x19, x0	// _2, _4
	cset	w0, eq	// tmp99,
	and	w0, w0, 255	// _10, tmp98
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1228:     { return __lhs.base() == __rhs.base(); }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3143:
	.size	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv,comdat
	.align	2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv, %function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv:
.LFB3144:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1125: 	--_M_current;
	ldr	x0, [sp, 8]	// tmp96, this
	ldr	x0, [x0]	// _1, this_4(D)->_M_current
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1125: 	--_M_current;
	sub	x1, x0, #4	// _2, _1,
	ldr	x0, [sp, 8]	// tmp97, this
	str	x1, [x0]	// _2, this_4(D)->_M_current
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1126: 	return *this;
	ldr	x0, [sp, 8]	// _6, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1127:       }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3144:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_,comdat
	.align	2
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_, %function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_:
.LFB3145:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -48
	str	x0, [sp, 56]	// this, this
	str	x1, [sp, 48]	// __it1, __it1
	str	x2, [sp, 40]	// __it2, __it2
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	add	x0, sp, 48	// tmp98,,
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	ldr	w19, [x0]	// _2, *_1
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	add	x0, sp, 40	// tmp99,,
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	ldr	w0, [x0]	// _4, *_3
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	cmp	w19, w0	// _2, _4
	cset	w0, lt	// tmp101,
	and	w0, w0, 255	// _8, tmp100
// /usr/aarch64-linux-gnu/include/c++/13/bits/predefined_ops.h:45:       { return *__it1 < *__it2; }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3145:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_,comdat
	.align	2
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_, %function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_:
.LFB3146:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -32
	str	x0, [sp, 40]	// __a, __a
	str	x1, [sp, 32]	// __b, __b
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:185:       swap(*__a, *__b);
	add	x0, sp, 40	// tmp94,,
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		//
	mov	x19, x0	// _1,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:185:       swap(*__a, *__b);
	add	x0, sp, 32	// tmp95,,
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:185:       swap(*__a, *__b);
	mov	x1, x0	//, _2
	mov	x0, x19	//, _1
	bl	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:187:     }
	nop	
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3146:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_
	.section	.text._ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag
	.type	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag, %function
_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag:
.LFB3148:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	strb	w2, [sp, 24]	// D.66645, D.66645
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1105:       if (__first == __last)
	add	x1, sp, 32	// tmp94,,
	add	x0, sp, 40	// tmp95,,
	bl	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		//
	and	w0, w0, 255	// retval.26_5, tmp96
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1105:       if (__first == __last)
	and	w0, w0, 1	// tmp97, retval.26_5,
	cmp	w0, 0	// tmp97,
	bne	.L161		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1107:       --__last;
	add	x0, sp, 32	// tmp98,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	b	.L159		//
.L160:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1110: 	  std::iter_swap(__first, __last);
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1111: 	  ++__first;
	add	x0, sp, 40	// tmp99,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1112: 	  --__last;
	add	x0, sp, 32	// tmp100,,
	bl	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv		//
.L159:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	add	x1, sp, 32	// tmp101,,
	add	x0, sp, 40	// tmp102,,
	bl	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_		//
	and	w0, w0, 255	// retval.27_8, tmp103
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1108:       while (__first < __last)
	and	w0, w0, 1	// tmp104, retval.27_8,
	cmp	w0, 0	// tmp104,
	bne	.L160		//,
	b	.L156		//
.L161:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1106: 	return;
	nop	
.L156:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algo.h:1114:     }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3148:
	.size	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag, .-_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, %function
_ZSt3minImERKT_S2_S2_:
.LFB3203:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __a, __a
	str	x1, [sp]	// __b, __b
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	ldr	x0, [sp]	// tmp96, __b
	ldr	x1, [x0]	// _1, *__b_5(D)
	ldr	x0, [sp, 8]	// tmp97, __a
	ldr	x0, [x0]	// _2, *__a_6(D)
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:238:       if (__b < __a)
	cmp	x1, x0	// _1, _2
	bcs	.L163		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:239: 	return __b;
	ldr	x0, [sp]	// _3, __b
	b	.L164		//
.L163:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:240:       return __a;
	ldr	x0, [sp, 8]	// _3, __a
.L164:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:241:     }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3203:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt25__uninitialized_default_nIPimET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPimET_S1_T0_,comdat
	.align	2
	.weak	_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPimET_S1_T0_, %function
_ZSt25__uninitialized_default_nIPimET_S1_T0_:
.LFB3207:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// __first, __first
	str	x1, [sp, 16]	// __n, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:707:       constexpr bool __can_fill
	mov	w0, 1	// tmp94,
	strb	w0, [sp, 47]	// tmp94, __can_fill
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:712: 	__uninit_default_n(__first, __n);
	ldr	x1, [sp, 16]	//, __n
	ldr	x0, [sp, 24]	//, __first
	bl	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:713:     }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3207:
	.size	_ZSt25__uninitialized_default_nIPimET_S1_T0_, .-_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.align	2
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, %function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_:
.LFB3208:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// D.66998, D.66998
	str	x1, [sp]	// D.66999, D.66999
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_construct.h:172:         __destroy(_ForwardIterator, _ForwardIterator) { }
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3208:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.section	.text._ZNSt15__new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZNSt15__new_allocatorIiE10deallocateEPim,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIiE10deallocateEPim
	.type	_ZNSt15__new_allocatorIiE10deallocateEPim, %function
_ZNSt15__new_allocatorIiE10deallocateEPim:
.LFB3209:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __p, __p
	str	x2, [sp, 24]	// __n, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	ldr	x0, [sp, 24]	// tmp93, __n
	lsl	x0, x0, 2	// _2, tmp93,
	mov	x1, x0	//, _2
	ldr	x0, [sp, 32]	//, __p
	bl	_ZdlPvm		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:173:       }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3209:
	.size	_ZNSt15__new_allocatorIiE10deallocateEPim, .-_ZNSt15__new_allocatorIiE10deallocateEPim
	.section	.text._ZNKSt6vectorIiSaIiEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE8max_sizeEv,comdat
	.align	2
	.weak	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.type	_ZNKSt6vectorIiSaIiEE8max_sizeEv, %function
_ZNKSt6vectorIiSaIiEE8max_sizeEv:
.LFB3210:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:999:       { return _S_max_size(_M_get_Tp_allocator()); }
	ldr	x0, [sp, 24]	// _1, this
	bl	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:999:       { return _S_max_size(_M_get_Tp_allocator()); }
	bl	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:999:       { return _S_max_size(_M_get_Tp_allocator()); }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3210:
	.size	_ZNKSt6vectorIiSaIiEE8max_sizeEv, .-_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.align	2
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, %function
_ZSt3maxImERKT_S2_S2_:
.LFB3211:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __a, __a
	str	x1, [sp]	// __b, __b
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	ldr	x0, [sp, 8]	// tmp96, __a
	ldr	x1, [x0]	// _1, *__a_5(D)
	ldr	x0, [sp]	// tmp97, __b
	ldr	x0, [x0]	// _2, *__b_6(D)
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:262:       if (__a < __b)
	cmp	x1, x0	// _1, _2
	bcs	.L173		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:263: 	return __b;
	ldr	x0, [sp]	// _3, __b
	b	.L174		//
.L173:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:264:       return __a;
	ldr	x0, [sp, 8]	// _3, __a
.L174:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:265:     }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3211:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,comdat
	.align	2
	.weak	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, %function
_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_:
.LFB3213:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]	// __first, __first
	str	x1, [sp, 48]	// __last, __last
	str	x2, [sp, 40]	// __result, __result
	str	x3, [sp, 32]	// __alloc, __alloc
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1147:       return std::__relocate_a_1(std::__niter_base(__first),
	ldr	x0, [sp, 56]	//, __first
	bl	_ZSt12__niter_baseIPiET_S1_		//
	mov	x19, x0	// _1,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1147:       return std::__relocate_a_1(std::__niter_base(__first),
	ldr	x0, [sp, 48]	//, __last
	bl	_ZSt12__niter_baseIPiET_S1_		//
	mov	x20, x0	// _2,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1147:       return std::__relocate_a_1(std::__niter_base(__first),
	ldr	x0, [sp, 40]	//, __result
	bl	_ZSt12__niter_baseIPiET_S1_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1147:       return std::__relocate_a_1(std::__niter_base(__first),
	ldr	x3, [sp, 32]	//, __alloc
	mov	x2, x0	//, _3
	mov	x1, x20	//, _2
	mov	x0, x19	//, _1
	bl	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1150:     }
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3213:
	.size	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	2
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, %function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB3215:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32	//,,
	str	x0, [sp, 8]	// __a, __a
	str	x1, [sp]	// __b, __b
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:189:     swap(_Tp& __a, _Tp& __b)
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp98,
	ldr	x1, [x0]	// tmp103,
	str	x1, [sp, 24]	// tmp103, D.67753
	mov	x1, 0	// tmp103
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	x0, [sp, 8]	//, __a
	bl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:197:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	w0, [x0]	// _2, *_1
	str	w0, [sp, 20]	// _2, __tmp
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	ldr	x0, [sp]	//, __b
	bl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:198:       __a = _GLIBCXX_MOVE(__b);
	ldr	w1, [x0]	// _4, *_3
	ldr	x0, [sp, 8]	// tmp99, __a
	str	w1, [x0]	// _4, *__a_8(D)
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	add	x0, sp, 20	// tmp100,,
	bl	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:199:       __b = _GLIBCXX_MOVE(__tmp);
	ldr	w1, [x0]	// _6, *_5
	ldr	x0, [sp]	// tmp101, __b
	str	w1, [x0]	// _6, *__b_11(D)
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:200:     }
	nop	
	adrp	x0, :got:__stack_chk_guard	// tmp102,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp102,
	ldr	x2, [sp, 24]	// tmp104, D.67753
	ldr	x1, [x0]	// tmp105,
	subs	x2, x2, x1	// tmp104, tmp105
	mov	x1, 0	// tmp105
	beq	.L178		//,
	bl	__stack_chk_fail		//
.L178:
	ldp	x29, x30, [sp, 32]	//,,
	add	sp, sp, 48	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3215:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	2
	.weak	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, %function
_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3216:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -32
	str	x0, [sp, 40]	// __lhs, __lhs
	str	x1, [sp, 32]	// __rhs, __rhs
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	ldr	x0, [sp, 40]	//, __lhs
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	ldr	x19, [x0]	// _2, *_1
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	ldr	x0, [sp, 32]	//, __rhs
	bl	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	ldr	x0, [x0]	// _4, *_3
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	cmp	x19, x0	// _2, _4
	cset	w0, cc	// tmp99,
	and	w0, w0, 255	// _10, tmp98
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator.h:1261:     { return __lhs.base() < __rhs.base(); }
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3216:
	.size	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,comdat
	.align	2
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, %function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_:
.LFB3238:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// __first, __first
	str	x1, [sp, 16]	// __n, __n
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:662: 	  if (__n > 0)
	ldr	x0, [sp, 16]	// tmp96, __n
	cmp	x0, 0	// tmp96,
	beq	.L182		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:665: 		= std::__addressof(*__first);
	ldr	x0, [sp, 24]	//, __first
	bl	_ZSt11__addressofIiEPT_RS0_		//
	str	x0, [sp, 40]	//, __val
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:666: 	      std::_Construct(__val);
	ldr	x0, [sp, 40]	//, __val
	bl	_ZSt10_ConstructIiJEEvPT_DpOT0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:667: 	      ++__first;
	ldr	x0, [sp, 24]	// tmp98, __first
	add	x0, x0, 4	// tmp97, tmp98,
	str	x0, [sp, 24]	// tmp97, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:668: 	      __first = std::fill_n(__first, __n - 1, *__val);
	ldr	x0, [sp, 16]	// tmp99, __n
	sub	x0, x0, #1	// _1, tmp99,
	ldr	x2, [sp, 40]	//, __val
	mov	x1, x0	//, _1
	ldr	x0, [sp, 24]	//, __first
	bl	_ZSt6fill_nIPimiET_S1_T0_RKT1_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:668: 	      __first = std::fill_n(__first, __n - 1, *__val);
	str	x0, [sp, 24]	// _12, __first
.L182:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:670: 	  return __first;
	ldr	x0, [sp, 24]	// _14, __first
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:671: 	}
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3238:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	2
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, %function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3239:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// this, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:307:       { return this->_M_impl; }
	ldr	x0, [sp, 8]	// _2, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_vector.h:307:       { return this->_M_impl; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3239:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIiE8allocateEmPKv,comdat
	.align	2
	.weak	_ZNSt15__new_allocatorIiE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIiE8allocateEmPKv, %function
_ZNSt15__new_allocatorIiE8allocateEmPKv:
.LFB3240:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// this, this
	str	x1, [sp, 32]	// __n, __n
	str	x2, [sp, 24]	// D.67124, D.67124
	ldr	x0, [sp, 40]	// tmp100, this
	str	x0, [sp, 56]	// tmp100, this
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:233: 	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
	mov	x0, 2305843009213693951	// D.67724,
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	ldr	x1, [sp, 32]	// tmp102, __n
	cmp	x1, x0	// tmp102, D.67724
	cset	w0, hi	// tmp103,
	and	w0, w0, 255	// _2, tmp101
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	and	x0, x0, 255	// _3, _2
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	cmp	x0, 0	// _4,
	cset	w0, ne	// tmp105,
	and	w0, w0, 255	// retval.13_9, tmp104
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:134: 	if (__builtin_expect(__n > this->_M_max_size(), false))
	and	w0, w0, 1	// tmp106, retval.13_9,
	cmp	w0, 0	// tmp106,
	beq	.L188		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:138: 	    if (__n > (std::size_t(-1) / sizeof(_Tp)))
	ldr	x1, [sp, 32]	// tmp107, __n
	mov	x0, 4611686018427387903	// tmp108,
	cmp	x1, x0	// tmp107, tmp108
	bls	.L189		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:139: 	      std::__throw_bad_array_new_length();
	bl	_ZSt28__throw_bad_array_new_lengthv		//
.L189:
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:140: 	    std::__throw_bad_alloc();
	bl	_ZSt17__throw_bad_allocv		//
.L188:
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	ldr	x0, [sp, 32]	// tmp109, __n
	lsl	x0, x0, 2	// _6, tmp109,
	bl	_Znwm		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/new_allocator.h:152:       }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3240:
	.size	_ZNSt15__new_allocatorIiE8allocateEmPKv, .-_ZNSt15__new_allocatorIiE8allocateEmPKv
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.align	2
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, %function
_ZSt12__niter_baseIPiET_S1_:
.LFB3241:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __it, __it
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:318:     { return __it; }
	ldr	x0, [sp, 8]	// _2, __it
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:318:     { return __it; }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3241:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.align	2
	.weak	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, %function
_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB3242:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	str	x2, [sp, 24]	// __result, __result
	str	x3, [sp, 16]	// __alloc, __alloc
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1118:       ptrdiff_t __count = __last - __first;
	ldr	x1, [sp, 32]	// tmp99, __last
	ldr	x0, [sp, 40]	// tmp100, __first
	sub	x0, x1, x0	// _1, tmp99, tmp100
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1118:       ptrdiff_t __count = __last - __first;
	asr	x0, x0, 2	// tmp101, _1,
	str	x0, [sp, 56]	// tmp101, __count
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1119:       if (__count > 0)
	ldr	x0, [sp, 56]	// tmp102, __count
	cmp	x0, 0	// tmp102,
	ble	.L194		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1131: 	  __builtin_memmove(__result, __first, __count * sizeof(_Tp));
	ldr	x0, [sp, 56]	// __count.19_2, __count
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1131: 	  __builtin_memmove(__result, __first, __count * sizeof(_Tp));
	lsl	x0, x0, 2	// _3, __count.19_2,
	mov	x2, x0	//, _3
	ldr	x1, [sp, 40]	//, __first
	ldr	x0, [sp, 24]	//, __result
	bl	memmove		//
.L194:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1133:       return __result + __count;
	ldr	x0, [sp, 56]	// __count.20_4, __count
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1133:       return __result + __count;
	lsl	x0, x0, 2	// _5, __count.20_4,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1133:       return __result + __count;
	ldr	x1, [sp, 24]	// tmp105, __result
	add	x0, x1, x0	// _13, tmp105, _5
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_uninitialized.h:1134:     }
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3242:
	.size	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB3243:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __t, __t
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	ldr	x0, [sp, 8]	// _2, __t
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:98:     { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3243:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt11__addressofIiEPT_RS0_,"axG",@progbits,_ZSt11__addressofIiEPT_RS0_,comdat
	.align	2
	.weak	_ZSt11__addressofIiEPT_RS0_
	.type	_ZSt11__addressofIiEPT_RS0_, %function
_ZSt11__addressofIiEPT_RS0_:
.LFB3253:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]	// __r, __r
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:52:     { return __builtin_addressof(__r); }
	ldr	x0, [sp, 8]	// _2, __r
// /usr/aarch64-linux-gnu/include/c++/13/bits/move.h:52:     { return __builtin_addressof(__r); }
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3253:
	.size	_ZSt11__addressofIiEPT_RS0_, .-_ZSt11__addressofIiEPT_RS0_
	.section	.text._ZSt10_ConstructIiJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIiJEEvPT_DpOT0_,comdat
	.align	2
	.weak	_ZSt10_ConstructIiJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIiJEEvPT_DpOT0_, %function
_ZSt10_ConstructIiJEEvPT_DpOT0_:
.LFB3254:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// __p, __p
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	ldr	x0, [sp, 24]	// _2, __p
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	mov	x1, x0	//, _2
	mov	x0, 4	//,
	bl	_ZnwmPv		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_construct.h:119:       ::new((void*)__p) _Tp(std::forward<_Args>(__args)...);
	str	wzr, [x0]	//, MEM[(int *)_5]
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_construct.h:120:     }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3254:
	.size	_ZSt10_ConstructIiJEEvPT_DpOT0_, .-_ZSt10_ConstructIiJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPimiET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPimiET_S1_T0_RKT1_,comdat
	.align	2
	.weak	_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPimiET_S1_T0_RKT1_, %function
_ZSt6fill_nIPimiET_S1_T0_RKT1_:
.LFB3255:
	.cfi_startproc
	stp	x29, x30, [sp, -64]!	//,,,
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [sp, 56]	// __first, __first
	str	x1, [sp, 48]	// __n, __n
	str	x2, [sp, 40]	// __value, __value
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1157:       return std::__fill_n_a(__first, std::__size_to_integer(__n), __value,
	ldr	x19, [sp, 56]	// __first.14_1, __first
	ldr	x0, [sp, 48]	//, __n
	bl	_ZSt17__size_to_integerm		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_iterator_base_types.h:240:     { return typename iterator_traits<_Iter>::iterator_category(); }
	nop	
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1157:       return std::__fill_n_a(__first, std::__size_to_integer(__n), __value,
	mov	w3, w20	//, D.67416
	ldr	x2, [sp, 40]	//, __value
	mov	x1, x0	//, _2
	mov	x0, x19	//, __first.14_1
	bl	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1159:     }
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 64	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3255:
	.size	_ZSt6fill_nIPimiET_S1_T0_RKT1_, .-_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.section	.text._ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.align	2
	.weak	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, %function
_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB3262:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __n, __n
	str	x2, [sp, 24]	// __value, __value
	strb	w3, [sp, 16]	// D.67228, D.67228
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1123:       if (__n <= 0)
	ldr	x0, [sp, 32]	// tmp97, __n
	cmp	x0, 0	// tmp97,
	bne	.L205		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1124: 	return __first;
	ldr	x0, [sp, 40]	// _4, __first
	b	.L206		//
.L205:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1128:       std::__fill_a(__first, __first + __n, __value);
	ldr	x0, [sp, 32]	// tmp98, __n
	lsl	x0, x0, 2	// _1, tmp98,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1128:       std::__fill_a(__first, __first + __n, __value);
	ldr	x1, [sp, 40]	// tmp99, __first
	add	x0, x1, x0	// _2, tmp99, _1
	ldr	x2, [sp, 24]	//, __value
	mov	x1, x0	//, _2
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt8__fill_aIPiiEvT_S1_RKT0_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1129:       return __first + __n;
	ldr	x0, [sp, 32]	// tmp100, __n
	lsl	x0, x0, 2	// _3, tmp100,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1129:       return __first + __n;
	ldr	x1, [sp, 40]	// tmp101, __first
	add	x0, x1, x0	// _4, tmp101, _3
.L206:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:1130:     }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3262:
	.size	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt8__fill_aIPiiEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPiiEvT_S1_RKT0_,comdat
	.align	2
	.weak	_ZSt8__fill_aIPiiEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPiiEvT_S1_RKT0_, %function
_ZSt8__fill_aIPiiEvT_S1_RKT0_:
.LFB3263:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 40]	// __first, __first
	str	x1, [sp, 32]	// __last, __last
	str	x2, [sp, 24]	// __value, __value
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:977:     { std::__fill_a1(__first, __last, __value); }
	ldr	x2, [sp, 24]	//, __value
	ldr	x1, [sp, 32]	//, __last
	ldr	x0, [sp, 40]	//, __first
	bl	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_		//
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:977:     { std::__fill_a1(__first, __last, __value); }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3263:
	.size	_ZSt8__fill_aIPiiEvT_S1_RKT0_, .-_ZSt8__fill_aIPiiEvT_S1_RKT0_
	.section	.text._ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.align	2
	.weak	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, %function
_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB3264:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// __first, __first
	str	x1, [sp, 16]	// __last, __last
	str	x2, [sp, 8]	// __value, __value
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:929:       const _Tp __tmp = __value;
	ldr	x0, [sp, 8]	// tmp92, __value
	ldr	w0, [x0]	// tmp93, *__value_4(D)
	str	w0, [sp, 44]	// tmp93, __tmp
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	b	.L209		//
.L210:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:931: 	*__first = __tmp;
	ldr	x0, [sp, 24]	// tmp94, __first
	ldr	w1, [sp, 44]	// tmp95, __tmp
	str	w1, [x0]	// tmp95, *__first_1
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	ldr	x0, [sp, 24]	// tmp97, __first
	add	x0, x0, 4	// tmp96, tmp97,
	str	x0, [sp, 24]	// tmp96, __first
.L209:
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:930:       for (; __first != __last; ++__first)
	ldr	x1, [sp, 24]	// tmp98, __first
	ldr	x0, [sp, 16]	// tmp99, __last
	cmp	x1, x0	// tmp98, tmp99
	bne	.L210		//,
// /usr/aarch64-linux-gnu/include/c++/13/bits/stl_algobase.h:932:     }
	nop	
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE3264:
	.size	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
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
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, %object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
