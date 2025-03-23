	.file	"cp.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-80	#,,
	sd	ra,72(sp)	#,
	sd	s0,64(sp)	#,
	sd	s1,56(sp)	#,
	addi	s0,sp,80	#,,
	li	t0,-8192		#,
	add	sp,sp,t0	#,,
	mv	a4,a0	# tmp94, argc
	li	a5,-8192		# tmp98,
	addi	a5,a5,-32	#, tmp182, tmp98
	add	a5,a5,s0	#, tmp99, tmp182
	sd	a1,-48(a5)	# argv, argv
	li	a5,-8192		# tmp95,
	addi	a5,a5,-32	#, tmp183, tmp95
	add	a5,a5,s0	#, tmp96, tmp183
	sw	a4,-36(a5)	# tmp97, argc
# cp.c:10: {
	la	a5,__stack_chk_guard		# tmp100,
	ld	a4, 0(a5)	# tmp179, __stack_chk_guard
	sd	a4, -40(s0)	# tmp179, D.3090
	li	a4, 0	# tmp179
# cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	li	a5,-8192		# tmp101,
	addi	a5,a5,-32	#, tmp185, tmp101
	add	a5,a5,s0	#, tmp102, tmp185
	lw	a5,-36(a5)		# tmp104, argc
	sext.w	a4,a5	# tmp105, tmp103
	li	a5,3		# tmp106,
	bne	a4,a5,.L2	#, tmp105, tmp106,
# cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	li	a5,-8192		# tmp107,
	addi	a5,a5,-32	#, tmp186, tmp107
	add	a5,a5,s0	#, tmp108, tmp186
	ld	a5,-48(a5)		# tmp109, argv
	addi	a5,a5,8	#, _1, tmp109
	ld	a4,0(a5)		# _2, *_1
# cp.c:14: 	if(argc != 3 || argv[1] == "--help")
	lla	a5,.LC0	# tmp110,
	bne	a4,a5,.L3	#, _2, tmp110,
.L2:
# cp.c:16: 		printf("\nUsage: cpcmd source destination\n");
	lla	a0,.LC1	#,
	call	puts@plt	#
# cp.c:17: 		exit(EXIT_FAILURE);
	li	a0,1		#,
	call	exit@plt	#
.L3:
# cp.c:23: 	Source = open(argv[1],O_RDONLY);
	li	a5,-8192		# tmp111,
	addi	a5,a5,-32	#, tmp187, tmp111
	add	a5,a5,s0	#, tmp112, tmp187
	ld	a5,-48(a5)		# tmp113, argv
	addi	a5,a5,8	#, _3, tmp113
# cp.c:23: 	Source = open(argv[1],O_RDONLY);
	ld	a4,0(a5)		# _4, *_3
	li	a5,-8192		# tmp114,
	addi	a5,a5,-32	#, tmp188, tmp114
	add	s1,a5,s0	#, tmp115, tmp188
	li	a1,0		#,
	mv	a0,a4	#, _4
	call	open@plt	#
	mv	a5,a0	# tmp116,
	sw	a5,-20(s1)	# tmp116, Source
# cp.c:25: 	if(Source == -1)
	li	a5,-8192		# tmp117,
	addi	a5,a5,-32	#, tmp189, tmp117
	add	a5,a5,s0	#, tmp118, tmp189
	lw	a5,-20(a5)		# tmp120, Source
	sext.w	a4,a5	# tmp121, tmp119
	li	a5,-1		# tmp122,
	bne	a4,a5,.L4	#, tmp121, tmp122,
# cp.c:27: 		printf("\nError opening file %s errno = %d\n",argv[1],errno);
	li	a5,-8192		# tmp123,
	addi	a5,a5,-32	#, tmp190, tmp123
	add	a5,a5,s0	#, tmp124, tmp190
	ld	a5,-48(a5)		# tmp125, argv
	addi	a5,a5,8	#, _5, tmp125
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
	li	a5,-8192		# tmp126,
	addi	a5,a5,-32	#, tmp191, tmp126
	add	a5,a5,s0	#, tmp127, tmp191
	ld	a5,-48(a5)		# tmp128, argv
	addi	a5,a5,16	#, _9, tmp128
# cp.c:31: 	Destination = open(argv[2],O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH);
	ld	a4,0(a5)		# _10, *_9
	li	a5,-8192		# tmp129,
	addi	a5,a5,-32	#, tmp192, tmp129
	add	s1,a5,s0	#, tmp130, tmp192
	li	a2,438		#,
	li	a1,577		#,
	mv	a0,a4	#, _10
	call	open@plt	#
	mv	a5,a0	# tmp131,
	sw	a5,-16(s1)	# tmp131, Destination
# cp.c:33: 	if(Destination == -1)
	li	a5,-8192		# tmp132,
	addi	a5,a5,-32	#, tmp193, tmp132
	add	a5,a5,s0	#, tmp133, tmp193
	lw	a5,-16(a5)		# tmp135, Destination
	sext.w	a4,a5	# tmp136, tmp134
	li	a5,-1		# tmp137,
	bne	a4,a5,.L6	#, tmp136, tmp137,
# cp.c:35: 		printf("\nError opening file %s errno = %d\n",argv[2],errno);
	li	a5,-8192		# tmp138,
	addi	a5,a5,-32	#, tmp194, tmp138
	add	a5,a5,s0	#, tmp139, tmp194
	ld	a5,-48(a5)		# tmp140, argv
	addi	a5,a5,16	#, _11, tmp140
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
.L7:
# cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	li	a5,-8192		# tmp141,
	addi	a5,a5,-32	#, tmp195, tmp141
	add	a5,a5,s0	#, tmp142, tmp195
	lw	a3,-12(a5)		# _15, ReadBuffer
	li	a5,-8192		# tmp145,
	addi	a5,a5,-8	#, tmp144, tmp145
	addi	a5,a5,-32	#, tmp196, tmp144
	add	a4,a5,s0	#, tmp143, tmp196
	li	a5,-8192		# tmp146,
	addi	a5,a5,-32	#, tmp197, tmp146
	add	a5,a5,s0	#, tmp147, tmp197
	lw	a5,-16(a5)		# tmp148, Destination
	mv	a2,a3	#, _15
	mv	a1,a4	#, tmp143
	mv	a0,a5	#, tmp148
	call	write@plt	#
	mv	a4,a0	# _16,
# cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	li	a5,-8192		# tmp149,
	addi	a5,a5,-32	#, tmp198, tmp149
	add	a5,a5,s0	#, tmp150, tmp198
	lw	a5,-12(a5)		# _17, ReadBuffer
# cp.c:42: 		if(write(Destination,buff,ReadBuffer) != ReadBuffer)
	beq	a4,a5,.L6	#, _16, _17,
# cp.c:43: 			printf("\nError in writing data to \n");
	lla	a0,.LC3	#,
	call	puts@plt	#
.L6:
# cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	li	a5,-8192		# tmp153,
	addi	a5,a5,-8	#, tmp152, tmp153
	addi	a5,a5,-32	#, tmp199, tmp152
	add	a4,a5,s0	#, tmp151, tmp199
	li	a5,-8192		# tmp154,
	addi	a5,a5,-32	#, tmp200, tmp154
	add	a5,a5,s0	#, tmp155, tmp200
	lw	a5,-20(a5)		# tmp156, Source
	li	a2,1024		#,
	mv	a1,a4	#, tmp151
	mv	a0,a5	#, tmp156
	call	read@plt	#
	mv	a4,a0	# _18,
# cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	li	a5,-8192		# tmp157,
	addi	a5,a5,-32	#, tmp201, tmp157
	add	a5,a5,s0	#, tmp158, tmp201
	sw	a4,-12(a5)	# _18, ReadBuffer
# cp.c:40: 	while((ReadBuffer = read(Source,buff,SIZE)) > 0)
	li	a5,-8192		# tmp159,
	addi	a5,a5,-32	#, tmp202, tmp159
	add	a5,a5,s0	#, tmp160, tmp202
	lw	a5,-12(a5)		# tmp162, ReadBuffer
	sext.w	a5,a5	# tmp163, tmp161
	bgt	a5,zero,.L7	#, tmp163,,
# cp.c:47: 	if(close(Source) == -1)
	li	a5,-8192		# tmp164,
	addi	a5,a5,-32	#, tmp203, tmp164
	add	a5,a5,s0	#, tmp165, tmp203
	lw	a5,-20(a5)		# tmp166, Source
	mv	a0,a5	#, tmp166
	call	close@plt	#
	mv	a5,a0	# tmp167,
# cp.c:47: 	if(close(Source) == -1)
	mv	a4,a5	# tmp168, _19
	li	a5,-1		# tmp169,
	bne	a4,a5,.L8	#, tmp168, tmp169,
# cp.c:48: 		printf("\nError in closing file\n");
	lla	a0,.LC4	#,
	call	puts@plt	#
.L8:
# cp.c:50: 	if(close(Destination) == -1)
	li	a5,-8192		# tmp170,
	addi	a5,a5,-32	#, tmp204, tmp170
	add	a5,a5,s0	#, tmp171, tmp204
	lw	a5,-16(a5)		# tmp172, Destination
	mv	a0,a5	#, tmp172
	call	close@plt	#
	mv	a5,a0	# tmp173,
# cp.c:50: 	if(close(Destination) == -1)
	mv	a4,a5	# tmp174, _20
	li	a5,-1		# tmp175,
	bne	a4,a5,.L9	#, tmp174, tmp175,
# cp.c:51: 		printf("\nError in closing file\n");
	lla	a0,.LC4	#,
	call	puts@plt	#
.L9:
	li	a5,0		# _38,
	mv	a4,a5	# <retval>, _38
# cp.c:53: }
	la	a5,__stack_chk_guard		# tmp177,
	ld	a3, -40(s0)	# tmp180, D.3090
	ld	a5, 0(a5)	# tmp178, __stack_chk_guard
	xor	a5, a3, a5	# tmp178, tmp180
	li	a3, 0	# tmp180
	beq	a5,zero,.L11	#, tmp178,,
	call	__stack_chk_fail@plt	#
.L11:
	mv	a0,a4	#, <retval>
	li	t0,8192		#,
	add	sp,sp,t0	#,,
	ld	ra,72(sp)		#,
	ld	s0,64(sp)		#,
	ld	s1,56(sp)		#,
	addi	sp,sp,80	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
