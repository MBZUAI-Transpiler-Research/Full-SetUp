	.arch armv8-a
	.file	"rm.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

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
	ldr	w0, [sp, 28]	// tmp96, argc
	cmp	w0, 2	// tmp96,
	bne	.L2		//,
// rm.c:4: if(argc!=2 || argv[1]=="--help")
	ldr	x0, [sp, 16]	// tmp97, argv
	add	x0, x0, 8	// _1, tmp97,
	ldr	x1, [x0]	// _2, *_1
// rm.c:4: if(argc!=2 || argv[1]=="--help")
	adrp	x0, .LC0	// tmp99,
	add	x0, x0, :lo12:.LC0	// tmp98, tmp99,
	cmp	x1, x0	// _2, tmp98
	bne	.L3		//,
.L2:
// rm.c:6:     printf("\nusage: rm FileTodelete\n");
	adrp	x0, .LC1	// tmp100,
	add	x0, x0, :lo12:.LC1	//, tmp100,
	bl	puts		//
.L3:
// rm.c:9: status=remove(argv[1]);
	ldr	x0, [sp, 16]	// tmp101, argv
	add	x0, x0, 8	// _3, tmp101,
// rm.c:9: status=remove(argv[1]);
	ldr	x0, [x0]	// _4, *_3
	bl	remove		//
	str	w0, [sp, 44]	//, status
// rm.c:10: if(status==0)
	ldr	w0, [sp, 44]	// tmp102, status
	cmp	w0, 0	// tmp102,
	bne	.L4		//,
// rm.c:12:     printf("successfull\n");
	adrp	x0, .LC2	// tmp103,
	add	x0, x0, :lo12:.LC2	//, tmp103,
	bl	puts		//
// rm.c:18: }
	b	.L6		//
.L4:
// rm.c:16:     printf("Unsuccessfull\n");
	adrp	x0, .LC3	// tmp104,
	add	x0, x0, :lo12:.LC3	//, tmp104,
	bl	puts		//
.L6:
// rm.c:18: }
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
