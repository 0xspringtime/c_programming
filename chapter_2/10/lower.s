	.file	"lower.c"
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
	movb	$65, -1(%rbp)
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	lower
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	lower
	.type	lower, @function
lower:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$64, -4(%rbp)
	jle	.L4
	cmpb	$90, -4(%rbp)
	jg	.L4
	movzbl	-4(%rbp), %eax
	addl	$32, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	jmp	.L6
.L4:
	movzbl	-4(%rbp), %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	lower, .-lower
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
