	.file	"histogram.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Horizontal Histogram\n--------------------"
.LC1:
	.string	"%3d: \t"
	.align 8
.LC2:
	.string	"Vertical Histogram\n------------------"
.LC3:
	.string	"%2d "
.LC4:
	.string	"## "
.LC5:
	.string	"   "
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
	subq	$448, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -440(%rbp)
	movl	$0, -436(%rbp)
	movl	$0, -432(%rbp)
	jmp	.L2
.L3:
	movl	-432(%rbp), %eax
	cltq
	movl	$0, -416(%rbp,%rax,4)
	addl	$1, -432(%rbp)
.L2:
	cmpl	$99, -432(%rbp)
	jle	.L3
	movl	$0, -428(%rbp)
	jmp	.L4
.L10:
	cmpb	$32, -441(%rbp)
	je	.L5
	cmpb	$9, -441(%rbp)
	je	.L5
	cmpb	$10, -441(%rbp)
	jne	.L6
.L5:
	cmpl	$0, -428(%rbp)
	jle	.L4
	movl	-428(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movl	-416(%rbp,%rdx,4), %edx
	addl	$1, %edx
	cltq
	movl	%edx, -416(%rbp,%rax,4)
	movl	-428(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	cmpl	%eax, -436(%rbp)
	jge	.L8
	movl	-428(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, -436(%rbp)
.L8:
	movl	-428(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -440(%rbp)
	jge	.L9
	movl	-428(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -440(%rbp)
.L9:
	movl	$0, -428(%rbp)
	jmp	.L4
.L6:
	addl	$1, -428(%rbp)
.L4:
	call	getchar@PLT
	movb	%al, -441(%rbp)
	cmpb	$-1, -441(%rbp)
	jne	.L10
	movl	-440(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	$36, -416(%rbp,%rax,4)
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -424(%rbp)
	movl	$0, -420(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L11
.L14:
	movl	-424(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -420(%rbp)
	jmp	.L12
.L13:
	movl	$35, %edi
	call	putchar@PLT
	addl	$1, -420(%rbp)
.L12:
	movl	-424(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	cmpl	%eax, -420(%rbp)
	jl	.L13
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -424(%rbp)
.L11:
	movl	-424(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	cmpl	$36, %eax
	jne	.L14
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	-436(%rbp), %eax
	movl	%eax, -420(%rbp)
	jmp	.L15
.L21:
	movl	$0, -424(%rbp)
	jmp	.L16
.L20:
	cmpl	$0, -420(%rbp)
	jne	.L17
	movl	-424(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L18
.L17:
	movl	-424(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	cmpl	%eax, -420(%rbp)
	jg	.L19
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L18
.L19:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L18:
	addl	$1, -424(%rbp)
.L16:
	movl	-424(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %eax
	cmpl	$36, %eax
	jne	.L20
	movl	$10, %edi
	call	putchar@PLT
	subl	$1, -420(%rbp)
.L15:
	cmpl	$0, -420(%rbp)
	jns	.L21
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
