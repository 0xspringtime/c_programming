	.file	"wc.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d %d %d\n"
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
	subq	$32, %rsp
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L2
.L6:
	addl	$1, -12(%rbp)
	cmpl	$10, -4(%rbp)
	jne	.L3
	addl	$1, -20(%rbp)
.L3:
	cmpl	$32, -4(%rbp)
	je	.L4
	cmpl	$10, -4(%rbp)
	je	.L4
	cmpl	$9, -4(%rbp)
	jne	.L5
.L4:
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	cmpl	$0, -8(%rbp)
	jne	.L2
	movl	$1, -8(%rbp)
	addl	$1, -16(%rbp)
.L2:
	call	getchar@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L6
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
