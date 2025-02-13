	.file	"cp.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -fstack-protector-strong
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
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-80	#,,
	.cfi_def_cfa_offset 80
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.cfi_offset 9, -24
	addi	s0,sp,80	#,,
	.cfi_def_cfa 8, 0
	li	t0,-8192		#,
	add	sp,sp,t0	#,,
	mv	a4,a0	# tmp156, argc
	li	a5,-8192		# tmp160,
	addi	a5,a5,-32	#, tmp244, tmp160
	add	a5,a5,s0	#, tmp161, tmp244
	sd	a1,-48(a5)	# argv, argv
	li	a5,-8192		# tmp157,
	addi	a5,a5,-32	#, tmp245, tmp157
	add	a5,a5,s0	#, tmp158, tmp245
	sw	a4,-36(a5)	# tmp159, argc
# cp.c:10: {
	la	a5,__stack_chk_guard		# tmp162,
	ld	a4, 0(a5)	# tmp241, __stack_chk_guard
	sd	a4, -40(s0)	# tmp241, D.3915
	li	a4, 0	# tmp241
# cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	li	a5,-8192		# tmp163,
	addi	a5,a5,-32	#, tmp247, tmp163
	add	a5,a5,s0	#, tmp164, tmp247
	lw	a5,-36(a5)		# tmp166, argc
	sext.w	a4,a5	# tmp167, tmp165
	li	a5,3		# tmp168,
	bne	a4,a5,.L2	#, tmp167, tmp168,
# cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	li	a5,-8192		# tmp169,
	addi	a5,a5,-32	#, tmp248, tmp169
	add	a5,a5,s0	#, tmp170, tmp248
	ld	a5,-48(a5)		# tmp171, argv
	addi	a5,a5,8	#, _1, tmp171
	ld	a4,0(a5)		# _2, *_1
# cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	lla	a5,.LC0	# tmp172,
	bne	a4,a5,.L3	#, _2, tmp172,
.L2:
# cp.c:16: 		printf("\nUsage: cpcmd source destination\n");
	lla	a0,.LC1	#,
	call	puts@plt	#
# cp.c:17: 		exit(EXIT_FAILURE);
	li	a0,1		#,
	call	exit@plt	#
.L3:
# cp.c:23: 	Source = open(argv[1],O_RDONLY);
	li	a5,-8192		# tmp173,
	addi	a5,a5,-32	#, tmp249, tmp173
	add	a5,a5,s0	#, tmp174, tmp249
	ld	a5,-48(a5)		# tmp175, argv
	addi	a5,a5,8	#, _3, tmp175
# cp.c:23: 	Source = open(argv[1],O_RDONLY);
	ld	a4,0(a5)		# _4, *_3
	li	a5,-8192		# tmp176,
	addi	a5,a5,-32	#, tmp250, tmp176
	add	s1,a5,s0	#, tmp177, tmp250
	li	a1,0		#,
	mv	a0,a4	#, _4
	call	open@plt	#
	mv	a5,a0	# tmp178,
	sw	a5,-20(s1)	# tmp178, Source
# cp.c:25: 	if(Source == -1)
	li	a5,-8192		# tmp179,
	addi	a5,a5,-32	#, tmp251, tmp179
	add	a5,a5,s0	#, tmp180, tmp251
	lw	a5,-20(a5)		# tmp182, Source
	sext.w	a4,a5	# tmp183, tmp181
	li	a5,-1		# tmp184,
	bne	a4,a5,.L4	#, tmp183, tmp184,
# cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	li	a5,-8192		# tmp185,
	addi	a5,a5,-32	#, tmp252, tmp185
	add	a5,a5,s0	#, tmp186, tmp252
	ld	a5,-48(a5)		# tmp187, argv
	addi	a5,a5,8	#, _5, tmp187
# cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	ld	s1,0(a5)		# _6, *_5
# cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	call	__errno_location@plt	#
	mv	a5,a0	# _7,
# cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	lw	a5,0(a5)		# _8, *_7
	mv	a2,a5	#, _8
	mv	a1,s1	#, _6
	lla	a0,.LC2	#,
	call	printf@plt	#
# cp.c:28: 		exit(EXIT_FAILURE);	
	li	a0,1		#,
	call	exit@plt	#
.L4:
# cp.c:31: 	Destination = open(argv[2],O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH);
	li	a5,-8192		# tmp188,
	addi	a5,a5,-32	#, tmp253, tmp188
	add	a5,a5,s0	#, tmp189, tmp253
	ld	a5,-48(a5)		# tmp190, argv
	addi	a5,a5,16	#, _9, tmp190
# cp.c:31: 	Destination = open(argv[2],O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH);
	ld	a4,0(a5)		# _10, *_9
	li	a5,-8192		# tmp191,
	addi	a5,a5,-32	#, tmp254, tmp191
	add	s1,a5,s0	#, tmp192, tmp254
	li	a2,438		#,
	li	a1,577		#,
	mv	a0,a4	#, _10
	call	open@plt	#
	mv	a5,a0	# tmp193,
	sw	a5,-16(s1)	# tmp193, Destination
# cp.c:33: 	if(Destination == -1)
	li	a5,-8192		# tmp194,
	addi	a5,a5,-32	#, tmp255, tmp194
	add	a5,a5,s0	#, tmp195, tmp255
	lw	a5,-16(a5)		# tmp197, Destination
	sext.w	a4,a5	# tmp198, tmp196
	li	a5,-1		# tmp199,
	bne	a4,a5,.L7	#, tmp198, tmp199,
# cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	li	a5,-8192		# tmp200,
	addi	a5,a5,-32	#, tmp256, tmp200
	add	a5,a5,s0	#, tmp201, tmp256
	ld	a5,-48(a5)		# tmp202, argv
	addi	a5,a5,16	#, _11, tmp202
# cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	ld	s1,0(a5)		# _12, *_11
# cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	call	__errno_location@plt	#
	mv	a5,a0	# _13,
# cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	lw	a5,0(a5)		# _14, *_13
	mv	a2,a5	#, _14
	mv	a1,s1	#, _12
	lla	a0,.LC2	#,
	call	printf@plt	#
# cp.c:36: 		exit(EXIT_FAILURE);
	li	a0,1		#,
	call	exit@plt	#
.L8:
# cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	li	a5,-8192		# tmp203,
	addi	a5,a5,-32	#, tmp257, tmp203
	add	a5,a5,s0	#, tmp204, tmp257
	lw	a3,-12(a5)		# _15, ReadBuffer
	li	a5,-8192		# tmp207,
	addi	a5,a5,-8	#, tmp206, tmp207
	addi	a5,a5,-32	#, tmp258, tmp206
	add	a4,a5,s0	#, tmp205, tmp258
	li	a5,-8192		# tmp208,
	addi	a5,a5,-32	#, tmp259, tmp208
	add	a5,a5,s0	#, tmp209, tmp259
	lw	a5,-16(a5)		# tmp210, Destination
	mv	a2,a3	#, _15
	mv	a1,a4	#, tmp205
	mv	a0,a5	#, tmp210
	call	write@plt	#
	mv	a4,a0	# _16,
# cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	li	a5,-8192		# tmp211,
	addi	a5,a5,-32	#, tmp260, tmp211
	add	a5,a5,s0	#, tmp212, tmp260
	lw	a5,-12(a5)		# _17, ReadBuffer
# cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	beq	a4,a5,.L7	#, _16, _17,
# cp.c:43: 			printf("\nError in writing data to \n");
	lla	a0,.LC3	#,
	call	puts@plt	#
.L7:
# cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	li	a5,-8192		# tmp215,
	addi	a5,a5,-8	#, tmp214, tmp215
	addi	a5,a5,-32	#, tmp261, tmp214
	add	a4,a5,s0	#, tmp213, tmp261
	li	a5,-8192		# tmp216,
	addi	a5,a5,-32	#, tmp262, tmp216
	add	a5,a5,s0	#, tmp217, tmp262
	lw	a5,-20(a5)		# tmp218, Source
	li	a2,1024		#,
	mv	a1,a4	#, tmp213
	mv	a0,a5	#, tmp218
	call	read@plt	#
	mv	a4,a0	# _18,
# cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	li	a5,-8192		# tmp219,
	addi	a5,a5,-32	#, tmp263, tmp219
	add	a5,a5,s0	#, tmp220, tmp263
	sw	a4,-12(a5)	# _18, ReadBuffer
# cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	li	a5,-8192		# tmp221,
	addi	a5,a5,-32	#, tmp264, tmp221
	add	a5,a5,s0	#, tmp222, tmp264
	lw	a5,-12(a5)		# tmp224, ReadBuffer
	sext.w	a5,a5	# tmp225, tmp223
	bgt	a5,zero,.L8	#, tmp225,,
# cp.c:47: 	if(close(Source) == -1)
	li	a5,-8192		# tmp226,
	addi	a5,a5,-32	#, tmp265, tmp226
	add	a5,a5,s0	#, tmp227, tmp265
	lw	a5,-20(a5)		# tmp228, Source
	mv	a0,a5	#, tmp228
	call	close@plt	#
	mv	a5,a0	# tmp229,
# cp.c:47: 	if(close(Source) == -1)
	mv	a4,a5	# tmp230, _19
	li	a5,-1		# tmp231,
	bne	a4,a5,.L9	#, tmp230, tmp231,
# cp.c:48: 		printf("\nError in closing file\n");
	lla	a0,.LC4	#,
	call	puts@plt	#
.L9:
# cp.c:50: 	if(close(Destination) == -1)
	li	a5,-8192		# tmp232,
	addi	a5,a5,-32	#, tmp266, tmp232
	add	a5,a5,s0	#, tmp233, tmp266
	lw	a5,-16(a5)		# tmp234, Destination
	mv	a0,a5	#, tmp234
	call	close@plt	#
	mv	a5,a0	# tmp235,
# cp.c:50: 	if(close(Destination) == -1)
	mv	a4,a5	# tmp236, _20
	li	a5,-1		# tmp237,
	bne	a4,a5,.L10	#, tmp236, tmp237,
# cp.c:51: 		printf("\nError in closing file\n");
	lla	a0,.LC4	#,
	call	puts@plt	#
.L10:
	li	a5,0		# _38,
	mv	a4,a5	# <retval>, _38
# cp.c:53: }
	la	a5,__stack_chk_guard		# tmp239,
	ld	a3, -40(s0)	# tmp242, D.3915
	ld	a5, 0(a5)	# tmp240, __stack_chk_guard
	xor	a5, a3, a5	# tmp240, tmp242
	li	a3, 0	# tmp242
	beq	a5,zero,.L12	#, tmp240,,
	call	__stack_chk_fail@plt	#
.L12:
	mv	a0,a4	#, <retval>
	li	t0,8192		#,
	add	sp,sp,t0	#,,
	.cfi_def_cfa 2, 80
	ld	ra,72(sp)		#,
	.cfi_restore 1
	ld	s0,64(sp)		#,
	.cfi_restore 8
	ld	s1,56(sp)		#,
	.cfi_restore 9
	addi	sp,sp,80	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
