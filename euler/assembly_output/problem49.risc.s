	.file	"problem49.cc"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	1
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB40:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-32(s0)
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	_ZnwmPv, .-_ZnwmPv
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
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.align	1
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB658:
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
.LFE658:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev:
.LFB2636:
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
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a0,-24(s0)
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2636:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEEC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEEC2Ev:
.LFB2638:
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
	ld	a5,-24(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
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
.LFE2638:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2Ev, .-_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEEC1Ev,_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.section	.text._ZNSt6vectorIiSaIiEEC2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5Ev,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEEC2Ev
	.type	_ZNSt6vectorIiSaIiEEC2Ev, @function
_ZNSt6vectorIiSaIiEEC2Ev:
.LFB2640:
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
	ld	a5,-24(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEEC2Ev
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
.LFE2640:
	.size	_ZNSt6vectorIiSaIiEEC2Ev, .-_ZNSt6vectorIiSaIiEEC2Ev
	.weak	_ZNSt6vectorIiSaIiEEC1Ev
	.set	_ZNSt6vectorIiSaIiEEC1Ev,_ZNSt6vectorIiSaIiEEC2Ev
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB2631:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2631
	addi	sp,sp,-1952
	.cfi_def_cfa_offset 1952
	sd	ra,1944(sp)
	sd	s0,1936(sp)
	sd	s1,1928(sp)
	sd	s2,1920(sp)
	sd	s3,1912(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	.cfi_offset 19, -40
	addi	s0,sp,1952
	.cfi_def_cfa 8, 0
	li	t0,-8192
	add	sp,sp,t0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -56(s0)
	li	a4, 0
	li	a5,-8192
	addi	a5,a5,-1816
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,8192
	addi	a4,a4,1808
	add	a5,a5,a4
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	sb	zero,-1840(a4)
	li	a4,-8192
	addi	a4,a4,-1840
	addi	a4,a4,-48
	add	a3,a4,s0
	li	a4,-8192
	addi	a4,a4,-1816
	addi	a4,a4,-48
	add	a4,a4,s0
	mv	a2,a3
	mv	a1,a5
	mv	a0,a4
.LEHB0:
	call	_ZSt4fillIPbbEvT_S1_RKT0_
.LEHE0:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,1000
	sw	a4,-1896(a5)
	j	.L11
.L27:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-1840
	addi	a4,a4,-48
	add	a4,a4,s0
	sd	a4,-1872(a5)
	nop
	nop
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,-1864
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a2,a4
	li	a1,4
	mv	a0,a5
.LEHB1:
	call	_ZNSt6vectorIiSaIiEEC1EmRKS0_
.LEHE1:
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	sw	zero,-1892(a5)
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	lw	a4,-1896(a4)
	sw	a4,-1888(a5)
	j	.L12
.L13:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a5,-1888(a5)
	mv	a4,a5
	li	a5,10
	remw	a5,a4,a5
	sext.w	s1,a5
	li	a5,-8192
	addi	a5,a5,-48
	add	a4,a5,s0
	li	a5,3
	lw	a4,-1892(a4)
	subw	a5,a5,a4
	sext.w	a5,a5
	mv	a4,a5
	li	a5,-8192
	addi	a5,a5,-1864
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEixEm
	mv	a5,a0
	sw	s1,0(a5)
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	lw	a4,-1892(a4)
	addiw	a4,a4,1
	sw	a4,-1892(a5)
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	lw	a4,-1888(a4)
	mv	a3,a4
	li	a4,10
	divw	a4,a3,a4
	sw	a4,-1888(a5)
.L12:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a5,-1892(a5)
	sext.w	a4,a5
	li	a5,3
	ble	a4,a5,.L13
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEC1Ev
.L17:
	li	a5,-8192
	addi	a5,a5,-1864
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEE5beginEv
	mv	s1,a0
	li	a5,-8192
	addi	a5,a5,-1864
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEE3endEv
	mv	a5,a0
	mv	a3,s3
	li	a2,0
	mv	a1,a5
	mv	a0,s1
.LEHB2:
	call	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_
	mv	a5,a0
	mv	a4,a5
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	sw	a4,-1900(a5)
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a5,-1900(a5)
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	add	a5,a4,a5
	lbu	a5,-1816(a5)
	xori	a5,a5,1
	andi	a5,a5,0xff
	beq	a5,zero,.L14
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a5,-1900(a5)
	mv	a0,a5
	call	_ZL8is_primei
	mv	a5,a0
	beq	a5,zero,.L14
	li	a5,1
	j	.L15
.L14:
	li	a5,0
.L15:
	beq	a5,zero,.L16
	li	a5,-8192
	addi	a5,a5,-1900
	addi	a5,a5,-48
	add	a4,a5,s0
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEE9push_backERKi
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a5,-1900(a5)
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	add	a5,a4,a5
	li	a4,1
	sb	a4,-1816(a5)
.L16:
	li	a5,-8192
	addi	a5,a5,-1864
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEE5beginEv
	mv	s1,a0
	li	a5,-8192
	addi	a5,a5,-1864
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEE3endEv
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_
	mv	a5,a0
	bne	a5,zero,.L17
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	sw	zero,-1884(a5)
	j	.L18
.L26:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	lw	a4,-1884(a4)
	addiw	a4,a4,1
	sw	a4,-1880(a5)
	j	.L19
.L25:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	lw	a4,-1880(a4)
	addiw	a4,a4,1
	sw	a4,-1876(a5)
	j	.L20
.L24:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a4,-1884(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEixEm
	mv	a5,a0
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,1487
	beq	a4,a5,.L21
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a4,-1876(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEixEm
	mv	a5,a0
	lw	s1,0(a5)
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a4,-1880(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEixEm
	mv	a5,a0
	lw	a5,0(a5)
	subw	a5,s1,a5
	sext.w	s2,a5
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a4,-1880(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEixEm
	mv	a5,a0
	lw	s1,0(a5)
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a4,-1884(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEixEm
	mv	a5,a0
	lw	a5,0(a5)
	subw	a5,s1,a5
	sext.w	a5,a5
	mv	a4,s2
	bne	a4,a5,.L21
	li	a5,1
	j	.L22
.L21:
	li	a5,0
.L22:
	beq	a5,zero,.L23
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a4,-1884(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEixEm
	mv	a5,a0
	lw	a5,0(a5)
	mv	a1,a5
	la	a0,_ZSt4cout
	call	_ZNSolsEi@plt
	mv	s1,a0
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a4,-1880(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEixEm
	mv	a5,a0
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,s1
	call	_ZNSolsEi@plt
	mv	s1,a0
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a4,-1876(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a1,a4
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEEixEm
	mv	a5,a0
	lw	a5,0(a5)
	mv	a1,a5
	mv	a0,s1
	call	_ZNSolsEi@plt
	mv	a5,a0
	la	a1,_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	mv	a0,a5
	call	_ZNSolsEPFRSoS_E@plt
.LEHE2:
.L23:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	lw	a4,-1876(a4)
	addiw	a4,a4,1
	sw	a4,-1876(a5)
.L20:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	s1,-1876(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	mv	a5,a0
	sltu	a5,s1,a5
	andi	a5,a5,0xff
	bne	a5,zero,.L24
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	lw	a4,-1880(a4)
	addiw	a4,a4,1
	sw	a4,-1880(a5)
.L19:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	s1,-1880(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	mv	a5,a0
	sltu	a5,s1,a5
	andi	a5,a5,0xff
	bne	a5,zero,.L25
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	lw	a4,-1884(a4)
	addiw	a4,a4,1
	sw	a4,-1884(a5)
.L18:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	s1,-1884(a5)
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	mv	a5,a0
	sltu	a5,s1,a5
	andi	a5,a5,0xff
	bne	a5,zero,.L26
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEED1Ev
	li	a5,-8192
	addi	a5,a5,-1864
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEED1Ev
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	li	a4,-8192
	addi	a4,a4,-48
	add	a4,a4,s0
	lw	a4,-1896(a4)
	addiw	a4,a4,1
	sw	a4,-1896(a5)
.L11:
	li	a5,-8192
	addi	a5,a5,-48
	add	a5,a5,s0
	lw	a5,-1896(a5)
	sext.w	a4,a5
	li	a5,8192
	addi	a5,a5,1807
	ble	a4,a5,.L27
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -56(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L33
	j	.L36
.L34:
	mv	s1,a0
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	mv	a4,s1
	la	a5,__stack_chk_guard
	ld	a3, -56(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L30
	call	__stack_chk_fail@plt
.L30:
	mv	a0,a4
.LEHB3:
	call	_Unwind_Resume@plt
.L35:
	mv	s1,a0
	li	a5,-8192
	addi	a5,a5,-1840
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEED1Ev
	li	a5,-8192
	addi	a5,a5,-1864
	addi	a5,a5,-48
	add	a5,a5,s0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEED1Ev
	mv	a4,s1
	la	a5,__stack_chk_guard
	ld	a3, -56(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L32
	call	__stack_chk_fail@plt
.L32:
	mv	a0,a4
	call	_Unwind_Resume@plt
.LEHE3:
.L36:
	call	__stack_chk_fail@plt
.L33:
	mv	a0,a4
	li	t0,8192
	add	sp,sp,t0
	.cfi_def_cfa 2, 1952
	ld	ra,1944(sp)
	.cfi_restore 1
	ld	s0,1936(sp)
	.cfi_restore 8
	ld	s1,1928(sp)
	.cfi_restore 9
	ld	s2,1920(sp)
	.cfi_restore 18
	ld	s3,1912(sp)
	.cfi_restore 19
	addi	sp,sp,1952
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2631:
	.globl	__gxx_personality_v0
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
	.align	1
	.type	_ZL8is_primei, @function
_ZL8is_primei:
.LFB2642:
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
	bgt	a4,a5,.L38
	li	a5,0
	j	.L39
.L38:
	lw	a5,-36(s0)
	andi	a5,a5,1
	sext.w	a5,a5
	bne	a5,zero,.L40
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,2
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	j	.L39
.L40:
	li	a5,3
	sw	a5,-20(s0)
	j	.L41
.L43:
	lw	a5,-36(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L42
	li	a5,0
	j	.L39
.L42:
	lw	a5,-20(s0)
	addiw	a5,a5,2
	sw	a5,-20(s0)
.L41:
	lw	a5,-20(s0)
	mulw	a5,a5,a5
	sext.w	a4,a5
	lw	a5,-36(s0)
	sext.w	a5,a5
	bge	a5,a4,.L43
	li	a5,1
.L39:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2642:
	.size	_ZL8is_primei, .-_ZL8is_primei
	.section	.text._ZSt4fillIPbbEvT_S1_RKT0_,"axG",@progbits,_ZSt4fillIPbbEvT_S1_RKT0_,comdat
	.align	1
	.weak	_ZSt4fillIPbbEvT_S1_RKT0_
	.type	_ZSt4fillIPbbEvT_S1_RKT0_, @function
_ZSt4fillIPbbEvT_S1_RKT0_:
.LFB2897:
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
	sd	a2,-40(s0)
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_ZSt8__fill_aIPbbEvT_S1_RKT0_
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2897:
	.size	_ZSt4fillIPbbEvT_S1_RKT0_, .-_ZSt4fillIPbbEvT_S1_RKT0_
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EmRKS0_,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEEC2EmRKS0_
	.type	_ZNSt6vectorIiSaIiEEC2EmRKS0_, @function
_ZNSt6vectorIiSaIiEEC2EmRKS0_:
.LFB2905:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2905
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	s1,-40(s0)
	ld	a1,-56(s0)
	ld	a0,-48(s0)
.LEHB4:
	call	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	mv	a5,a0
	ld	a2,-56(s0)
	mv	a1,a5
	mv	a0,s1
	call	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
.LEHE4:
	ld	a1,-48(s0)
	ld	a0,-40(s0)
.LEHB5:
	call	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
.LEHE5:
	j	.L48
.L47:
	mv	s1,a0
	ld	a5,-40(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	mv	a5,s1
	mv	a0,a5
.LEHB6:
	call	_Unwind_Resume@plt
.LEHE6:
.L48:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
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
	.align	1
	.weak	_ZNSt6vectorIiSaIiEED2Ev
	.type	_ZNSt6vectorIiSaIiEED2Ev, @function
_ZNSt6vectorIiSaIiEED2Ev:
.LFB2908:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2908
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	sd	s1,56(sp)
	sd	s2,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	ld	a5,-72(s0)
	ld	s2,0(a5)
	ld	a5,-72(s0)
	ld	s1,8(a5)
	ld	a5,-72(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mv	a5,a0
	sd	s2,-56(s0)
	sd	s1,-48(s0)
	sd	a5,-40(s0)
	ld	a1,-48(s0)
	ld	a0,-56(s0)
	call	_ZSt8_DestroyIPiEvT_S1_
	nop
	ld	a5,-72(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	ld	s1,56(sp)
	.cfi_restore 9
	ld	s2,48(sp)
	.cfi_restore 18
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
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
	.align	1
	.weak	_ZNSt6vectorIiSaIiEEixEm
	.type	_ZNSt6vectorIiSaIiEEixEm, @function
_ZNSt6vectorIiSaIiEEixEm:
.LFB2910:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-24(s0)
	ld	a4,0(a5)
	ld	a5,-32(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2910:
	.size	_ZNSt6vectorIiSaIiEEixEm, .-_ZNSt6vectorIiSaIiEEixEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev:
.LFB2912:
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
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a5,-32(s0)
	sd	a5,-24(s0)
	nop
	nop
	ld	a5,-40(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2912:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev, @function
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB2915:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2915
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	ld	a3,0(a5)
	ld	a5,-24(s0)
	ld	a4,16(a5)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	sub	a5,a4,a5
	srai	a5,a5,2
	mv	a2,a5
	mv	a1,a3
	ld	a0,-24(s0)
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	ld	a5,-24(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
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
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE5beginEv
	.type	_ZNSt6vectorIiSaIiEE5beginEv, @function
_ZNSt6vectorIiSaIiEE5beginEv:
.LFB2917:
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
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a4,-40(s0)
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	ld	a5,-32(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L56
	call	__stack_chk_fail@plt
.L56:
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
.LFE2917:
	.size	_ZNSt6vectorIiSaIiEE5beginEv, .-_ZNSt6vectorIiSaIiEE5beginEv
	.section	.text._ZNSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE3endEv,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE3endEv
	.type	_ZNSt6vectorIiSaIiEE3endEv, @function
_ZNSt6vectorIiSaIiEE3endEv:
.LFB2918:
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
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	ld	a5,-40(s0)
	addi	a4,a5,8
	addi	a5,s0,-32
	mv	a1,a4
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	ld	a5,-32(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L59
	call	__stack_chk_fail@plt
.L59:
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
.LFE2918:
	.size	_ZNSt6vectorIiSaIiEE3endEv, .-_ZNSt6vectorIiSaIiEE3endEv
	.section	.text._ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_,"axG",@progbits,_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_,comdat
	.align	1
	.weak	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_
	.type	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_, @function
_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_:
.LFB2919:
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
	j	.L61
.L62:
	addi	a5,s0,-24
	mv	a0,a5
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	mv	a5,a0
	lw	a3,0(a5)
	lw	a4,-36(s0)
	addi	a5,s0,-40
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	_ZNK4funcIiEclEii
	mv	a5,a0
	sw	a5,-36(s0)
	addi	a5,s0,-24
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv
.L61:
	addi	a4,s0,-32
	addi	a5,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	mv	a5,a0
	bne	a5,zero,.L62
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
.LFE2919:
	.size	_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_, .-_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEi4funcIiEET0_T_SA_S9_T1_
	.section	.text._ZNSt6vectorIiSaIiEE9push_backERKi,"axG",@progbits,_ZNSt6vectorIiSaIiEE9push_backERKi,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE9push_backERKi
	.type	_ZNSt6vectorIiSaIiEE9push_backERKi, @function
_ZNSt6vectorIiSaIiEE9push_backERKi:
.LFB2920:
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
	sd	a0,-88(s0)
	sd	a1,-96(s0)
	ld	a5,-88(s0)
	ld	a4,8(a5)
	ld	a5,-88(s0)
	ld	a5,16(a5)
	beq	a4,a5,.L65
	ld	a4,-88(s0)
	ld	a5,-88(s0)
	ld	a5,8(a5)
	sd	a4,-80(s0)
	sd	a5,-72(s0)
	ld	a5,-96(s0)
	sd	a5,-64(s0)
	ld	a0,-64(s0)
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mv	a4,a0
	ld	a5,-80(s0)
	sd	a5,-56(s0)
	ld	a5,-72(s0)
	sd	a5,-48(s0)
	sd	a4,-40(s0)
	ld	a5,-48(s0)
	mv	a1,a5
	li	a0,4
	call	_ZnwmPv
	mv	s1,a0
	ld	a0,-40(s0)
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mv	a5,a0
	lw	a5,0(a5)
	sw	a5,0(s1)
	nop
	nop
	ld	a5,-88(s0)
	ld	a5,8(a5)
	addi	a4,a5,4
	ld	a5,-88(s0)
	sd	a4,8(a5)
	j	.L67
.L65:
	ld	a0,-88(s0)
	call	_ZNSt6vectorIiSaIiEE3endEv
	mv	a5,a0
	ld	a2,-96(s0)
	mv	a1,a5
	ld	a0,-88(s0)
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
.L67:
	nop
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
.LFE2920:
	.size	_ZNSt6vectorIiSaIiEE9push_backERKi, .-_ZNSt6vectorIiSaIiEE9push_backERKi
	.section	.text._ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_,"axG",@progbits,_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_,comdat
	.align	1
	.weak	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_
	.type	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_, @function
_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_:
.LFB2922:
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
	call	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_
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
.LFE2922:
	.size	_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_, .-_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.align	1
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv, @function
_ZNKSt6vectorIiSaIiEE4sizeEv:
.LFB2923:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	ld	a4,8(a5)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	sub	a5,a4,a5
	srai	a5,a5,2
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2923:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .-_ZNKSt6vectorIiSaIiEE4sizeEv
	.section	.text._ZSt8__fill_aIPbbEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPbbEvT_S1_RKT0_,comdat
	.align	1
	.weak	_ZSt8__fill_aIPbbEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPbbEvT_S1_RKT0_, @function
_ZSt8__fill_aIPbbEvT_S1_RKT0_:
.LFB3025:
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
	sd	a2,-40(s0)
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3025:
	.size	_ZSt8__fill_aIPbbEvT_S1_RKT0_, .-_ZSt8__fill_aIPbbEvT_S1_RKT0_
	.section	.text._ZNSt15__new_allocatorIiED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIiED5Ev,comdat
	.align	1
	.weak	_ZNSt15__new_allocatorIiED2Ev
	.type	_ZNSt15__new_allocatorIiED2Ev, @function
_ZNSt15__new_allocatorIiED2Ev:
.LFB3030:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
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
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_:
.LFB3032:
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
	sd	a0,-88(s0)
	sd	a1,-96(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	ld	a5,-96(s0)
	sd	a5,-64(s0)
	addi	a5,s0,-72
	sd	a5,-56(s0)
	ld	a5,-64(s0)
	sd	a5,-48(s0)
	nop
	nop
	addi	a5,s0,-72
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	mv	a4,a0
	ld	a5,-88(s0)
	sgtu	a5,a5,a4
	andi	s1,a5,0xff
	addi	a5,s0,-72
	mv	a0,a5
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	beq	s1,zero,.L75
	la	a5,__stack_chk_guard
	ld	a4, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L76
	call	__stack_chk_fail@plt
.L76:
	lla	a0,.LC0
	call	_ZSt20__throw_length_errorPKc@plt
.L75:
	ld	a5,-88(s0)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L78
	call	__stack_chk_fail@plt
.L78:
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
.LFE3032:
	.size	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_:
.LFB3034:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3034
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	ld	a1,-56(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	ld	a1,-48(s0)
	ld	a0,-40(s0)
.LEHB7:
	call	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
.LEHE7:
	j	.L82
.L81:
	mv	s1,a0
	ld	a5,-40(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	mv	a5,s1
	mv	a0,a5
.LEHB8:
	call	_Unwind_Resume@plt
.LEHE8:
.L82:
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
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
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.type	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, @function
_ZNSt6vectorIiSaIiEE21_M_default_initializeEm:
.LFB3036:
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
	ld	a5,-40(s0)
	ld	s1,0(a5)
	ld	a5,-40(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mv	a5,a0
	mv	a2,a5
	ld	a1,-48(s0)
	mv	a0,s1
	call	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	mv	a4,a0
	ld	a5,-40(s0)
	sd	a4,8(a5)
	nop
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
.LFE3036:
	.size	_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, .-_ZNSt6vectorIiSaIiEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3037:
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
.LFE3037:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC5Ev,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev:
.LFB3040:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	sd	zero,0(a5)
	ld	a5,-24(s0)
	sd	zero,8(a5)
	ld	a5,-24(s0)
	sd	zero,16(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3040:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, @function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim:
.LFB3042:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	sd	a2,-72(s0)
	ld	a5,-64(s0)
	beq	a5,zero,.L89
	ld	a5,-56(s0)
	sd	a5,-40(s0)
	ld	a5,-64(s0)
	sd	a5,-32(s0)
	ld	a5,-72(s0)
	sd	a5,-24(s0)
	ld	a2,-24(s0)
	ld	a1,-32(s0)
	ld	a0,-40(s0)
	call	_ZNSt15__new_allocatorIiE10deallocateEPim
	nop
.L89:
	nop
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3042:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC5ERKS1_,comdat
	.align	1
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_:
.LFB3044:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-32(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	sd	a4,0(a5)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3044:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.section	.text._ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	1
	.weak	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, @function
_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3046:
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
	ld	a0,-40(s0)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	s1,0(a5)
	ld	a0,-48(s0)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	a5,0(a5)
	sub	a5,s1,a5
	snez	a5,a5
	andi	a5,a5,0xff
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
.LFE3046:
	.size	_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv,comdat
	.align	1
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv:
.LFB3047:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	addi	a4,a5,4
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3047:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv:
.LFB3048:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3048:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	.section	.text._ZNK4funcIiEclEii,"axG",@progbits,_ZNK4funcIiEclEii,comdat
	.align	1
	.weak	_ZNK4funcIiEclEii
	.type	_ZNK4funcIiEclEii, @function
_ZNK4funcIiEclEii:
.LFB3049:
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
.LFE3049:
	.size	_ZNK4funcIiEclEii, .-_ZNK4funcIiEclEii
	.section	.rodata
	.align	3
.LC1:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, @function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB3051:
	.cfi_startproc
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	sd	ra,168(sp)
	sd	s0,160(sp)
	sd	s1,152(sp)
	sd	s2,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,176
	.cfi_def_cfa 8, 0
	sd	a0,-152(s0)
	sd	a1,-160(s0)
	sd	a2,-168(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	lla	a2,.LC1
	li	a1,1
	ld	a0,-152(s0)
	call	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	mv	a5,a0
	sd	a5,-136(s0)
	ld	a5,-152(s0)
	ld	a5,0(a5)
	sd	a5,-128(s0)
	ld	a5,-152(s0)
	ld	a5,8(a5)
	sd	a5,-120(s0)
	ld	a0,-152(s0)
	call	_ZNSt6vectorIiSaIiEE5beginEv
	mv	a5,a0
	sd	a5,-144(s0)
	addi	a4,s0,-144
	addi	a5,s0,-160
	mv	a1,a4
	mv	a0,a5
	call	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	mv	a5,a0
	sd	a5,-112(s0)
	ld	a5,-152(s0)
	ld	a1,-136(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	mv	a5,a0
	sd	a5,-104(s0)
	ld	a5,-104(s0)
	sd	a5,-96(s0)
	ld	s2,-152(s0)
	ld	a5,-112(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	s1,a4,a5
	ld	a0,-168(s0)
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mv	a5,a0
	sd	s2,-88(s0)
	sd	s1,-80(s0)
	sd	a5,-72(s0)
	ld	a0,-72(s0)
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mv	a4,a0
	ld	a5,-88(s0)
	sd	a5,-64(s0)
	ld	a5,-80(s0)
	sd	a5,-56(s0)
	sd	a4,-48(s0)
	ld	a5,-56(s0)
	mv	a1,a5
	li	a0,4
	call	_ZnwmPv
	mv	s1,a0
	ld	a0,-48(s0)
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	mv	a5,a0
	lw	a5,0(a5)
	sw	a5,0(s1)
	nop
	nop
	sd	zero,-96(s0)
	addi	a5,s0,-160
	mv	a0,a5
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	s1,0(a5)
	ld	a5,-152(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mv	a5,a0
	mv	a3,a5
	ld	a2,-104(s0)
	mv	a1,s1
	ld	a0,-128(s0)
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	sd	a0,-96(s0)
	ld	a5,-96(s0)
	addi	a5,a5,4
	sd	a5,-96(s0)
	addi	a5,s0,-160
	mv	a0,a5
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	s1,0(a5)
	ld	a5,-152(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mv	a5,a0
	mv	a3,a5
	ld	a2,-96(s0)
	ld	a1,-120(s0)
	mv	a0,s1
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	sd	a0,-96(s0)
	ld	a3,-152(s0)
	ld	a5,-152(s0)
	ld	a4,16(a5)
	ld	a5,-128(s0)
	sub	a5,a4,a5
	srai	a5,a5,2
	mv	a2,a5
	ld	a1,-128(s0)
	mv	a0,a3
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	ld	a5,-152(s0)
	ld	a4,-104(s0)
	sd	a4,0(a5)
	ld	a5,-152(s0)
	ld	a4,-96(s0)
	sd	a4,8(a5)
	ld	a5,-136(s0)
	slli	a5,a5,2
	ld	a4,-104(s0)
	add	a4,a4,a5
	ld	a5,-152(s0)
	sd	a4,16(a5)
	nop
	la	a5,__stack_chk_guard
	ld	a4, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L100
	call	__stack_chk_fail@plt
.L100:
	ld	ra,168(sp)
	.cfi_restore 1
	ld	s0,160(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 176
	ld	s1,152(sp)
	.cfi_restore 9
	ld	s2,144(sp)
	.cfi_restore 18
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3051:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.section	.text._ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_,"axG",@progbits,_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_,comdat
	.align	1
	.weak	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_
	.type	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_, @function
_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_:
.LFB3055:
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
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	addi	a4,s0,-80
	addi	a5,s0,-72
	mv	a1,a4
	mv	a0,a5
	call	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	mv	a5,a0
	beq	a5,zero,.L102
	li	a5,0
	j	.L112
.L102:
	ld	a5,-72(s0)
	sd	a5,-64(s0)
	addi	a5,s0,-64
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv
	addi	a4,s0,-80
	addi	a5,s0,-64
	mv	a1,a4
	mv	a0,a5
	call	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	mv	a5,a0
	beq	a5,zero,.L104
	li	a5,0
	j	.L112
.L104:
	ld	a5,-80(s0)
	sd	a5,-64(s0)
	addi	a5,s0,-64
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
.L111:
	ld	a5,-64(s0)
	sd	a5,-56(s0)
	addi	a5,s0,-64
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
	addi	a5,s0,-88
	ld	a2,-56(s0)
	ld	a1,-64(s0)
	mv	a0,a5
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_
	mv	a5,a0
	beq	a5,zero,.L105
	ld	a5,-80(s0)
	sd	a5,-48(s0)
	nop
.L106:
	addi	a5,s0,-48
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
	mv	a4,a0
	addi	a5,s0,-88
	ld	a2,0(a4)
	ld	a1,-64(s0)
	mv	a0,a5
	call	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_
	mv	a5,a0
	xori	a5,a5,1
	andi	a5,a5,0xff
	bne	a5,zero,.L106
	ld	a1,-48(s0)
	ld	a0,-64(s0)
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_
	nop
	mv	a2,s2
	ld	a1,-80(s0)
	ld	a0,-56(s0)
	call	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag
	li	a5,1
	j	.L112
.L105:
	addi	a4,s0,-72
	addi	a5,s0,-64
	mv	a1,a4
	mv	a0,a5
	call	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	mv	a5,a0
	beq	a5,zero,.L111
	nop
	mv	a2,s1
	ld	a1,-80(s0)
	ld	a0,-72(s0)
	call	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag
	li	a5,0
.L112:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L113
	call	__stack_chk_fail@plt
.L113:
	mv	a0,a4
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
.LFE3055:
	.size	_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_, .-_ZSt18__next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEbT_S9_T0_
	.section	.text._ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.align	1
	.weak	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB3123:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-56(s0)
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	j	.L115
.L116:
	ld	a5,-40(s0)
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,1
	sd	a5,-40(s0)
.L115:
	ld	a4,-40(s0)
	ld	a5,-48(s0)
	bne	a4,a5,.L116
	nop
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3123:
	.size	_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPbbEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_:
.LFB3124:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,-1
	srli	a5,a5,3
	sd	a5,-64(s0)
	ld	a5,-72(s0)
	sd	a5,-48(s0)
	ld	a5,-48(s0)
	sd	a5,-40(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	li	a5,-1
	srli	a5,a5,3
	nop
	nop
	sd	a5,-56(s0)
	addi	a4,s0,-56
	addi	a5,s0,-64
	mv	a1,a4
	mv	a0,a5
	call	_ZSt3minImERKT_S2_S2_
	mv	a5,a0
	ld	a5,0(a5)
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L122
	call	__stack_chk_fail@plt
.L122:
	mv	a0,a4
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3124:
	.size	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5ERKS0_,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_:
.LFB3129:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-56(s0)
	sd	a1,-64(s0)
	ld	a5,-56(s0)
	sd	a5,-48(s0)
	ld	a5,-64(s0)
	sd	a5,-40(s0)
	ld	a5,-48(s0)
	sd	a5,-32(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	nop
	nop
	ld	a5,-56(s0)
	mv	a0,a5
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3129:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm:
.LFB3131:
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
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	mv	a4,a0
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	sd	a4,8(a5)
	ld	a5,-24(s0)
	ld	a4,0(a5)
	ld	a5,-32(s0)
	slli	a5,a5,2
	add	a4,a4,a5
	ld	a5,-24(s0)
	sd	a4,16(a5)
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
.LFE3131:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.section	.text._ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E,comdat
	.align	1
	.weak	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E:
.LFB3132:
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
	sd	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_ZSt25__uninitialized_default_nIPimET_S1_T0_
	mv	a5,a0
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
.LFE3132:
	.size	_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.align	1
	.weak	_ZSt8_DestroyIPiEvT_S1_
	.type	_ZSt8_DestroyIPiEvT_S1_, @function
_ZSt8_DestroyIPiEvT_S1_:
.LFB3133:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
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
.LFE3133:
	.size	_ZSt8_DestroyIPiEvT_S1_, .-_ZSt8_DestroyIPiEvT_S1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv:
.LFB3135:
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
.LFE3135:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	1
	.weak	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3136:
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
.LFE3136:
	.size	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,comdat
	.align	1
	.weak	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc:
.LFB3138:
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
	sd	a0,-72(s0)
	sd	a1,-80(s0)
	sd	a2,-88(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -40(s0)
	li	a4, 0
	ld	a0,-72(s0)
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	mv	s1,a0
	ld	a0,-72(s0)
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	mv	a5,a0
	sub	a4,s1,a5
	ld	a5,-80(s0)
	sltu	a5,a4,a5
	andi	a5,a5,0xff
	beq	a5,zero,.L133
	la	a5,__stack_chk_guard
	ld	a4, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L134
	call	__stack_chk_fail@plt
.L134:
	ld	a0,-88(s0)
	call	_ZSt20__throw_length_errorPKc@plt
.L133:
	ld	a0,-72(s0)
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	mv	s1,a0
	ld	a0,-72(s0)
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	mv	a5,a0
	sd	a5,-56(s0)
	addi	a4,s0,-80
	addi	a5,s0,-56
	mv	a1,a4
	mv	a0,a5
	call	_ZSt3maxImERKT_S2_S2_
	mv	a5,a0
	ld	a5,0(a5)
	add	a5,s1,a5
	sd	a5,-48(s0)
	ld	a0,-72(s0)
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	mv	a4,a0
	ld	a5,-48(s0)
	bltu	a5,a4,.L135
	ld	a0,-72(s0)
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	mv	a4,a0
	ld	a5,-48(s0)
	bleu	a5,a4,.L136
.L135:
	ld	a0,-72(s0)
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	mv	a5,a0
	j	.L137
.L136:
	ld	a5,-48(s0)
.L137:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -40(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L139
	call	__stack_chk_fail@plt
.L139:
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
.LFE3138:
	.size	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.align	1
	.weak	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, @function
_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB3139:
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
	ld	a0,-40(s0)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	s1,0(a5)
	ld	a0,-48(s0)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	a5,0(a5)
	sub	a5,s1,a5
	srai	a5,a5,2
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
.LFE3139:
	.size	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.align	1
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm:
.LFB3140:
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
	ld	a5,-48(s0)
	beq	a5,zero,.L143
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a5,-48(s0)
	sd	a5,-24(s0)
	li	a2,0
	ld	a1,-24(s0)
	ld	a0,-32(s0)
	call	_ZNSt15__new_allocatorIiE8allocateEmPKv
	mv	a5,a0
	nop
	j	.L145
.L143:
	li	a5,0
.L145:
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
.LFE3140:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.section	.text._ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,comdat
	.align	1
	.weak	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, @function
_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_:
.LFB3141:
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
	sd	a2,-40(s0)
	sd	a3,-48(s0)
	ld	a3,-48(s0)
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	mv	a5,a0
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
.LFE3141:
	.size	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, .-_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.section	.text._ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	1
	.weak	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, @function
_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3143:
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
	ld	a0,-40(s0)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	s1,0(a5)
	ld	a0,-48(s0)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	a5,0(a5)
	sub	a5,s1,a5
	seqz	a5,a5
	andi	a5,a5,0xff
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
.LFE3143:
	.size	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv,comdat
	.align	1
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv:
.LFB3144:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	addi	a4,a5,-4
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3144:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
	.section	.text._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_,"axG",@progbits,_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_,comdat
	.align	1
	.weak	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_
	.type	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_, @function
_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_:
.LFB3145:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	addi	a5,s0,-48
	mv	a0,a5
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	mv	a5,a0
	lw	s1,0(a5)
	addi	a5,s0,-56
	mv	a0,a5
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	mv	a5,a0
	lw	a5,0(a5)
	mv	a4,s1
	slt	a5,a4,a5
	andi	a5,a5,0xff
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3145:
	.size	_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_, .-_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_,comdat
	.align	1
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_, @function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_:
.LFB3146:
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
	addi	a5,s0,-40
	mv	a0,a5
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	mv	s1,a0
	addi	a5,s0,-48
	mv	a0,a5
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv
	mv	a5,a0
	mv	a1,a5
	mv	a0,s1
	call	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
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
.LFE3146:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_
	.section	.text._ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag,comdat
	.align	1
	.weak	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag
	.type	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag, @function
_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag:
.LFB3148:
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
	addi	a4,s0,-32
	addi	a5,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	mv	a5,a0
	bne	a5,zero,.L161
	addi	a5,s0,-32
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
	j	.L159
.L160:
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_
	addi	a5,s0,-24
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv
	addi	a5,s0,-32
	mv	a0,a5
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv
.L159:
	addi	a4,s0,-32
	addi	a5,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	mv	a5,a0
	bne	a5,zero,.L160
	j	.L156
.L161:
	nop
.L156:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3148:
	.size	_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag, .-_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.align	1
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3203:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-32(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	bgeu	a4,a5,.L163
	ld	a5,-32(s0)
	j	.L164
.L163:
	ld	a5,-24(s0)
.L164:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3203:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt25__uninitialized_default_nIPimET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPimET_S1_T0_,comdat
	.align	1
	.weak	_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPimET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPimET_S1_T0_:
.LFB3207:
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
	li	a5,1
	sb	a5,-17(s0)
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	mv	a5,a0
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
.LFE3207:
	.size	_ZSt25__uninitialized_default_nIPimET_S1_T0_, .-_ZSt25__uninitialized_default_nIPimET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.align	1
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_:
.LFB3208:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3208:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.section	.text._ZNSt15__new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZNSt15__new_allocatorIiE10deallocateEPim,comdat
	.align	1
	.weak	_ZNSt15__new_allocatorIiE10deallocateEPim
	.type	_ZNSt15__new_allocatorIiE10deallocateEPim, @function
_ZNSt15__new_allocatorIiE10deallocateEPim:
.LFB3209:
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
	sd	a2,-40(s0)
	ld	a5,-40(s0)
	slli	a5,a5,2
	mv	a1,a5
	ld	a0,-32(s0)
	call	_ZdlPvm@plt
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3209:
	.size	_ZNSt15__new_allocatorIiE10deallocateEPim, .-_ZNSt15__new_allocatorIiE10deallocateEPim
	.section	.text._ZNKSt6vectorIiSaIiEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE8max_sizeEv,comdat
	.align	1
	.weak	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.type	_ZNKSt6vectorIiSaIiEE8max_sizeEv, @function
_ZNKSt6vectorIiSaIiEE8max_sizeEv:
.LFB3210:
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
	ld	a5,-24(s0)
	mv	a0,a5
	call	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	mv	a5,a0
	mv	a0,a5
	call	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	mv	a5,a0
	mv	a0,a5
	ld	ra,24(sp)
	.cfi_restore 1
	ld	s0,16(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3210:
	.size	_ZNKSt6vectorIiSaIiEE8max_sizeEv, .-_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.align	1
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3211:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	sd	a1,-32(s0)
	ld	a5,-24(s0)
	ld	a4,0(a5)
	ld	a5,-32(s0)
	ld	a5,0(a5)
	bgeu	a4,a5,.L173
	ld	a5,-32(s0)
	j	.L174
.L173:
	ld	a5,-24(s0)
.L174:
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3211:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,comdat
	.align	1
	.weak	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, @function
_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_:
.LFB3213:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	ld	a0,-40(s0)
	call	_ZSt12__niter_baseIPiET_S1_
	mv	s1,a0
	ld	a0,-48(s0)
	call	_ZSt12__niter_baseIPiET_S1_
	mv	s2,a0
	ld	a0,-56(s0)
	call	_ZSt12__niter_baseIPiET_S1_
	mv	a5,a0
	ld	a3,-64(s0)
	mv	a2,a5
	mv	a1,s2
	mv	a0,s1
	call	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	mv	a5,a0
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3213:
	.size	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.section	.text._ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.align	1
	.weak	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB3215:
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
	beq	a5,zero,.L178
	call	__stack_chk_fail@plt
.L178:
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3215:
	.size	_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIiENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.align	1
	.weak	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, @function
_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB3216:
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
	ld	a0,-40(s0)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	s1,0(a5)
	ld	a0,-48(s0)
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	mv	a5,a0
	ld	a5,0(a5)
	sltu	a5,s1,a5
	andi	a5,a5,0xff
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
.LFE3216:
	.size	_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_,comdat
	.align	1
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_:
.LFB3238:
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
	ld	a5,-48(s0)
	beq	a5,zero,.L182
	ld	a0,-40(s0)
	call	_ZSt11__addressofIiEPT_RS0_
	sd	a0,-24(s0)
	ld	a0,-24(s0)
	call	_ZSt10_ConstructIiJEEvPT_DpOT0_
	ld	a5,-40(s0)
	addi	a5,a5,4
	sd	a5,-40(s0)
	ld	a5,-48(s0)
	addi	a5,a5,-1
	ld	a2,-24(s0)
	mv	a1,a5
	ld	a0,-40(s0)
	call	_ZSt6fill_nIPimiET_S1_T0_RKT1_
	mv	a5,a0
	sd	a5,-40(s0)
.L182:
	ld	a5,-40(s0)
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
.LFE3238:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align	1
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3239:
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
.LFE3239:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIiE8allocateEmPKv,comdat
	.align	1
	.weak	_ZNSt15__new_allocatorIiE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIiE8allocateEmPKv, @function
_ZNSt15__new_allocatorIiE8allocateEmPKv:
.LFB3240:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	li	a5,-1
	srli	a5,a5,3
	ld	a4,-48(s0)
	sgtu	a5,a4,a5
	andi	a5,a5,0xff
	snez	a5,a5
	andi	a5,a5,0xff
	beq	a5,zero,.L188
	ld	a4,-48(s0)
	li	a5,-1
	srli	a5,a5,2
	bleu	a4,a5,.L189
	call	_ZSt28__throw_bad_array_new_lengthv@plt
.L189:
	call	_ZSt17__throw_bad_allocv@plt
.L188:
	ld	a5,-48(s0)
	slli	a5,a5,2
	mv	a0,a5
	call	_Znwm@plt
	mv	a5,a0
	nop
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3240:
	.size	_ZNSt15__new_allocatorIiE8allocateEmPKv, .-_ZNSt15__new_allocatorIiE8allocateEmPKv
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.align	1
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, @function
_ZSt12__niter_baseIPiET_S1_:
.LFB3241:
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
.LFE3241:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.align	1
	.weak	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, @function
_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB3242:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	sd	a3,-64(s0)
	ld	a4,-48(s0)
	ld	a5,-40(s0)
	sub	a5,a4,a5
	srai	a5,a5,2
	sd	a5,-24(s0)
	ld	a5,-24(s0)
	ble	a5,zero,.L194
	ld	a5,-24(s0)
	slli	a5,a5,2
	mv	a2,a5
	ld	a1,-40(s0)
	ld	a0,-56(s0)
	call	memmove@plt
.L194:
	ld	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-56(s0)
	add	a5,a4,a5
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3242:
	.size	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	1
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_:
.LFB3243:
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
.LFE3243:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt11__addressofIiEPT_RS0_,"axG",@progbits,_ZSt11__addressofIiEPT_RS0_,comdat
	.align	1
	.weak	_ZSt11__addressofIiEPT_RS0_
	.type	_ZSt11__addressofIiEPT_RS0_, @function
_ZSt11__addressofIiEPT_RS0_:
.LFB3253:
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
.LFE3253:
	.size	_ZSt11__addressofIiEPT_RS0_, .-_ZSt11__addressofIiEPT_RS0_
	.section	.text._ZSt10_ConstructIiJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIiJEEvPT_DpOT0_,comdat
	.align	1
	.weak	_ZSt10_ConstructIiJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIiJEEvPT_DpOT0_, @function
_ZSt10_ConstructIiJEEvPT_DpOT0_:
.LFB3254:
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
	ld	a5,-24(s0)
	mv	a1,a5
	li	a0,4
	call	_ZnwmPv
	mv	a5,a0
	sw	zero,0(a5)
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
.LFE3254:
	.size	_ZSt10_ConstructIiJEEvPT_DpOT0_, .-_ZSt10_ConstructIiJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPimiET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPimiET_S1_T0_RKT1_,comdat
	.align	1
	.weak	_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPimiET_S1_T0_RKT1_, @function
_ZSt6fill_nIPimiET_S1_T0_RKT1_:
.LFB3255:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	.cfi_offset 18, -32
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	s1,-40(s0)
	ld	a0,-48(s0)
	call	_ZSt17__size_to_integerm
	mv	a5,a0
	nop
	mv	a3,s2
	ld	a2,-56(s0)
	mv	a1,a5
	mv	a0,s1
	call	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	mv	a5,a0
	mv	a0,a5
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	ld	s1,40(sp)
	.cfi_restore 9
	ld	s2,32(sp)
	.cfi_restore 18
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3255:
	.size	_ZSt6fill_nIPimiET_S1_T0_RKT1_, .-_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.section	.text._ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.align	1
	.weak	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB3262:
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
	sd	a2,-40(s0)
	sb	a3,-48(s0)
	ld	a5,-32(s0)
	bne	a5,zero,.L205
	ld	a5,-24(s0)
	j	.L206
.L205:
	ld	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
	ld	a2,-40(s0)
	mv	a1,a5
	ld	a0,-24(s0)
	call	_ZSt8__fill_aIPiiEvT_S1_RKT0_
	ld	a5,-32(s0)
	slli	a5,a5,2
	ld	a4,-24(s0)
	add	a5,a4,a5
.L206:
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
.LFE3262:
	.size	_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt8__fill_aIPiiEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPiiEvT_S1_RKT0_,comdat
	.align	1
	.weak	_ZSt8__fill_aIPiiEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPiiEvT_S1_RKT0_, @function
_ZSt8__fill_aIPiiEvT_S1_RKT0_:
.LFB3263:
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
	sd	a2,-40(s0)
	ld	a2,-40(s0)
	ld	a1,-32(s0)
	ld	a0,-24(s0)
	call	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	ld	s0,32(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3263:
	.size	_ZSt8__fill_aIPiiEvT_S1_RKT0_, .-_ZSt8__fill_aIPiiEvT_S1_RKT0_
	.section	.text._ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.align	1
	.weak	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB3264:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	sd	a2,-56(s0)
	ld	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	j	.L209
.L210:
	ld	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,4
	sd	a5,-40(s0)
.L209:
	ld	a4,-40(s0)
	ld	a5,-48(s0)
	bne	a4,a5,.L210
	nop
	nop
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3264:
	.size	_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
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
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	3
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
