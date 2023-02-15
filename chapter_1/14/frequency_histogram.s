	.file	"frequency_histogram.c"
	.text
	.section	.rodata
.LC0:
	.string	"%c: "
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -56(%rbp)
	jmp	.L2
.L3:
	movl	-56(%rbp), %eax
	cltq
	movb	$0, -48(%rbp,%rax)
	addl	$1, -56(%rbp)
.L2:
	cmpl	$35, -56(%rbp)
	jle	.L3
	jmp	.L4
.L6:
	cmpb	$96, -57(%rbp)
	jle	.L5
	cmpb	$122, -57(%rbp)
	jg	.L5
	movsbl	-57(%rbp), %eax
	subl	$97, %eax
	movslq	%eax, %rdx
	movzbl	-48(%rbp,%rdx), %edx
	addl	$1, %edx
	cltq
	movb	%dl, -48(%rbp,%rax)
	jmp	.L4
.L5:
	cmpb	$47, -57(%rbp)
	jle	.L4
	cmpb	$57, -57(%rbp)
	jg	.L4
	movsbl	-57(%rbp), %eax
	subl	$22, %eax
	movslq	%eax, %rdx
	movzbl	-48(%rbp,%rdx), %edx
	addl	$1, %edx
	cltq
	movb	%dl, -48(%rbp,%rax)
.L4:
	call	getchar@PLT
	movb	%al, -57(%rbp)
	cmpb	$-1, -57(%rbp)
	jne	.L6
	movl	$0, -56(%rbp)
	jmp	.L7
.L12:
	cmpl	$25, -56(%rbp)
	jg	.L8
	movl	-56(%rbp), %eax
	addl	$97, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
.L8:
	cmpl	$25, -56(%rbp)
	jle	.L9
	movl	-56(%rbp), %eax
	addl	$22, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L9:
	movl	$0, -52(%rbp)
	jmp	.L10
.L11:
	movl	$35, %edi
	call	putchar@PLT
	addl	$1, -52(%rbp)
.L10:
	movl	-56(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, -52(%rbp)
	jl	.L11
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -56(%rbp)
.L7:
	cmpl	$35, -56(%rbp)
	jle	.L12
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
