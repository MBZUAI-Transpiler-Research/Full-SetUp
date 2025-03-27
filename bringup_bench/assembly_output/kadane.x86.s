	.file	"kadane.c"
	.text
	.globl	kadane
	.type	kadane, @function
kadane:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -12(%rbp)
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L3
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
.L3:
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L4
	movl	-12(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	kadane, .-kadane
	.section	.rodata
.LC1:
	.string	"Array size= %d\n"
	.align 8
.LC2:
	.string	"The maximum sum of a contiguous subarray is %d (ending at index %d)\n"
	.align 32
.LC0:
	.long	8155
	.long	17168
	.long	11554
	.long	-14406
	.long	13854
	.long	20973
	.long	-26471
	.long	-11245
	.long	25508
	.long	-24548
	.long	-2094
	.long	-16932
	.long	-23080
	.long	29777
	.long	-27647
	.long	-5927
	.long	20197
	.long	-16505
	.long	-28944
	.long	2518
	.long	22405
	.long	15304
	.long	-19199
	.long	5439
	.long	4971
	.long	24179
	.long	1119
	.long	16764
	.long	-24526
	.long	-973
	.long	-9585
	.long	15066
	.long	12069
	.long	-21990
	.long	-19708
	.long	-16603
	.long	24065
	.long	15869
	.long	-6208
	.long	22922
	.long	2901
	.long	24070
	.long	-16253
	.long	15350
	.long	-27951
	.long	-817
	.long	-10363
	.long	-4185
	.long	-17835
	.long	-21493
	.long	-25281
	.long	-4842
	.long	-1425
	.long	6710
	.long	-7297
	.long	-17119
	.long	-10408
	.long	18129
	.long	-28213
	.long	-12161
	.long	13068
	.long	-4347
	.long	27196
	.long	-9652
	.long	-19423
	.long	6057
	.long	-22147
	.long	-10601
	.long	-17130
	.long	-13839
	.long	4925
	.long	27786
	.long	-9734
	.long	-25871
	.long	-2776
	.long	16462
	.long	13778
	.long	11363
	.long	-6662
	.long	-24896
	.long	19904
	.long	29515
	.long	9625
	.long	18193
	.long	-17274
	.long	-3246
	.long	27168
	.long	508
	.long	-81
	.long	15064
	.long	19885
	.long	18619
	.long	-5470
	.long	23422
	.long	-10780
	.long	-21517
	.long	26606
	.long	-20833
	.long	-27943
	.long	-11223
	.long	-10137
	.long	-29356
	.long	2701
	.long	-10774
	.long	13286
	.long	-15863
	.long	24259
	.long	-3434
	.long	-16362
	.long	-4444
	.long	-20182
	.long	7785
	.long	23559
	.long	-16482
	.long	-23146
	.long	7477
	.long	25038
	.long	-19306
	.long	-26506
	.long	29314
	.long	2174
	.long	7862
	.long	-29266
	.long	-1236
	.long	-28187
	.long	27877
	.long	-7969
	.long	10314
	.long	-5142
	.long	5466
	.long	28920
	.long	29191
	.long	-27061
	.long	27601
	.long	7428
	.long	12574
	.long	-5776
	.long	27915
	.long	-13399
	.long	-11340
	.long	3307
	.long	7043
	.long	-6927
	.long	16463
	.long	-6535
	.long	26316
	.long	-10710
	.long	16103
	.long	-5578
	.long	26102
	.long	-22493
	.long	23027
	.long	12203
	.long	3251
	.long	5281
	.long	-17123
	.long	-9919
	.long	18986
	.long	-9330
	.long	-192
	.long	16263
	.long	-19289
	.long	-22665
	.long	-2993
	.long	27926
	.long	-3020
	.long	-10050
	.long	-4092
	.long	17416
	.long	26503
	.long	-16237
	.long	-25905
	.long	-19723
	.long	-5055
	.long	2901
	.long	24070
	.long	-16253
	.long	15350
	.long	-27951
	.long	-817
	.long	-10363
	.long	-4185
	.long	-17835
	.long	-21493
	.long	-25281
	.long	-4842
	.long	-1425
	.long	27601
	.long	7428
	.long	12574
	.long	-5776
	.long	27915
	.long	-13399
	.long	-11340
	.long	3307
	.long	7043
	.long	-6927
	.long	16463
	.long	-6535
	.long	26316
	.long	-10710
	.long	29777
	.long	-27647
	.long	-5927
	.long	20197
	.long	-16505
	.long	-28944
	.long	2518
	.long	22405
	.long	15304
	.long	-19199
	.long	5439
	.long	4971
	.long	24179
	.long	1119
	.long	8155
	.long	17168
	.long	11554
	.long	-14406
	.long	13854
	.long	20973
	.long	-26471
	.long	-11245
	.long	25508
	.long	-24548
	.long	-2094
	.long	-16932
	.long	-23080
	.long	-25496
	.long	-27164
	.long	-9845
	.long	25985
	.long	21965
	.long	26979
	.long	-28295
	.long	-4574
	.long	-27464
	.long	-26163
	.long	11498
	.long	-6302
	.long	29123
	.long	-4712
	.long	-24339
	.long	-27645
	.long	23484
	.long	12151
	.long	14797
	.long	-5334
	.long	-15853
	.long	9431
	.long	7116
	.long	27195
	.long	-1075
	.long	17134
	.long	21955
	.long	-3745
	.long	-4717
	.long	11285
	.long	-9264
	.long	-20400
	.long	15249
	.long	-18604
	.long	390
	.long	25377
	.long	-7495
	.long	-24694
	.long	25767
	.long	17461
	.long	-21795
	.long	1815
	.long	-5557
	.long	22489
	.long	11085
	.long	-6132
	.long	-2513
	.long	131
	.long	18955
	.long	-28518
	.long	-14482
	.long	15781
	.long	21178
	.long	5485
	.long	-12187
	.long	-24004
	.long	12344
	.long	20129
	.long	-26045
	.long	-28136
	.long	-26435
	.long	23729
	.long	-12384
	.long	3157
	.long	3121
	.long	-18724
	.long	-17193
	.long	22853
	.long	-29225
	.long	29921
	.long	-19534
	.long	-28048
	.long	-9185
	.long	-29704
	.long	-29260
	.long	-2534
	.long	21587
	.long	4770
	.long	4880
	.long	-9269
	.long	9197
	.long	25075
	.long	-3083
	.long	-4795
	.long	-28614
	.long	-8794
	.long	20376
	.long	-12507
	.long	-14627
	.long	8109
	.long	28004
	.long	-29128
	.long	-10195
	.long	16767
	.long	-6852
	.long	-21305
	.long	28599
	.long	-23297
	.long	-16460
	.long	18601
	.long	5359
	.long	-7017
	.long	-24250
	.long	-23556
	.long	16491
	.long	-23856
	.long	-16880
	.long	19593
	.long	6171
	.long	12602
	.long	-29905
	.long	-27567
	.long	18969
	.long	-12582
	.long	18015
	.long	7774
	.long	23534
	.long	-26819
	.long	-8535
	.long	13345
	.long	9279
	.long	-20758
	.long	-1612
	.long	13739
	.long	-29764
	.long	6005
	.long	2037
	.long	14339
	.long	-23422
	.long	-11
	.long	-16605
	.long	-11701
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1472, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-1456(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$180, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movl	$360, -1464(%rbp)
	movl	-1464(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	leaq	-1468(%rbp), %rdx
	movl	-1464(%rbp), %ecx
	leaq	-1456(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	kadane
	movl	%eax, -1460(%rbp)
	movl	-1468(%rbp), %edx
	movl	-1460(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	libmin_printf@PLT
	call	libmin_success@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
