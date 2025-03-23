	.arch armv8-a
	.file	"cp.c"
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
	.string	"\nUsage: cpcmd source destination"
	.align	3
.LC2:
	.string	"\nError opening file %s errno = %d\n"
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
.LFB6:
	.cfi_startproc
	mov	x12, 8272	//,
	sub	sp, sp, x12	//,,
	.cfi_def_cfa_offset 8272
	stp	x29, x30, [sp]	//,,
	.cfi_offset 29, -8272
	.cfi_offset 30, -8264
	mov	x29, sp	//,
	str	x19, [sp, 16]	//,
	.cfi_offset 19, -8256
	str	w0, [sp, 44]	// argc, argc
	str	x1, [sp, 32]	// argv, argv
// cp.c:10: {
	adrp	x0, :got:__stack_chk_guard	// tmp115,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp114, tmp115,
	ldr	x1, [x0]	// tmp139,
	str	x1, [sp, 8264]	// tmp139, D.5447
	mov	x1, 0	// tmp139
// cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	ldr	w0, [sp, 44]	// tmp116, argc
	cmp	w0, 3	// tmp116,
	bne	.L2		//,
// cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	ldr	x0, [sp, 32]	// tmp117, argv
	add	x0, x0, 8	// _1, tmp117,
	ldr	x1, [x0]	// _2, *_1
// cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	adrp	x0, .LC0	// tmp119,
	add	x0, x0, :lo12:.LC0	// tmp118, tmp119,
	cmp	x1, x0	// _2, tmp118
	bne	.L3		//,
.L2:
// cp.c:16: 		printf("\nUsage: cpcmd source destination\n");
	adrp	x0, .LC1	// tmp120,
	add	x0, x0, :lo12:.LC1	//, tmp120,
	bl	puts		//
// cp.c:17: 		exit(EXIT_FAILURE);
	mov	w0, 1	//,
	bl	exit		//
.L3:
// cp.c:23: 	Source = open(argv[1],O_RDONLY);
	ldr	x0, [sp, 32]	// tmp121, argv
	add	x0, x0, 8	// _3, tmp121,
// cp.c:23: 	Source = open(argv[1],O_RDONLY);
	ldr	x0, [x0]	// _4, *_3
	mov	w1, 0	//,
	bl	open		//
	str	w0, [sp, 60]	//, Source
// cp.c:25: 	if(Source == -1)
	ldr	w0, [sp, 60]	// tmp122, Source
	cmn	w0, #1	// tmp122,
	bne	.L4		//,
// cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	ldr	x0, [sp, 32]	// tmp123, argv
	add	x0, x0, 8	// _5, tmp123,
// cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	ldr	x19, [x0]	// _6, *_5
// cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	bl	__errno_location		//
// cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	ldr	w0, [x0]	// _8, *_7
	mov	w2, w0	//, _8
	mov	x1, x19	//, _6
	adrp	x0, .LC2	// tmp124,
	add	x0, x0, :lo12:.LC2	//, tmp124,
	bl	printf		//
// cp.c:28: 		exit(EXIT_FAILURE);	
	mov	w0, 1	//,
	bl	exit		//
.L4:
// cp.c:31: 	Destination = open(argv[2],O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH);
	ldr	x0, [sp, 32]	// tmp125, argv
	add	x0, x0, 16	// _9, tmp125,
// cp.c:31: 	Destination = open(argv[2],O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH);
	ldr	x0, [x0]	// _10, *_9
	mov	w2, 438	//,
	mov	w1, 577	//,
	bl	open		//
	str	w0, [sp, 64]	//, Destination
// cp.c:33: 	if(Destination == -1)
	ldr	w0, [sp, 64]	// tmp126, Destination
	cmn	w0, #1	// tmp126,
	bne	.L6		//,
// cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	ldr	x0, [sp, 32]	// tmp127, argv
	add	x0, x0, 16	// _11, tmp127,
// cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	ldr	x19, [x0]	// _12, *_11
// cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	bl	__errno_location		//
// cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	ldr	w0, [x0]	// _14, *_13
	mov	w2, w0	//, _14
	mov	x1, x19	//, _12
	adrp	x0, .LC2	// tmp128,
	add	x0, x0, :lo12:.LC2	//, tmp128,
	bl	printf		//
// cp.c:36: 		exit(EXIT_FAILURE);
	mov	w0, 1	//,
	bl	exit		//
.L7:
// cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	ldrsw	x1, [sp, 68]	// _15, ReadBuffer
	add	x0, sp, 72	// tmp129,,
	mov	x2, x1	//, _15
	mov	x1, x0	//, tmp129
	ldr	w0, [sp, 64]	//, Destination
	bl	write		//
	mov	x1, x0	// _16,
// cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	ldrsw	x0, [sp, 68]	// _17, ReadBuffer
// cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	cmp	x1, x0	// _16, _17
	beq	.L6		//,
// cp.c:43: 			printf("\nError in writing data to \n");
	adrp	x0, .LC3	// tmp130,
	add	x0, x0, :lo12:.LC3	//, tmp130,
	bl	puts		//
.L6:
// cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	add	x0, sp, 72	// tmp131,,
	mov	x2, 1024	//,
	mov	x1, x0	//, tmp131
	ldr	w0, [sp, 60]	//, Source
	bl	read		//
// cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	str	w0, [sp, 68]	// tmp132, ReadBuffer
// cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	ldr	w0, [sp, 68]	// tmp133, ReadBuffer
	cmp	w0, 0	// tmp133,
	bgt	.L7		//,
// cp.c:47: 	if(close(Source) == -1)
	ldr	w0, [sp, 60]	//, Source
	bl	close		//
// cp.c:47: 	if(close(Source) == -1)
	cmn	w0, #1	// _19,
	bne	.L8		//,
// cp.c:48: 		printf("\nError in closing file\n");
	adrp	x0, .LC4	// tmp134,
	add	x0, x0, :lo12:.LC4	//, tmp134,
	bl	puts		//
.L8:
// cp.c:50: 	if(close(Destination) == -1)
	ldr	w0, [sp, 64]	//, Destination
	bl	close		//
// cp.c:50: 	if(close(Destination) == -1)
	cmn	w0, #1	// _20,
	bne	.L9		//,
// cp.c:51: 		printf("\nError in closing file\n");
	adrp	x0, .LC4	// tmp135,
	add	x0, x0, :lo12:.LC4	//, tmp135,
	bl	puts		//
.L9:
	mov	w0, 0	// _38,
	mov	w1, w0	// <retval>, _38
// cp.c:53: }
	adrp	x0, :got:__stack_chk_guard	// tmp138,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp137, tmp138,
	ldr	x3, [sp, 8264]	// tmp140, D.5447
	ldr	x2, [x0]	// tmp141,
	subs	x3, x3, x2	// tmp140, tmp141
	mov	x2, 0	// tmp141
	beq	.L11		//,
	bl	__stack_chk_fail		//
.L11:
	mov	w0, w1	//, <retval>
	ldr	x19, [sp, 16]	//,
	ldp	x29, x30, [sp]	//,,
	mov	x12, 8272	//,
	add	sp, sp, x12	//,,
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
