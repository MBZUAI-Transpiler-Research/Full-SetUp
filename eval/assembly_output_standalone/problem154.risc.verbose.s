	.file	"code.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"%s.%s"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-96	#,,
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	addi	s0,sp,96	#,,
	sd	a0,-72(s0)	# class_name, class_name
	sd	a1,-80(s0)	# extensions, extensions
	mv	a5,a2	# tmp80, ext_count
	sd	a3,-96(s0)	# output, output
	sw	a5,-84(s0)	# tmp81, ext_count
# eval/problem154//code.c:5:     int max_strength = -1000;
	li	a5,-1000		# tmp82,
	sw	a5,-48(s0)	# tmp82, max_strength
# eval/problem154//code.c:6:     const char* strongest = NULL;
	sd	zero,-32(s0)	#, strongest
# eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	sw	zero,-44(s0)	#, i
# eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	j	.L2		#
.L8:
# eval/problem154//code.c:8:         const char* extension = extensions[i];
	lw	a5,-44(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-80(s0)		# tmp83, extensions
	add	a5,a4,a5	# _2, _3, tmp83
# eval/problem154//code.c:8:         const char* extension = extensions[i];
	ld	a5,0(a5)		# tmp84, *_3
	sd	a5,-24(s0)	# tmp84, extension
# eval/problem154//code.c:9:         int strength = 0;
	sw	zero,-40(s0)	#, strength
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	sw	zero,-36(s0)	#, j
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	j	.L3		#
.L6:
# eval/problem154//code.c:11:             char chr = extension[j];
	lw	a5,-36(s0)		# _4, j
	ld	a4,-24(s0)		# tmp85, extension
	add	a5,a4,a5	# _4, _5, tmp85
# eval/problem154//code.c:11:             char chr = extension[j];
	lbu	a5,0(a5)	# tmp86, *_5
	sb	a5,-49(s0)	# tmp86, chr
# eval/problem154//code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lbu	a5,-49(s0)	# tmp88, chr
	andi	a4,a5,0xff	# tmp89, tmp87
	li	a5,64		# tmp90,
	bleu	a4,a5,.L4	#, tmp89, tmp90,
# eval/problem154//code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lbu	a5,-49(s0)	# tmp92, chr
	andi	a4,a5,0xff	# tmp93, tmp91
	li	a5,90		# tmp94,
	bgtu	a4,a5,.L4	#, tmp93, tmp94,
# eval/problem154//code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lw	a5,-40(s0)		# tmp97, strength
	addiw	a5,a5,1	#, tmp95, tmp96
	sw	a5,-40(s0)	# tmp95, strength
.L4:
# eval/problem154//code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lbu	a5,-49(s0)	# tmp99, chr
	andi	a4,a5,0xff	# tmp100, tmp98
	li	a5,96		# tmp101,
	bleu	a4,a5,.L5	#, tmp100, tmp101,
# eval/problem154//code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lbu	a5,-49(s0)	# tmp103, chr
	andi	a4,a5,0xff	# tmp104, tmp102
	li	a5,122		# tmp105,
	bgtu	a4,a5,.L5	#, tmp104, tmp105,
# eval/problem154//code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lw	a5,-40(s0)		# tmp108, strength
	addiw	a5,a5,-1	#, tmp106, tmp107
	sw	a5,-40(s0)	# tmp106, strength
.L5:
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	lw	a5,-36(s0)		# tmp111, j
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-36(s0)	# tmp109, j
.L3:
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	lw	a5,-36(s0)		# _6, j
	ld	a4,-24(s0)		# tmp112, extension
	add	a5,a4,a5	# _6, _7, tmp112
	lbu	a5,0(a5)	# _8, *_7
# eval/problem154//code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	bne	a5,zero,.L6	#, _8,,
# eval/problem154//code.c:15:         if (strength > max_strength) {
	lw	a5,-40(s0)		# tmp114, strength
	mv	a4,a5	# tmp113, tmp114
	lw	a5,-48(s0)		# tmp116, max_strength
	sext.w	a4,a4	# tmp117, tmp113
	sext.w	a5,a5	# tmp118, tmp115
	ble	a4,a5,.L7	#, tmp117, tmp118,
# eval/problem154//code.c:16:             max_strength = strength;
	lw	a5,-40(s0)		# tmp119, strength
	sw	a5,-48(s0)	# tmp119, max_strength
# eval/problem154//code.c:17:             strongest = extension;
	ld	a5,-24(s0)		# tmp120, extension
	sd	a5,-32(s0)	# tmp120, strongest
.L7:
# eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	lw	a5,-44(s0)		# tmp123, i
	addiw	a5,a5,1	#, tmp121, tmp122
	sw	a5,-44(s0)	# tmp121, i
.L2:
# eval/problem154//code.c:7:     for (int i = 0; i < ext_count; i++) {
	lw	a5,-44(s0)		# tmp125, i
	mv	a4,a5	# tmp124, tmp125
	lw	a5,-84(s0)		# tmp127, ext_count
	sext.w	a4,a4	# tmp128, tmp124
	sext.w	a5,a5	# tmp129, tmp126
	blt	a4,a5,.L8	#, tmp128, tmp129,
# eval/problem154//code.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	ld	a3,-32(s0)		#, strongest
	ld	a2,-72(s0)		#, class_name
	lla	a1,.LC0	#,
	ld	a0,-96(s0)		#, output
	call	sprintf@plt	#
# eval/problem154//code.c:21: }
	nop	
	ld	ra,88(sp)		#,
	ld	s0,80(sp)		#,
	addi	sp,sp,96	#,,
	jr	ra		#
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
