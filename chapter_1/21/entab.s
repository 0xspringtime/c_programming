	.file	"entab.c"
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
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L7:
	addl	$1, -12(%rbp)
	cmpl	$32, -4(%rbp)
	jne	.L4
	addl	$1, -8(%rbp)
	movl	-12(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L2
	cmpl	$1, -8(%rbp)
	jbe	.L2
	movl	$9, %edi
	call	putchar@PLT
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	$32, %edi
	call	putchar@PLT
	subl	$1, -8(%rbp)
.L4:
	cmpl	$0, -8(%rbp)
	jne	.L5
	cmpl	$10, -4(%rbp)
	jne	.L6
	movl	$0, -12(%rbp)
.L6:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
.L2:
	call	getchar@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L7
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
