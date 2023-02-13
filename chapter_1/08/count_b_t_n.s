	.file	"count_b_t_n.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"\nblanks_nr: %d\ntabs_nr: %d\nnewlines_nr: %d\n"
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
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	cmpb	$32, -13(%rbp)
	jne	.L3
	addl	$1, -12(%rbp)
	jmp	.L2
.L3:
	cmpb	$9, -13(%rbp)
	jne	.L4
	addl	$1, -8(%rbp)
	jmp	.L2
.L4:
	cmpb	$10, -13(%rbp)
	jne	.L2
	addl	$1, -4(%rbp)
.L2:
	call	getchar@PLT
	movb	%al, -13(%rbp)
	cmpb	$-1, -13(%rbp)
	jne	.L5
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %eax
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
