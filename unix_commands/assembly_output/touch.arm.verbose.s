	.arch armv8-a
	.file	"touch.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	ldr	w0, [sp, 28]	// tmp100, argc
	cmp	w0, 2	// tmp100,
	bne	.L2		//,
// touch.c:5: if(argc!=2 || argv[1]=="--help"){
	ldr	x0, [sp, 16]	// tmp101, argv
	add	x0, x0, 8	// _1, tmp101,
	ldr	x1, [x0]	// _2, *_1
// touch.c:5: if(argc!=2 || argv[1]=="--help"){
	adrp	x0, .LC0	// tmp103,
	add	x0, x0, :lo12:.LC0	// tmp102, tmp103,
	cmp	x1, x0	// _2, tmp102
	bne	.L3		//,
.L2:
// touch.c:6: printf("Usage::touch textfileTomodify\n");
	adrp	x0, .LC1	// tmp104,
	add	x0, x0, :lo12:.LC1	//, tmp104,
	bl	puts		//
.L3:
// touch.c:8: retvalue=utime(argv[1],NULL);
	ldr	x0, [sp, 16]	// tmp105, argv
	add	x0, x0, 8	// _3, tmp105,
// touch.c:8: retvalue=utime(argv[1],NULL);
	ldr	x0, [x0]	// _4, *_3
	mov	x1, 0	//,
	bl	utime		//
	mov	w1, w0	// _5,
// touch.c:8: retvalue=utime(argv[1],NULL);
	adrp	x0, retvalue	// tmp107,
	add	x0, x0, :lo12:retvalue	// tmp106, tmp107,
	str	w1, [x0]	// _5, retvalue
// touch.c:9: if(retvalue==0){
	adrp	x0, retvalue	// tmp109,
	add	x0, x0, :lo12:retvalue	// tmp108, tmp109,
	ldr	w0, [x0]	// retvalue.0_6, retvalue
// touch.c:9: if(retvalue==0){
	cmp	w0, 0	// retvalue.0_6,
	bne	.L4		//,
// touch.c:10: printf("Timestamp modified\n");
	adrp	x0, .LC2	// tmp110,
	add	x0, x0, :lo12:.LC2	//, tmp110,
	bl	puts		//
.L4:
	mov	w0, 0	// _16,
// touch.c:12: }
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
