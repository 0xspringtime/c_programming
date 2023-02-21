	.file	"ungets.c"
	.text
	.section	.rodata
.LC0:
	.string	"%s"
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
	subq	$2016, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-2016(%rbp), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	call	getstr
	leaq	-2016(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-2016(%rbp), %rax
	movq	%rax, %rdi
	call	ungetstr
	leaq	-1008(%rbp), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	call	getstr
	leaq	-1008(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	getstr
	.type	getstr, @function
getstr:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L5
.L7:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
.L5:
	cmpl	$1, -28(%rbp)
	jle	.L6
	call	getch
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.L6
	cmpl	$10, -4(%rbp)
	jne	.L7
.L6:
	cmpl	$10, -4(%rbp)
	jne	.L8
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
.L8:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	getstr, .-getstr
	.globl	ungetstr
	.type	ungetstr, @function
ungetstr:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	jmp	.L11
.L12:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	ungetch
.L11:
	cmpl	$0, -4(%rbp)
	jne	.L12
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ungetstr, .-ungetstr
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
	.size	buf, 1000
buf:
	.zero	1000
	.text
	.globl	getch
	.type	getch, @function
getch:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	bufp(%rip), %eax
	testl	%eax, %eax
	jle	.L14
	movl	bufp(%rip), %eax
	subl	$1, %eax
	movl	%eax, bufp(%rip)
	movl	bufp(%rip), %eax
	cltq
	leaq	buf(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	jmp	.L16
.L14:
	call	getchar@PLT
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getch, .-getch
	.section	.rodata
.LC1:
	.string	"ungetch: too many characters"
	.text
	.globl	ungetch
	.type	ungetch, @function
ungetch:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	bufp(%rip), %eax
	cmpl	$999, %eax
	jle	.L18
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L20
.L18:
	movl	bufp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, bufp(%rip)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	cltq
	leaq	buf(%rip), %rdx
	movb	%cl, (%rax,%rdx)
.L20:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ungetch, .-ungetch
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
