	.file	"ls.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-64	#,,
	sd	ra,56(sp)	#,
	sd	s0,48(sp)	#,
	addi	s0,sp,64	#,,
	mv	a5,a0	# tmp88, argc
	sd	a1,-64(s0)	# argv, argv
	sw	a5,-52(s0)	# tmp89, argc
# ls.c:8:  {
	la	a5,__stack_chk_guard		# tmp90,
	ld	a4, 0(a5)	# tmp106, __stack_chk_guard
	sd	a4, -24(s0)	# tmp106, D.2687
	li	a4, 0	# tmp106
# ls.c:13:    if (argc == 1)
	lw	a5,-52(s0)		# tmp92, argc
	sext.w	a4,a5	# tmp93, tmp91
	li	a5,1		# tmp94,
	bne	a4,a5,.L2	#, tmp93, tmp94,
# ls.c:15:      n=scandir(".",&name,NULL,alphasort);
	addi	a5,s0,-32	#, tmp95,
	la	a3,alphasort		#,
	li	a2,0		#,
	mv	a1,a5	#, tmp95
	lla	a0,.LC0	#,
	call	scandir@plt	#
	mv	a5,a0	# tmp96,
	sw	a5,-36(s0)	# tmp96, n
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
	addiw	a4,a5,-1	#, tmp97, n.2_12
	sw	a4,-36(s0)	# tmp97, n
# ls.c:16:       while (n--)
	bne	a5,zero,.L4	#, n.2_12,,
# ls.c:21:       free(name);
	ld	a5,-32(s0)		# name.3_13, name
	mv	a0,a5	#, name.3_13
	call	free@plt	#
	j	.L5		#
.L2:
# ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	lw	a5,-52(s0)		# tmp99, argc
	sext.w	a4,a5	# tmp100, tmp98
	li	a5,2		# tmp101,
	beq	a4,a5,.L6	#, tmp100, tmp101,
# ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	ld	a5,-64(s0)		# tmp102, argv
	addi	a5,a5,8	#, _14, tmp102
	ld	a4,0(a5)		# _15, *_14
# ls.c:23:   else if(argc==2 || argv[1]=="-R"){
	lla	a5,.LC1	# tmp103,
	bne	a4,a5,.L5	#, _15, tmp103,
.L6:
# ls.c:25:    recursive(".",0);
	li	a1,0		#,
	lla	a0,.LC0	#,
	call	recursive		#
.L5:
# ls.c:29:    exit(EXIT_SUCCESS);
	li	a0,0		#,
	call	exit@plt	#
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
	addi	sp,sp,-1088	#,,
	sd	ra,1080(sp)	#,
	sd	s0,1072(sp)	#,
	addi	s0,sp,1088	#,,
	sd	a0,-1080(s0)	# name, name
	mv	a5,a1	# tmp81, indent
	sw	a5,-1084(s0)	# tmp82, indent
# ls.c:33: {
	la	a5,__stack_chk_guard		# tmp83,
	ld	a4, 0(a5)	# tmp105, __stack_chk_guard
	sd	a4, -24(s0)	# tmp105, D.2692
	li	a4, 0	# tmp105
# ls.c:37:     if (!(dir = opendir(name)))
	ld	a0,-1080(s0)		#, name
	call	opendir@plt	#
	sd	a0,-1064(s0)	#, dir
# ls.c:37:     if (!(dir = opendir(name)))
	ld	a5,-1064(s0)		# tmp84, dir
	beq	a5,zero,.L17	#, tmp84,,
# ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	j	.L11		#
.L15:
# ls.c:41:         if (entry->d_type == DT_DIR) {
	ld	a5,-1056(s0)		# tmp85, entry
	lbu	a5,18(a5)	# _1, entry_17->d_type
# ls.c:41:         if (entry->d_type == DT_DIR) {
	mv	a4,a5	# tmp86, _1
	li	a5,4		# tmp87,
	bne	a4,a5,.L12	#, tmp86, tmp87,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	ld	a5,-1056(s0)		# tmp88, entry
	addi	a5,a5,19	#, _2, tmp88
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	lla	a1,.LC0	#,
	mv	a0,a5	#, _2
	call	strcmp@plt	#
	mv	a5,a0	# tmp89,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	beq	a5,zero,.L11	#, _3,,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	ld	a5,-1056(s0)		# tmp90, entry
	addi	a5,a5,19	#, _4, tmp90
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	lla	a1,.LC2	#,
	mv	a0,a5	#, _4
	call	strcmp@plt	#
	mv	a5,a0	# tmp91,
# ls.c:43:             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
	bne	a5,zero,.L14	#, _5,,
	j	.L11		#
.L14:
# ls.c:45:             sprintf(path,"%s",entry->d_name);
	ld	a5,-1056(s0)		# tmp92, entry
	addi	a4,a5,19	#, _6, tmp92
# ls.c:45:             sprintf(path,"%s",entry->d_name);
	addi	a5,s0,-1048	#, tmp93,
	mv	a2,a4	#, _6
	lla	a1,.LC3	#,
	mv	a0,a5	#, tmp93
	call	sprintf@plt	#
# ls.c:46:             printf("%*s[[%s]]\n", indent, "", entry->d_name);
	ld	a5,-1056(s0)		# tmp94, entry
	addi	a4,a5,19	#, _7, tmp94
# ls.c:46:             printf("%*s[[%s]]\n", indent, "", entry->d_name);
	lw	a5,-1084(s0)		# tmp95, indent
	mv	a3,a4	#, _7
	lla	a2,.LC4	#,
	mv	a1,a5	#, tmp95
	lla	a0,.LC5	#,
	call	printf@plt	#
# ls.c:47:             recursive(path, indent+3);
	lw	a5,-1084(s0)		# tmp98, indent
	addiw	a5,a5,3	#, tmp96, tmp97
	sext.w	a4,a5	# _8, tmp96
	addi	a5,s0,-1048	#, tmp99,
	mv	a1,a4	#, _8
	mv	a0,a5	#, tmp99
	call	recursive		#
	j	.L11		#
.L12:
# ls.c:49:             printf("%*s-> %s\n", indent, "", entry->d_name);
	ld	a5,-1056(s0)		# tmp100, entry
	addi	a4,a5,19	#, _9, tmp100
# ls.c:49:             printf("%*s-> %s\n", indent, "", entry->d_name);
	lw	a5,-1084(s0)		# tmp101, indent
	mv	a3,a4	#, _9
	lla	a2,.LC4	#,
	mv	a1,a5	#, tmp101
	lla	a0,.LC6	#,
	call	printf@plt	#
.L11:
# ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	ld	a0,-1064(s0)		#, dir
	call	readdir@plt	#
	sd	a0,-1056(s0)	#, entry
# ls.c:40:     while ((entry = readdir(dir)) != NULL) {
	ld	a5,-1056(s0)		# tmp102, entry
	bne	a5,zero,.L15	#, tmp102,,
# ls.c:52:     closedir(dir);
	ld	a0,-1064(s0)		#, dir
	call	closedir@plt	#
	j	.L8		#
.L17:
# ls.c:38:         return;
	nop	
.L8:
# ls.c:53: }
	la	a5,__stack_chk_guard		# tmp103,
	ld	a4, -24(s0)	# tmp106, D.2692
	ld	a5, 0(a5)	# tmp104, __stack_chk_guard
	xor	a5, a4, a5	# tmp104, tmp106
	li	a4, 0	# tmp106
	beq	a5,zero,.L16	#, tmp104,,
	call	__stack_chk_fail@plt	#
.L16:
	ld	ra,1080(sp)		#,
	ld	s0,1072(sp)		#,
	addi	sp,sp,1088	#,,
	jr	ra		#
	.size	recursive, .-recursive
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
