	.file	"problem19.c"
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
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
# problem19.c:12:   int year, wday = 0, sun = 0, mon;
	sw	zero,-28(s0)	#, wday
# problem19.c:12:   int year, wday = 0, sun = 0, mon;
	sw	zero,-24(s0)	#, sun
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	li	a5,1901		# tmp138,
	sw	a5,-32(s0)	# tmp138, year
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	j	.L2		#
.L6:
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	li	a5,1		# tmp139,
	sw	a5,-20(s0)	# tmp139, mon
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	j	.L3		#
.L5:
# problem19.c:16:       if (wday == 5) {
	lw	a5,-28(s0)		# tmp141, wday
	sext.w	a4,a5	# tmp142, tmp140
	li	a5,5		# tmp143,
	bne	a4,a5,.L4	#, tmp142, tmp143,
# problem19.c:18:         sun++;
	lw	a5,-24(s0)		# tmp146, sun
	addiw	a5,a5,1	#, tmp144, tmp145
	sw	a5,-24(s0)	# tmp144, sun
.L4:
# problem19.c:20:       wday = (wday + days(year, mon))%7;
	lw	a4,-20(s0)		# tmp147, mon
	lw	a5,-32(s0)		# tmp148, year
	mv	a1,a4	#, tmp147
	mv	a0,a5	#, tmp148
	call	days		#
	mv	a5,a0	# tmp149,
# problem19.c:20:       wday = (wday + days(year, mon))%7;
	lw	a4,-28(s0)		# tmp152, wday
	addw	a5,a4,a5	# _1, tmp150, tmp151
	sext.w	a5,a5	# _2, tmp150
# problem19.c:20:       wday = (wday + days(year, mon))%7;
	mv	a4,a5	# tmp153, _2
	li	a5,7		# tmp155,
	remw	a5,a4,a5	# tmp155, tmp154, tmp153
	sw	a5,-28(s0)	# tmp154, wday
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	lw	a5,-20(s0)		# tmp158, mon
	addiw	a5,a5,1	#, tmp156, tmp157
	sw	a5,-20(s0)	# tmp156, mon
.L3:
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	lw	a5,-20(s0)		# tmp160, mon
	sext.w	a4,a5	# tmp161, tmp159
	li	a5,12		# tmp162,
	ble	a4,a5,.L5	#, tmp161, tmp162,
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	lw	a5,-32(s0)		# tmp165, year
	addiw	a5,a5,1	#, tmp163, tmp164
	sw	a5,-32(s0)	# tmp163, year
.L2:
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	lw	a5,-32(s0)		# tmp167, year
	sext.w	a4,a5	# tmp168, tmp166
	li	a5,2000		# tmp169,
	ble	a4,a5,.L6	#, tmp168, tmp169,
# problem19.c:23:   printf("%d\n", sun);
	lw	a5,-24(s0)		# tmp170, sun
	mv	a1,a5	#, tmp170
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem19.c:25:   return 0;
	li	a5,0		# _17,
# problem19.c:26: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	.cfi_restore 1
	ld	s0,16(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.align	1
	.type	days, @function
days:
.LFB1:
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)	#,
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp148, y
	mv	a4,a1	# tmp150, m
	sw	a5,-20(s0)	# tmp149, y
	mv	a5,a4	# tmp151, tmp150
	sw	a5,-24(s0)	# tmp151, m
# problem19.c:30:   switch (m) {
	lw	a5,-24(s0)		# _13, m
	addiw	a5,a5,-2	#, tmp152, _13
	sext.w	a4,a5	# _14, tmp152
	mv	a3,a4	# tmp155, _14
	li	a5,9		# tmp156,
	sgtu	a5,a3,a5	# tmp154, tmp155, tmp156
	andi	a5,a5,0xff	# _15, tmp153
	bne	a5,zero,.L9	#, _15,,
	li	a5,1		# tmp158,
	sll	a5,a5,a4	# tmp157, _16, tmp158
	andi	a4,a5,660	#, _17, _16
	snez	a4,a4	# tmp160, _17
	andi	a4,a4,0xff	# _18, tmp159
	bne	a4,zero,.L10	#, _18,,
	andi	a5,a5,1	#, _19, _16
	snez	a5,a5	# tmp162, _19
	andi	a5,a5,0xff	# _20, tmp161
	beq	a5,zero,.L9	#, _20,,
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	lw	a5,-20(s0)		# y.0_1, y
	andi	a5,a5,3	#, tmp164, tmp163
	sext.w	a5,a5	# _2, tmp164
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	bne	a5,zero,.L11	#, _2,,
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	lw	a5,-20(s0)		# tmp167, y
	mv	a4,a5	# tmp166, tmp167
	li	a5,100		# tmp169,
	remw	a5,a4,a5	# tmp169, tmp168, tmp166
	sext.w	a5,a5	# _3, tmp168
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	bne	a5,zero,.L12	#, _3,,
.L11:
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	lw	a5,-20(s0)		# tmp172, y
	mv	a4,a5	# tmp171, tmp172
	li	a5,400		# tmp174,
	remw	a5,a4,a5	# tmp174, tmp173, tmp171
	sext.w	a5,a5	# _4, tmp173
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	bne	a5,zero,.L13	#, _4,,
.L12:
# problem19.c:34:         return 29;
	li	a5,29		# _5,
	j	.L14		#
.L13:
# problem19.c:37:         return 28;
	li	a5,28		# _5,
	j	.L14		#
.L10:
# problem19.c:44:       return 30;
	li	a5,30		# _5,
	j	.L14		#
.L9:
# problem19.c:47:       return 31;
	li	a5,31		# _5,
.L14:
# problem19.c:49: }
	mv	a0,a5	#, <retval>
	ld	s0,24(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	days, .-days
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
