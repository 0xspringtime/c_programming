	.file	"variables.c"
	.text
	.globl	var
	.data
	.type	var, @object
	.size	var, 1
var:
	.byte	48
	.section	.rodata
.LC1:
	.string	"Error: zero divisor."
.LC2:
	.string	"variable %c: %.3f\n"
.LC3:
	.string	"result: %.8g\n"
.LC4:
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
	pushq	%rbx
	subq	$360, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -352(%rbp)
	jmp	.L2
.L28:
	movl	-348(%rbp), %eax
	subl	$10, %eax
	cmpl	$116, %eax
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
	.long	.L20-.L5
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
	.long	.L19-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L18-.L5
	.long	.L17-.L5
	.long	.L3-.L5
	.long	.L16-.L5
	.long	.L3-.L5
	.long	.L15-.L5
	.long	.L14-.L5
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
	.long	.L13-.L5
	.long	.L12-.L5
	.long	.L3-.L5
	.long	.L11-.L5
	.long	.L3-.L5
	.long	.L10-.L5
	.long	.L9-.L5
	.long	.L8-.L5
	.long	.L3-.L5
	.long	.L3-.L5
	.long	.L7-.L5
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
	.long	.L6-.L5
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
	.long	.L4-.L5
	.text
.L14:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L17:
	call	pop
	movsd	%xmm0, -360(%rbp)
	call	pop
	movapd	%xmm0, %xmm2
	addsd	-360(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L16:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -344(%rbp)
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm3
	subsd	-344(%rbp), %xmm3
	movq	%xmm3, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L18:
	call	pop
	movsd	%xmm0, -360(%rbp)
	call	pop
	movapd	%xmm0, %xmm4
	mulsd	-360(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L15:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -344(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	jp	.L31
	pxor	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	je	.L21
.L31:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm5
	divsd	-344(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L21:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L2
.L19:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -344(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	jp	.L32
	pxor	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	je	.L24
.L32:
	call	pop
	cvttsd2sil	%xmm0, %eax
	movsd	-344(%rbp), %xmm0
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
.L24:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L2
.L13:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -344(%rbp)
	call	pop
	movq	%xmm0, %rax
	movsd	-344(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L4:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L8:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	exp@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L7:
	call	view_head
	jmp	.L2
.L9:
	call	duplicate
	jmp	.L2
.L6:
	call	swap
	jmp	.L2
.L10:
	call	clear
	jmp	.L2
.L12:
	movl	-352(%rbp), %ebx
	leal	1(%rbx), %eax
	movl	%eax, -352(%rbp)
	call	pop
	movq	%xmm0, %rax
	movslq	%ebx, %rdx
	movq	%rax, -336(%rbp,%rdx,8)
	movl	-352(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	-336(%rbp,%rax,8), %rax
	movl	-352(%rbp), %edx
	addl	$96, %edx
	movq	%rax, %xmm0
	movl	%edx, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L2
.L11:
	movzbl	var(%rip), %eax
	movsbl	%al, %eax
	subl	$97, %eax
	cltq
	movq	-336(%rbp,%rax,8), %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L2
.L20:
	call	is_empty
	testl	%eax, %eax
	jne	.L2
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L2
.L3:
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
.L2:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	getop
	movl	%eax, -348(%rbp)
	cmpl	$-1, -348(%rbp)
	jne	.L28
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	movq	-8(%rbp), %rbx
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
.LC5:
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
	jg	.L34
	movl	sp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, sp(%rip)
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stack(%rip), %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L36
.L34:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L36:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	push, .-push
	.section	.rodata
.LC6:
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
	jle	.L38
	movl	sp(%rip), %eax
	subl	$1, %eax
	movl	%eax, sp(%rip)
	movl	sp(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stack(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	jmp	.L39
.L38:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	pxor	%xmm0, %xmm0
.L39:
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	pop, .-pop
	.globl	is_empty
	.type	is_empty, @function
is_empty:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	sp(%rip), %eax
	testl	%eax, %eax
	jle	.L41
	movl	$0, %eax
	jmp	.L42
.L41:
	movl	$1, %eax
.L42:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	is_empty, .-is_empty
	.section	.rodata
.LC7:
	.string	"stack_head: %g\n"
	.text
	.globl	view_head
	.type	view_head, @function
view_head:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	sp(%rip), %eax
	testl	%eax, %eax
	je	.L44
	movl	sp(%rip), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stack(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L46
.L44:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L46:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	view_head, .-view_head
	.globl	duplicate
	.type	duplicate, @function
duplicate:
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
.LFE11:
	.size	duplicate, .-duplicate
	.globl	swap
	.type	swap, @function
swap:
.LFB12:
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
.LFE12:
	.size	swap, .-swap
	.globl	clear
	.type	clear, @function
clear:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
.L50:
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
	jne	.L50
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
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
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	bufp(%rip), %eax
	testl	%eax, %eax
	jle	.L52
	movl	bufp(%rip), %eax
	subl	$1, %eax
	movl	%eax, bufp(%rip)
	movl	bufp(%rip), %eax
	cltq
	leaq	buf(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	jmp	.L54
.L52:
	call	getchar@PLT
.L54:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	getch, .-getch
	.section	.rodata
.LC8:
	.string	"ungetch: too many characters"
	.text
	.globl	ungetch
	.type	ungetch, @function
ungetch:
.LFB15:
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
	jle	.L56
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L58
.L56:
	movl	bufp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, bufp(%rip)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	cltq
	leaq	buf(%rip), %rdx
	movb	%cl, (%rax,%rdx)
.L58:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ungetch, .-ungetch
	.globl	getop
	.type	getop, @function
getop:
.LFB16:
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
.L60:
	call	getch
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L60
	cmpl	$9, -24(%rbp)
	je	.L60
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
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L61
	movl	-24(%rbp), %eax
	movb	%al, var(%rip)
	movl	$97, %eax
	jmp	.L62
.L61:
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
	jne	.L63
	cmpl	$46, -24(%rbp)
	je	.L63
	cmpl	$45, -24(%rbp)
	je	.L63
	movl	-24(%rbp), %eax
	jmp	.L62
.L63:
	cmpl	$45, -24(%rbp)
	jne	.L64
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
	jne	.L65
	cmpl	$46, -20(%rbp)
	je	.L65
	movl	-20(%rbp), %eax
	jmp	.L62
.L65:
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
	jmp	.L66
.L64:
	call	getch
	movl	%eax, -24(%rbp)
.L66:
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
	je	.L67
	nop
.L68:
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
	jne	.L68
.L67:
	cmpl	$46, -24(%rbp)
	jne	.L69
	nop
.L70:
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
	jne	.L70
.L69:
	cmpl	$-1, -24(%rbp)
	je	.L71
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ungetch
.L71:
	movl	$48, %eax
.L62:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	getop, .-getop
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
