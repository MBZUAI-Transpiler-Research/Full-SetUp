	.arch armv8-a
	.file	"xargs.c"
// GNU C17 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

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
	stp	x29, x30, [sp, -288]!	//,,,
	.cfi_def_cfa_offset 288
	.cfi_offset 29, -288
	.cfi_offset 30, -280
	mov	x29, sp	//,
// xargs.c:2: int main(){
	adrp	x0, :got:__stack_chk_guard	// tmp98,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp97, tmp98,
	ldr	x1, [x0]	// tmp113,
	str	x1, [sp, 280]	// tmp113, D.4259
	mov	x1, 0	// tmp113
// xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	b	.L2		//
.L3:
// xargs.c:8:   fp=fopen("lm.txt","a+");
	adrp	x0, .LC0	// tmp99,
	add	x1, x0, :lo12:.LC0	//, tmp99,
	adrp	x0, .LC1	// tmp100,
	add	x0, x0, :lo12:.LC1	//, tmp100,
	bl	fopen		//
	str	x0, [sp, 32]	// tmp101, fp
// xargs.c:9:   fprintf(fp,"%s\n",get);
	add	x0, sp, 40	// tmp102,,
	mov	x2, x0	//, tmp102
	adrp	x0, .LC2	// tmp103,
	add	x1, x0, :lo12:.LC2	//, tmp103,
	ldr	x0, [sp, 32]	//, fp
	bl	fprintf		//
// xargs.c:10:   fclose(fp);
	ldr	x0, [sp, 32]	//, fp
	bl	fclose		//
.L2:
// xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	adrp	x0, :got:stdin	// tmp105,
	ldr	x0, [x0, #:got_lo12:stdin]	// tmp104, tmp105,
	ldr	x1, [x0]	// stdin.0_1, stdin
	add	x0, sp, 40	// tmp106,,
	mov	x2, x1	//, stdin.0_1
	mov	w1, 100	//,
	bl	fgets		//
// xargs.c:5: while(fgets(get,100,stdin)!=NULL)
	cmp	x0, 0	// _2,
	bne	.L3		//,
// xargs.c:14: fp=fopen("lm.txt", "r");
	adrp	x0, .LC3	// tmp107,
	add	x1, x0, :lo12:.LC3	//, tmp107,
	adrp	x0, .LC1	// tmp108,
	add	x0, x0, :lo12:.LC1	//, tmp108,
	bl	fopen		//
	str	x0, [sp, 32]	// tmp109, fp
// xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	b	.L4		//
.L7:
// xargs.c:18:          putchar(ch);
	ldrb	w0, [sp, 31]	// _3, ch
	bl	putchar		//
.L4:
// xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	ldr	x0, [sp, 32]	//, fp
	bl	fgetc		//
// xargs.c:16:     while((ch=fgetc(fp)) != EOF)
	strb	w0, [sp, 31]	// tmp110, ch
	b	.L7		//
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
