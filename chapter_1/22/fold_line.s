	.file	"fold_line.c"
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
	subq	$20016, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	jmp	.L2
.L3:
	leaq	-10016(%rbp), %rcx
	leaq	-20016(%rbp), %rax
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fold_line
	leaq	-10016(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L2:
	leaq	-20016(%rbp), %rax
	movl	$10000, %esi
	movq	%rax, %rdi
	call	get_line
	testl	%eax, %eax
	jg	.L3
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	get_line
	.type	get_line, @function
get_line:
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
	movl	$0, -4(%rbp)
	jmp	.L7
.L9:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
.L7:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -4(%rbp)
	jge	.L8
	call	getchar@PLT
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L8
	cmpl	$10, -8(%rbp)
	jne	.L9
.L8:
	cmpl	$10, -8(%rbp)
	jne	.L10
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
.L10:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	get_line, .-get_line
	.globl	fold_line
	.type	fold_line, @function
fold_line:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L13
.L21:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-16(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L14
	movl	$0, -12(%rbp)
.L14:
	addl	$1, -12(%rbp)
	movl	-52(%rbp), %eax
	subl	$10, %eax
	cmpl	%eax, -12(%rbp)
	jne	.L15
	movl	$1, -8(%rbp)
.L15:
	cmpl	$0, -8(%rbp)
	je	.L16
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L17
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	jne	.L16
.L17:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
.L16:
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L18
	cmpl	$0, -4(%rbp)
	je	.L19
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$10, (%rax)
	movl	-16(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L20
.L19:
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$45, (%rax)
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$10, (%rax)
	movl	$0, -12(%rbp)
.L20:
	movl	$0, -8(%rbp)
.L18:
	addl	$1, -20(%rbp)
	addl	$1, -16(%rbp)
.L13:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L21
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fold_line, .-fold_line
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
