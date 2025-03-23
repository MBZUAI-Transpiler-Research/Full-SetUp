	.file	"problem87.c"
	.option pic
# GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (riscv64-linux-gnu)
#	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64d -misa-spec=2.2 -march=rv64imafdc -fstack-protector-strong
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-144	#,,
	sd	ra,136(sp)	#,
	sd	s0,128(sp)	#,
	addi	s0,sp,144	#,,
	sd	a0,-136(s0)	# s, s
# problem87.c:5: char* func0(const char* s) {
	la	a5,__stack_chk_guard		# tmp100,
	ld	a4, 0(a5)	# tmp182, __stack_chk_guard
	sd	a4, -24(s0)	# tmp182, D.2676
	li	a4, 0	# tmp182
# problem87.c:6:     int len = strlen(s);
	ld	a0,-136(s0)		#, s
	call	strlen@plt	#
	mv	a5,a0	# _1,
# problem87.c:6:     int len = strlen(s);
	sw	a5,-92(s0)	# _1, len
# problem87.c:7:     char* out = malloc(len + 2); 
	lw	a5,-92(s0)		# tmp103, len
	addiw	a5,a5,2	#, tmp101, tmp102
	sext.w	a5,a5	# _2, tmp101
# problem87.c:7:     char* out = malloc(len + 2); 
	mv	a0,a5	#, _3
	call	malloc@plt	#
	mv	a5,a0	# tmp104,
	sd	a5,-88(s0)	# tmp104, out
# problem87.c:9:     int out_index = 0, current_index = 0;
	sw	zero,-116(s0)	#, out_index
# problem87.c:9:     int out_index = 0, current_index = 0;
	sw	zero,-112(s0)	#, current_index
# problem87.c:11:     for (int i = 0; i <= len; i++) {
	sw	zero,-108(s0)	#, i
# problem87.c:11:     for (int i = 0; i <= len; i++) {
	j	.L2		#
.L14:
# problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	lw	a5,-108(s0)		# _4, i
	ld	a4,-136(s0)		# tmp105, s
	add	a5,a4,a5	# _4, _5, tmp105
	lbu	a5,0(a5)	# _6, *_5
# problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	mv	a4,a5	# tmp106, _6
	li	a5,32		# tmp107,
	beq	a4,a5,.L3	#, tmp106, tmp107,
# problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	lw	a5,-108(s0)		# _7, i
	ld	a4,-136(s0)		# tmp108, s
	add	a5,a4,a5	# _7, _8, tmp108
	lbu	a5,0(a5)	# _9, *_8
# problem87.c:12:         if (s[i] == ' ' || s[i] == '\0') {
	bne	a5,zero,.L4	#, _9,,
.L3:
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	sw	zero,-104(s0)	#, j
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	j	.L5		#
.L9:
# problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	lw	a5,-104(s0)		# tmp111, j
	addiw	a5,a5,1	#, tmp109, tmp110
	sw	a5,-100(s0)	# tmp109, k
# problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	j	.L6		#
.L8:
# problem87.c:15:                     if (current[j] > current[k]) {
	lw	a5,-104(s0)		# tmp112, j
	addi	a5,a5,-16	#, tmp186, tmp112
	add	a5,a5,s0	#, tmp113, tmp186
	lbu	a4,-64(a5)	# _10, current[j_34]
# problem87.c:15:                     if (current[j] > current[k]) {
	lw	a5,-100(s0)		# tmp114, k
	addi	a5,a5,-16	#, tmp187, tmp114
	add	a5,a5,s0	#, tmp115, tmp187
	lbu	a5,-64(a5)	# _11, current[k_35]
# problem87.c:15:                     if (current[j] > current[k]) {
	bleu	a4,a5,.L7	#, tmp116, tmp117,
# problem87.c:16:                         char temp = current[j];
	lw	a5,-104(s0)		# tmp118, j
	addi	a5,a5,-16	#, tmp188, tmp118
	add	a5,a5,s0	#, tmp119, tmp188
	lbu	a5,-64(a5)	# tmp120, current[j_34]
	sb	a5,-117(s0)	# tmp120, temp
# problem87.c:17:                         current[j] = current[k];
	lw	a5,-100(s0)		# tmp121, k
	addi	a5,a5,-16	#, tmp189, tmp121
	add	a5,a5,s0	#, tmp122, tmp189
	lbu	a4,-64(a5)	# _12, current[k_35]
# problem87.c:17:                         current[j] = current[k];
	lw	a5,-104(s0)		# tmp123, j
	addi	a5,a5,-16	#, tmp190, tmp123
	add	a5,a5,s0	#, tmp124, tmp190
	sb	a4,-64(a5)	# _12, current[j_34]
# problem87.c:18:                         current[k] = temp;
	lw	a5,-100(s0)		# tmp125, k
	addi	a5,a5,-16	#, tmp191, tmp125
	add	a5,a5,s0	#, tmp126, tmp191
	lbu	a4,-117(s0)	# tmp127, temp
	sb	a4,-64(a5)	# tmp127, current[k_35]
.L7:
# problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	lw	a5,-100(s0)		# tmp130, k
	addiw	a5,a5,1	#, tmp128, tmp129
	sw	a5,-100(s0)	# tmp128, k
.L6:
# problem87.c:14:                 for (int k = j + 1; k < current_index; k++) {
	lw	a5,-100(s0)		# tmp132, k
	mv	a4,a5	# tmp131, tmp132
	lw	a5,-112(s0)		# tmp134, current_index
	sext.w	a4,a4	# tmp135, tmp131
	sext.w	a5,a5	# tmp136, tmp133
	blt	a4,a5,.L8	#, tmp135, tmp136,
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	lw	a5,-104(s0)		# tmp139, j
	addiw	a5,a5,1	#, tmp137, tmp138
	sw	a5,-104(s0)	# tmp137, j
.L5:
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	lw	a5,-112(s0)		# tmp142, current_index
	addiw	a5,a5,-1	#, tmp140, tmp141
	sext.w	a4,a5	# _13, tmp140
# problem87.c:13:             for (int j = 0; j < current_index - 1; j++) {
	lw	a5,-104(s0)		# tmp144, j
	sext.w	a5,a5	# tmp145, tmp143
	blt	a5,a4,.L9	#, tmp145, tmp146,
# problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	lw	a5,-116(s0)		# tmp148, out_index
	sext.w	a5,a5	# tmp149, tmp147
	ble	a5,zero,.L10	#, tmp149,,
# problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	lw	a5,-116(s0)		# out_index.0_14, out_index
	addiw	a4,a5,1	#, tmp150, out_index.0_14
	sw	a4,-116(s0)	# tmp150, out_index
	mv	a4,a5	# _15, out_index.0_14
# problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	ld	a5,-88(s0)		# tmp151, out
	add	a5,a5,a4	# _15, _16, tmp151
# problem87.c:22:             if (out_index > 0) out[out_index++] = ' ';
	li	a4,32		# tmp152,
	sb	a4,0(a5)	# tmp152, *_16
.L10:
# problem87.c:23:             for (int j = 0; j < current_index; j++) {
	sw	zero,-96(s0)	#, j
# problem87.c:23:             for (int j = 0; j < current_index; j++) {
	j	.L11		#
.L12:
# problem87.c:24:                 out[out_index++] = current[j];
	lw	a5,-116(s0)		# out_index.1_17, out_index
	addiw	a4,a5,1	#, tmp153, out_index.1_17
	sw	a4,-116(s0)	# tmp153, out_index
	mv	a4,a5	# _18, out_index.1_17
# problem87.c:24:                 out[out_index++] = current[j];
	ld	a5,-88(s0)		# tmp154, out
	add	a5,a5,a4	# _18, _19, tmp154
# problem87.c:24:                 out[out_index++] = current[j];
	lw	a4,-96(s0)		# tmp155, j
	addi	a4,a4,-16	#, tmp192, tmp155
	add	a4,a4,s0	#, tmp156, tmp192
	lbu	a4,-64(a4)	# _20, current[j_36]
# problem87.c:24:                 out[out_index++] = current[j];
	sb	a4,0(a5)	# _20, *_19
# problem87.c:23:             for (int j = 0; j < current_index; j++) {
	lw	a5,-96(s0)		# tmp159, j
	addiw	a5,a5,1	#, tmp157, tmp158
	sw	a5,-96(s0)	# tmp157, j
.L11:
# problem87.c:23:             for (int j = 0; j < current_index; j++) {
	lw	a5,-96(s0)		# tmp161, j
	mv	a4,a5	# tmp160, tmp161
	lw	a5,-112(s0)		# tmp163, current_index
	sext.w	a4,a4	# tmp164, tmp160
	sext.w	a5,a5	# tmp165, tmp162
	blt	a4,a5,.L12	#, tmp164, tmp165,
# problem87.c:26:             current_index = 0;
	sw	zero,-112(s0)	#, current_index
	j	.L13		#
.L4:
# problem87.c:28:             current[current_index++] = s[i];
	lw	a5,-108(s0)		# _21, i
	ld	a4,-136(s0)		# tmp166, s
	add	a4,a4,a5	# _21, _22, tmp166
# problem87.c:28:             current[current_index++] = s[i];
	lw	a5,-112(s0)		# current_index.2_23, current_index
	addiw	a3,a5,1	#, tmp167, current_index.2_23
	sw	a3,-112(s0)	# tmp167, current_index
# problem87.c:28:             current[current_index++] = s[i];
	lbu	a4,0(a4)	# _24, *_22
# problem87.c:28:             current[current_index++] = s[i];
	addi	a5,a5,-16	#, tmp193, current_index.2_23
	add	a5,a5,s0	#, tmp168, tmp193
	sb	a4,-64(a5)	# _24, current[current_index.2_23]
.L13:
# problem87.c:11:     for (int i = 0; i <= len; i++) {
	lw	a5,-108(s0)		# tmp171, i
	addiw	a5,a5,1	#, tmp169, tmp170
	sw	a5,-108(s0)	# tmp169, i
.L2:
# problem87.c:11:     for (int i = 0; i <= len; i++) {
	lw	a5,-108(s0)		# tmp173, i
	mv	a4,a5	# tmp172, tmp173
	lw	a5,-92(s0)		# tmp175, len
	sext.w	a4,a4	# tmp176, tmp172
	sext.w	a5,a5	# tmp177, tmp174
	ble	a4,a5,.L14	#, tmp176, tmp177,
# problem87.c:32:     out[out_index] = '\0';
	lw	a5,-116(s0)		# _25, out_index
	ld	a4,-88(s0)		# tmp178, out
	add	a5,a4,a5	# _25, _26, tmp178
# problem87.c:32:     out[out_index] = '\0';
	sb	zero,0(a5)	#, *_26
# problem87.c:33:     return out;
	ld	a5,-88(s0)		# _53, out
	mv	a4,a5	# <retval>, _53
# problem87.c:34: }
	la	a5,__stack_chk_guard		# tmp180,
	ld	a3, -24(s0)	# tmp183, D.2676
	ld	a5, 0(a5)	# tmp181, __stack_chk_guard
	xor	a5, a3, a5	# tmp181, tmp183
	li	a3, 0	# tmp183
	beq	a5,zero,.L16	#, tmp181,,
	call	__stack_chk_fail@plt	#
.L16:
	mv	a0,a4	#, <retval>
	ld	ra,136(sp)		#,
	ld	s0,128(sp)		#,
	addi	sp,sp,144	#,,
	jr	ra		#
	.size	func0, .-func0
	.section	.rodata
	.align	3
.LC0:
	.string	"Hi"
	.align	3
.LC1:
	.string	"problem87.c"
	.align	3
.LC2:
	.string	"strcmp(result, \"Hi\") == 0"
	.align	3
.LC3:
	.string	"hello"
	.align	3
.LC4:
	.string	"ehllo"
	.align	3
.LC5:
	.string	"strcmp(result, \"ehllo\") == 0"
	.align	3
.LC6:
	.string	"number"
	.align	3
.LC7:
	.string	"bemnru"
	.align	3
.LC8:
	.string	"strcmp(result, \"bemnru\") == 0"
	.align	3
.LC9:
	.string	"abcd"
	.align	3
.LC10:
	.string	"strcmp(result, \"abcd\") == 0"
	.align	3
.LC11:
	.string	"Hello World!!!"
	.align	3
.LC12:
	.string	"Hello !!!Wdlor"
	.align	3
.LC13:
	.string	"strcmp(result, \"Hello !!!Wdlor\") == 0"
	.align	3
.LC14:
	.string	""
	.align	3
.LC15:
	.string	"strcmp(result, \"\") == 0"
	.align	3
.LC16:
	.string	"Hi. My name is Mister Robot. How are you?"
	.align	3
.LC17:
	.string	".Hi My aemn is Meirst .Rboot How aer ?ouy"
	.align	3
.LC18:
	.string	"strcmp(result, \".Hi My aemn is Meirst .Rboot How aer ?ouy\") == 0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# problem87.c:45:     result = func0("Hi");
	lla	a0,.LC0	#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem87.c:46:     assert(strcmp(result, "Hi") == 0);
	lla	a1,.LC0	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp82,
	beq	a5,zero,.L18	#, _1,,
# problem87.c:46:     assert(strcmp(result, "Hi") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,46		#,
	lla	a1,.LC1	#,
	lla	a0,.LC2	#,
	call	__assert_fail@plt	#
.L18:
# problem87.c:47:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem87.c:49:     result = func0("hello");
	lla	a0,.LC3	#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem87.c:50:     assert(strcmp(result, "ehllo") == 0);
	lla	a1,.LC4	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp83,
	beq	a5,zero,.L19	#, _2,,
# problem87.c:50:     assert(strcmp(result, "ehllo") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,50		#,
	lla	a1,.LC1	#,
	lla	a0,.LC5	#,
	call	__assert_fail@plt	#
.L19:
# problem87.c:51:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem87.c:53:     result = func0("number");
	lla	a0,.LC6	#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem87.c:54:     assert(strcmp(result, "bemnru") == 0);
	lla	a1,.LC7	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp84,
	beq	a5,zero,.L20	#, _3,,
# problem87.c:54:     assert(strcmp(result, "bemnru") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,54		#,
	lla	a1,.LC1	#,
	lla	a0,.LC8	#,
	call	__assert_fail@plt	#
.L20:
# problem87.c:55:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem87.c:57:     result = func0("abcd");
	lla	a0,.LC9	#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem87.c:58:     assert(strcmp(result, "abcd") == 0);
	lla	a1,.LC9	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp85,
	beq	a5,zero,.L21	#, _4,,
# problem87.c:58:     assert(strcmp(result, "abcd") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,58		#,
	lla	a1,.LC1	#,
	lla	a0,.LC10	#,
	call	__assert_fail@plt	#
.L21:
# problem87.c:59:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem87.c:61:     result = func0("Hello World!!!");
	lla	a0,.LC11	#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem87.c:62:     assert(strcmp(result, "Hello !!!Wdlor") == 0);
	lla	a1,.LC12	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp86,
	beq	a5,zero,.L22	#, _5,,
# problem87.c:62:     assert(strcmp(result, "Hello !!!Wdlor") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,62		#,
	lla	a1,.LC1	#,
	lla	a0,.LC13	#,
	call	__assert_fail@plt	#
.L22:
# problem87.c:63:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem87.c:65:     result = func0("");
	lla	a0,.LC14	#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem87.c:66:     assert(strcmp(result, "") == 0);
	ld	a5,-24(s0)		# tmp87, result
	lbu	a5,0(a5)	# _31, MEM[(const unsigned char * {ref-all})result_30]
	sext.w	a5,a5	# _6, _31
	beq	a5,zero,.L23	#, _6,,
# problem87.c:66:     assert(strcmp(result, "") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,66		#,
	lla	a1,.LC1	#,
	lla	a0,.LC15	#,
	call	__assert_fail@plt	#
.L23:
# problem87.c:67:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem87.c:69:     result = func0("Hi. My name is Mister Robot. How are you?");
	lla	a0,.LC16	#,
	call	func0		#
	sd	a0,-24(s0)	#, result
# problem87.c:70:     assert(strcmp(result, ".Hi My aemn is Meirst .Rboot How aer ?ouy") == 0);
	lla	a1,.LC17	#,
	ld	a0,-24(s0)		#, result
	call	strcmp@plt	#
	mv	a5,a0	# tmp88,
	beq	a5,zero,.L24	#, _7,,
# problem87.c:70:     assert(strcmp(result, ".Hi My aemn is Meirst .Rboot How aer ?ouy") == 0);
	lla	a3,__PRETTY_FUNCTION__.0	#,
	li	a2,70		#,
	lla	a1,.LC1	#,
	lla	a0,.LC18	#,
	call	__assert_fail@plt	#
.L24:
# problem87.c:71:     free(result);
	ld	a0,-24(s0)		#, result
	call	free@plt	#
# problem87.c:73:     return 0;
	li	a5,0		# _38,
# problem87.c:74: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 5
__PRETTY_FUNCTION__.0:
	.string	"main"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
