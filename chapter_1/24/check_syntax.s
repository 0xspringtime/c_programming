	.file	"check_syntax.c"
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
	subq	$10016, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-10016(%rbp), %rax
	movl	$10000, %esi
	movq	%rax, %rdi
	call	get_str
	leaq	-10016(%rbp), %rax
	movq	%rax, %rdi
	call	check_syntax
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
	.globl	get_str
	.type	get_str, @function
get_str:
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
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jge	.L6
	call	getchar@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L7
.L6:
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
	.size	get_str, .-get_str
	.section	.rodata
	.align 8
.LC0:
	.string	"Error: unbalanced parentheses."
.LC1:
	.string	"Error: unbalanced brackets."
.LC2:
	.string	"Error: unbalanced braces."
	.align 8
.LC3:
	.string	"Error: unbalanced single quotes."
	.align 8
.LC4:
	.string	"Error: unbalanced double quotes."
	.align 8
.LC5:
	.string	"Error: block comment not closed."
	.text
	.globl	check_syntax
	.type	check_syntax, @function
check_syntax:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L10
.L27:
	cmpl	$0, -8(%rbp)
	jne	.L11
	cmpl	$0, -12(%rbp)
	jne	.L11
	cmpl	$0, -20(%rbp)
	jne	.L11
	cmpl	$0, -16(%rbp)
	jne	.L11
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L12
	addl	$1, -32(%rbp)
	jmp	.L13
.L12:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L13
	subl	$1, -32(%rbp)
.L13:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L14
	addl	$1, -28(%rbp)
	jmp	.L15
.L14:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$93, %al
	jne	.L15
	subl	$1, -28(%rbp)
.L15:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	jne	.L16
	addl	$1, -24(%rbp)
	jmp	.L11
.L16:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$125, %al
	jne	.L11
	subl	$1, -24(%rbp)
.L11:
	cmpl	$0, -8(%rbp)
	jne	.L17
	cmpl	$0, -12(%rbp)
	jne	.L17
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$39, %al
	jne	.L18
	cmpl	$0, -20(%rbp)
	jne	.L18
	cmpl	$0, -16(%rbp)
	jne	.L18
	movl	$1, -20(%rbp)
	jmp	.L19
.L18:
	cmpl	$0, -20(%rbp)
	je	.L19
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$39, %al
	jne	.L19
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L20
	movl	-4(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L19
.L20:
	movl	$0, -20(%rbp)
.L19:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L21
	cmpl	$0, -20(%rbp)
	jne	.L21
	cmpl	$0, -16(%rbp)
	jne	.L21
	movl	$1, -16(%rbp)
	jmp	.L17
.L21:
	cmpl	$0, -16(%rbp)
	je	.L17
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L17
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L22
	movl	-4(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L17
.L22:
	movl	$0, -16(%rbp)
.L17:
	cmpl	$0, -20(%rbp)
	jne	.L23
	cmpl	$0, -16(%rbp)
	jne	.L23
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L24
	movl	-4(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L24
	cmpl	$0, -8(%rbp)
	jne	.L24
	movl	$1, -12(%rbp)
	jmp	.L25
.L24:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L25
	movl	-4(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L25
	movl	$0, -12(%rbp)
.L25:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L26
	movl	-4(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L26
	cmpl	$0, -12(%rbp)
	jne	.L26
	movl	$1, -8(%rbp)
	jmp	.L23
.L26:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L23
	movl	$0, -8(%rbp)
.L23:
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L27
	cmpl	$0, -32(%rbp)
	je	.L28
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L28:
	cmpl	$0, -28(%rbp)
	je	.L29
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L29:
	cmpl	$0, -24(%rbp)
	je	.L30
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L30:
	cmpl	$0, -20(%rbp)
	je	.L31
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L31:
	cmpl	$0, -16(%rbp)
	je	.L32
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L32:
	cmpl	$0, -12(%rbp)
	je	.L34
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L34:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	check_syntax, .-check_syntax
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
