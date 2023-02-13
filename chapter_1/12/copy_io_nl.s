	.file	"copy_io_nl.c"
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
	movl	$0, -4(%rbp)
	jmp	.L2
.L4:
	cmpb	$32, -5(%rbp)
	je	.L3
	cmpb	$9, -5(%rbp)
	je	.L3
	cmpb	$10, -5(%rbp)
	je	.L3
	movsbl	-5(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	$1, -4(%rbp)
	jmp	.L2
.L3:
	cmpl	$0, -4(%rbp)
	je	.L2
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -4(%rbp)
.L2:
	call	getchar@PLT
	movb	%al, -5(%rbp)
	cmpb	$-1, -5(%rbp)
	jne	.L4
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
