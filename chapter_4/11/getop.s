	.file	"getop.c"
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
.L18:
	movl	-124(%rbp), %eax
	subl	$10, %eax
	cmpl	$38, %eax
	ja	.L3
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L5(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L5(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L5:
	.long	.L11-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L10-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L9-.L5
	.long	.L8-.L5
	.long	.L3-.L5
	.long	.L7-.L5
	.long	.L3-.L5
	.long	.L6-.L5
	.long	.L4-.L5
	.text
.L4:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L8:
	call	pop
	movsd	%xmm0, -136(%rbp)
	call	pop
	movapd	%xmm0, %xmm1
	addsd	-136(%rbp), %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L7:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -120(%rbp)
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm2
	subsd	-120(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L9:
	call	pop
	movsd	%xmm0, -136(%rbp)
	call	pop
	movapd	%xmm0, %xmm3
	mulsd	-136(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L6:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -120(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	jp	.L21
	pxor	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	je	.L12
.L21:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm4
	divsd	-120(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L12:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L2
.L10:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -120(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	jp	.L22
	pxor	%xmm0, %xmm0
	ucomisd	-120(%rbp), %xmm0
	je	.L15
.L22:
	call	pop
	cvttsd2sil	%xmm0, %eax
	movsd	-120(%rbp), %xmm0
	cvttsd2sil	%xmm0, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	pxor	%xmm7, %xmm7
	cvtsi2sdl	%eax, %xmm7
	movq	%xmm7, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L15:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L2
.L11:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L2
.L3:
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
	jne	.L18
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
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
	.globl	val
	.align 32
	.type	val, @object
	.size	val, 800
val:
	.zero	800
	.section	.rodata
	.align 8
.LC4:
	.string	"Error: stack full, can't push %g.\n"
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
	jg	.L24
	movl	sp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, sp(%rip)
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	val(%rip), %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L26
.L24:
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L26:
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
	jle	.L28
	movl	sp(%rip), %eax
	subl	$1, %eax
	movl	%eax, sp(%rip)
	movl	sp(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	val(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	jmp	.L29
.L28:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	pxor	%xmm0, %xmm0
.L29:
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	pop, .-pop
	.globl	getop
	.type	getop, @function
getop:
.LFB9:
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
.L31:
	call	getchar@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L31
	cmpl	$9, -24(%rbp)
	je	.L31
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
	jne	.L32
	cmpl	$46, -24(%rbp)
	je	.L32
	cmpl	$45, -24(%rbp)
	je	.L32
	movl	-24(%rbp), %eax
	jmp	.L33
.L32:
	cmpl	$45, -24(%rbp)
	jne	.L34
	call	getchar@PLT
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
	jne	.L35
	cmpl	$46, -20(%rbp)
	je	.L35
	movl	-20(%rbp), %eax
	jmp	.L33
.L35:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-24(%rbp), %edx
	movb	%dl, (%rax)
	movl	buf.0(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.L36
.L34:
	call	getchar@PLT
	movl	%eax, -24(%rbp)
.L36:
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
	je	.L37
	nop
.L38:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	call	getchar@PLT
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
	jne	.L38
.L37:
	cmpl	$46, -24(%rbp)
	jne	.L39
	nop
.L40:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	call	getchar@PLT
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
	jne	.L40
.L39:
	cmpl	$-1, -24(%rbp)
	je	.L41
	movl	-24(%rbp), %eax
	movl	%eax, buf.0(%rip)
.L41:
	movl	$48, %eax
.L33:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	getop, .-getop
	.data
	.align 4
	.type	buf.0, @object
	.size	buf.0, 4
buf.0:
	.long	-1
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
