	.file	"frac-calc.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	__input
	.section	.rodata
	.align	3
	.type	__input, @object
	.size	__input, 30
__input:
	.ascii	" 3/4 + 6 7/19\n1\n7/19 + 21/7\n0\n"
	.globl	input
	.align	3
.LC0:
	.string	"input.h"
	.section	.data.rel.local,"aw"
	.align	3
	.type	input, @object
	.size	input, 32
input:
	.dword	.LC0
	.dword	30
	.dword	__input
	.word	0
	.zero	4
	.globl	minput
	.align	3
	.type	minput, @object
	.size	minput, 8
minput:
	.dword	input
	.local	verb
	.comm	verb,4,4
	.section	.rodata
	.align	3
.LC1:
	.string	"Type\n\t$man %s\nor\n\t$%s -h\nfor help.\n\n"
	.align	3
.LC2:
	.string	"vhV"
	.align	3
.LC3:
	.string	"Verbose level set at: %d\n"
	.align	3
.LC4:
	.string	"\nDo you want to do another operation?\nenter 1 for yes\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	sd	ra,280(sp)
	sd	s0,272(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,288
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-288(s0)
	sw	a5,-276(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	li	a5,1
	sw	a5,-260(s0)
	la	a5,opterr
	sw	zero,0(a5)
	j	.L2
.L8:
	lw	a5,-256(s0)
	sext.w	a4,a5
	li	a5,118
	beq	a4,a5,.L3
	lw	a5,-256(s0)
	sext.w	a4,a5
	li	a5,118
	bgt	a4,a5,.L4
	lw	a5,-256(s0)
	sext.w	a4,a5
	li	a5,86
	beq	a4,a5,.L5
	lw	a5,-256(s0)
	sext.w	a4,a5
	li	a5,104
	bne	a4,a5,.L4
	call	help
	j	.L2
.L5:
	call	copyr
	j	.L2
.L3:
	lla	a5,verb
	lw	a5,0(a5)
	addiw	a5,a5,1
	sext.w	a4,a5
	lla	a5,verb
	sw	a4,0(a5)
	j	.L2
.L4:
	ld	a5,-288(s0)
	ld	a4,0(a5)
	ld	a5,-288(s0)
	ld	a5,0(a5)
	mv	a2,a5
	mv	a1,a4
	lla	a0,.LC1
	call	libmin_printf@plt
	li	a5,1
	j	.L11
.L2:
	lw	a5,-276(s0)
	lla	a2,.LC2
	ld	a1,-288(s0)
	mv	a0,a5
	call	libmin_getopt@plt
	mv	a5,a0
	sw	a5,-256(s0)
	lw	a5,-256(s0)
	sext.w	a4,a5
	li	a5,-1
	bne	a4,a5,.L8
	lla	a5,verb
	lw	a5,0(a5)
	beq	a5,zero,.L10
	lla	a5,verb
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
.L10:
	addi	a5,s0,-152
	mv	a0,a5
	call	frac_init
	addi	a4,s0,-248
	addi	a5,s0,-152
	mv	a1,a4
	mv	a0,a5
	call	divtokens
	addi	a4,s0,-200
	addi	a5,s0,-248
	mv	a1,a4
	mv	a0,a5
	call	calcula
	fsw	fa0,-252(s0)
	addi	a3,s0,-248
	addi	a4,s0,-200
	addi	a5,s0,-152
	mv	a2,a3
	flw	fa0,-252(s0)
	mv	a1,a4
	mv	a0,a5
	call	print
	lla	a0,.LC4
	call	libmin_printf@plt
	lla	a5,minput
	ld	a4,0(a5)
	addi	a5,s0,-88
	mv	a2,a4
	li	a1,60
	mv	a0,a5
	call	libmin_mgets@plt
	addi	a5,s0,-88
	mv	a0,a5
	call	libmin_atoi@plt
	mv	a5,a0
	sw	a5,-260(s0)
	lw	a5,-260(s0)
	sext.w	a4,a5
	li	a5,1
	beq	a4,a5,.L10
	call	libmin_success@plt
	li	a5,0
.L11:
	mv	a4,a5
	la	a5,__stack_chk_guard
	ld	a3, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a3, a5
	li	a3, 0
	beq	a5,zero,.L12
	call	__stack_chk_fail@plt
.L12:
	mv	a0,a4
	ld	ra,280(sp)
	.cfi_restore 1
	ld	s0,272(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 288
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC5:
	.string	"Fraction Calculator"
	.align	3
.LC6:
	.string	"frac"
	.align	3
.LC7:
	.string	"%s - %s\n"
	.align	3
.LC8:
	.string	"\nUsage: %s [-h|-v]\n"
	.align	3
.LC9:
	.string	"\nOptions:\n"
	.align	3
.LC10:
	.string	"\t-h,  --help\n\t\tShow this help.\n"
	.align	3
.LC11:
	.string	"\t-V,  --version\n\t\tShow version and copyright information.\n"
	.align	3
.LC12:
	.string	"\t-v,  --verbose\n\t\tSet verbose level (cumulative).\n"
	.align	3
.LC13:
	.string	"\nExit status:\n\t0 if ok.\n\t1 some error occurred.\n"
	.align	3
.LC14:
	.string	"\nTodo:\n\tLong options not implemented yet.\n"
	.align	3
.LC15:
	.string	"iagocarrazzoni@gmail.com"
	.align	3
.LC16:
	.string	"Iago Gade Gusmao Carrazzoni"
	.align	3
.LC17:
	.string	"\nAuthor:\n\tWritten by %s <%s>\n\n"
	.text
	.align	1
	.globl	help
	.type	help, @function
help:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a2,.LC5
	lla	a1,.LC6
	lla	a0,.LC7
	call	libmin_printf@plt
	lla	a1,.LC6
	lla	a0,.LC8
	call	libmin_printf@plt
	lla	a0,.LC9
	call	libmin_printf@plt
	lla	a0,.LC10
	call	libmin_printf@plt
	lla	a0,.LC11
	call	libmin_printf@plt
	lla	a0,.LC12
	call	libmin_printf@plt
	lla	a0,.LC13
	call	libmin_printf@plt
	lla	a0,.LC14
	call	libmin_printf@plt
	lla	a2,.LC15
	lla	a1,.LC16
	lla	a0,.LC17
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
	nop
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	help, .-help
	.section	.rodata
	.align	3
.LC18:
	.string	"20180915.214818"
	.align	3
.LC19:
	.string	"%s - Version %s\n"
	.align	3
.LC20:
	.ascii	"\nCopyright (C) %d %s <%s>, GNU GPL version 2 <http://gnu"
	.string	".org/licenses/gpl.html>. This  is  free  software: you are free to change and redistribute it. There is NO WARRANTY, to the extent permitted by law. USE IT AS IT IS. The author takes no responsability to any damage this software may inflige in your data.\n\n"
	.align	3
.LC21:
	.string	"copyr(): Verbose: %d\n"
	.text
	.align	1
	.globl	copyr
	.type	copyr, @function
copyr:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	lla	a2,.LC18
	lla	a1,.LC6
	lla	a0,.LC19
	call	libmin_printf@plt
	lla	a3,.LC15
	lla	a2,.LC16
	li	a1,2018
	lla	a0,.LC20
	call	libmin_printf@plt
	lla	a5,verb
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,3
	ble	a4,a5,.L15
	lla	a5,verb
	lw	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC21
	call	libmin_printf@plt
.L15:
	li	a0,1
	call	libmin_fail@plt
	nop
	ld	ra,8(sp)
	.cfi_restore 1
	ld	s0,0(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	copyr, .-copyr
	.section	.rodata
	.align	3
.LC22:
	.string	"-------------------\n"
	.align	3
.LC23:
	.string	"FRACTION CALCULATOR\nPlease entry the desired operation:\n(It is necessary to add a space between the fractions, like a/b + c/d)\n-> "
	.text
	.align	1
	.globl	frac_init
	.type	frac_init, @function
frac_init:
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
	lla	a0,.LC22
	call	libmin_printf@plt
	lla	a0,.LC23
	call	libmin_printf@plt
	lla	a5,minput
	ld	a5,0(a5)
	mv	a2,a5
	li	a1,60
	ld	a0,-24(s0)
	call	libmin_mgets@plt
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
.LFE6:
	.size	frac_init, .-frac_init
	.section	.rodata
	.align	3
.LC24:
	.string	" "
	.text
	.align	1
	.globl	divtokens
	.type	divtokens, @function
divtokens:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-608
	.cfi_def_cfa_offset 608
	sd	ra,600(sp)
	sd	s0,592(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,608
	.cfi_def_cfa 8, 0
	sd	a0,-600(s0)
	sd	a1,-608(s0)
	la	a5,__stack_chk_guard
	ld	a4, 0(a5)
	sd	a4, -24(s0)
	li	a4, 0
	sw	zero,-580(s0)
	addi	a5,s0,-88
	ld	a1,-600(s0)
	mv	a0,a5
	call	libmin_strcpy@plt
	addi	a5,s0,-88
	lla	a1,.LC24
	mv	a0,a5
	call	libmin_strtok@plt
	sd	a0,-576(s0)
	j	.L19
.L20:
	lw	a5,-580(s0)
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	ld	a4,-576(s0)
	sd	a4,-552(a5)
	lla	a1,.LC24
	li	a0,0
	call	libmin_strtok@plt
	sd	a0,-576(s0)
	lw	a5,-580(s0)
	addiw	a5,a5,1
	sw	a5,-580(s0)
.L19:
	ld	a5,-576(s0)
	bne	a5,zero,.L20
	ld	a5,-608(s0)
	addi	a5,a5,36
	lw	a4,-580(s0)
	sw	a4,0(a5)
	lw	a4,-580(s0)
	addi	a5,s0,-568
	mv	a2,a4
	ld	a1,-608(s0)
	mv	a0,a5
	call	avaliatokens
	nop
	la	a5,__stack_chk_guard
	ld	a4, -24(s0)
	ld	a5, 0(a5)
	xor	a5, a4, a5
	li	a4, 0
	beq	a5,zero,.L22
	call	__stack_chk_fail@plt
.L22:
	ld	ra,600(sp)
	.cfi_restore 1
	ld	s0,592(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 608
	addi	sp,sp,608
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	divtokens, .-divtokens
	.section	.rodata
	.align	3
.LC25:
	.string	"+"
	.align	3
.LC26:
	.string	"-"
	.align	3
.LC27:
	.string	"*"
	.align	3
.LC28:
	.string	"/"
	.text
	.align	1
	.globl	avaliatokens
	.type	avaliatokens, @function
avaliatokens:
.LFB8:
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
	mv	a5,a2
	sw	a5,-84(s0)
	sw	zero,-48(s0)
	ld	a5,-72(s0)
	addi	a5,a5,16
	ld	a5,0(a5)
	lla	a1,.LC25
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L24
	ld	a5,-72(s0)
	addi	a5,a5,16
	ld	a5,0(a5)
	lla	a1,.LC26
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L24
	ld	a5,-72(s0)
	addi	a5,a5,16
	ld	a5,0(a5)
	lla	a1,.LC27
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L24
	ld	a5,-72(s0)
	addi	a5,a5,16
	ld	a5,0(a5)
	lla	a1,.LC28
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L25
.L24:
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,4
	bne	a4,a5,.L25
	li	a5,1
	sw	a5,-44(s0)
.L25:
	ld	a5,-72(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	lla	a1,.LC25
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L26
	ld	a5,-72(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	lla	a1,.LC26
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L26
	ld	a5,-72(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	lla	a1,.LC27
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	beq	a5,zero,.L26
	ld	a5,-72(s0)
	addi	a5,a5,8
	ld	a5,0(a5)
	lla	a1,.LC28
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L27
.L26:
	lw	a5,-84(s0)
	sext.w	a4,a5
	li	a5,4
	bne	a4,a5,.L27
	li	a5,2
	sw	a5,-44(s0)
.L27:
	sw	zero,-52(s0)
	j	.L28
.L35:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC25
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L29
	ld	a5,-80(s0)
	addi	a5,a5,40
	li	a4,1
	sw	a4,0(a5)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L29:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC26
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L30
	ld	a5,-80(s0)
	addi	a5,a5,40
	li	a4,2
	sw	a4,0(a5)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L30:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC27
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L31
	ld	a5,-80(s0)
	addi	a5,a5,40
	li	a4,3
	sw	a4,0(a5)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L31:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC28
	mv	a0,a5
	call	libmin_strcmp@plt
	mv	a5,a0
	bne	a5,zero,.L32
	ld	a5,-80(s0)
	addi	a5,a5,40
	li	a4,4
	sw	a4,0(a5)
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L32:
	lw	a5,-52(s0)
	slli	a5,a5,3
	ld	a4,-72(s0)
	add	a5,a4,a5
	ld	a5,0(a5)
	lla	a1,.LC28
	mv	a0,a5
	call	libmin_strtok@plt
	sd	a0,-40(s0)
	j	.L33
.L34:
	lw	a5,-48(s0)
	slli	a5,a5,2
	ld	a4,-80(s0)
	add	s1,a4,a5
	ld	a0,-40(s0)
	call	libmin_atoi@plt
	mv	a5,a0
	sw	a5,0(s1)
	lla	a1,.LC28
	li	a0,0
	call	libmin_strtok@plt
	sd	a0,-40(s0)
	lw	a5,-48(s0)
	addiw	a5,a5,1
	sw	a5,-48(s0)
.L33:
	ld	a5,-40(s0)
	bne	a5,zero,.L34
	lw	a5,-52(s0)
	addiw	a5,a5,1
	sw	a5,-52(s0)
.L28:
	lw	a5,-52(s0)
	mv	a4,a5
	lw	a5,-84(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L35
	lw	a4,-84(s0)
	lw	a5,-44(s0)
	mv	a2,a4
	ld	a1,-80(s0)
	mv	a0,a5
	call	misto
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
.LFE8:
	.size	avaliatokens, .-avaliatokens
	.align	1
	.globl	misto
	.type	misto, @function
misto:
.LFB9:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sd	a1,-32(s0)
	mv	a4,a2
	sw	a5,-20(s0)
	mv	a5,a4
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,3
	bne	a4,a5,.L38
	ld	a5,-32(s0)
	addi	a5,a5,36
	ld	a4,-32(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,32
	ld	a4,-32(s0)
	lw	a4,4(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,28
	ld	a4,-32(s0)
	lw	a4,8(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,24
	ld	a4,-32(s0)
	lw	a4,12(a4)
	sw	a4,0(a5)
	j	.L37
.L38:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	bne	a4,a5,.L40
	ld	a5,-32(s0)
	addi	a5,a5,8
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-32(s0)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,4
	ld	a4,-32(s0)
	lw	a4,8(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,8
	ld	a4,-32(s0)
	lw	a4,12(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,12
	ld	a4,-32(s0)
	lw	a4,16(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,36
	ld	a4,-32(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,32
	ld	a4,-32(s0)
	lw	a4,4(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,28
	ld	a4,-32(s0)
	lw	a4,8(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,24
	ld	a4,-32(s0)
	lw	a4,12(a4)
	sw	a4,0(a5)
	j	.L37
.L40:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L41
	ld	a5,-32(s0)
	addi	a5,a5,16
	lw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a3,a5
	ld	a5,-32(s0)
	addi	a5,a5,12
	lw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,8
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,12
	ld	a4,-32(s0)
	lw	a4,16(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,36
	ld	a4,-32(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,32
	ld	a4,-32(s0)
	lw	a4,4(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,28
	ld	a4,-32(s0)
	lw	a4,8(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,24
	ld	a4,-32(s0)
	lw	a4,12(a4)
	sw	a4,0(a5)
	j	.L37
.L41:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,5
	bne	a4,a5,.L43
	ld	a5,-32(s0)
	addi	a5,a5,8
	lw	a4,0(a5)
	ld	a5,-32(s0)
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-32(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	addw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-32(s0)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,4
	ld	a4,-32(s0)
	lw	a4,8(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,20
	lw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a3,a5
	ld	a5,-32(s0)
	addi	a5,a5,16
	lw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,8
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,12
	ld	a4,-32(s0)
	lw	a4,20(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,36
	ld	a4,-32(s0)
	lw	a4,0(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,32
	ld	a4,-32(s0)
	lw	a4,4(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,28
	ld	a4,-32(s0)
	lw	a4,8(a4)
	sw	a4,0(a5)
	ld	a5,-32(s0)
	addi	a5,a5,24
	ld	a4,-32(s0)
	lw	a4,12(a4)
	sw	a4,0(a5)
	j	.L37
.L43:
	nop
.L37:
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	misto, .-misto
	.align	1
	.globl	calcula
	.type	calcula, @function
calcula:
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
	fmv.s.x	fa5,zero
	fsw	fa5,-28(s0)
	ld	a5,-40(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-48(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,40
	lw	a5,0(a5)
	mv	a3,a5
	li	a4,4
	beq	a3,a4,.L45
	mv	a3,a5
	li	a4,4
	bgt	a3,a4,.L46
	mv	a3,a5
	li	a4,3
	beq	a3,a4,.L47
	mv	a3,a5
	li	a4,3
	bgt	a3,a4,.L46
	mv	a3,a5
	li	a4,1
	beq	a3,a4,.L48
	mv	a4,a5
	li	a5,2
	beq	a4,a5,.L49
	j	.L46
.L48:
	ld	a5,-48(s0)
	lw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	divw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a3,a5
	ld	a5,-48(s0)
	lw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	divw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-48(s0)
	addi	a5,a5,4
	addw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	fcvt.s.w	fa5,a5
	fsw	fa5,-24(s0)
	ld	a5,-48(s0)
	lw	a5,0(a5)
	fcvt.s.w	fa5,a5
	fsw	fa5,-20(s0)
	flw	fa4,-24(s0)
	flw	fa5,-20(s0)
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-28(s0)
	ld	a0,-48(s0)
	call	simplifica
	j	.L46
.L49:
	ld	a5,-48(s0)
	lw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	divw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a3,a5
	ld	a5,-48(s0)
	lw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,12
	lw	a5,0(a5)
	divw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-40(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-48(s0)
	addi	a5,a5,4
	subw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	fcvt.s.w	fa5,a5
	fsw	fa5,-24(s0)
	ld	a5,-48(s0)
	lw	a5,0(a5)
	fcvt.s.w	fa5,a5
	fsw	fa5,-20(s0)
	flw	fa4,-24(s0)
	flw	fa5,-20(s0)
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-28(s0)
	ld	a0,-48(s0)
	call	simplifica
	j	.L46
.L47:
	ld	a5,-40(s0)
	lw	a3,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,8
	lw	a4,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,4
	mulw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	fcvt.s.w	fa5,a5
	fsw	fa5,-24(s0)
	ld	a5,-48(s0)
	lw	a5,0(a5)
	fcvt.s.w	fa5,a5
	fsw	fa5,-20(s0)
	flw	fa4,-24(s0)
	flw	fa5,-20(s0)
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-28(s0)
	ld	a0,-48(s0)
	call	simplifica
	j	.L46
.L45:
	ld	a5,-40(s0)
	addi	a5,a5,4
	lw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,8
	lw	a5,0(a5)
	mulw	a5,a4,a5
	sext.w	a4,a5
	ld	a5,-48(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	lw	a3,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,12
	lw	a4,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,4
	mulw	a4,a3,a4
	sext.w	a4,a4
	sw	a4,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,4
	lw	a5,0(a5)
	fcvt.s.w	fa5,a5
	fsw	fa5,-24(s0)
	ld	a5,-48(s0)
	lw	a5,0(a5)
	fcvt.s.w	fa5,a5
	fsw	fa5,-20(s0)
	flw	fa4,-24(s0)
	flw	fa5,-20(s0)
	fdiv.s	fa5,fa4,fa5
	fsw	fa5,-28(s0)
	ld	a0,-48(s0)
	call	simplifica
	nop
.L46:
	flw	fa5,-28(s0)
	fmv.s	fa0,fa5
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
	.size	calcula, .-calcula
	.align	1
	.globl	simplifica
	.type	simplifica, @function
simplifica:
.LFB11:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	ld	a5,-40(s0)
	lw	a5,4(a5)
	sw	a5,-24(s0)
	ld	a5,-40(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	li	a5,1
	sw	a5,-28(s0)
	j	.L52
.L54:
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L53
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	remw	a5,a4,a5
	sext.w	a5,a5
	bne	a5,zero,.L53
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	divw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-28(s0)
	divw	a5,a4,a5
	sw	a5,-20(s0)
.L53:
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L52:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,12
	ble	a4,a5,.L54
	ld	a5,-40(s0)
	addi	a5,a5,12
	lw	a4,-24(s0)
	sw	a4,0(a5)
	ld	a5,-40(s0)
	addi	a5,a5,16
	lw	a4,-20(s0)
	sw	a4,0(a5)
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	simplifica, .-simplifica
	.section	.rodata
	.align	3
.LC29:
	.string	"\nEXPRESSION: %sFRACTION: %d/%d %c %d/%d\nINTERMEDIATE: %d/%d\nRESULT: %d/%d\nDECIMAL: %.3f\n"
	.text
	.align	1
	.globl	print
	.type	print, @function
print:
.LFB12:
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	sd	s0,80(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	fsw	fa0,-52(s0)
	sd	a2,-64(s0)
	ld	a5,-64(s0)
	addi	a5,a5,40
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,1
	bne	a4,a5,.L57
	li	a5,43
	sb	a5,-17(s0)
.L57:
	ld	a5,-64(s0)
	addi	a5,a5,40
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,2
	bne	a4,a5,.L58
	li	a5,45
	sb	a5,-17(s0)
.L58:
	ld	a5,-64(s0)
	addi	a5,a5,40
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,3
	bne	a4,a5,.L59
	li	a5,42
	sb	a5,-17(s0)
.L59:
	ld	a5,-64(s0)
	addi	a5,a5,40
	lw	a5,0(a5)
	mv	a4,a5
	li	a5,4
	bne	a4,a5,.L60
	li	a5,47
	sb	a5,-17(s0)
.L60:
	ld	a5,-64(s0)
	addi	a5,a5,36
	lw	a2,0(a5)
	ld	a5,-64(s0)
	addi	a5,a5,32
	lw	a1,0(a5)
	lbu	a5,-17(s0)
	sext.w	a0,a5
	ld	a5,-64(s0)
	addi	a5,a5,28
	lw	t1,0(a5)
	ld	a5,-64(s0)
	addi	a5,a5,24
	lw	a6,0(a5)
	ld	a5,-48(s0)
	addi	a5,a5,4
	lw	a7,0(a5)
	ld	a5,-48(s0)
	lw	a5,0(a5)
	ld	a4,-48(s0)
	addi	a4,a4,12
	lw	a4,0(a4)
	ld	a3,-48(s0)
	addi	a3,a3,16
	lw	a3,0(a3)
	flw	fa5,-52(s0)
	fcvt.d.s	fa5,fa5
	fsd	fa5,24(sp)
	sd	a3,16(sp)
	sd	a4,8(sp)
	sd	a5,0(sp)
	mv	a5,t1
	mv	a4,a0
	mv	a3,a1
	ld	a1,-40(s0)
	lla	a0,.LC29
	call	libmin_printf@plt
	nop
	ld	ra,88(sp)
	.cfi_restore 1
	ld	s0,80(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	print, .-print
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
