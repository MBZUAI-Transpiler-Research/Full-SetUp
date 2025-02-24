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
	.string	"-1"
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
.LFB6:
	.cfi_startproc
	addi	sp,sp,-48	#,,
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)	#,
	sd	s0,32(sp)	#,
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,48	#,,
	.cfi_def_cfa 8, 0
	mv	a5,a0	# tmp148, n
	mv	a4,a1	# tmp150, m
	sw	a5,-36(s0)	# tmp149, n
	mv	a5,a4	# tmp151, tmp150
	sw	a5,-40(s0)	# tmp151, m
# code.c:5:     if (n > m) return "-1";
	lw	a5,-36(s0)		# tmp153, n
	mv	a4,a5	# tmp152, tmp153
	lw	a5,-40(s0)		# tmp155, m
	sext.w	a4,a4	# tmp156, tmp152
	sext.w	a5,a5	# tmp157, tmp154
	ble	a4,a5,.L2	#, tmp156, tmp157,
# code.c:5:     if (n > m) return "-1";
	lla	a5,.LC0	# _15,
# code.c:5:     if (n > m) return "-1";
	j	.L3		#
.L2:
# code.c:6:     int num = (m + n) / 2;
	lw	a5,-40(s0)		# tmp160, m
	mv	a4,a5	# tmp159, tmp160
	lw	a5,-36(s0)		# tmp162, n
	addw	a5,a4,a5	# tmp161, tmp158, tmp159
	sext.w	a5,a5	# _1, tmp158
# code.c:6:     int num = (m + n) / 2;
	srliw	a4,a5,31	#, tmp164, tmp163
	addw	a5,a4,a5	# tmp163, tmp165, tmp164
	sraiw	a5,a5,1	#, tmp166, tmp165
	sw	a5,-32(s0)	# tmp166, num
# code.c:7:     char* out = (char*)malloc(33);
	li	a0,33		#,
	call	malloc@plt	#
	mv	a5,a0	# tmp167,
	sd	a5,-24(s0)	# tmp167, out
# code.c:8:     out[0] = '\0';
	ld	a5,-24(s0)		# tmp168, out
	sb	zero,0(a5)	#, *out_23
# code.c:10:     int index = 32;
	li	a5,32		# tmp169,
	sw	a5,-28(s0)	# tmp169, index
# code.c:11:     out[index--] = '\0';
	lw	a5,-28(s0)		# index.0_2, index
	addiw	a4,a5,-1	#, tmp170, index.0_2
	sw	a4,-28(s0)	# tmp170, index
	mv	a4,a5	# _3, index.0_2
# code.c:11:     out[index--] = '\0';
	ld	a5,-24(s0)		# tmp171, out
	add	a5,a5,a4	# _3, _4, tmp171
# code.c:11:     out[index--] = '\0';
	sb	zero,0(a5)	#, *_4
.L4:
# code.c:14:         out[index--] = '0' + num % 2;
	lw	a5,-32(s0)		# tmp174, num
	mv	a4,a5	# tmp173, tmp174
	sraiw	a5,a4,31	#, tmp175, tmp173
	srliw	a5,a5,31	#, tmp176, tmp175
	addw	a4,a4,a5	# tmp176, tmp177, tmp173
	andi	a4,a4,1	#, tmp178, tmp177
	subw	a5,a4,a5	# tmp179, tmp178, tmp176
	sext.w	a5,a5	# _5, tmp179
# code.c:14:         out[index--] = '0' + num % 2;
	andi	a4,a5,0xff	# _6, _5
# code.c:14:         out[index--] = '0' + num % 2;
	lw	a5,-28(s0)		# index.1_7, index
	addiw	a3,a5,-1	#, tmp180, index.1_7
	sw	a3,-28(s0)	# tmp180, index
	mv	a3,a5	# _8, index.1_7
# code.c:14:         out[index--] = '0' + num % 2;
	ld	a5,-24(s0)		# tmp181, out
	add	a5,a5,a3	# _8, _9, tmp181
# code.c:14:         out[index--] = '0' + num % 2;
	addiw	a4,a4,48	#, tmp182, _6
	andi	a4,a4,0xff	# _10, tmp182
# code.c:14:         out[index--] = '0' + num % 2;
	sb	a4,0(a5)	# _10, *_9
# code.c:15:         num /= 2;
	lw	a5,-32(s0)		# tmp185, num
	srliw	a4,a5,31	#, tmp186, tmp184
	addw	a5,a4,a5	# tmp184, tmp187, tmp186
	sraiw	a5,a5,1	#, tmp188, tmp187
	sw	a5,-32(s0)	# tmp188, num
# code.c:16:     } while (num > 0);
	lw	a5,-32(s0)		# tmp190, num
	sext.w	a5,a5	# tmp191, tmp189
	bgt	a5,zero,.L4	#, tmp191,,
# code.c:18:     return &out[index + 1]; 
	lw	a5,-28(s0)		# _11, index
	addi	a5,a5,1	#, _12, _11
# code.c:18:     return &out[index + 1]; 
	ld	a4,-24(s0)		# tmp192, out
	add	a5,a4,a5	# _12, _15, tmp192
.L3:
# code.c:19: }
	mv	a0,a5	#, <retval>
	ld	ra,40(sp)		#,
	.cfi_restore 1
	ld	s0,32(sp)		#,
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48	#,,
	.cfi_def_cfa_offset 0
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
