	.arch armv8-a
	.file	"dhrystone.c"
	.text
	.local	Ptr_Glob
	.comm	Ptr_Glob,8,8
	.local	Next_Ptr_Glob
	.comm	Next_Ptr_Glob,8,8
	.local	rec1
	.comm	rec1,56,8
	.local	rec2
	.comm	rec2,56,8
	.global	Int_Glob
	.bss
	.align	2
	.type	Int_Glob, %object
	.size	Int_Glob, 4
Int_Glob:
	.zero	4
	.local	Bool_Glob
	.comm	Bool_Glob,4,4
	.global	Ch_1_Glob
	.type	Ch_1_Glob, %object
	.size	Ch_1_Glob, 1
Ch_1_Glob:
	.zero	1
	.local	Ch_2_Glob
	.comm	Ch_2_Glob,1,1
	.local	Arr_1_Glob
	.comm	Arr_1_Glob,200,8
	.local	Arr_2_Glob
	.comm	Arr_2_Glob,10000,8
	.global	Pnumber_of_runs
	.align	2
	.type	Pnumber_of_runs, %object
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
	.align	2
	.global	main
	.type	main, %function
main:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, 112]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 112
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 104]
	mov	x1, 0
	mov	w0, 10
	str	w0, [sp, 32]
	adrp	x0, Next_Ptr_Glob
	add	x0, x0, :lo12:Next_Ptr_Glob
	adrp	x1, rec1
	add	x1, x1, :lo12:rec1
	str	x1, [x0]
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	adrp	x1, rec2
	add	x1, x1, :lo12:rec2
	str	x1, [x0]
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	adrp	x1, Next_Ptr_Glob
	add	x1, x1, :lo12:Next_Ptr_Glob
	ldr	x1, [x1]
	str	x1, [x0]
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	str	wzr, [x0, 8]
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	mov	w1, 2
	str	w1, [x0, 12]
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	mov	w1, 40
	str	w1, [x0, 16]
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	add	x2, x0, 20
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	bl	libmin_strcpy
	add	x2, sp, 40
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	libmin_strcpy
	adrp	x0, Arr_2_Glob
	add	x0, x0, :lo12:Arr_2_Glob
	mov	w1, 10
	str	w1, [x0, 1628]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	libmin_printf
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	ldr	w0, [sp, 32]
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	libmin_printf
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
.L8:
	bl	Proc_5
	bl	Proc_4
	mov	w0, 2
	str	w0, [sp, 12]
	mov	w0, 3
	str	w0, [sp, 24]
	add	x2, sp, 72
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	mov	x0, x2
	bl	libmin_strcpy
	mov	w0, 1
	str	w0, [sp, 20]
	add	x1, sp, 72
	add	x0, sp, 40
	bl	PFunc_2
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	mov	w1, w0
	adrp	x0, Bool_Glob
	add	x0, x0, :lo12:Bool_Glob
	str	w1, [x0]
	b	.L3
.L4:
	ldr	w1, [sp, 12]
	mov	w0, w1
	lsl	w0, w0, 2
	add	w1, w0, w1
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 12]
	add	x1, sp, 16
	mov	x2, x1
	ldr	w1, [sp, 24]
	bl	PProc_7
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L3:
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bgt	.L4
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 16]
	mov	w3, w1
	mov	w2, w0
	adrp	x0, Arr_2_Glob
	add	x1, x0, :lo12:Arr_2_Glob
	adrp	x0, Arr_1_Glob
	add	x0, x0, :lo12:Arr_1_Glob
	bl	PProc_8
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	bl	Proc_1
	mov	w0, 65
	strb	w0, [sp, 11]
	b	.L5
.L7:
	mov	w1, 67
	ldrb	w0, [sp, 11]
	bl	PFunc_1
	mov	w1, w0
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bne	.L6
	add	x0, sp, 20
	mov	x1, x0
	mov	w0, 0
	bl	PProc_6
	add	x2, sp, 72
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	mov	x0, x2
	bl	libmin_strcpy
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	adrp	x0, Int_Glob
	add	x0, x0, :lo12:Int_Glob
	ldr	w1, [sp, 28]
	str	w1, [x0]
.L6:
	ldrb	w0, [sp, 11]
	add	w0, w0, 1
	strb	w0, [sp, 11]
.L5:
	adrp	x0, Ch_2_Glob
	add	x0, x0, :lo12:Ch_2_Glob
	ldrb	w0, [x0]
	ldrb	w1, [sp, 11]
	cmp	w1, w0
	bls	.L7
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 24]
	mul	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 24]
	sdiv	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 24]
	sub	w1, w1, w0
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w1, w0, w1
	ldr	w0, [sp, 12]
	sub	w0, w1, w0
	str	w0, [sp, 24]
	add	x0, sp, 12
	bl	Proc_2
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
.L2:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	ble	.L8
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	libmin_printf
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	libmin_printf
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	adrp	x0, Int_Glob
	add	x0, x0, :lo12:Int_Glob
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	bl	libmin_printf
	mov	w1, 5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, Bool_Glob
	add	x0, x0, :lo12:Bool_Glob
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	bl	libmin_printf
	mov	w1, 1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, Ch_1_Glob
	add	x0, x0, :lo12:Ch_1_Glob
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	bl	libmin_printf
	mov	w1, 65
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_printf
	adrp	x0, Ch_2_Glob
	add	x0, x0, :lo12:Ch_2_Glob
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	bl	libmin_printf
	mov	w1, 66
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	bl	libmin_printf
	adrp	x0, Arr_1_Glob
	add	x0, x0, :lo12:Arr_1_Glob
	ldr	w0, [x0, 32]
	mov	w1, w0
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	bl	libmin_printf
	mov	w1, 7
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, Arr_2_Glob
	add	x0, x0, :lo12:Arr_2_Glob
	ldr	w0, [x0, 1628]
	mov	w1, w0
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	bl	libmin_printf
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	bl	libmin_printf
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	bl	libmin_printf
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	libmin_printf
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	bl	libmin_printf
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	ldr	w0, [x0, 8]
	mov	w1, w0
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	libmin_printf
	mov	w1, 0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	ldr	w0, [x0, 12]
	mov	w1, w0
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	libmin_printf
	mov	w1, 2
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	ldr	w0, [x0, 16]
	mov	w1, w0
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	libmin_printf
	mov	w1, 17
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	add	x0, x0, 20
	mov	x1, x0
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	libmin_printf
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	libmin_printf
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	bl	libmin_printf
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	bl	libmin_printf
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	bl	libmin_printf
	adrp	x0, Next_Ptr_Glob
	add	x0, x0, :lo12:Next_Ptr_Glob
	ldr	x0, [x0]
	ldr	w0, [x0, 8]
	mov	w1, w0
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	bl	libmin_printf
	mov	w1, 0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, Next_Ptr_Glob
	add	x0, x0, :lo12:Next_Ptr_Glob
	ldr	x0, [x0]
	ldr	w0, [x0, 12]
	mov	w1, w0
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	bl	libmin_printf
	mov	w1, 1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, Next_Ptr_Glob
	add	x0, x0, :lo12:Next_Ptr_Glob
	ldr	x0, [x0]
	ldr	w0, [x0, 16]
	mov	w1, w0
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	bl	libmin_printf
	mov	w1, 18
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	adrp	x0, Next_Ptr_Glob
	add	x0, x0, :lo12:Next_Ptr_Glob
	ldr	x0, [x0]
	add	x0, x0, 20
	mov	x1, x0
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	bl	libmin_printf
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	bl	libmin_printf
	ldr	w0, [sp, 12]
	mov	w1, w0
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	bl	libmin_printf
	mov	w1, 5
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	ldr	w1, [sp, 24]
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	bl	libmin_printf
	mov	w1, 13
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	ldr	w0, [sp, 16]
	mov	w1, w0
	adrp	x0, .LC30
	add	x0, x0, :lo12:.LC30
	bl	libmin_printf
	mov	w1, 7
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	ldr	w0, [sp, 20]
	mov	w1, w0
	adrp	x0, .LC31
	add	x0, x0, :lo12:.LC31
	bl	libmin_printf
	mov	w1, 1
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	bl	libmin_printf
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC32
	add	x0, x0, :lo12:.LC32
	bl	libmin_printf
	adrp	x0, .LC33
	add	x0, x0, :lo12:.LC33
	bl	libmin_printf
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, .LC34
	add	x0, x0, :lo12:.LC34
	bl	libmin_printf
	adrp	x0, .LC35
	add	x0, x0, :lo12:.LC35
	bl	libmin_printf
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	libmin_printf
	bl	libmin_success
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 104]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L10
	bl	__stack_chk_fail
.L10:
	mov	w0, w1
	ldp	x29, x30, [sp, 112]
	add	sp, sp, 128
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.align	2
	.type	Proc_1, %function
Proc_1:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	x1, [x1, 48]
	str	x1, [x0, 48]
	ldr	x0, [sp, 24]
	mov	w1, 5
	str	w1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	w1, [x0, 16]
	ldr	x0, [sp, 40]
	str	w1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	bl	Proc_3
	ldr	x0, [sp, 40]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	bne	.L12
	ldr	x0, [sp, 40]
	mov	w1, 6
	str	w1, [x0, 16]
	ldr	x0, [sp, 24]
	ldr	w2, [x0, 12]
	ldr	x0, [sp, 40]
	add	x0, x0, 12
	mov	x1, x0
	mov	w0, w2
	bl	PProc_6
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	ldr	x1, [x0]
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 40]
	ldr	w3, [x0, 16]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	mov	x2, x0
	mov	w1, 10
	mov	w0, w3
	bl	PProc_7
	b	.L13
.L12:
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	q0, [x1, 32]
	str	q0, [x0, 32]
	ldr	x1, [x1, 48]
	str	x1, [x0, 48]
.L13:
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	Proc_1, .-Proc_1
	.align	2
	.type	Proc_2, %function
Proc_2:
.LFB5:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	wzr, [sp, 28]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	add	w0, w0, 10
	str	w0, [sp, 24]
.L17:
	adrp	x0, Ch_1_Glob
	add	x0, x0, :lo12:Ch_1_Glob
	ldrb	w0, [x0]
	cmp	w0, 65
	bne	.L16
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	adrp	x0, Int_Glob
	add	x0, x0, :lo12:Int_Glob
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	sub	w1, w1, w0
	ldr	x0, [sp, 8]
	str	w1, [x0]
	str	wzr, [sp, 28]
.L16:
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L17
	mov	w0, 0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	Proc_2, .-Proc_2
	.align	2
	.type	Proc_3, %function
Proc_3:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x0, [sp, 24]
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L20
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	ldr	x1, [x0]
	ldr	x0, [sp, 24]
	str	x1, [x0]
.L20:
	adrp	x0, Int_Glob
	add	x0, x0, :lo12:Int_Glob
	ldr	w1, [x0]
	adrp	x0, Ptr_Glob
	add	x0, x0, :lo12:Ptr_Glob
	ldr	x0, [x0]
	add	x0, x0, 16
	mov	x2, x0
	mov	w0, 10
	bl	PProc_7
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	Proc_3, .-Proc_3
	.align	2
	.type	Proc_4, %function
Proc_4:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	adrp	x0, Ch_1_Glob
	add	x0, x0, :lo12:Ch_1_Glob
	ldrb	w0, [x0]
	cmp	w0, 65
	cset	w0, eq
	and	w0, w0, 255
	str	w0, [sp, 12]
	adrp	x0, Bool_Glob
	add	x0, x0, :lo12:Bool_Glob
	ldr	w1, [x0]
	ldr	w0, [sp, 12]
	orr	w1, w1, w0
	adrp	x0, Bool_Glob
	add	x0, x0, :lo12:Bool_Glob
	str	w1, [x0]
	adrp	x0, Ch_2_Glob
	add	x0, x0, :lo12:Ch_2_Glob
	mov	w1, 66
	strb	w1, [x0]
	mov	w0, 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE7:
	.size	Proc_4, .-Proc_4
	.align	2
	.type	Proc_5, %function
Proc_5:
.LFB8:
	.cfi_startproc
	adrp	x0, Ch_1_Glob
	add	x0, x0, :lo12:Ch_1_Glob
	mov	w1, 65
	strb	w1, [x0]
	adrp	x0, Bool_Glob
	add	x0, x0, :lo12:Bool_Glob
	str	wzr, [x0]
	mov	w0, 0
	ret
	.cfi_endproc
.LFE8:
	.size	Proc_5, .-Proc_5
	.align	2
	.global	PProc_6
	.type	PProc_6, %function
PProc_6:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	ldr	x0, [sp, 16]
	ldr	w1, [sp, 28]
	str	w1, [x0]
	ldr	w0, [sp, 28]
	bl	PFunc_3
	cmp	w0, 0
	bne	.L27
	ldr	x0, [sp, 16]
	mov	w1, 3
	str	w1, [x0]
.L27:
	ldr	w0, [sp, 28]
	cmp	w0, 4
	beq	.L28
	ldr	w0, [sp, 28]
	cmp	w0, 4
	bhi	.L29
	ldr	w0, [sp, 28]
	cmp	w0, 3
	beq	.L37
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bhi	.L29
	ldr	w0, [sp, 28]
	cmp	w0, 2
	beq	.L31
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bhi	.L29
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L32
	ldr	w0, [sp, 28]
	cmp	w0, 1
	beq	.L33
	b	.L29
.L32:
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	b	.L29
.L33:
	adrp	x0, Int_Glob
	add	x0, x0, :lo12:Int_Glob
	ldr	w0, [x0]
	cmp	w0, 100
	ble	.L34
	ldr	x0, [sp, 16]
	str	wzr, [x0]
	b	.L29
.L34:
	ldr	x0, [sp, 16]
	mov	w1, 3
	str	w1, [x0]
	b	.L29
.L31:
	ldr	x0, [sp, 16]
	mov	w1, 1
	str	w1, [x0]
	b	.L29
.L28:
	ldr	x0, [sp, 16]
	mov	w1, 2
	str	w1, [x0]
	b	.L29
.L37:
	nop
.L29:
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE9:
	.size	PProc_6, .-PProc_6
	.align	2
	.global	PProc_7
	.type	PProc_7, %function
PProc_7:
.LFB10:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	x2, [sp]
	ldr	w0, [sp, 12]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	ldr	x0, [sp]
	str	w1, [x0]
	mov	w0, 0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE10:
	.size	PProc_7, .-PProc_7
	.align	2
	.global	PProc_8
	.type	PProc_8, %function
PProc_8:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	w2, [sp, 12]
	str	w3, [sp, 8]
	ldr	w0, [sp, 12]
	add	w0, w0, 5
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 8]
	str	w1, [x0]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 44]
	add	x0, x0, 30
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
	b	.L41
.L42:
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	ldrsw	x1, [sp, 40]
	ldr	w2, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L41:
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L42
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	ldr	w1, [sp, 44]
	sub	w1, w1, #1
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	ldr	x0, [sp, 16]
	add	x0, x0, x1
	ldr	w1, [sp, 44]
	sub	w1, w1, #1
	add	w2, w2, 1
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x2, x1, x0
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, 4000
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w2, [x2]
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Int_Glob
	add	x0, x0, :lo12:Int_Glob
	mov	w1, 5
	str	w1, [x0]
	mov	w0, 0
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE11:
	.size	PProc_8, .-PProc_8
	.align	2
	.global	PFunc_1
	.type	PFunc_1, %function
PFunc_1:
.LFB12:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	strb	w0, [sp, 15]
	strb	w1, [sp, 14]
	ldrb	w0, [sp, 15]
	strb	w0, [sp, 30]
	ldrb	w0, [sp, 30]
	strb	w0, [sp, 31]
	ldrb	w1, [sp, 31]
	ldrb	w0, [sp, 14]
	cmp	w1, w0
	beq	.L45
	mov	w0, 0
	b	.L46
.L45:
	adrp	x0, Ch_1_Glob
	add	x0, x0, :lo12:Ch_1_Glob
	ldrb	w1, [sp, 30]
	strb	w1, [x0]
	mov	w0, 1
.L46:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE12:
	.size	PFunc_1, .-PFunc_1
	.align	2
	.global	PFunc_2
	.type	PFunc_2, %function
PFunc_2:
.LFB13:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	wzr, [sp, 43]
	mov	w0, 2
	str	w0, [sp, 44]
	b	.L48
.L50:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w2, [x0]
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	mov	w0, w2
	bl	PFunc_1
	cmp	w0, 0
	bne	.L48
	mov	w0, 65
	strb	w0, [sp, 43]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L48:
	ldr	w0, [sp, 44]
	cmp	w0, 2
	ble	.L50
	ldrb	w0, [sp, 43]
	cmp	w0, 86
	bls	.L51
	ldrb	w0, [sp, 43]
	cmp	w0, 89
	bhi	.L51
	mov	w0, 7
	str	w0, [sp, 44]
.L51:
	ldrb	w0, [sp, 43]
	cmp	w0, 82
	bne	.L52
	mov	w0, 1
	b	.L53
.L52:
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	bl	libmin_strcmp
	cmp	w0, 0
	ble	.L54
	ldr	w0, [sp, 44]
	add	w0, w0, 7
	str	w0, [sp, 44]
	adrp	x0, Int_Glob
	add	x0, x0, :lo12:Int_Glob
	ldr	w1, [sp, 44]
	str	w1, [x0]
	mov	w0, 1
	b	.L53
.L54:
	mov	w0, 0
.L53:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE13:
	.size	PFunc_2, .-PFunc_2
	.align	2
	.global	PFunc_3
	.type	PFunc_3, %function
PFunc_3:
.LFB14:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L56
	mov	w0, 1
	b	.L57
.L56:
	mov	w0, 0
.L57:
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE14:
	.size	PFunc_3, .-PFunc_3
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
