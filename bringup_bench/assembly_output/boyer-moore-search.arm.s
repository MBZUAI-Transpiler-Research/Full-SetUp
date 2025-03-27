	.arch armv8-a
	.file	"boyer-moore-search.c"
	.text
	.global	inp_pat
	.data
	.align	3
	.type	inp_pat, %object
	.size	inp_pat, 22
inp_pat:
	.string	"NzZVOzZXNoGXMl8yxesyY"
	.global	inp_txt
	.align	3
	.type	inp_txt, %object
	.size	inp_txt, 761
inp_txt:
	.ascii	"zJfMus2WzLnMr82T4bmuzKTNjcylzYfNiGjMssyBZc2PzZPMvMyXzJnMvMyj"
	.ascii	"zZQgzYfMnMyxzKDNk82NzZVOzZXNoGXMl8yxesyYzJ3MnMy6zZlwzKTMusy5"
	.ascii	"zY3Mr82aZcygzLvMoM2ccsyozKTNjcy6zJbNlMyWzJZkzKDMn8ytzKzMnc2f"
	.ascii	"acymzZbMqc2TzZTMpGHMoMyXzKzNicyZbs2azZwgzLvMnsywzZrNhWjMtc2J"
	.ascii	"acyzzJ52zKLNh+G4mc2OzZ8t0onMrcypzLzNlG3MpMytzKtpzZXNh8ydzKZu"
	.ascii	"zJfNmeG4jcyfIMyvzLLNlc2ex6vMn8yvzLDMss2ZzLvMnWYgzKrMsMywzJfM"
	.ascii	"lsytzJjNmGPMps2NzLLMns2NzKnMmeG4pc2aYcyuzY7Mn8yZzZzGocypzLnN"
	.ascii	"jnPMpC7MncydINKJWsyhzJbMnM2WzLDMo82JzJxhzqwerty42ZbMsM2ZzKzN"
	.ascii	"oWzMssyrzLPNjcypZ8yhzJ/M"
	.string	"vMyxzZrMnsyszYVvzJfNnC7Mnw==zKZIzKzMpMyXzKTNnWXNnCDMnMylzJ3Mu82NzJ/MgXfMlWjMlsyvzZNvzJ3NmcyWzY7MscyuINKJzLrMmcyezJ/NiFfMt8y8zK1hzLrMqs2NxK/NiM2VzK3NmcyvzJx0zLbMvMyuc8yYzZnNlsyVIMygnMyWIMywzYnMqc2HzZnMss2ezYVUzZbMvM2TzKrNomjNj82TzK7Mu2XMrMydzJ/NhSDMpMy5zJ1X"
	.text
	.align	2
	.global	badCharHeuristic
	.type	badCharHeuristic, %function
badCharHeuristic:
.LFB3:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	wzr, [sp, 40]
	b	.L2
.L3:
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	mov	w1, -1
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L2:
	ldr	w0, [sp, 40]
	cmp	w0, 255
	ble	.L3
	str	wzr, [sp, 44]
	b	.L4
.L5:
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 44]
	str	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
.L4:
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L5
	nop
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE3:
	.size	badCharHeuristic, .-badCharHeuristic
	.align	2
	.global	search
	.type	search, %function
search:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp
	sub	sp, sp, #1088
	.cfi_def_cfa_offset 1104
	str	xzr, [sp, 1024]
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	x2, [sp, 8]
	str	w3, [sp, 16]
	str	x4, [sp]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 1080]
	mov	x1, 0
	add	x0, sp, 56
	mov	x2, x0
	ldr	w1, [sp, 16]
	ldr	x0, [sp, 8]
	bl	badCharHeuristic
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	b	.L7
.L17:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bgt	.L19
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	b	.L10
.L12:
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
.L10:
	ldr	w0, [sp, 44]
	cmp	w0, 0
	blt	.L11
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	w2, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w2, w0
	sxtw	x0, w0
	ldr	x2, [sp, 24]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L12
.L11:
	ldr	w0, [sp, 44]
	lsr	w0, w0, 31
	and	w0, w0, 255
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	beq	.L13
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	mov	w1, 1
	str	w1, [x0]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	cmp	w1, w0
	ble	.L14
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 16]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 16]
	sub	w0, w1, w0
	b	.L15
.L14:
	mov	w0, 1
.L15:
	ldr	w1, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 36]
	b	.L16
.L13:
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldrb	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 56
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w2, [sp, 52]
	ldr	w1, [sp, 52]
	mov	w0, 1
	cmp	w2, 0
	csel	w0, w1, w0, gt
	ldr	w1, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 36]
.L16:
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
.L7:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L17
	b	.L9
.L19:
	nop
.L9:
	nop
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 1080]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	beq	.L18
	bl	__stack_chk_fail
.L18:
	add	sp, sp, 1088
	.cfi_def_cfa_offset 16
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	search, .-search
	.section	.rodata
	.align	3
.LC0:
	.string	"n = %d, m = %d\n"
	.align	3
.LC1:
	.string	"pattern occurs at shift = %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -96]!
	.cfi_def_cfa_offset 96
	.cfi_offset 29, -96
	.cfi_offset 30, -88
	mov	x29, sp
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	stp	x25, x26, [sp, 64]
	str	x27, [sp, 80]
	sub	sp, sp, #224
	.cfi_offset 19, -80
	.cfi_offset 20, -72
	.cfi_offset 21, -64
	.cfi_offset 22, -56
	.cfi_offset 23, -48
	.cfi_offset 24, -40
	.cfi_offset 25, -32
	.cfi_offset 26, -24
	.cfi_offset 27, -16
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [x29, -8]
	mov	x1, 0
	mov	x0, sp
	mov	x19, x0
	adrp	x0, inp_txt
	add	x0, x0, :lo12:inp_txt
	bl	libmin_strlen
	str	w0, [x29, -64]
	adrp	x0, inp_pat
	add	x0, x0, :lo12:inp_pat
	bl	libmin_strlen
	str	w0, [x29, -60]
	ldr	w2, [x29, -60]
	ldr	w1, [x29, -64]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	libmin_printf
	ldr	w0, [x29, -64]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, -56]
	sxtw	x1, w0
	str	x1, [x29, -128]
	str	xzr, [x29, -120]
	ldp	x2, x3, [x29, -128]
	mov	x1, x2
	lsr	x1, x1, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, -88]
	ldr	x4, [x29, -88]
	orr	x1, x1, x4
	str	x1, [x29, -88]
	mov	x1, x2
	lsl	x1, x1, 3
	str	x1, [x29, -96]
	sxtw	x1, w0
	str	x1, [x29, -144]
	str	xzr, [x29, -136]
	ldp	x2, x3, [x29, -144]
	mov	x1, x2
	lsr	x1, x1, 61
	mov	x4, x3
	lsl	x4, x4, 3
	str	x4, [x29, -104]
	ldr	x4, [x29, -104]
	orr	x1, x1, x4
	str	x1, [x29, -104]
	mov	x1, x2
	lsl	x1, x1, 3
	str	x1, [x29, -112]
	sxtw	x0, w0
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L21:
	cmp	sp, x1
	beq	.L22
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L21
.L22:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L23
	str	xzr, [sp, 1024]
.L23:
	add	x0, sp, 16
	add	x0, x0, 0
	str	x0, [x29, -48]
	str	wzr, [x29, -80]
	b	.L24
.L25:
	adrp	x0, inp_txt
	add	x1, x0, :lo12:inp_txt
	ldrsw	x0, [x29, -80]
	ldrb	w2, [x1, x0]
	ldr	x1, [x29, -48]
	ldrsw	x0, [x29, -80]
	strb	w2, [x1, x0]
	ldr	w0, [x29, -80]
	add	w0, w0, 1
	str	w0, [x29, -80]
.L24:
	ldr	w1, [x29, -80]
	ldr	w0, [x29, -64]
	cmp	w1, w0
	blt	.L25
	ldr	w0, [x29, -60]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, -40]
	sxtw	x1, w0
	str	x1, [x29, -160]
	str	xzr, [x29, -152]
	ldp	x2, x3, [x29, -160]
	mov	x1, x2
	lsr	x1, x1, 61
	mov	x4, x3
	lsl	x27, x4, 3
	orr	x27, x1, x27
	mov	x1, x2
	lsl	x26, x1, 3
	sxtw	x1, w0
	str	x1, [x29, -176]
	str	xzr, [x29, -168]
	ldp	x2, x3, [x29, -176]
	mov	x1, x2
	lsr	x1, x1, 61
	mov	x4, x3
	lsl	x25, x4, 3
	orr	x25, x1, x25
	mov	x1, x2
	lsl	x24, x1, 3
	sxtw	x0, w0
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L26:
	cmp	sp, x1
	beq	.L27
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L26
.L27:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L28
	str	xzr, [sp, 1024]
.L28:
	add	x0, sp, 16
	add	x0, x0, 0
	str	x0, [x29, -32]
	str	wzr, [x29, -76]
	b	.L29
.L30:
	adrp	x0, inp_pat
	add	x1, x0, :lo12:inp_pat
	ldrsw	x0, [x29, -76]
	ldrb	w2, [x1, x0]
	ldr	x1, [x29, -32]
	ldrsw	x0, [x29, -76]
	strb	w2, [x1, x0]
	ldr	w0, [x29, -76]
	add	w0, w0, 1
	str	w0, [x29, -76]
.L29:
	ldr	w1, [x29, -76]
	ldr	w0, [x29, -60]
	cmp	w1, w0
	blt	.L30
	ldr	w0, [x29, -64]
	sxtw	x1, w0
	sub	x1, x1, #1
	str	x1, [x29, -24]
	sxtw	x1, w0
	str	x1, [x29, -192]
	str	xzr, [x29, -184]
	ldp	x2, x3, [x29, -192]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x23, x4, 5
	orr	x23, x1, x23
	mov	x1, x2
	lsl	x22, x1, 5
	sxtw	x1, w0
	str	x1, [x29, -208]
	str	xzr, [x29, -200]
	ldp	x2, x3, [x29, -208]
	mov	x1, x2
	lsr	x1, x1, 59
	mov	x4, x3
	lsl	x21, x4, 5
	orr	x21, x1, x21
	mov	x1, x2
	lsl	x20, x1, 5
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 15
	lsr	x0, x0, 4
	lsl	x0, x0, 4
	and	x1, x0, -65536
	sub	x1, sp, x1
.L31:
	cmp	sp, x1
	beq	.L32
	sub	sp, sp, #65536
	str	xzr, [sp, 1024]
	b	.L31
.L32:
	and	x1, x0, 65535
	sub	sp, sp, x1
	str	xzr, [sp]
	and	x0, x0, 65535
	cmp	x0, 1024
	bcc	.L33
	str	xzr, [sp, 1024]
.L33:
	add	x0, sp, 16
	add	x0, x0, 3
	lsr	x0, x0, 2
	lsl	x0, x0, 2
	str	x0, [x29, -16]
	str	wzr, [x29, -72]
	b	.L34
.L35:
	ldr	x0, [x29, -16]
	ldrsw	x1, [x29, -72]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [x29, -72]
	add	w0, w0, 1
	str	w0, [x29, -72]
.L34:
	ldr	w1, [x29, -72]
	ldr	w0, [x29, -64]
	cmp	w1, w0
	blt	.L35
	ldr	x4, [x29, -16]
	ldr	w3, [x29, -60]
	ldr	x2, [x29, -32]
	ldr	w1, [x29, -64]
	ldr	x0, [x29, -48]
	bl	search
	str	wzr, [x29, -68]
	b	.L36
.L38:
	ldr	x0, [x29, -16]
	ldrsw	x1, [x29, -68]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L37
	ldr	w1, [x29, -68]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	libmin_printf
.L37:
	ldr	w0, [x29, -68]
	add	w0, w0, 1
	str	w0, [x29, -68]
.L36:
	ldr	w1, [x29, -68]
	ldr	w0, [x29, -64]
	cmp	w1, w0
	blt	.L38
	bl	libmin_success
	mov	w0, 0
	mov	sp, x19
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [x29, -8]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L40
	bl	__stack_chk_fail
.L40:
	mov	w0, w1
	mov	sp, x29
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldp	x25, x26, [sp, 64]
	ldr	x27, [sp, 80]
	ldp	x29, x30, [sp], 96
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
