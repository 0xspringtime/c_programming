	.file	"power1k.c"
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
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movl	$0, -20(%rbp)
	jmp	.L2
.L3:
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$-3, %edi
	call	power
	movl	%eax, %ebx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$2, %edi
	call	power
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	movl	%ebx, %ecx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -20(%rbp)
.L2:
	cmpl	$999, -20(%rbp)
	jle	.L3
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	power
	.type	power, @function
power:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$1, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L6
.L7:
	movl	-4(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L6:
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L7
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	power, .-power
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
