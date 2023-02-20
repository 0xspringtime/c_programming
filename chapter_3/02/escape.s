	.file	"escape.c"
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
	subq	$2016, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-2016(%rbp), %rax
	movl	$1000, %esi
	movq	%rax, %rdi
	call	get_line
	leaq	-2016(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-2016(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	escape
	leaq	-1008(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-2016(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	unescape
	leaq	-1008(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
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
	.globl	get_line
	.type	get_line, @function
get_line:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L5
.L7:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -8(%rbp)
.L5:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	-8(%rbp), %edx
	cmpl	%eax, %edx
	jnb	.L6
	call	getchar@PLT
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	je	.L6
	cmpl	$10, -4(%rbp)
	jne	.L7
.L6:
	cmpl	$10, -4(%rbp)
	jne	.L8
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movb	%dl, (%rax)
.L8:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	get_line, .-get_line
	.globl	escape
	.type	escape, @function
escape:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L11
.L26:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$7, %eax
	cmpl	$85, %eax
	ja	.L12
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L14(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L14(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L14:
	.long	.L24-.L14
	.long	.L23-.L14
	.long	.L22-.L14
	.long	.L21-.L14
	.long	.L20-.L14
	.long	.L19-.L14
	.long	.L18-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L17-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L16-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L15-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L12-.L14
	.long	.L13-.L14
	.text
.L24:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$97, (%rax)
	jmp	.L25
.L23:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$98, (%rax)
	jmp	.L25
.L19:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$102, (%rax)
	jmp	.L25
.L21:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$110, (%rax)
	jmp	.L25
.L18:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$114, (%rax)
	jmp	.L25
.L22:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$116, (%rax)
	jmp	.L25
.L20:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$110, (%rax)
	jmp	.L25
.L13:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	jmp	.L25
.L15:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$63, (%rax)
	jmp	.L25
.L16:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$39, (%rax)
	jmp	.L25
.L17:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$34, (%rax)
	jmp	.L25
.L12:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	nop
.L25:
	addl	$1, -8(%rbp)
	addl	$1, -4(%rbp)
.L11:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L26
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L28:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	escape, .-escape
	.globl	unescape
	.type	unescape, @function
unescape:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L30
.L47:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$92, %eax
	jne	.L31
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$34, %eax
	cmpl	$84, %eax
	ja	.L32
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L34(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L34(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L34:
	.long	.L44-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L43-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L42-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L41-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L40-.L34
	.long	.L39-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L38-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L37-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L32-.L34
	.long	.L36-.L34
	.long	.L32-.L34
	.long	.L35-.L34
	.long	.L32-.L34
	.long	.L33-.L34
	.text
.L40:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$7, (%rax)
	jmp	.L45
.L39:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$8, (%rax)
	jmp	.L45
.L38:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$12, (%rax)
	jmp	.L45
.L37:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$10, (%rax)
	jmp	.L45
.L36:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$13, (%rax)
	jmp	.L45
.L35:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$9, (%rax)
	jmp	.L45
.L33:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$10, (%rax)
	jmp	.L45
.L41:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	jmp	.L45
.L42:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$63, (%rax)
	jmp	.L45
.L43:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$39, (%rax)
	jmp	.L45
.L44:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$34, (%rax)
	jmp	.L45
.L32:
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$92, (%rax)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	nop
.L45:
	jmp	.L46
.L31:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	nop
.L46:
	addl	$1, -8(%rbp)
	addl	$1, -4(%rbp)
.L30:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L47
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L49
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L49:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	unescape, .-unescape
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
