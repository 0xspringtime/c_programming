	.file	"temperature_conversion.c"
	.text
	.section	.rodata
.LC0:
	.string	"Celsius\t\tFahr."
.LC1:
	.string	"----------------------"
.LC2:
	.string	"%3.0f\t\t%6.1f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -16(%rbp)
	movl	$300, -12(%rbp)
	movl	$30, -8(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	.L2
.L3:
	movss	-20(%rbp), %xmm0
	cvttss2sil	%xmm0, %eax
	movl	%eax, %edi
	call	celsius_to_fahrenheit
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	pxor	%xmm0, %xmm0
	cvtss2sd	-4(%rbp), %xmm0
	pxor	%xmm2, %xmm2
	cvtss2sd	-20(%rbp), %xmm2
	movq	%xmm2, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
.L2:
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-12(%rbp), %xmm0
	comiss	-20(%rbp), %xmm0
	jnb	.L3
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	celsius_to_fahrenheit
	.type	celsius_to_fahrenheit, @function
celsius_to_fahrenheit:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-4(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	.LC4(%rip), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	celsius_to_fahrenheit, .-celsius_to_fahrenheit
	.section	.rodata
	.align 8
.LC3:
	.long	-858993459
	.long	1073532108
	.align 8
.LC4:
	.long	0
	.long	1077936128
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
