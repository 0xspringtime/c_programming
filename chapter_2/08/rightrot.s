	.file	"rightrot.c"
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
	subq	$16, %rsp
	movl	$245, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	printbin
	movl	-4(%rbp), %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	rightrot
	movl	%eax, %edi
	call	printbin
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC0:
	.string	"0b"
	.text
	.globl	printbin
	.type	printbin, @function
printbin:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$4, -4(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	sall	$3, %eax
	subl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L4
.L7:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm0
	movq	.LC1(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	cvttsd2siq	%xmm0, %rax
	andl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L5
	movl	$49, %edi
	call	putchar@PLT
	jmp	.L6
.L5:
	movl	$48, %edi
	call	putchar@PLT
.L6:
	subl	$1, -8(%rbp)
.L4:
	cmpl	$0, -8(%rbp)
	jns	.L7
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	printbin, .-printbin
	.globl	rightrot
	.type	rightrot, @function
rightrot:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$-2147483648, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L9
.L12:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L10
	movl	-20(%rbp), %eax
	shrl	%eax
	orl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L11
.L10:
	shrl	-20(%rbp)
.L11:
	addl	$1, -8(%rbp)
.L9:
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jb	.L12
	movl	-20(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	rightrot, .-rightrot
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
