	.file	"getfloat.c"
	.text
	.section	.rodata
.LC1:
	.string	"number: %f\n"
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
	pxor	%xmm0, %xmm0
	movss	%xmm0, -12(%rbp)
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	getfloat
	movss	-12(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
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
	.text
	.globl	getch
	.type	getch, @function
getch:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	bufp(%rip), %eax
	testl	%eax, %eax
	jle	.L5
	movl	bufp(%rip), %eax
	subl	$1, %eax
	movl	%eax, bufp(%rip)
	movl	bufp(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	buf(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.L7
.L5:
	call	getchar@PLT
.L7:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	getch, .-getch
	.section	.rodata
.LC2:
	.string	"ungetch: too many characters"
	.text
	.globl	ungetch
	.type	ungetch, @function
ungetch:
.LFB2:
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
	jle	.L9
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L11
.L9:
	movl	bufp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, bufp(%rip)
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	buf(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rcx,%rdx)
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ungetch, .-ungetch
	.globl	getfloat
	.type	getfloat, @function
getfloat:
.LFB3:
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
.L13:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	call	getch
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L13
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L14
	cmpl	$-1, -28(%rbp)
	je	.L14
	cmpl	$43, -28(%rbp)
	je	.L14
	cmpl	$45, -28(%rbp)
	je	.L14
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	ungetch
	movl	$0, %eax
	jmp	.L15
.L14:
	cmpl	$45, -28(%rbp)
	jne	.L16
	movl	$-1, %eax
	jmp	.L17
.L16:
	movl	$1, %eax
.L17:
	movl	%eax, -20(%rbp)
	cmpl	$43, -28(%rbp)
	je	.L18
	cmpl	$45, -28(%rbp)
	jne	.L19
.L18:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rbx
	call	getch
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cltq
	addq	%rax, %rax
	addq	%rbx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L19
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	ungetch
	cmpl	$1, -20(%rbp)
	jne	.L20
	movl	$43, %eax
	jmp	.L21
.L20:
	movl	$45, %eax
.L21:
	movl	%eax, %edi
	call	ungetch
	movl	$0, %eax
	jmp	.L15
.L19:
	movq	-40(%rbp), %rax
	pxor	%xmm0, %xmm0
	movss	%xmm0, (%rax)
	jmp	.L22
.L23:
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	movss	.LC3(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movl	-28(%rbp), %eax
	subl	$48, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	call	getch
	movl	%eax, -28(%rbp)
.L22:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L23
	cmpl	$46, -28(%rbp)
	jne	.L24
	movl	$1, -24(%rbp)
	jmp	.L25
.L26:
	movl	-28(%rbp), %eax
	subl	$48, %eax
	pxor	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm2, -48(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-24(%rbp), %xmm0
	movq	.LC4(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	-48(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	addl	$1, -24(%rbp)
.L25:
	call	getch
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L24
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L26
.L24:
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ssl	-20(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	cmpl	$-1, -28(%rbp)
	je	.L27
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	ungetch
.L27:
	movl	-28(%rbp), %eax
.L15:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getfloat, .-getfloat
	.section	.rodata
	.align 4
.LC3:
	.long	1092616192
	.align 8
.LC4:
	.long	0
	.long	1076101120
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
