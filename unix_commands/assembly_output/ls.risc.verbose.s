	.file	"ls.c"
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
	.string	"."
	.align	3
.LC1:
	.string	"-R"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-64	#,,
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,64	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp150, argc
	sd	a1,-64(s0)	# argv, argv
	sw	a5,-52(s0)	# tmp151, argc
# ls.c:8:  {
	la	a5,__stack_chk_guard		# tmp152,
	ld	a4, 0(a5)	# tmp168, __stack_chk_guard
	sd	a4, -24(s0)	# tmp168, D.3539
	li	a4, 0	# tmp168
# ls.c:13:    if (argc == 1)
	lw	a5,-52(s0)		# tmp154, argc
	sext.w	a4,a5	# tmp155, tmp153
	li	a5,1		# tmp156,
	bne	a4,a5,.L2	#, tmp155, tmp156,
# ls.c:15:      n=scandir(".",&name,NULL,alphasort);
	addi	a5,s0,-32	#, tmp157,
	la	a3,alphasort		#,
	li	a2,0		#,
	mv	a1,a5	#, tmp157
	lla	a0,.LC0	#,
	call	scandir@plt	#
	mv	a5,a0	# tmp158,
	sw	a5,-36(s0)	# tmp158, n
# ls.c:16:       while (n--)
	j	.L3		#
.L4:
# ls.c:18:          printf("%s\n",name[n]->d_name);
	ld	a4,-32(s0)		# name.0_1, name
	lw	a5,-36(s0)		# _2, n
	slli	a5,a5,3	#, _3, _2
	add	a5,a4,a5	# _3, _4, name.0_1
	ld	a5,0(a5)		# _5, *_4
# ls.c:18:          printf("%s\n",name[n]->d_name);
	addi	a5,a5,19	#, _6, _5
# ls.c:18:          printf("%s\n",name[n]->d_name);
	mv	a0,a5	#, _6
	call	puts@plt	#
# ls.c:19:          free(name[n]);
	ld	a4,-32(s0)		# name.1_7, name
	lw	a5,-36(s0)		# _8, n
	slli	a5,a5,3	#, _9, _8
	add	a5,a4,a5	# _9, _10, name.1_7
# ls.c:19:          free(name[n]);
	ld	a5,0(a5)		# _11, *_10
	mv	a0,a5	#, _11
	call	free@plt	#
.L3:
# ls.c:16:       while (n--)
	lw	a5,-36(s0)		# n.2_12, n
	addiw	a4,a5,-1	#, tmp159, n.2_12
	sw	a4,-36(s0)	# tmp159, n
# ls.c:16:       while (n--)
	bne	a5,zero,.L4	#, n.2_12,,
# ls.c:21:       free(name);
	ld	a5,-32(s0)		# name.3_13, name
	mv	a0,a5	#, name.3_13
	call	free@plt	#
	j	.L5		#
.L2:
# ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	lw	a5,-52(s0)		# tmp161, argc
	sext.w	a4,a5	# tmp162, tmp160
	li	a5,2		# tmp163,
	beq	a4,a5,.L6	#, tmp162, tmp163,
# ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	ld	a5,-64(s0)		# tmp164, argv
	addi	a5,a5,8	#, _14, tmp164
	ld	a4,0(a5)		# _15, *_14
# ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	lla	a5,.LC1	# tmp165,
	bne	a4,a5,.L5	#, _15, tmp165,
.L6:
# ls.c:25:    recursive(".",0);
	li	a1,0		#,
	lla	a0,.LC0	#,
	call	recursive		#
.L5:
# ls.c:29:    exit(EXIT_SUCCESS);
	li	a0,0		#,
	call	exit@plt	#
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align	3
.LC2:
	.string	".."
	.align	3
.LC3:
	.string	"%s"
	.align	3
.LC4:
	.string	""
	.align	3
.LC5:
	.string	"%*s[[%s]]\n"
	.align	3
.LC6:
	.string	"%*s-> %s\n"
	.text
	.align	1
	.globl	recursive
	.type	recursive, @function
recursive:
.LFB7:
	.cfi_startproc
	addi	sp,sp,-1088	#,,
	.cfi_def_cfa_offset 1088
	sd	ra,1080(sp)	#,
	sd	s0,1072(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,1088	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-1080(s0)	# name, name
	mv	a5,a1	# tmp143, indent
	sw	a5,-1084(s0)	# tmp144, indent
# ls.c:33: {
	la	a5,__stack_chk_guard		# tmp145,
	ld	a4, 0(a5)	# tmp168, __stack_chk_guard
	sd	a4, -24(s0)	# tmp168, D.3544
	li	a4, 0	# tmp168
# ls.c:37:     if (!(dir = opendir(name)))
	ld	a0,-1080(s0)		#, name
	call	opendir@plt	#
	mv	a5,a0	# tmp146,
	sd	a5,-1064(s0)	# tmp146, dir
# ls.c:37:     if (!(dir = opendir(name)))
	ld	a5,-1064(s0)		# tmp147, dir
	beq	a5,zero,.L18	#, tmp147,,
# ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	j	.L11		#
.L16:
# ls.c:41:         if (entry->d_type == DT_DIR) {
	ld	a5,-1056(s0)		# tmp148, entry
	lbu	a5,18(a5)	# _1, entry_17->d_type
# ls.c:41:         if (entry->d_type == DT_DIR) {
	mv	a4,a5	# tmp149, _1
	li	a5,4		# tmp150,
	bne	a4,a5,.L12	#, tmp149, tmp150,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	ld	a5,-1056(s0)		# tmp151, entry
	addi	a5,a5,19	#, _2, tmp151
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	lla	a1,.LC0	#,
	mv	a0,a5	#, _2
	call	strcmp@plt	#
	mv	a5,a0	# tmp152,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	beq	a5,zero,.L19	#, _3,,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	ld	a5,-1056(s0)		# tmp153, entry
	addi	a5,a5,19	#, _4, tmp153
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	lla	a1,.LC2	#,
	mv	a0,a5	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp154,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	beq	a5,zero,.L19	#, _5,,
# ls.c:45:             sprintf(path,"%s",entry->d_name);
	ld	a5,-1056(s0)		# tmp155, entry
	addi	a4,a5,19	#, _6, tmp155
# ls.c:45:             sprintf(path,"%s",entry->d_name);
	addi	a5,s0,-1048	#, tmp156,
	mv	a2,a4	#, _6
	lla	a1,.LC3	#,
	mv	a0,a5	#, tmp156
	call	sprintf@plt	#
# ls.c:46:             printf("%*s[[%s]]\n", indent, "", entry->d_name);
	ld	a5,-1056(s0)		# tmp157, entry
	addi	a4,a5,19	#, _7, tmp157
# ls.c:46:             printf("%*s[[%s]]\n", indent, "", entry->d_name);
	lw	a5,-1084(s0)		# tmp158, indent
	mv	a3,a4	#, _7
	lla	a2,.LC4	#,
	mv	a1,a5	#, tmp158
	lla	a0,.LC5	#,
	call	printf@plt	#
# ls.c:47:             recursive(path, indent+3);
	lw	a5,-1084(s0)		# tmp161, indent
	addiw	a5,a5,3	#, tmp159, tmp160
	sext.w	a4,a5	# _8, tmp159
	addi	a5,s0,-1048	#, tmp162,
	mv	a1,a4	#, _8
	mv	a0,a5	#, tmp162
	call	recursive		#
	j	.L11		#
.L12:
# ls.c:49:             printf("%*s-> %s\n", indent, "", entry->d_name);
	ld	a5,-1056(s0)		# tmp163, entry
	addi	a4,a5,19	#, _9, tmp163
# ls.c:49:             printf("%*s-> %s\n", indent, "", entry->d_name);
	lw	a5,-1084(s0)		# tmp164, indent
	mv	a3,a4	#, _9
	lla	a2,.LC4	#,
	mv	a1,a5	#, tmp164
	lla	a0,.LC6	#,
	call	printf@plt	#
	j	.L11		#
.L19:
# ls.c:44:                 continue;
	nop	
.L11:
# ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	ld	a0,-1064(s0)		#, dir
	call	readdir@plt	#
	sd	a0,-1056(s0)	#, entry
# ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	ld	a5,-1056(s0)		# tmp165, entry
	bne	a5,zero,.L16	#, tmp165,,
# ls.c:52:     closedir(dir);
	ld	a0,-1064(s0)		#, dir
	call	closedir@plt	#
	j	.L8		#
.L18:
# ls.c:38:         return;
	nop	
.L8:
# ls.c:53: }
	la	a5,__stack_chk_guard		# tmp166,
	ld	a4, -24(s0)	# tmp169, D.3544
	ld	a5, 0(a5)	# tmp167, __stack_chk_guard
	xor	a5, a4, a5	# tmp167, tmp169
	li	a4, 0	# tmp169
	beq	a5,zero,.L17	#, tmp167,,
	call	__stack_chk_fail@plt	#
.L17:
	ld	ra,1080(sp)		#,
	.cfi_restore 1
	ld	s0,1072(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 1088
	addi	sp,sp,1088	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	recursive, .-recursive
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
