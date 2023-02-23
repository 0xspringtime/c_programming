	.file	"getch.c"
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
	call	getch
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	$-1, %edi
	call	ungetch
	call	getch
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	bufp
	.bss
	.align 4
	.type	bufp, @object
	.size	bufp, 4
bufp:
	.zero	4
	.globl	buf
	.align 32
	.type	buf, @object
	.size	buf, 400
buf:
	.zero	400
	.text
	.globl	getch
	.type	getch, @function
getch:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	bufp(%rip), %eax
	testl	%eax, %eax
	jle	.L4
	movl	bufp(%rip), %eax
	subl	$1, %eax
	movl	%eax, bufp(%rip)
	movl	bufp(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	buf(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L6
.L4:
	call	getchar@PLT
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	getch, .-getch
	.section	.rodata
.LC0:
	.string	"ungetch: too many characters"
	.text
	.globl	ungetch
	.type	ungetch, @function
ungetch:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	bufp(%rip), %eax
	cmpl	$99, %eax
	jle	.L8
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L10
.L8:
	movl	bufp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, bufp(%rip)
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	buf(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ungetch, .-ungetch
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
