	.arch armv8-a
	.file	"rm.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"\nusage: rm FileTodelete"
	.align	3
.LC2:
	.string	"successfull"
	.align	3
.LC3:
	.string	"Unsuccessfull"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
// rm.c:4: if(argc!=2 || argv[1]=="--help")
	ldr	w0, [sp, 28]	// tmp98, argc
	cmp	w0, 2	// tmp98,
	bne	.L2		//,
// rm.c:4: if(argc!=2 || argv[1]=="--help")
	ldr	x0, [sp, 16]	// tmp99, argv
	add	x0, x0, 8	// _1, tmp99,
	ldr	x1, [x0]	// _2, *_1
// rm.c:4: if(argc!=2 || argv[1]=="--help")
	adrp	x0, .LC0	// tmp101,
	add	x0, x0, :lo12:.LC0	// tmp100, tmp101,
	cmp	x1, x0	// _2, tmp100
	bne	.L3		//,
.L2:
// rm.c:6:     printf("\nusage: rm FileTodelete\n");
	adrp	x0, .LC1	// tmp102,
	add	x0, x0, :lo12:.LC1	//, tmp102,
	bl	puts		//
.L3:
// rm.c:9: status=remove(argv[1]);
	ldr	x0, [sp, 16]	// tmp103, argv
	add	x0, x0, 8	// _3, tmp103,
// rm.c:9: status=remove(argv[1]);
	ldr	x0, [x0]	// _4, *_3
	bl	remove		//
	str	w0, [sp, 44]	//, status
// rm.c:10: if(status==0)
	ldr	w0, [sp, 44]	// tmp104, status
	cmp	w0, 0	// tmp104,
	bne	.L4		//,
// rm.c:12:     printf("successfull\n");
	adrp	x0, .LC2	// tmp105,
	add	x0, x0, :lo12:.LC2	//, tmp105,
	bl	puts		//
	b	.L5		//
.L4:
// rm.c:16:     printf("Unsuccessfull\n");
	adrp	x0, .LC3	// tmp106,
	add	x0, x0, :lo12:.LC3	//, tmp106,
	bl	puts		//
.L5:
	mov	w0, 0	// _15,
// rm.c:18: }
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
