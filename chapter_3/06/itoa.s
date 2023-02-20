	.file	"itoa.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1024, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1995, -1012(%rbp)
	leaq	-1008(%rbp), %rcx
	movl	-1012(%rbp), %eax
	movl	$6, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	int_to_array
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
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
.LFE6:
	.size	main, .-main
	.globl	ilen
	.type	ilen, @function
ilen:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
.L5:
	addl	$1, -4(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L5
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ilen, .-ilen
	.globl	int_to_array
	.type	int_to_array, @function
int_to_array:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	$0, -16(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -12(%rbp)
.L8:
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	negl	%eax
	cmovs	%edx, %eax
	leal	48(%rax), %ecx
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	movl	%edx, %ecx
	sarl	$2, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L8
	cmpl	$0, -12(%rbp)
	jns	.L9
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$45, (%rax)
.L9:
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	ilen
	movl	%eax, -8(%rbp)
	jmp	.L10
.L11:
	movl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -16(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$32, (%rax)
	subl	$1, -24(%rbp)
.L10:
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L11
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	str_reverse
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	int_to_array, .-int_to_array
	.globl	str_reverse
	.type	str_reverse, @function
str_reverse:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-1(%rbp), %eax
	movb	%al, (%rdx)
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cmpl	%eax, -28(%rbp)
	je	.L15
	movl	-28(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	str_reverse
	jmp	.L12
.L15:
	nop
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	str_reverse, .-str_reverse
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
