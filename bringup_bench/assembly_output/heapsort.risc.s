	.file	"heapsort.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.local	bplong
	.comm	bplong,8,8
	.local	base
	.comm	base,16384,8
	.section	.rodata
	.align	3
.LC0:
	.string	"base buffer overflow!\n"
	.align	3
.LC1:
	.string	"   %10ld\n"
	.align	3
.LC2:
	.string	"ERROR: base array is not properly sorted!\n"
	.align	3
.LC3:
	.string	"INFO: base array is properly sorted!\n"
	.text
	.align	1
	.globl	HSORT
	.type	HSORT, @function
HSORT:
.LFB3:
	.cfi_startproc
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sd	ra,136(sp)
	sd	s0,128(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,144
	.cfi_def_cfa 8, 0
	sd	a0,-136(s0)
	sd	a1,-144(s0)
	lla	a5,bplong
	ld	a5,0(a5)
	ld	a4,-136(s0)
	mul	a5,a4,a5
	sd	a5,-80(s0)
	ld	a5,-136(s0)
	addi	a5,a5,-1
	sd	a5,-72(s0)
	ld	a4,-136(s0)
	li	a5,2047
	ble	a4,a5,.L2
	lla	a0,.LC0
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L2:
	li	a5,106
	sd	a5,-64(s0)
	li	a5,1283
	sd	a5,-56(s0)
	li	a5,4096
	addi	a5,a5,1979
	sd	a5,-48(s0)
	li	a5,1001
	sd	a5,-40(s0)
	sd	zero,-32(s0)
	li	a5,47
	sd	a5,-96(s0)
	li	a5,1
	sd	a5,-128(s0)
	j	.L3
.L4:
	ld	a4,-96(s0)
	ld	a5,-64(s0)
	mul	a4,a4,a5
	ld	a5,-56(s0)
	add	a4,a4,a5
	ld	a5,-48(s0)
	rem	a5,a4,a5
	sd	a5,-96(s0)
	ld	a4,-40(s0)
	ld	a5,-96(s0)
	mul	a4,a4,a5
	ld	a5,-48(s0)
	div	a4,a4,a5
	ld	a5,-128(s0)
	slli	a3,a5,3
	lla	a5,base
	add	a5,a3,a5
	addi	a4,a4,1
	sd	a4,0(a5)
	ld	a5,-128(s0)
	addi	a5,a5,1
	sd	a5,-128(s0)
.L3:
	ld	a4,-128(s0)
	ld	a5,-72(s0)
	ble	a4,a5,.L4
	ld	a5,-72(s0)
	srai	a5,a5,1
	addi	a5,a5,1
	sd	a5,-112(s0)
	ld	a5,-72(s0)
	sd	a5,-104(s0)
	sd	zero,-24(s0)
.L13:
	ld	a4,-112(s0)
	li	a5,1
	ble	a4,a5,.L5
	ld	a5,-112(s0)
	addi	a5,a5,-1
	sd	a5,-112(s0)
	ld	a5,-112(s0)
	slli	a4,a5,3
	lla	a5,base
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-88(s0)
	j	.L6
.L5:
	ld	a5,-104(s0)
	slli	a4,a5,3
	lla	a5,base
	add	a5,a4,a5
	ld	a5,0(a5)
	sd	a5,-88(s0)
	ld	a5,-104(s0)
	slli	a4,a5,3
	lla	a5,base
	add	a5,a4,a5
	lla	a4,base
	ld	a4,8(a4)
	sd	a4,0(a5)
	ld	a5,-104(s0)
	addi	a5,a5,-1
	sd	a5,-104(s0)
	ld	a4,-104(s0)
	li	a5,1
	bne	a4,a5,.L6
	lla	a5,base
	ld	a4,-88(s0)
	sd	a4,8(a5)
	nop
.L7:
	ld	a4,-32(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	sd	a5,-32(s0)
	ld	a5,-32(s0)
	sd	a5,-88(s0)
	ld	a4,-88(s0)
	ld	a5,-24(s0)
	add	a5,a4,a5
	srli	a4,a5,63
	add	a5,a4,a5
	srai	a5,a5,1
	sd	a5,-88(s0)
	ld	a5,-144(s0)
	beq	a5,zero,.L14
	j	.L19
.L6:
	ld	a5,-112(s0)
	sd	a5,-128(s0)
	ld	a5,-112(s0)
	slli	a5,a5,1
	sd	a5,-120(s0)
	j	.L8
.L12:
	ld	a4,-120(s0)
	ld	a5,-104(s0)
	bge	a4,a5,.L9
	ld	a5,-120(s0)
	slli	a4,a5,3
	lla	a5,base
	add	a5,a4,a5
	ld	a4,0(a5)
	ld	a5,-120(s0)
	addi	a5,a5,1
	slli	a3,a5,3
	lla	a5,base
	add	a5,a3,a5
	ld	a5,0(a5)
	bge	a4,a5,.L9
	ld	a5,-120(s0)
	addi	a5,a5,1
	sd	a5,-120(s0)
.L9:
	ld	a5,-120(s0)
	slli	a4,a5,3
	lla	a5,base
	add	a5,a4,a5
	ld	a5,0(a5)
	ld	a4,-88(s0)
	bge	a4,a5,.L10
	ld	a5,-120(s0)
	slli	a4,a5,3
	lla	a5,base
	add	a4,a4,a5
	ld	a5,-128(s0)
	slli	a3,a5,3
	lla	a5,base
	add	a5,a3,a5
	ld	a4,0(a4)
	sd	a4,0(a5)
	ld	a5,-120(s0)
	sd	a5,-128(s0)
	ld	a5,-128(s0)
	ld	a4,-120(s0)
	add	a5,a4,a5
	sd	a5,-120(s0)
	j	.L8
.L10:
	ld	a5,-104(s0)
	addi	a5,a5,1
	sd	a5,-120(s0)
.L8:
	ld	a4,-120(s0)
	ld	a5,-104(s0)
	ble	a4,a5,.L12
	ld	a5,-128(s0)
	slli	a4,a5,3
	lla	a5,base
	add	a5,a4,a5
	ld	a4,-88(s0)
	sd	a4,0(a5)
	j	.L13
.L19:
	ld	a5,-80(s0)
	sext.w	a5,a5
	mv	a1,a5
	lla	a0,.LC1
	call	libmin_printf@plt
.L14:
	sd	zero,-128(s0)
	j	.L15
.L17:
	lla	a4,base
	ld	a5,-128(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	ld	a4,0(a5)
	ld	a5,-128(s0)
	addi	a5,a5,1
	lla	a3,base
	slli	a5,a5,3
	add	a5,a3,a5
	ld	a5,0(a5)
	ble	a4,a5,.L16
	lla	a0,.LC2
	call	libmin_printf@plt
	li	a0,1
	call	libmin_fail@plt
.L16:
	ld	a5,-128(s0)
	addi	a5,a5,1
	sd	a5,-128(s0)
.L15:
	ld	a5,-72(s0)
	addi	a5,a5,-1
	ld	a4,-128(s0)
	blt	a4,a5,.L17
	lla	a0,.LC3
	call	libmin_printf@plt
	li	a5,0
	mv	a0,a5
	ld	ra,136(sp)
	.cfi_restore 1
	ld	s0,128(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 144
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	HSORT, .-HSORT
	.section	.rodata
	.align	3
.LC4:
	.string	"\n   Heap Sort C Program\n"
	.align	3
.LC5:
	.string	"   Size of long (bytes): %ld\n\n"
	.align	3
.LC6:
	.string	"   Array Size (bytes)\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)
	sd	s0,16(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	lla	a5,bplong
	li	a4,8
	sd	a4,0(a5)
	lla	a0,.LC4
	call	libmin_printf@plt
	lla	a5,bplong
	ld	a5,0(a5)
	mv	a1,a5
	lla	a0,.LC5
	call	libmin_printf@plt
	lla	a0,.LC6
	call	libmin_printf@plt
	li	a5,1024
	sd	a5,-32(s0)
	li	a5,1
	sd	a5,-24(s0)
	ld	a1,-24(s0)
	ld	a0,-32(s0)
	call	HSORT
	call	libmin_success@plt
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
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
