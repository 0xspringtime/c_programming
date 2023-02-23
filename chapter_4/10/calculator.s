	.file	"calculator.c"
	.text
	.globl	var
	.data
	.type	var, @object
	.size	var, 1
var:
	.byte	48
	.globl	line
	.bss
	.align 32
	.type	line, @object
	.size	line, 1000
line:
	.zero	1000
	.globl	line_i
	.align 4
	.type	line_i, @object
	.size	line_i, 4
line_i:
	.zero	4
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
.L30:
	movl	$0, line_i(%rip)
	jmp	.L3
.L29:
	movl	-348(%rbp), %eax
	subl	$10, %eax
	cmpl	$116, %eax
	ja	.L4
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L6(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L6(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L6:
	.long	.L21-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L20-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L19-.L6
	.long	.L18-.L6
	.long	.L4-.L6
	.long	.L17-.L6
	.long	.L4-.L6
	.long	.L16-.L6
	.long	.L15-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L14-.L6
	.long	.L13-.L6
	.long	.L4-.L6
	.long	.L12-.L6
	.long	.L4-.L6
	.long	.L11-.L6
	.long	.L10-.L6
	.long	.L9-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L8-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L7-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L4-.L6
	.long	.L5-.L6
	.text
.L15:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L3
.L18:
	call	pop
	movsd	%xmm0, -360(%rbp)
	call	pop
	movapd	%xmm0, %xmm2
	addsd	-360(%rbp), %xmm2
	movq	%xmm2, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L3
.L17:
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
	jmp	.L3
.L19:
	call	pop
	movsd	%xmm0, -360(%rbp)
	call	pop
	movapd	%xmm0, %xmm4
	mulsd	-360(%rbp), %xmm4
	movq	%xmm4, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L3
.L16:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -344(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	jp	.L33
	pxor	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	je	.L22
.L33:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm5
	divsd	-344(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L3
.L22:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L3
.L20:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, -344(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	jp	.L34
	pxor	%xmm0, %xmm0
	ucomisd	-344(%rbp), %xmm0
	je	.L25
.L34:
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
	jmp	.L3
.L25:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L3
.L14:
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
	jmp	.L3
.L5:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	sin@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L3
.L9:
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	exp@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L3
.L8:
	call	view_head
	jmp	.L3
.L10:
	call	duplicate
	jmp	.L3
.L7:
	call	swap
	jmp	.L3
.L11:
	call	clear
	jmp	.L3
.L13:
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
	jmp	.L3
.L12:
	movzbl	var(%rip), %eax
	movsbl	%al, %eax
	subl	$97, %eax
	cltq
	movq	-336(%rbp,%rax,8), %rax
	movq	%rax, %xmm0
	call	push
	jmp	.L3
.L21:
	call	is_empty
	testl	%eax, %eax
	jne	.L3
	call	pop
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L3
.L4:
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
.L3:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	getop
	movl	%eax, -348(%rbp)
	cmpl	$0, -348(%rbp)
	jne	.L29
.L2:
	movl	$1000, %esi
	leaq	line(%rip), %rax
	movq	%rax, %rdi
	call	get_line
	testl	%eax, %eax
	jne	.L30
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
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
	jg	.L36
	movl	sp(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, sp(%rip)
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stack(%rip), %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rdx,%rax)
	jmp	.L38
.L36:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L38:
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
	jle	.L40
	movl	sp(%rip), %eax
	subl	$1, %eax
	movl	%eax, sp(%rip)
	movl	sp(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	stack(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	jmp	.L41
.L40:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	pxor	%xmm0, %xmm0
.L41:
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
	jle	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movl	$1, %eax
.L44:
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
	je	.L46
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
	jmp	.L48
.L46:
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L48:
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
.L52:
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
	jne	.L52
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	clear, .-clear
	.globl	get_line
	.type	get_line, @function
get_line:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L54
.L56:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L54:
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	-4(%rbp), %edx
	cmpl	%eax, %edx
	jnb	.L55
	call	getchar@PLT
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L55
	cmpl	$10, -8(%rbp)
	jne	.L56
.L55:
	cmpl	$10, -8(%rbp)
	jne	.L57
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L57:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	get_line, .-get_line
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
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -12(%rbp)
	nop
.L60:
	movl	line_i(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, line_i(%rip)
	cltq
	leaq	line(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L60
	cmpl	$9, -8(%rbp)
	je	.L60
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L61
	movl	-8(%rbp), %eax
	movb	%al, var(%rip)
	movl	$97, %eax
	jmp	.L62
.L61:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L63
	cmpl	$46, -8(%rbp)
	je	.L63
	cmpl	$45, -8(%rbp)
	je	.L63
	movl	-8(%rbp), %eax
	jmp	.L62
.L63:
	cmpl	$45, -8(%rbp)
	jne	.L64
	movl	line_i(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, line_i(%rip)
	cltq
	leaq	line(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -4(%rbp)
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L65
	cmpl	$46, -4(%rbp)
	je	.L65
	movl	-4(%rbp), %eax
	jmp	.L62
.L65:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	line_i(%rip), %eax
	subl	$1, %eax
	movl	%eax, line_i(%rip)
	jmp	.L66
.L64:
	movl	line_i(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, line_i(%rip)
	cltq
	leaq	line(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
.L66:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
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
	movq	(%rax), %rcx
	movl	line_i(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, line_i(%rip)
	cltq
	leaq	line(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L68
.L67:
	cmpl	$46, -8(%rbp)
	jne	.L69
	nop
.L70:
	call	__ctype_b_loc@PLT
	movq	(%rax), %rcx
	movl	line_i(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, line_i(%rip)
	cltq
	leaq	line(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-8(%rbp), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	movsbq	%al, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L70
.L69:
	movl	line_i(%rip), %eax
	subl	$1, %eax
	movl	%eax, line_i(%rip)
	movl	$48, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	getop, .-getop
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
