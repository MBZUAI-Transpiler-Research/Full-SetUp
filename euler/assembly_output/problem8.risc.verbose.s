	.file	"problem8.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC1:
	.string	"%u\n"
	.align	3
.LC0:
	.ascii	"731671765313306249192251196744265747423553491949349698352031"
	.ascii	"277450632623957831801698480186947885184385861560789112949495"
	.ascii	"459501737958331952853208805511125406987471585238630507156932"
	.ascii	"909632952274430435576689664895044524452316173185640309871112"
	.ascii	"172238311362229893423380308135336276614282806444486645238749"
	.ascii	"303589072962904915604407723907138105158593079608667017242712"
	.ascii	"188399879790879227492190169972088809377665727333001053367881"
	.ascii	"220235421809751254540594752243525849077116705560136048395864"
	.ascii	"467063244157221553975369781797784617406495514929086256932197"
	.ascii	"846862248283972241375657056057490261407972968652414535100474"
	.ascii	"821663704844031998900088952434506585412275886668811642717147"
	.ascii	"992444292823086346567481391912316282458617866458359124566529"
	.ascii	"476545682848912883142607"
	.string	"6900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-1072	#,,
	sd	ra,1064(sp)	#,
	sd	s0,1056(sp)	#,
	addi	s0,sp,1072	#,,
# problem8.c:9: {
	la	a5,__stack_chk_guard		# tmp80,
	ld	a4, 0(a5)	# tmp114, __stack_chk_guard
	sd	a4, -24(s0)	# tmp114, D.1911
	li	a4, 0	# tmp114
# problem8.c:10:   char str[] =
	lla	a4,.LC0	# tmp81,
	addi	a5,s0,-1032	#, tmp82,
	mv	a3,a4	# tmp83, tmp81
	li	a4,1001		# tmp84,
	mv	a2,a4	#, tmp84
	mv	a1,a3	#, tmp83
	mv	a0,a5	#, tmp82
	call	memcpy@plt	#
# problem8.c:31:   size_t len = sizeof str - 1;
	li	a5,1000		# tmp86,
	sd	a5,-1040(s0)	# tmp86, len
# problem8.c:33:   unsigned max = 0;
	sw	zero,-1064(s0)	#, max
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	sd	zero,-1056(s0)	#, i
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	j	.L2		#
.L6:
# problem8.c:36:     unsigned p = 1;
	li	a5,1		# tmp87,
	sw	a5,-1060(s0)	# tmp87, p
# problem8.c:39:     for (j = 0; j < 5; j++) {
	sd	zero,-1048(s0)	#, j
# problem8.c:39:     for (j = 0; j < 5; j++) {
	j	.L3		#
.L4:
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	ld	a4,-1056(s0)		# tmp88, i
	ld	a5,-1048(s0)		# tmp89, j
	add	a5,a4,a5	# tmp89, _1, tmp88
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	addi	a5,a5,-16	#, tmp118, _1
	add	a5,a5,s0	#, tmp90, tmp118
	lbu	a5,-1016(a5)	# _2, str[_1]
	sext.w	a5,a5	# _3, _2
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	addiw	a5,a5,-48	#, tmp91, _3
	sext.w	a5,a5	# _4, tmp91
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	sext.w	a5,a5	# _5, _4
# problem8.c:40:       p *= (unsigned)(str[i+j]-'0');
	lw	a4,-1060(s0)		# tmp94, p
	mulw	a5,a4,a5	# tmp92, tmp93, _5
	sw	a5,-1060(s0)	# tmp92, p
# problem8.c:39:     for (j = 0; j < 5; j++) {
	ld	a5,-1048(s0)		# tmp96, j
	addi	a5,a5,1	#, tmp95, tmp96
	sd	a5,-1048(s0)	# tmp95, j
.L3:
# problem8.c:39:     for (j = 0; j < 5; j++) {
	ld	a4,-1048(s0)		# tmp97, j
	li	a5,4		# tmp98,
	bleu	a4,a5,.L4	#, tmp97, tmp98,
# problem8.c:42:     if (p > max) {
	lw	a5,-1060(s0)		# tmp100, p
	mv	a4,a5	# tmp99, tmp100
	lw	a5,-1064(s0)		# tmp102, max
	sext.w	a4,a4	# tmp103, tmp99
	sext.w	a5,a5	# tmp104, tmp101
	bleu	a4,a5,.L5	#, tmp103, tmp104,
# problem8.c:43:       max = p;
	lw	a5,-1060(s0)		# tmp105, p
	sw	a5,-1064(s0)	# tmp105, max
.L5:
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	ld	a5,-1056(s0)		# tmp107, i
	addi	a5,a5,1	#, tmp106, tmp107
	sd	a5,-1056(s0)	# tmp106, i
.L2:
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	ld	a5,-1040(s0)		# tmp108, len
	addi	a5,a5,-4	#, _6, tmp108
# problem8.c:35:   for (i = 0; i < len-4; i++) {
	ld	a4,-1056(s0)		# tmp109, i
	bltu	a4,a5,.L6	#, tmp109, _6,
# problem8.c:46:   printf("%u\n", max);
	lw	a5,-1064(s0)		# tmp110, max
	mv	a1,a5	#, tmp110
	lla	a0,.LC1	#,
	call	printf@plt	#
# problem8.c:47:   return 0;
	li	a5,0		# _18,
# problem8.c:48: }
	mv	a4,a5	# <retval>, _18
	la	a5,__stack_chk_guard		# tmp112,
	ld	a3, -24(s0)	# tmp115, D.1911
	ld	a5, 0(a5)	# tmp113, __stack_chk_guard
	xor	a5, a3, a5	# tmp113, tmp115
	li	a3, 0	# tmp115
	beq	a5,zero,.L8	#, tmp113,,
	call	__stack_chk_fail@plt	#
.L8:
	mv	a0,a4	#, <retval>
	ld	ra,1064(sp)		#,
	ld	s0,1056(sp)		#,
	addi	sp,sp,1072	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
