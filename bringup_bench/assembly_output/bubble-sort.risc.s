	.file	"bubble-sort.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	data
	.bss
	.align	3
	.type	data, @object
	.size	data, 1024
data:
	.zero	1024
	.globl	swaps
	.align	3
	.type	swaps, @object
	.size	swaps, 8
swaps:
	.zero	8
	.section	.rodata
	.align	3
.LC0:
	.string	"DATA DUMP:\n"
	.align	3
.LC1:
	.string	"  data[%u] = %d\n"
	.text
	.align	1
	.globl	print_data
	.type	print_data, @function
print_data:
.LFB3:
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
	mv	a5,a1
	sw	a5,-44(s0)
	lla	a0,.LC0
	call	libmin_printf@plt
	sw	zero,-20(s0)
	j	.L2
.L3:
	lwu	a5,-20(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	mv	a4,a5
	lw	a5,-44(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	bltu	a4,a5,.L3
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
.LFE3:
	.size	print_data, .-print_data
	.align	1
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-32(s0)
	j	.L5
.L11:
	sw	zero,-28(s0)
	sw	zero,-24(s0)
	j	.L6
.L8:
	lwu	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L7
	lwu	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lwu	a5,-24(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-20(s0)
	sw	a4,0(a5)
	li	a5,1
	sw	a5,-28(s0)
	lla	a5,swaps
	ld	a5,0(a5)
	addi	a4,a5,1
	lla	a5,swaps
	sd	a4,0(a5)
.L7:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L6:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-24(s0)
	sext.w	a5,a5
	bltu	a5,a4,.L8
	lw	a5,-28(s0)
	sext.w	a5,a5
	beq	a5,zero,.L12
	lw	a5,-32(s0)
	addiw	a5,a5,1
	sw	a5,-32(s0)
.L5:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-32(s0)
	sext.w	a5,a5
	bltu	a5,a4,.L11
	j	.L13
.L12:
	nop
.L13:
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	bubblesort, .-bubblesort
	.section	.rodata
	.align	3
.LC2:
	.string	"ERROR: data is not properly sorted.\n"
	.align	3
.LC3:
	.string	"INFO: %lu swaps executed.\n"
	.align	3
.LC4:
	.string	"INFO: data is properly sorted.\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	li	a0,42
	call	libmin_srand@plt
	sw	zero,-24(s0)
	j	.L15
.L16:
	call	libmin_rand@plt
	mv	a5,a0
	sext.w	a5,a5
	sext.w	a4,a5
	lla	a3,data
	lwu	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L15:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,255
	bleu	a4,a5,.L16
	li	a1,256
	lla	a0,data
	call	print_data
	li	a1,256
	lla	a0,data
	call	bubblesort
	li	a1,256
	lla	a0,data
	call	print_data
	sw	zero,-20(s0)
	j	.L17
.L20:
	lla	a4,data
	lwu	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sext.w	a5,a5
	lla	a4,data
	slli	a5,a5,32
	srli	a5,a5,32
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L18
	lla	a0,.LC2
	call	libmin_printf@plt
	li	a5,-1
	j	.L19
.L18:
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L17:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,254
	bleu	a4,a5,.L20
	lla	a5,swaps
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC3
	call	libmin_printf@plt
	lla	a0,.LC4
	call	libmin_printf@plt
	call	libmin_success@plt
	li	a5,0
.L19:
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
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
