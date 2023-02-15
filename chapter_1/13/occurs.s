	.file	"occurs.c"
	.text
	.section	.rodata
.LC0:
	.string	"digits ="
.LC1:
	.string	" %d"
	.align 8
.LC2:
	.string	", white space = %d, other = %d\n"
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
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L2
.L3:
	movl	-64(%rbp), %eax
	cltq
	movl	$0, -48(%rbp,%rax,4)
	addl	$1, -64(%rbp)
.L2:
	cmpl	$9, -64(%rbp)
	jle	.L3
	jmp	.L4
.L8:
	cmpl	$47, -52(%rbp)
	jle	.L5
	cmpl	$57, -52(%rbp)
	jg	.L5
	movl	-52(%rbp), %eax
	subl	$48, %eax
	movslq	%eax, %rdx
	movl	-48(%rbp,%rdx,4), %edx
	addl	$1, %edx
	cltq
	movl	%edx, -48(%rbp,%rax,4)
	jmp	.L4
.L5:
	cmpl	$32, -52(%rbp)
	je	.L6
	cmpl	$10, -52(%rbp)
	je	.L6
	cmpl	$9, -52(%rbp)
	jne	.L7
.L6:
	addl	$1, -60(%rbp)
	jmp	.L4
.L7:
	addl	$1, -56(%rbp)
.L4:
	call	getchar@PLT
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.L8
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -64(%rbp)
	jmp	.L9
.L10:
	movl	-64(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -64(%rbp)
.L9:
	cmpl	$9, -64(%rbp)
	jle	.L10
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
