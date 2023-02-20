	.file	"setbits.c"
	.text
	.section	.rodata
.LC0:
	.string	"%c%c%c%c%c%c%c%c\n"
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	$255, -56(%rbp)
	movl	$6, -52(%rbp)
	movl	-56(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L2
	movl	$49, %r8d
	jmp	.L3
.L2:
	movl	$48, %r8d
.L3:
	movl	-56(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L4
	movl	$49, %edi
	jmp	.L5
.L4:
	movl	$48, %edi
.L5:
	movl	-56(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L6
	movl	$49, %esi
	jmp	.L7
.L6:
	movl	$48, %esi
.L7:
	movl	-56(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L8
	movl	$49, %r9d
	jmp	.L9
.L8:
	movl	$48, %r9d
.L9:
	movl	-56(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L10
	movl	$49, %r10d
	jmp	.L11
.L10:
	movl	$48, %r10d
.L11:
	movl	-56(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L12
	movl	$49, %ecx
	jmp	.L13
.L12:
	movl	$48, %ecx
.L13:
	movl	-56(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L14
	movl	$49, %edx
	jmp	.L15
.L14:
	movl	$48, %edx
.L15:
	movl	-56(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L16
	movl	$49, %eax
	jmp	.L17
.L16:
	movl	$48, %eax
.L17:
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	movl	%r10d, %r8d
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$32, %rsp
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%edx, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	setbits
	andl	$1, %eax
	testl	%eax, %eax
	je	.L18
	movl	$49, %r15d
	jmp	.L19
.L18:
	movl	$48, %r15d
.L19:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%edx, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	setbits
	andl	$2, %eax
	testl	%eax, %eax
	je	.L20
	movl	$49, %r14d
	jmp	.L21
.L20:
	movl	$48, %r14d
.L21:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%edx, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	setbits
	andl	$4, %eax
	testl	%eax, %eax
	je	.L22
	movl	$49, %r13d
	jmp	.L23
.L22:
	movl	$48, %r13d
.L23:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%edx, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	setbits
	andl	$8, %eax
	testl	%eax, %eax
	je	.L24
	movl	$49, -68(%rbp)
	jmp	.L25
.L24:
	movl	$48, -68(%rbp)
.L25:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%edx, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	setbits
	andl	$16, %eax
	testl	%eax, %eax
	je	.L26
	movl	$49, -72(%rbp)
	jmp	.L27
.L26:
	movl	$48, -72(%rbp)
.L27:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%edx, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	setbits
	andl	$32, %eax
	testl	%eax, %eax
	je	.L28
	movl	$49, %r12d
	jmp	.L29
.L28:
	movl	$48, %r12d
.L29:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%edx, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	setbits
	andl	$64, %eax
	testl	%eax, %eax
	je	.L30
	movl	$49, %ebx
	jmp	.L31
.L30:
	movl	$48, %ebx
.L31:
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	%edx, %ecx
	movl	$4, %edx
	movl	$2, %esi
	movl	%eax, %edi
	call	setbits
	andl	$128, %eax
	testl	%eax, %eax
	je	.L32
	movl	$49, %eax
	jmp	.L33
.L32:
	movl	$48, %eax
.L33:
	subq	$8, %rsp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	movl	-68(%rbp), %r9d
	movl	-72(%rbp), %r8d
	movl	%r12d, %ecx
	movl	%ebx, %edx
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$32, %rsp
	movl	$0, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	setbits
	.type	setbits, @function
setbits:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	addl	$1, -24(%rbp)
	movl	-28(%rbp), %eax
	movl	$-1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	andl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	movl	$-1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	andl	-32(%rbp), %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	orl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	setbits, .-setbits
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
