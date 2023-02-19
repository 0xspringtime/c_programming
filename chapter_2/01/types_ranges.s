	.file	"types_ranges.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"#################### CHAR #####################"
.LC1:
	.string	"bits: %d\n"
.LC2:
	.string	"unsigned char max: %d\n"
.LC3:
	.string	"signed char min: %d\n"
.LC4:
	.string	"signed char max: %d\n"
	.align 8
.LC5:
	.string	"##################### INT #####################"
.LC6:
	.string	"unsigned int max: %u\n"
.LC7:
	.string	"signed int min: %d\n"
.LC8:
	.string	"signed int max: %d\n"
	.align 8
.LC9:
	.string	"################## SHORT INT ##################"
.LC10:
	.string	"unsigned short int max: %u\n"
.LC11:
	.string	"signed short int min: %d\n"
.LC12:
	.string	"signed short int max: %d\n"
	.align 8
.LC13:
	.string	"################## LONG INT ###################"
.LC14:
	.string	"unsigned long int max: %lu\n"
.LC15:
	.string	"signed long int min: %ld\n"
.LC16:
	.string	"signed long int max: %ld\n"
	.align 8
.LC17:
	.string	"################ LONG LONG INT #################"
	.align 8
.LC18:
	.string	"unsigned long long int max: %llu\n"
	.align 8
.LC19:
	.string	"signed long long int min: %lld\n"
	.align 8
.LC20:
	.string	"signed long long int max: %lld\n"
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
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$8, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$255, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-128, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$127, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$-1, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-2147483648, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$2147483647, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$65535, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-32768, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$32767, %esi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$-1, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movabsq	$-9223372036854775808, %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movabsq	$9223372036854775807, %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$-1, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movabsq	$-9223372036854775808, %rax
	movq	%rax, %rsi
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movabsq	$9223372036854775807, %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
