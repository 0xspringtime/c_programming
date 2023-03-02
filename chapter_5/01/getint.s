	.file	"getint.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	getint
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	call	printbuf
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
.LFE0:
	.size	main, .-main
	.globl	bufp
	.bss
	.align 4
	.type	bufp, @object
	.size	bufp, 4
bufp:
	.zero	4
	.globl	buf
	.align 32
	.type	buf, @object
	.size	buf, 400
buf:
	.zero	400
	.section	.rodata
.LC1:
	.string	"Buffer: [ "
.LC2:
	.string	"'%c', "
.LC3:
	.string	"'%c' "
.LC4:
	.string	"]"
	.text
	.globl	printbuf
	.type	printbuf, @function
printbuf:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	bufp(%rip), %eax
	testl	%eax, %eax
	je	.L14
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	bufp(%rip), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L6
.L13:
	cmpl	$0, -4(%rbp)
	je	.L7
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	buf(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	je	.L8
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	buf(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L9
.L8:
	movl	$46, %eax
.L9:
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L7:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	buf(%rip), %rax
	movl	(%rdx,%rax), %eax
	cmpl	$10, %eax
	je	.L11
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	buf(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L12
.L11:
	movl	$46, %eax
.L12:
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L10:
	subl	$1, -4(%rbp)
.L6:
	cmpl	$0, -4(%rbp)
	jns	.L13
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	printbuf, .-printbuf
	.globl	getch
	.type	getch, @function
getch:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	bufp(%rip), %eax
	testl	%eax, %eax
	jle	.L16
	movl	bufp(%rip), %eax
	subl	$1, %eax
	movl	%eax, bufp(%rip)
	movl	bufp(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	buf(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L18
.L16:
	call	getchar@PLT
.L18:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	getch, .-getch
	.section	.rodata
.LC5:
	.string	"ungetch: too many characters"
	.text
	.globl	ungetch
	.type	ungetch, @function
ungetch:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	bufp(%rip), %eax
	cmpl	$99, %eax
	jle	.L20
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L22
.L20:
	movl	bufp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, bufp(%rip)
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	buf(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
.L22:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ungetch, .-ungetch
	.globl	getint
	.type	getint, @function
getint:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	nop
.L24:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	call	getch
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L24
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L25
	cmpl	$-1, -24(%rbp)
	je	.L25
	cmpl	$43, -24(%rbp)
	je	.L25
	cmpl	$45, -24(%rbp)
	je	.L25
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ungetch
	movl	$0, %eax
	jmp	.L26
.L25:
	cmpl	$45, -24(%rbp)
	jne	.L27
	movl	$-1, %eax
	jmp	.L28
.L27:
	movl	$1, %eax
.L28:
	movl	%eax, -20(%rbp)
	cmpl	$43, -24(%rbp)
	je	.L29
	cmpl	$45, -24(%rbp)
	jne	.L30
.L29:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	call	getch
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L30
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ungetch
	cmpl	$1, -20(%rbp)
	jne	.L31
	movl	$43, %eax
	jmp	.L32
.L31:
	movl	$45, %eax
.L32:
	movl	%eax, %edi
	call	ungetch
	movl	$0, %eax
	jmp	.L26
.L30:
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L33
.L34:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	subl	$48, %eax
	addl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	call	getch
	movl	%eax, -24(%rbp)
.L33:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L34
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	imull	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	cmpl	$-1, -24(%rbp)
	je	.L35
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ungetch
.L35:
	movl	-24(%rbp), %eax
.L26:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	getint, .-getint
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
