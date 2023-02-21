	.file	"math.c"
	.text
	.section	.rodata
.LC1:
	.string	"Error: zero divisor."
.LC2:
	.string	"result: %.8g\n"
.LC3:
	.string	"Error: unknown command %s.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	jmp	.L2
.L29:
	cmpl	$48, -124(%rbp)
	jg	.L3
	cmpl	$10, -124(%rbp)
	jge	.L4
	jmp	.L5
.L22:
	movl	-124(%rbp), %eax
	subl	$94, %eax
	cmpl	$32, %eax
	ja	.L5
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L7(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L7(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L13-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L12-.L7
	.long	.L11-.L7
	.long	.L10-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L9-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L8-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L6-.L7
	.text
.L4:
	movl	-124(%rbp), %eax
	subl	$10, %eax
	cmpl	$38, %eax
	ja	.L5
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L15(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L15(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L15:
	.long	.L21-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L20-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L5-.L15
	.long	.L19-.L15
	.long	.L18-.L15
	.long	.L5-.L15
	.long	.L17-.L15
	.long	.L5-.L15
	.long	.L16-.L15
	.long	.L14-.L15
	.text
.L3:
	cmpl	$126, -124(%rbp)
	jg	.L5
	cmpl	$94, -124(%rbp)
	jge	.L22
	jmp	.L5
.L14:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L18:
	call	pop
	movsd	%xmm0, -136(%rbp)
	call	pop
	movapd	%xmm0, %xmm2
	addsd	-136(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L17:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -120(%rbp)
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm3
	subsd	-120(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L19:
	call	pop
	movsd	%xmm0, -136(%rbp)
	call	pop
	movapd	%xmm0, %xmm4
	mulsd	-136(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L16:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -120(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	jp	.L32
	pxor	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	je	.L23
.L32:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm5
	divsd	-120(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L23:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L2
.L20:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -120(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	jp	.L33
	pxor	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	je	.L26
.L33:
	call	pop
	cvttsd2sil	%xmm0, %eax
	movsd	-120(%rbp), %xmm0
	cvttsd2sil	%xmm0, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L26:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L2
.L13:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -120(%rbp)
	call	pop
	movq	%xmm0, %rax
	movsd	-120(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L6:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L10:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	exp@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L9:
	call	view_head
	jmp	.L2
.L11:
	call	duplicate
	jmp	.L2
.L8:
	call	swap
	jmp	.L2
.L12:
	call	clear
	jmp	.L2
.L21:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L2
.L5:
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
.L2:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	getop
	movl	%eax, -124(%rbp)
	cmpl	$-1, -124(%rbp)
	jne	.L29
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	sp
	.bss
	.align 4
	.type	sp, @object
	.size	sp, 4
sp:
	.zero	4
	.globl	stack
	.align 32
	.type	stack, @object
	.size	stack, 800
stack:
	.zero	800
	.section	.rodata
.LC4:
	.string	"Error: stack full."
	.text
	.globl	push
	.type	push, @function
push:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	movl	sp(%rip), %eax
	cmpl	$99, %eax
	jg	.L35
	movl	sp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, sp(%rip)
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stack(%rip), %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L37
.L35:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L37:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	push, .-push
	.section	.rodata
.LC5:
	.string	"Error: stack empty."
	.text
	.globl	pop
	.type	pop, @function
pop:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	sp(%rip), %eax
	testl	%eax, %eax
	jle	.L39
	movl	sp(%rip), %eax
	subl	$1, %eax
	movl	%eax, sp(%rip)
	movl	sp(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stack(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	jmp	.L40
.L39:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	pxor	%xmm0, %xmm0
.L40:
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	pop, .-pop
	.section	.rodata
.LC6:
	.string	"stack_head: %g\n"
	.text
	.globl	view_head
	.type	view_head, @function
view_head:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	sp(%rip), %eax
	testl	%eax, %eax
	je	.L42
	movl	sp(%rip), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stack(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L44
.L42:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L44:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	view_head, .-view_head
	.globl	duplicate
	.type	duplicate, @function
duplicate:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	push
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	push
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	duplicate, .-duplicate
	.globl	swap
	.type	swap, @function
swap:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	call	push
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	push
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	swap, .-swap
	.globl	clear
	.type	clear, @function
clear:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
.L48:
	movl	sp(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stack(%rip), %rax
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rdx,%rax)
	movl	sp(%rip), %eax
	leal	-1(%rax), %edx
	movl	%edx, sp(%rip)
	testl	%eax, %eax
	jne	.L48
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	clear, .-clear
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
	.size	buf, 100
buf:
	.zero	100
	.text
	.globl	getch
	.type	getch, @function
getch:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	bufp(%rip), %eax
	testl	%eax, %eax
	jle	.L50
	movl	bufp(%rip), %eax
	subl	$1, %eax
	movl	%eax, bufp(%rip)
	movl	bufp(%rip), %eax
	cltq
	leaq	buf(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	jmp	.L52
.L50:
	call	getchar@PLT
.L52:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	getch, .-getch
	.section	.rodata
.LC7:
	.string	"ungetch: too many characters"
	.text
	.globl	ungetch
	.type	ungetch, @function
ungetch:
.LFB14:
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
	jle	.L54
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L56
.L54:
	movl	bufp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, bufp(%rip)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	cltq
	leaq	buf(%rip), %rdx
	movb	%cl, (%rax,%rdx)
.L56:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ungetch, .-ungetch
	.globl	getop
	.type	getop, @function
getop:
.LFB15:
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
	movl	$0, -28(%rbp)
	nop
.L58:
	call	getch
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L58
	cmpl	$9, -24(%rbp)
	je	.L58
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
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
	jne	.L59
	cmpl	$46, -24(%rbp)
	je	.L59
	cmpl	$45, -24(%rbp)
	je	.L59
	movl	-24(%rbp), %eax
	jmp	.L60
.L59:
	cmpl	$45, -24(%rbp)
	jne	.L61
	call	getch
	movl	%eax, -20(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L62
	cmpl	$46, -20(%rbp)
	je	.L62
	movl	-20(%rbp), %eax
	jmp	.L60
.L62:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movb	%dl, (%rax)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ungetch
	jmp	.L63
.L61:
	call	getch
	movl	%eax, -24(%rbp)
.L63:
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
	je	.L64
	nop
.L65:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	call	getch
	movl	%eax, -24(%rbp)
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L65
.L64:
	cmpl	$46, -24(%rbp)
	jne	.L66
	nop
.L67:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	call	getch
	movl	%eax, -24(%rbp)
	addl	$1, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L67
.L66:
	cmpl	$-1, -24(%rbp)
	je	.L68
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ungetch
.L68:
	movl	$48, %eax
.L60:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	getop, .-getop
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
