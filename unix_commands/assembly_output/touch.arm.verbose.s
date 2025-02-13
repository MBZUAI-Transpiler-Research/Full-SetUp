	.arch armv8-a
	.file	"touch.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.global	retvalue
	.bss
	.align	2
	.type	retvalue, %object
	.size	retvalue, 4
retvalue:
	.zero	4
	.section	.rodata
	.align	3
.LC0:
	.string	"--help"
	.align	3
.LC1:
	.string	"Usage::touch textfileTomodify"
	.align	3
.LC2:
	.string	"Timestamp modified"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
// touch.c:5: if(argc!=2 || argv[1]=="--help"){
	ldr	w0, [sp, 28]	// tmp98, argc
	cmp	w0, 2	// tmp98,
	bne	.L2		//,
// touch.c:5: if(argc!=2 || argv[1]=="--help"){
	ldr	x0, [sp, 16]	// tmp99, argv
	add	x0, x0, 8	// _1, tmp99,
	ldr	x1, [x0]	// _2, *_1
// touch.c:5: if(argc!=2 || argv[1]=="--help"){
	adrp	x0, .LC0	// tmp101,
	add	x0, x0, :lo12:.LC0	// tmp100, tmp101,
	cmp	x1, x0	// _2, tmp100
	bne	.L3		//,
.L2:
// touch.c:6: printf("Usage::touch textfileTomodify\n");
	adrp	x0, .LC1	// tmp102,
	add	x0, x0, :lo12:.LC1	//, tmp102,
	bl	puts		//
.L3:
// touch.c:8: retvalue=utime(argv[1],NULL);
	ldr	x0, [sp, 16]	// tmp103, argv
	add	x0, x0, 8	// _3, tmp103,
// touch.c:8: retvalue=utime(argv[1],NULL);
	ldr	x0, [x0]	// _4, *_3
	mov	x1, 0	//,
	bl	utime		//
	mov	w1, w0	// _5,
// touch.c:8: retvalue=utime(argv[1],NULL);
	adrp	x0, retvalue	// tmp105,
	add	x0, x0, :lo12:retvalue	// tmp104, tmp105,
	str	w1, [x0]	// _5, retvalue
// touch.c:9: if(retvalue==0){
	adrp	x0, retvalue	// tmp107,
	add	x0, x0, :lo12:retvalue	// tmp106, tmp107,
	ldr	w0, [x0]	// retvalue.0_6, retvalue
// touch.c:9: if(retvalue==0){
	cmp	w0, 0	// retvalue.0_6,
	bne	.L5		//,
// touch.c:10: printf("Timestamp modified\n");
	adrp	x0, .LC2	// tmp108,
	add	x0, x0, :lo12:.LC2	//, tmp108,
	bl	puts		//
.L5:
// touch.c:12: }
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
