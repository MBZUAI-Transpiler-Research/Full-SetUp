	.file	"dhrystone.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	Ptr_Glob
	.comm	Ptr_Glob,8,8
	.local	Next_Ptr_Glob
	.comm	Next_Ptr_Glob,8,8
	.local	rec1
	.comm	rec1,56,8
	.local	rec2
	.comm	rec2,56,8
	.globl	Int_Glob
	.bss
	.align	2
	.type	Int_Glob, @object
	.size	Int_Glob, 4
Int_Glob:
	.zero	4
	.local	Bool_Glob
	.comm	Bool_Glob,4,4
	.globl	Ch_1_Glob
	.type	Ch_1_Glob, @object
	.size	Ch_1_Glob, 1
Ch_1_Glob:
	.zero	1
	.local	Ch_2_Glob
	.comm	Ch_2_Glob,1,1
	.local	Arr_1_Glob
	.comm	Arr_1_Glob,200,8
	.local	Arr_2_Glob
	.comm	Arr_2_Glob,10000,8
	.globl	Pnumber_of_runs
	.align	2
	.type	Pnumber_of_runs, @object
	.size	Pnumber_of_runs, 4
Pnumber_of_runs:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
	.align	3
.LC1:
	.string	"DHRYSTONE PROGRAM, 1'ST STRING"
	.align	3
.LC2:
	.string	"\n"
	.align	3
.LC3:
	.string	"Dhrystone Benchmark, Version 2.1 (Language: C)\n"
	.align	3
.LC4:
	.string	"Execution starts, %d runs through Dhrystone\n"
	.align	3
.LC5:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.align	3
.LC6:
	.string	"DHRYSTONE PROGRAM, 3'RD STRING"
	.align	3
.LC7:
	.string	"Execution ends\n"
	.align	3
.LC8:
	.string	"Final values of the variables used in the benchmark:\n"
	.align	3
.LC9:
	.string	"Int_Glob:            %d\n"
	.align	3
.LC10:
	.string	"        should be:   %d\n"
	.align	3
.LC11:
	.string	"Bool_Glob:           %d\n"
	.align	3
.LC12:
	.string	"Ch_1_Glob:           %c\n"
	.align	3
.LC13:
	.string	"        should be:   %c\n"
	.align	3
.LC14:
	.string	"Ch_2_Glob:           %c\n"
	.align	3
.LC15:
	.string	"Arr_1_Glob[8]:       %d\n"
	.align	3
.LC16:
	.string	"Arr_2_Glob[8][7]:    %d\n"
	.align	3
.LC17:
	.string	"        should be:   Pnumber_of_runs + 10\n"
	.align	3
.LC18:
	.string	"Ptr_Glob->\n"
	.align	3
.LC19:
	.string	"  Ptr_Comp:          (implementation-dependent)\n"
	.align	3
.LC20:
	.string	"        should be:   (implementation-dependent)\n"
	.align	3
.LC21:
	.string	"  Discr:             %d\n"
	.align	3
.LC22:
	.string	"  Enum_Comp:         %d\n"
	.align	3
.LC23:
	.string	"  Int_Comp:          %d\n"
	.align	3
.LC24:
	.string	"  Str_Comp:          %s\n"
	.align	3
.LC25:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
	.align	3
.LC26:
	.string	"Next_Ptr_Glob->\n"
	.align	3
.LC27:
	.string	"        should be:   (implementation-dependent), same as above\n"
	.align	3
.LC28:
	.string	"Int_1_Loc:           %d\n"
	.align	3
.LC29:
	.string	"Int_2_Loc:           %d\n"
	.align	3
.LC30:
	.string	"Int_3_Loc:           %d\n"
	.align	3
.LC31:
	.string	"Enum_Loc:            %d\n"
	.align	3
.LC32:
	.string	"Str_1_Loc:           %s\n"
	.align	3
.LC33:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
	.align	3
.LC34:
	.string	"Str_2_Loc:           %s\n"
	.align	3
.LC35:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sd	ra,120(sp)
	sd	s0,112(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,10
	sw	a5,-96(s0)
	lla	a5,Next_Ptr_Glob
	lla	a4,rec1
	sd	a4,0(a5)
	lla	a5,Ptr_Glob
	lla	a4,rec2
	sd	a4,0(a5)
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	lla	a4,Next_Ptr_Glob
	ld	a4,0(a4)
	sd	a4,0(a5)
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	sw	zero,8(a5)
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	li	a4,2
	sw	a4,12(a5)
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	li	a4,40
	sw	a4,16(a5)
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	addi	a5,a5,20
	lla	a1,.LC0
	mv	a0,a5
	call	libmin_strcpy@plt
	addi	a5,s0,-88
	lla	a1,.LC1
	mv	a0,a5
	call	libmin_strcpy@plt
	lla	a5,Arr_2_Glob
	li	a4,10
	sw	a4,1628(a5)
	lla	a0,.LC2
	call	libmin_printf@plt
	lla	a0,.LC3
	call	libmin_printf@plt
	lla	a0,.LC2
	call	libmin_printf@plt
	lw	a5,-96(s0)
	sw	a5,-92(s0)
	lw	a5,-92(s0)
	mv	a1,a5
	lla	a0,.LC4
	call	libmin_printf@plt
	li	a5,1
	sw	a5,-100(s0)
	j	.L2
.L8:
	call	Proc_5
	call	Proc_4
	li	a5,2
	sw	a5,-116(s0)
	li	a5,3
	sw	a5,-104(s0)
	addi	a5,s0,-56
	lla	a1,.LC5
	mv	a0,a5
	call	libmin_strcpy@plt
	li	a5,1
	sw	a5,-108(s0)
	addi	a4,s0,-56
	addi	a5,s0,-88
	mv	a1,a4
	mv	a0,a5
	call	PFunc_2
	mv	a5,a0
	seqz	a5,a5
	andi	a5,a5,0xff
	sext.w	a4,a5
	lla	a5,Bool_Glob
	sw	a4,0(a5)
	j	.L3
.L4:
	lw	a5,-116(s0)
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,2
	addw	a5,a5,a4
	sext.w	a5,a5
	lw	a4,-104(s0)
	subw	a5,a5,a4
	sext.w	a5,a5
	sw	a5,-112(s0)
	lw	a5,-116(s0)
	addi	a3,s0,-112
	lw	a4,-104(s0)
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	PProc_7
	lw	a5,-116(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	sw	a5,-116(s0)
.L3:
	lw	a4,-116(s0)
	lw	a5,-104(s0)
	sext.w	a5,a5
	bgt	a5,a4,.L4
	lw	a5,-116(s0)
	lw	a4,-112(s0)
	mv	a3,a4
	mv	a2,a5
	lla	a1,Arr_2_Glob
	lla	a0,Arr_1_Glob
	call	PProc_8
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	mv	a0,a5
	call	Proc_1
	li	a5,65
	sb	a5,-117(s0)
	j	.L5
.L7:
	lbu	a5,-117(s0)
	li	a1,67
	mv	a0,a5
	call	PFunc_1
	mv	a5,a0
	mv	a4,a5
	lw	a5,-108(s0)
	bne	a4,a5,.L6
	addi	a5,s0,-108
	mv	a1,a5
	li	a0,0
	call	PProc_6
	addi	a5,s0,-56
	lla	a1,.LC6
	mv	a0,a5
	call	libmin_strcpy@plt
	lw	a5,-100(s0)
	sw	a5,-104(s0)
	lla	a5,Int_Glob
	lw	a4,-100(s0)
	sw	a4,0(a5)
.L6:
	lbu	a5,-117(s0)
	addiw	a5,a5,1
	sb	a5,-117(s0)
.L5:
	lla	a5,Ch_2_Glob
	lbu	a4,0(a5)
	lbu	a5,-117(s0)
	andi	a5,a5,0xff
	bleu	a5,a4,.L7
	lw	a5,-116(s0)
	lw	a4,-104(s0)
	mulw	a5,a4,a5
	sw	a5,-104(s0)
	lw	a5,-112(s0)
	lw	a4,-104(s0)
	divw	a5,a4,a5
	sext.w	a5,a5
	sw	a5,-116(s0)
	lw	a5,-112(s0)
	lw	a4,-104(s0)
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a4,a5
	mv	a5,a4
	slliw	a5,a5,3
	subw	a5,a5,a4
	sext.w	a4,a5
	lw	a5,-116(s0)
	subw	a5,a4,a5
	sw	a5,-104(s0)
	addi	a5,s0,-116
	mv	a0,a5
	call	Proc_2
	lw	a5,-100(s0)
	addiw	a5,a5,1
	sw	a5,-100(s0)
.L2:
	lw	a5,-100(s0)
	mv	a4,a5
	lw	a5,-92(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	ble	a4,a5,.L8
	lla	a0,.LC7
	call	libmin_printf@plt
	lla	a0,.LC2
	call	libmin_printf@plt
	lla	a0,.LC8
	call	libmin_printf@plt
	lla	a0,.LC2
	call	libmin_printf@plt
	lla	a5,Int_Glob
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC9
	call	libmin_printf@plt
	li	a1,5
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a5,Bool_Glob
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC11
	call	libmin_printf@plt
	li	a1,1
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a5,Ch_1_Glob
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC12
	call	libmin_printf@plt
	li	a1,65
	lla	a0,.LC13
	call	libmin_printf@plt
	lla	a5,Ch_2_Glob
	lbu	a5,0(a5)
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC14
	call	libmin_printf@plt
	li	a1,66
	lla	a0,.LC13
	call	libmin_printf@plt
	lla	a5,Arr_1_Glob
	lw	a5,32(a5)
	mv	a1,a5
	lla	a0,.LC15
	call	libmin_printf@plt
	li	a1,7
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a5,Arr_2_Glob
	lw	a5,1628(a5)
	mv	a1,a5
	lla	a0,.LC16
	call	libmin_printf@plt
	lla	a0,.LC17
	call	libmin_printf@plt
	lla	a0,.LC18
	call	libmin_printf@plt
	lla	a0,.LC19
	call	libmin_printf@plt
	lla	a0,.LC20
	call	libmin_printf@plt
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	lw	a5,8(a5)
	mv	a1,a5
	lla	a0,.LC21
	call	libmin_printf@plt
	li	a1,0
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	lw	a5,12(a5)
	mv	a1,a5
	lla	a0,.LC22
	call	libmin_printf@plt
	li	a1,2
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	lw	a5,16(a5)
	mv	a1,a5
	lla	a0,.LC23
	call	libmin_printf@plt
	li	a1,17
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	addi	a5,a5,20
	mv	a1,a5
	lla	a0,.LC24
	call	libmin_printf@plt
	lla	a0,.LC25
	call	libmin_printf@plt
	lla	a0,.LC26
	call	libmin_printf@plt
	lla	a0,.LC19
	call	libmin_printf@plt
	lla	a0,.LC27
	call	libmin_printf@plt
	lla	a5,Next_Ptr_Glob
	ld	a5,0(a5)
	lw	a5,8(a5)
	mv	a1,a5
	lla	a0,.LC21
	call	libmin_printf@plt
	li	a1,0
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a5,Next_Ptr_Glob
	ld	a5,0(a5)
	lw	a5,12(a5)
	mv	a1,a5
	lla	a0,.LC22
	call	libmin_printf@plt
	li	a1,1
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a5,Next_Ptr_Glob
	ld	a5,0(a5)
	lw	a5,16(a5)
	mv	a1,a5
	lla	a0,.LC23
	call	libmin_printf@plt
	li	a1,18
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a5,Next_Ptr_Glob
	ld	a5,0(a5)
	addi	a5,a5,20
	mv	a1,a5
	lla	a0,.LC24
	call	libmin_printf@plt
	lla	a0,.LC25
	call	libmin_printf@plt
	lw	a5,-116(s0)
	mv	a1,a5
	lla	a0,.LC28
	call	libmin_printf@plt
	li	a1,5
	lla	a0,.LC10
	call	libmin_printf@plt
	lw	a5,-104(s0)
	mv	a1,a5
	lla	a0,.LC29
	call	libmin_printf@plt
	li	a1,13
	lla	a0,.LC10
	call	libmin_printf@plt
	lw	a5,-112(s0)
	mv	a1,a5
	lla	a0,.LC30
	call	libmin_printf@plt
	li	a1,7
	lla	a0,.LC10
	call	libmin_printf@plt
	lw	a5,-108(s0)
	mv	a1,a5
	lla	a0,.LC31
	call	libmin_printf@plt
	li	a1,1
	lla	a0,.LC10
	call	libmin_printf@plt
	addi	a5,s0,-88
	mv	a1,a5
	lla	a0,.LC32
	call	libmin_printf@plt
	lla	a0,.LC33
	call	libmin_printf@plt
	addi	a5,s0,-56
	mv	a1,a5
	lla	a0,.LC34
	call	libmin_printf@plt
	lla	a0,.LC35
	call	libmin_printf@plt
	lla	a0,.LC2
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L10
	call	__stack_chk_fail@plt
.L10:
	mv	a0,a4
	ld	ra,120(sp)
	.cfi_restore 1
	ld	s0,112(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.align	1
	.type	Proc_1, @function
Proc_1:
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
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	ld	a5,0(a5)
	sd	a5,-24(s0)
	lla	a5,Ptr_Glob
	ld	a4,0(a5)
	ld	a5,-40(s0)
	ld	a5,0(a5)
	ld	a7,0(a4)
	ld	a6,8(a4)
	ld	a0,16(a4)
	ld	a1,24(a4)
	ld	a2,32(a4)
	ld	a3,40(a4)
	ld	a4,48(a4)
	sd	a7,0(a5)
	sd	a6,8(a5)
	sd	a0,16(a5)
	sd	a1,24(a5)
	sd	a2,32(a5)
	sd	a3,40(a5)
	sd	a4,48(a5)
	ld	a5,-40(s0)
	li	a4,5
	sw	a4,16(a5)
	ld	a5,-40(s0)
	lw	a4,16(a5)
	ld	a5,-24(s0)
	sw	a4,16(a5)
	ld	a5,-40(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	mv	a0,a5
	call	Proc_3
	ld	a5,-24(s0)
	lw	a5,8(a5)
	bne	a5,zero,.L12
	ld	a5,-24(s0)
	li	a4,6
	sw	a4,16(a5)
	ld	a5,-40(s0)
	lw	a4,12(a5)
	ld	a5,-24(s0)
	addi	a5,a5,12
	mv	a1,a5
	mv	a0,a4
	call	PProc_6
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	sd	a4,0(a5)
	ld	a5,-24(s0)
	lw	a4,16(a5)
	ld	a5,-24(s0)
	addi	a5,a5,16
	mv	a2,a5
	li	a1,10
	mv	a0,a4
	call	PProc_7
	j	.L13
.L12:
	ld	a5,-40(s0)
	ld	a4,0(a5)
	ld	a5,-40(s0)
	ld	a7,0(a4)
	ld	a6,8(a4)
	ld	a0,16(a4)
	ld	a1,24(a4)
	ld	a2,32(a4)
	ld	a3,40(a4)
	ld	a4,48(a4)
	sd	a7,0(a5)
	sd	a6,8(a5)
	sd	a0,16(a5)
	sd	a1,24(a5)
	sd	a2,32(a5)
	sd	a3,40(a5)
	sd	a4,48(a5)
.L13:
	li	a5,0
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
.LFE4:
	.size	Proc_1, .-Proc_1
	.align	1
	.type	Proc_2, @function
Proc_2:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sw	zero,-20(s0)
	ld	a5,-40(s0)
	lw	a5,0(a5)
	addiw	a5,a5,10
	sw	a5,-24(s0)
.L17:
	lla	a5,Ch_1_Glob
	lbu	a5,0(a5)
	mv	a4,a5
	li	a5,65
	bne	a4,a5,.L16
	lw	a5,-24(s0)
	addiw	a5,a5,-1
	sw	a5,-24(s0)
	lla	a5,Int_Glob
	lw	a5,0(a5)
	lw	a4,-24(s0)
	subw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	sw	a4,0(a5)
	sw	zero,-20(s0)
.L16:
	lw	a5,-20(s0)
	sext.w	a5,a5
	bne	a5,zero,.L17
	li	a5,0
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	Proc_2, .-Proc_2
	.align	1
	.type	Proc_3, @function
Proc_3:
.LFB6:
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
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	beq	a5,zero,.L20
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	sd	a4,0(a5)
.L20:
	lla	a5,Int_Glob
	lw	a4,0(a5)
	lla	a5,Ptr_Glob
	ld	a5,0(a5)
	addi	a5,a5,16
	mv	a2,a5
	mv	a1,a4
	li	a0,10
	call	PProc_7
	li	a5,0
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
.LFE6:
	.size	Proc_3, .-Proc_3
	.align	1
	.type	Proc_4, @function
Proc_4:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lla	a5,Ch_1_Glob
	lbu	a5,0(a5)
	sext.w	a4,a5
	li	a5,65
	sub	a5,a4,a5
	seqz	a5,a5
	andi	a5,a5,0xff
	sw	a5,-20(s0)
	lla	a5,Bool_Glob
	lw	a5,0(a5)
	lw	a4,-20(s0)
	or	a5,a5,a4
	sext.w	a4,a5
	lla	a5,Bool_Glob
	sw	a4,0(a5)
	lla	a5,Ch_2_Glob
	li	a4,66
	sb	a4,0(a5)
	li	a5,0
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	Proc_4, .-Proc_4
	.align	1
	.type	Proc_5, @function
Proc_5:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	s0,8(sp)
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a5,Ch_1_Glob
	li	a4,65
	sb	a4,0(a5)
	lla	a5,Bool_Glob
	sw	zero,0(a5)
	li	a5,0
	mv	a0,a5
	ld	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	Proc_5, .-Proc_5
	.align	1
	.globl	PProc_6
	.type	PProc_6, @function
PProc_6:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-32(s0)
	sw	a5,-20(s0)
	ld	a5,-32(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	mv	a0,a5
	call	PFunc_3
	mv	a5,a0
	bne	a5,zero,.L27
	ld	a5,-32(s0)
	li	a4,3
	sw	a4,0(a5)
.L27:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,4
	bgtu	a4,a5,.L28
	lwu	a5,-20(s0)
	slli	a4,a5,2
	lla	a5,.L30
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L30
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L30:
	.word	.L34-.L30
	.word	.L33-.L30
	.word	.L32-.L30
	.word	.L38-.L30
	.word	.L29-.L30
	.text
.L34:
	ld	a5,-32(s0)
	sw	zero,0(a5)
	j	.L28
.L33:
	lla	a5,Int_Glob
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,100
	ble	a4,a5,.L35
	ld	a5,-32(s0)
	sw	zero,0(a5)
	j	.L28
.L35:
	ld	a5,-32(s0)
	li	a4,3
	sw	a4,0(a5)
	j	.L28
.L32:
	ld	a5,-32(s0)
	li	a4,1
	sw	a4,0(a5)
	j	.L28
.L29:
	ld	a5,-32(s0)
	li	a4,2
	sw	a4,0(a5)
	j	.L28
.L38:
	nop
.L28:
	li	a5,0
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
.LFE9:
	.size	PProc_6, .-PProc_6
	.align	1
	.globl	PProc_7
	.type	PProc_7, @function
PProc_7:
.LFB10:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sd	a2,-48(s0)
	sw	a5,-36(s0)
	mv	a5,a4
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,2
	sw	a5,-20(s0)
	lw	a5,-40(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-48(s0)
	sw	a4,0(a5)
	li	a5,0
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	PProc_7, .-PProc_7
	.align	1
	.globl	PProc_8
	.type	PProc_8, @function
PProc_8:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	s0,56(sp)
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	mv	a5,a2
	mv	a4,a3
	sw	a5,-52(s0)
	mv	a5,a4
	sw	a5,-56(s0)
	lw	a5,-52(s0)
	addiw	a5,a5,5
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-56(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,30
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	j	.L42
.L43:
	lw	a4,-20(s0)
	li	a5,200
	mul	a5,a4,a5
	ld	a4,-48(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L42:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sext.w	a4,a5
	lw	a5,-24(s0)
	sext.w	a5,a5
	ble	a5,a4,.L43
	lw	a4,-20(s0)
	li	a5,200
	mul	a5,a4,a5
	ld	a4,-48(s0)
	add	a4,a4,a5
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a3,-20(s0)
	li	a5,200
	mul	a5,a3,a5
	ld	a3,-48(s0)
	add	a3,a3,a5
	lw	a5,-20(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	addiw	a4,a4,1
	sext.w	a4,a4
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,-20(s0)
	li	a4,200
	mul	a3,a3,a4
	li	a4,4096
	addi	a4,a4,-96
	add	a4,a3,a4
	ld	a3,-48(s0)
	add	a3,a3,a4
	lw	a4,0(a5)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lla	a5,Int_Glob
	li	a4,5
	sw	a4,0(a5)
	li	a5,0
	mv	a0,a5
	ld	s0,56(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 64
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	PProc_8, .-PProc_8
	.align	1
	.globl	PFunc_1
	.type	PFunc_1, @function
PFunc_1:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sb	a5,-33(s0)
	mv	a5,a4
	sb	a5,-34(s0)
	lbu	a5,-33(s0)
	sb	a5,-18(s0)
	lbu	a5,-18(s0)
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	mv	a4,a5
	lbu	a5,-34(s0)
	andi	a4,a4,0xff
	andi	a5,a5,0xff
	beq	a4,a5,.L46
	li	a5,0
	j	.L47
.L46:
	lla	a5,Ch_1_Glob
	lbu	a4,-18(s0)
	sb	a4,0(a5)
	li	a5,1
.L47:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	PFunc_1, .-PFunc_1
	.align	1
	.globl	PFunc_2
	.type	PFunc_2, @function
PFunc_2:
.LFB13:
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
	sb	zero,-21(s0)
	li	a5,2
	sw	a5,-20(s0)
	j	.L49
.L51:
	lw	a5,-20(s0)
	ld	a4,-40(s0)
	add	a5,a4,a5
	lbu	a3,0(a5)
	lw	a5,-20(s0)
	addi	a5,a5,1
	ld	a4,-48(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a1,a5
	mv	a0,a3
	call	PFunc_1
	mv	a5,a0
	bne	a5,zero,.L49
	li	a5,65
	sb	a5,-21(s0)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L49:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L51
	lbu	a5,-21(s0)
	andi	a4,a5,0xff
	li	a5,86
	bleu	a4,a5,.L52
	lbu	a5,-21(s0)
	andi	a4,a5,0xff
	li	a5,89
	bgtu	a4,a5,.L52
	li	a5,7
	sw	a5,-20(s0)
.L52:
	lbu	a5,-21(s0)
	andi	a4,a5,0xff
	li	a5,82
	bne	a4,a5,.L53
	li	a5,1
	j	.L54
.L53:
	ld	a1,-48(s0)
	ld	a0,-40(s0)
	call	libmin_strcmp@plt
	mv	a5,a0
	ble	a5,zero,.L55
	lw	a5,-20(s0)
	addiw	a5,a5,7
	sw	a5,-20(s0)
	lla	a5,Int_Glob
	lw	a4,-20(s0)
	sw	a4,0(a5)
	li	a5,1
	j	.L54
.L55:
	li	a5,0
.L54:
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
.LFE13:
	.size	PFunc_2, .-PFunc_2
	.align	1
	.globl	PFunc_3
	.type	PFunc_3, @function
PFunc_3:
.LFB14:
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
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L57
	li	a5,1
	j	.L58
.L57:
	li	a5,0
.L58:
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	PFunc_3, .-PFunc_3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
