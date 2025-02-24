	.file	"code.c"
	.option pic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (riscv64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=20191213 -march=rv64imafdc_zicsr_zifencei -O0 -fstack-protector-strong
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
.LFB0:
	.cfi_startproc
	addi	sp,sp,-96	#,,
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)	#,
	sd	s0,80(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,96	#,,
	.cfi_def_cfa 8, 0
	sd	a0,-72(s0)	# class_name, class_name
	sd	a1,-80(s0)	# extensions, extensions
	mv	a5,a2	# tmp142, ext_count
	sd	a3,-96(s0)	# output, output
	sw	a5,-84(s0)	# tmp143, ext_count
# code.c:5:     int max_strength = -1000;
	li	a5,-1000		# tmp144,
	sw	a5,-48(s0)	# tmp144, max_strength
# code.c:6:     const char* strongest = NULL;
	sd	zero,-32(s0)	#, strongest
# code.c:7:     for (int i = 0; i < ext_count; i++) {
	sw	zero,-44(s0)	#, i
# code.c:7:     for (int i = 0; i < ext_count; i++) {
	j	.L2		#
.L8:
# code.c:8:         const char* extension = extensions[i];
	lw	a5,-44(s0)		# _1, i
	slli	a5,a5,3	#, _2, _1
	ld	a4,-80(s0)		# tmp145, extensions
	add	a5,a4,a5	# _2, _3, tmp145
# code.c:8:         const char* extension = extensions[i];
	ld	a5,0(a5)		# tmp146, *_3
	sd	a5,-24(s0)	# tmp146, extension
# code.c:9:         int strength = 0;
	sw	zero,-40(s0)	#, strength
# code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	sw	zero,-36(s0)	#, j
# code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	j	.L3		#
.L6:
# code.c:11:             char chr = extension[j];
	lw	a5,-36(s0)		# _4, j
	ld	a4,-24(s0)		# tmp147, extension
	add	a5,a4,a5	# _4, _5, tmp147
# code.c:11:             char chr = extension[j];
	lbu	a5,0(a5)	# tmp148, *_5
	sb	a5,-49(s0)	# tmp148, chr
# code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lbu	a5,-49(s0)	# tmp150, chr
	andi	a4,a5,0xff	# tmp151, tmp149
	li	a5,64		# tmp152,
	bleu	a4,a5,.L4	#, tmp151, tmp152,
# code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lbu	a5,-49(s0)	# tmp154, chr
	andi	a4,a5,0xff	# tmp155, tmp153
	li	a5,90		# tmp156,
	bgtu	a4,a5,.L4	#, tmp155, tmp156,
# code.c:12:             if (chr >= 'A' && chr <= 'Z') strength++;
	lw	a5,-40(s0)		# tmp159, strength
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-40(s0)	# tmp157, strength
.L4:
# code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lbu	a5,-49(s0)	# tmp161, chr
	andi	a4,a5,0xff	# tmp162, tmp160
	li	a5,96		# tmp163,
	bleu	a4,a5,.L5	#, tmp162, tmp163,
# code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lbu	a5,-49(s0)	# tmp165, chr
	andi	a4,a5,0xff	# tmp166, tmp164
	li	a5,122		# tmp167,
	bgtu	a4,a5,.L5	#, tmp166, tmp167,
# code.c:13:             if (chr >= 'a' && chr <= 'z') strength--;
	lw	a5,-40(s0)		# tmp170, strength
	addiw	a5,a5,-1	#, tmp168, tmp169
	sw	a5,-40(s0)	# tmp168, strength
.L5:
# code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	lw	a5,-36(s0)		# tmp173, j
	addiw	a5,a5,1	#, tmp171, tmp172
	sw	a5,-36(s0)	# tmp171, j
.L3:
# code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	lw	a5,-36(s0)		# _6, j
	ld	a4,-24(s0)		# tmp174, extension
	add	a5,a4,a5	# _6, _7, tmp174
	lbu	a5,0(a5)	# _8, *_7
# code.c:10:         for (int j = 0; extension[j] != '\0'; j++) {
	bne	a5,zero,.L6	#, _8,,
# code.c:15:         if (strength > max_strength) {
	lw	a5,-40(s0)		# tmp176, strength
	mv	a4,a5	# tmp175, tmp176
	lw	a5,-48(s0)		# tmp178, max_strength
	sext.w	a4,a4	# tmp179, tmp175
	sext.w	a5,a5	# tmp180, tmp177
	ble	a4,a5,.L7	#, tmp179, tmp180,
# code.c:16:             max_strength = strength;
	lw	a5,-40(s0)		# tmp181, strength
	sw	a5,-48(s0)	# tmp181, max_strength
# code.c:17:             strongest = extension;
	ld	a5,-24(s0)		# tmp182, extension
	sd	a5,-32(s0)	# tmp182, strongest
.L7:
# code.c:7:     for (int i = 0; i < ext_count; i++) {
	lw	a5,-44(s0)		# tmp185, i
	addiw	a5,a5,1	#, tmp183, tmp184
	sw	a5,-44(s0)	# tmp183, i
.L2:
# code.c:7:     for (int i = 0; i < ext_count; i++) {
	lw	a5,-44(s0)		# tmp187, i
	mv	a4,a5	# tmp186, tmp187
	lw	a5,-84(s0)		# tmp189, ext_count
	sext.w	a4,a4	# tmp190, tmp186
	sext.w	a5,a5	# tmp191, tmp188
	blt	a4,a5,.L8	#, tmp190, tmp191,
# code.c:20:     sprintf(output, "%s.%s", class_name, strongest);
	ld	a3,-32(s0)		#, strongest
	ld	a2,-72(s0)		#, class_name
	lla	a1,.LC0	#,
	ld	a0,-96(s0)		#, output
	call	sprintf@plt	#
# code.c:21: }
	nop	
	ld	ra,88(sp)		#,
	.cfi_restore 1
	ld	s0,80(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 96
	addi	sp,sp,96	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
