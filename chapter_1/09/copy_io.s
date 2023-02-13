	.file	"copy_io.c"
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
.L5:
	cmpb	$32, -1(%rbp)
	jne	.L3
	cmpb	$32, -2(%rbp)
	je	.L4
.L3:
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
.L4:
	movzbl	-1(%rbp), %eax
	movb	%al, -2(%rbp)
.L2:
	call	getchar@PLT
	movb	%al, -1(%rbp)
	cmpb	$-1, -1(%rbp)
	jne	.L5
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
