	.file	"qsort-demo.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	int_cmp
	.type	int_cmp, @function
int_cmp:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a5,-48(s0)
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	lw	a4,0(a5)
	ld	a5,-24(s0)
	lw	a5,0(a5)
	subw	a5,a4,a5
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	int_cmp, .-int_cmp
	.section	.rodata
	.align	3
.LC9:
	.string	"%d | "
	.text
	.align	1
	.globl	print_int_array
	.type	print_int_array, @function
print_int_array:
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
	sd	a1,-48(s0)
	sd	zero,-24(s0)
	j	.L4
.L5:
	ld	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC9
	call	libmin_printf@plt
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L4:
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L5
	li	a0,10
	call	libmin_putc@plt
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
.LFE4:
	.size	print_int_array, .-print_int_array
	.section	.rodata
	.align	3
.LC10:
	.string	"*** Integer sorting..."
	.align	3
.LC0:
	.word	7
	.word	3
	.word	4
	.word	1
	.word	-1
	.word	23
	.word	12
	.word	43
	.word	2
	.word	-4
	.word	5
	.text
	.align	1
	.globl	sort_integers_example
	.type	sort_integers_example, @function
sort_integers_example:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC0
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,40(a5)
	sw	a5,-32(s0)
	li	a5,11
	sd	a5,-80(s0)
	lla	a0,.LC10
	call	libmin_puts@plt
	addi	a5,s0,-72
	ld	a1,-80(s0)
	mv	a0,a5
	call	print_int_array
	addi	a5,s0,-72
	lla	a3,int_cmp
	li	a2,4
	ld	a1,-80(s0)
	mv	a0,a5
	call	libmin_qsort@plt
	addi	a5,s0,-72
	ld	a1,-80(s0)
	mv	a0,a5
	call	print_int_array
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L7
	call	__stack_chk_fail@plt
.L7:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	sort_integers_example, .-sort_integers_example
	.align	1
	.globl	cstring_cmp
	.type	cstring_cmp, @function
cstring_cmp:
.LFB6:
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
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a5,-48(s0)
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	ld	a4,0(a5)
	ld	a5,-24(s0)
	ld	a5,0(a5)
	mv	a1,a5
	mv	a0,a4
	call	libmin_strcmp@plt
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
.LFE6:
	.size	cstring_cmp, .-cstring_cmp
	.section	.rodata
	.align	3
.LC11:
	.string	"%s | "
	.text
	.align	1
	.globl	print_cstring_array
	.type	print_cstring_array, @function
print_cstring_array:
.LFB7:
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
	sd	zero,-24(s0)
	j	.L11
.L12:
	ld	a5,-24(s0)
	slli	a5,a5,3
	ld	a4,-40(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC11
	call	libmin_printf@plt
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L11:
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L12
	li	a0,10
	call	libmin_putc@plt
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
.LFE7:
	.size	print_cstring_array, .-print_cstring_array
	.section	.rodata
	.align	3
.LC13:
	.string	"*** String sorting..."
	.align	3
.LC1:
	.string	"Zorro"
	.align	3
.LC2:
	.string	"Alex"
	.align	3
.LC3:
	.string	"Celine"
	.align	3
.LC4:
	.string	"Bill"
	.align	3
.LC5:
	.string	"Forest"
	.align	3
.LC6:
	.string	"Dexter"
	.data
	.align	3
.LC12:
	.dword	.LC1
	.dword	.LC2
	.dword	.LC3
	.dword	.LC4
	.dword	.LC5
	.dword	.LC6
	.text
	.align	1
	.globl	sort_cstrings_example
	.type	sort_cstrings_example, @function
sort_cstrings_example:
.LFB8:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)
	sd	s0,64(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a5,.LC12
	ld	a0,0(a5)
	ld	a1,8(a5)
	ld	a2,16(a5)
	ld	a3,24(a5)
	ld	a4,32(a5)
	ld	a5,40(a5)
	sd	a0,-72(s0)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	sd	a5,-32(s0)
	li	a5,6
	sd	a5,-80(s0)
	lla	a0,.LC13
	call	libmin_puts@plt
	addi	a5,s0,-72
	ld	a1,-80(s0)
	mv	a0,a5
	call	print_cstring_array
	addi	a5,s0,-72
	lla	a3,cstring_cmp
	li	a2,8
	ld	a1,-80(s0)
	mv	a0,a5
	call	libmin_qsort@plt
	addi	a5,s0,-72
	ld	a1,-80(s0)
	mv	a0,a5
	call	print_cstring_array
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L14
	call	__stack_chk_fail@plt
.L14:
	ld	ra,72(sp)
	.cfi_restore 1
	ld	s0,64(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	sort_cstrings_example, .-sort_cstrings_example
	.align	1
	.globl	struct_cmp_by_price
	.type	struct_cmp_by_price, @function
struct_cmp_by_price:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a5,-48(s0)
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	flw	fa4,16(a5)
	lla	a5,.LC14
	flw	fa5,0(a5)
	fmul.s	fa4,fa4,fa5
	ld	a5,-24(s0)
	flw	fa3,16(a5)
	lla	a5,.LC14
	flw	fa5,0(a5)
	fmul.s	fa5,fa3,fa5
	fsub.s	fa5,fa4,fa5
	fcvt.w.s a5,fa5,rtz
	sext.w	a5,a5
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	struct_cmp_by_price, .-struct_cmp_by_price
	.align	1
	.globl	struct_cmp_by_product
	.type	struct_cmp_by_product, @function
struct_cmp_by_product:
.LFB10:
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
	ld	a5,-40(s0)
	sd	a5,-32(s0)
	ld	a5,-48(s0)
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	ld	a4,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	libmin_strcmp@plt
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
.LFE10:
	.size	struct_cmp_by_product, .-struct_cmp_by_product
	.section	.rodata
	.align	3
.LC15:
	.string	"[ product: %s \t price: $%.2f ]\n"
	.align	3
.LC16:
	.string	"--"
	.text
	.align	1
	.globl	print_struct_array
	.type	print_struct_array, @function
print_struct_array:
.LFB11:
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
	sd	zero,-24(s0)
	j	.L20
.L21:
	ld	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	mv	a3,a5
	ld	a4,-24(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,2
	mv	a4,a5
	ld	a5,-40(s0)
	add	a5,a5,a4
	flw	fa5,16(a5)
	fcvt.d.s	fa5,fa5
	fmv.x.d	a2,fa5
	mv	a1,a3
	lla	a0,.LC15
	call	libmin_printf@plt
	ld	a5,-24(s0)
	addi	a5,a5,1
	sd	a5,-24(s0)
.L20:
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	bltu	a4,a5,.L21
	lla	a0,.LC16
	call	libmin_puts@plt
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
.LFE11:
	.size	print_struct_array, .-print_struct_array
	.section	.rodata
	.align	3
.LC17:
	.string	"*** Struct sorting (price)..."
	.align	3
.LC18:
	.string	"*** Struct sorting (product)..."
	.align	3
.LC8:
	.string	"mp3 player"
	.zero	5
	.word	1133871104
	.string	"plasma tv"
	.zero	6
	.word	1158250496
	.string	"notebook"
	.zero	7
	.word	1151500288
	.string	"smartphone"
	.zero	5
	.word	1140457144
	.string	"dvd player"
	.zero	5
	.word	1125515264
	.string	"matches"
	.zero	8
	.word	1045220557
	.text
	.align	1
	.globl	sort_structs_example
	.type	sort_structs_example, @function
sort_structs_example:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sd	ra,152(sp)
	sd	s0,144(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	lla	a4,.LC8
	addi	a5,s0,-144
	mv	a3,a4
	li	a4,120
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy@plt
	li	a5,6
	sd	a5,-152(s0)
	lla	a0,.LC17
	call	libmin_puts@plt
	addi	a5,s0,-144
	ld	a1,-152(s0)
	mv	a0,a5
	call	print_struct_array
	addi	a5,s0,-144
	lla	a3,struct_cmp_by_price
	li	a2,20
	ld	a1,-152(s0)
	mv	a0,a5
	call	libmin_qsort@plt
	addi	a5,s0,-144
	ld	a1,-152(s0)
	mv	a0,a5
	call	print_struct_array
	lla	a0,.LC18
	call	libmin_puts@plt
	addi	a5,s0,-144
	lla	a3,struct_cmp_by_product
	li	a2,20
	ld	a1,-152(s0)
	mv	a0,a5
	call	libmin_qsort@plt
	addi	a5,s0,-144
	ld	a1,-152(s0)
	mv	a0,a5
	call	print_struct_array
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L23
	call	__stack_chk_fail@plt
.L23:
	ld	ra,152(sp)
	.cfi_restore 1
	ld	s0,144(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 160
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	sort_structs_example, .-sort_structs_example
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	call	sort_integers_example
	call	sort_cstrings_example
	call	sort_structs_example
	call	libmin_success@plt
	li	a5,0
	mv	a0,a5
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.section	.rodata
	.align	2
.LC14:
	.word	1120403456
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
