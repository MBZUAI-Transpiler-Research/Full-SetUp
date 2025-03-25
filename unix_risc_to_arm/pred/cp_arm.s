	.arch	armv8-a
	.file	"file.c"
	.text
	.2p1_m2p0_a2p1_f2p2_d2_c2p0_zicsr2p0_zifencei2p0"
	.global	__aarch64_cas4_acq_rel
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nUsage: cpcmd source destination"
	.align	3
.LC2:
	.string	"\nError in closing file"
	.align	3
.LC3:
	.string	"\nError in writing data to "
	.align	3
.LC4:
	.string	"\nError in closing file"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	mov	x12, 8256
	sub	sp, sp, x12
	.cfi_def_cfa_offset 8256
	stp	x29, x30, [sp]
	.cfi_offset 29, -8256
	.cfi_offset 30, -8248
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -8240
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 8248]
	mov	x1, 0
	ldr	w0, [sp, 44]
	cmp	w0, 3
	bne	.L2
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	ldr	x1, [x0]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	cmp	x1, x0
	bne	.L3
.L2:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
	mov	w0, 1
	bl	exit
.L3:
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	ldr	x0, [x0]
	mov	w1, 0
	bl	open
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmn	w0, #1
	bne	.L4
	ldr	x0, [sp, 32]
	add	x0, x0, 8
	ldr	x19, [x0]
	bl	__errno_location
	ldr	w0, [x0]
	mov	w2, w0
	mov	x1, x19
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 1
	bl	exit
.L4:
	ldr	x0, [sp, 32]
	add	x0, x0, 16
	ldr	x0, [x0]
	mov	w2, 438
	mov	w1, 577
	bl	open
	str	w0, [sp, 64]
	ldr	w0, [sp, 64]
	cmn	w0, #1
	bne	.L7
	ldr	x0, [sp, 32]
	add	x0, x0, 16
	ldr	x19, [x0]
	bl	__errno_location
	ldr	w0, [x0]
	mov	w2, w0
	mov	x1, x19
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 1
	bl	exit
.L8:
	ldrsw	x1, [sp, 68]
	add	x0, sp, 72
	mov	x2, x1
	mov	x1, x0
	ldr	w0, [sp, 64]
	bl	write
	mov	x1, x0
	ldrsw	x0, [sp, 68]
	cmp	x1, x0
	beq	.L7
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	puts
.L7:
	add	x0, sp, 72
	mov	x2, 1024
	mov	x1, x0
	ldr	w0, [sp, 60]
	bl	read
	str	w0, [sp, 68]
	ldr	w0, [sp, 68]
	cmp	w0, 0
	bgt	.L8
	ldr	w0, [sp, 60]
	bl	close
	cmn	w0, #1
	bne	.L9
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L9:
	ldr	w0, [sp, 64]
	bl	close
	mov	w0, 1
	b	.L4
.L5:
	ldr	w0, [sp, 60]
	bl	close
	cmn	w0, #1
	bne	.L4
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L4:
	ldr	w0, [sp, 64]
	bl	close
	ldr	w0, [sp, 60]
	bl	close
	cmn	w0, #1
	bne	.L5
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.L5:
	ldr	w0, [sp, 64]
	bl	close
	mov	w0, 1
	bne	.L4
	ldr	w0, [sp, 60]
	bl	close
	mov	w0, 1
	bne	.L4
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	puts
.L4:
	ldr	w0, [sp, 64]
	bl	close
	ldr	w0, [sp, 60]
	bl	close
	mov	w0, 1
	bne	.L8
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	puts
	ldr	w0, [sp, 60]
	bl	close
	mov	w0, 1
	bne	.L4
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	puts
.L4:
	ldr	w0, [sp, 64]
	bl	close
	ldr	w0, [sp, 60]
	bl	close
	mov	w0, 1
	bne	.L8
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	puts
	ldr	w0, [sp, 60]
	bl	close
	mov	w0, 1
	bne	w0, w0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	bl	puts
	ldr	w0, [sp, 64]
	bl	bne	w0, [sp, 64]
	bl	close
	mov	w0, 1
	bne	w0, w0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC8
	bl	puts
.L4:
	ldr	w0, [sp, 64]
	bl	mov	w0, 1
	bne	w0, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC8
	bl	__PRETTY_chk_guard
.L4:
	ldr	w0, [sp, 64]
	ldr	w0, [sp, 60]
	bl	w0, w0, 64]
	b	__stack_chk_offset 0
	ldr	w0, w0, [sp, 64]
	bl	__stack_chk_guard
	mov	w0, w0
	ldp	x29, x30, [sp], 192
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
bits
