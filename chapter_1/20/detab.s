	.file	"detab.c"
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
	jmp	.L2
.L6:
	cmpl	$9, -4(%rbp)
	jne	.L3
	movl	$8, -8(%rbp)
	jmp	.L4
.L5:
	movl	$32, %edi
	call	putchar@PLT
	subl	$1, -8(%rbp)
.L4:
	cmpl	$0, -8(%rbp)
	jne	.L5
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
.L2:
	call	getchar@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L6
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
