	.arch armv8-a
	.file	"xargs.c"
// GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed: -mlittle-endian -mabi=lp64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"a+"
	.align	3
.LC1:
	.string	"lm.txt"
	.align	3
.LC2:
	.string	"%s\n"
	.align	3
.LC3:
	.string	"r"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #288	//,,
	.cfi_def_cfa_offset 288
	stp	x29, x30, [sp, 272]	//,,
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 272	//,,
// xargs.c:2: void main(){
	adrp	x0, :got:__stack_chk_guard	// tmp96,
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]	// tmp96,
	ldr	x1, [x0]	// tmp109,
	str	x1, [sp, 264]	// tmp109, D.4839
	mov	x1, 0	// tmp109
// xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	b	.L2		//
.L3:
// xargs.c:8:   fp=fopen("lm.txt","a+");
	adrp	x0, .LC0	// tmp97,
	add	x1, x0, :lo12:.LC0	//, tmp97,
	adrp	x0, .LC1	// tmp98,
	add	x0, x0, :lo12:.LC1	//, tmp98,
	bl	fopen		//
	str	x0, [sp, 16]	// tmp99, fp
// xargs.c:9:   fprintf(fp,"%s\n",get);
	add	x0, sp, 24	// tmp100,,
	mov	x2, x0	//, tmp100
	adrp	x0, .LC2	// tmp101,
	add	x1, x0, :lo12:.LC2	//, tmp101,
	ldr	x0, [sp, 16]	//, fp
	bl	fprintf		//
// xargs.c:10:   fclose(fp);
	ldr	x0, [sp, 16]	//, fp
	bl	fclose		//
.L2:
// xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	adrp	x0, :got:stdin	// tmp102,
	ldr	x0, [x0, :got_lo12:stdin]	// tmp102,
	ldr	x1, [x0]	// stdin.0_1, stdin
	add	x0, sp, 24	// tmp103,,
	mov	x2, x1	//, stdin.0_1
	mov	w1, 100	//,
	bl	fgets		//
// xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	cmp	x0, 0	// _2,
	bne	.L3		//,
// xargs.c:14: fp=fopen("lm.txt", "r");
	adrp	x0, .LC3	// tmp104,
	add	x1, x0, :lo12:.LC3	//, tmp104,
	adrp	x0, .LC1	// tmp105,
	add	x0, x0, :lo12:.LC1	//, tmp105,
	bl	fopen		//
	str	x0, [sp, 16]	// tmp106, fp
// xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	b	.L4		//
.L7:
// xargs.c:18:          putchar(ch);
	ldrb	w0, [sp, 15]	// _3, ch
	bl	putchar		//
.L4:
// xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	ldr	x0, [sp, 16]	//, fp
	bl	fgetc		//
// xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	strb	w0, [sp, 15]	// tmp107, ch
	b	.L7		//
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
