	.file	"copy_io_esc_replace.c"
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
	jmp	.L2
.L6:
	cmpb	$9, -1(%rbp)
	jne	.L3
	movl	$92, %edi
	call	putchar@PLT
	movl	$116, %edi
	call	putchar@PLT
	jmp	.L2
.L3:
	cmpb	$8, -1(%rbp)
	jne	.L4
	movl	$92, %edi
	call	putchar@PLT
	movl	$98, %edi
	call	putchar@PLT
	jmp	.L2
.L4:
	cmpb	$92, -1(%rbp)
	jne	.L5
	movl	$92, %edi
	call	putchar@PLT
	movl	$92, %edi
	call	putchar@PLT
	jmp	.L2
.L5:
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
.L2:
	call	getchar@PLT
	movb	%al, -1(%rbp)
	cmpb	$-1, -1(%rbp)
	jne	.L6
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
