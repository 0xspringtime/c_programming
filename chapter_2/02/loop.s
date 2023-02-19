	.file	"loop.c"
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
	subq	$1024, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -1016(%rbp)
	movl	$1, -1012(%rbp)
	jmp	.L2
.L6:
	call	getchar@PLT
	movb	%al, -1017(%rbp)
	cmpl	$998, -1016(%rbp)
	jle	.L3
	movl	$0, -1012(%rbp)
	jmp	.L4
.L3:
	cmpb	$10, -1017(%rbp)
	jne	.L5
	movl	$0, -1012(%rbp)
	jmp	.L4
.L5:
	cmpb	$-1, -1017(%rbp)
	jne	.L4
	movl	$0, -1012(%rbp)
.L4:
	movl	-1016(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1016(%rbp)
	cltq
	movzbl	-1017(%rbp), %edx
	movb	%dl, -1008(%rbp,%rax)
.L2:
	cmpl	$0, -1012(%rbp)
	jne	.L6
	movl	-1016(%rbp), %eax
	cltq
	movb	$0, -1008(%rbp,%rax)
	leaq	-1008(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
