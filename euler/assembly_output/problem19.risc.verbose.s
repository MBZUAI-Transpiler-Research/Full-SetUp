	.file	"problem19.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
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
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem19.c:12:   int year, wday = 0, sun = 0, mon;
	sw	zero,-28(s0)	#, wday
# problem19.c:12:   int year, wday = 0, sun = 0, mon;
	sw	zero,-24(s0)	#, sun
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	li	a5,1901		# tmp76,
	sw	a5,-32(s0)	# tmp76, year
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	j	.L2		#
.L6:
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	li	a5,1		# tmp77,
	sw	a5,-20(s0)	# tmp77, mon
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	j	.L3		#
.L5:
# problem19.c:16:       if (wday == 5) {
	lw	a5,-28(s0)		# tmp79, wday
	sext.w	a4,a5	# tmp80, tmp78
	li	a5,5		# tmp81,
	bne	a4,a5,.L4	#, tmp80, tmp81,
# problem19.c:18:         sun++;
	lw	a5,-24(s0)		# tmp84, sun
	addiw	a5,a5,1	#, tmp82, tmp83
	sw	a5,-24(s0)	# tmp82, sun
.L4:
# problem19.c:20:       wday = (wday + days(year, mon))%7;
	lw	a4,-20(s0)		# tmp85, mon
	lw	a5,-32(s0)		# tmp86, year
	mv	a1,a4	#, tmp85
	mv	a0,a5	#, tmp86
	call	days		#
	mv	a5,a0	# tmp87,
# problem19.c:20:       wday = (wday + days(year, mon))%7;
	lw	a4,-28(s0)		# tmp90, wday
	addw	a5,a4,a5	# _1, tmp88, tmp89
	sext.w	a5,a5	# _2, tmp88
# problem19.c:20:       wday = (wday + days(year, mon))%7;
	mv	a4,a5	# tmp91, _2
	li	a5,7		# tmp93,
	remw	a5,a4,a5	# tmp93, tmp92, tmp91
	sw	a5,-28(s0)	# tmp92, wday
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	lw	a5,-20(s0)		# tmp96, mon
	addiw	a5,a5,1	#, tmp94, tmp95
	sw	a5,-20(s0)	# tmp94, mon
.L3:
# problem19.c:15:     for (mon = 1; mon <= 12; mon++) {
	lw	a5,-20(s0)		# tmp98, mon
	sext.w	a4,a5	# tmp99, tmp97
	li	a5,12		# tmp100,
	ble	a4,a5,.L5	#, tmp99, tmp100,
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	lw	a5,-32(s0)		# tmp103, year
	addiw	a5,a5,1	#, tmp101, tmp102
	sw	a5,-32(s0)	# tmp101, year
.L2:
# problem19.c:14:   for (year = 1901; year <= 2000; year++) {
	lw	a5,-32(s0)		# tmp105, year
	sext.w	a4,a5	# tmp106, tmp104
	li	a5,2000		# tmp107,
	ble	a4,a5,.L6	#, tmp106, tmp107,
# problem19.c:23:   printf("%d\n", sun);
	lw	a5,-24(s0)		# tmp108, sun
	mv	a1,a5	#, tmp108
	lla	a0,.LC0	#,
	call	printf@plt	#
# problem19.c:25:   return 0;
	li	a5,0		# _17,
# problem19.c:26: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.align	1
	.type	days, @function
days:
	addi	sp,sp,-32	#,,
	sd	s0,24(sp)	#,
	addi	s0,sp,32	#,,
	mv	a5,a0	# tmp86, y
	mv	a4,a1	# tmp88, m
	sw	a5,-20(s0)	# tmp87, y
	mv	a5,a4	# tmp89, tmp88
	sw	a5,-24(s0)	# tmp89, m
# problem19.c:30:   switch (m) {
	lw	a5,-24(s0)		# _13, m
	addiw	a5,a5,-2	#, tmp90, _13
	sext.w	a4,a5	# _14, tmp90
	mv	a3,a4	# tmp93, _14
	li	a5,9		# tmp94,
	sgtu	a5,a3,a5	# tmp92, tmp93, tmp94
	andi	a5,a5,0xff	# _15, tmp91
	bne	a5,zero,.L9	#, _15,,
	li	a5,1		# tmp96,
	sll	a5,a5,a4	# tmp95, _16, tmp96
	andi	a4,a5,660	#, _17, _16
	snez	a4,a4	# tmp98, _17
	andi	a4,a4,0xff	# _18, tmp97
	bne	a4,zero,.L10	#, _18,,
	andi	a5,a5,1	#, _19, _16
	snez	a5,a5	# tmp100, _19
	andi	a5,a5,0xff	# _20, tmp99
	beq	a5,zero,.L9	#, _20,,
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	lw	a5,-20(s0)		# y.0_1, y
	andi	a5,a5,3	#, tmp102, tmp101
	sext.w	a5,a5	# _2, tmp102
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	bne	a5,zero,.L11	#, _2,,
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	lw	a5,-20(s0)		# tmp105, y
	mv	a4,a5	# tmp104, tmp105
	li	a5,100		# tmp107,
	remw	a5,a4,a5	# tmp107, tmp106, tmp104
	sext.w	a5,a5	# _3, tmp106
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	bne	a5,zero,.L12	#, _3,,
.L11:
# problem19.c:32:       if ((y%4 == 0 && y%100 != 0) || y%400 == 0) {
	lw	a5,-20(s0)		# tmp110, y
	mv	a4,a5	# tmp109, tmp110
	li	a5,400		# tmp112,
	remw	a5,a4,a5	# tmp112, tmp111, tmp109
	sext.w	a5,a5	# _4, tmp111
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
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	days, .-days
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
