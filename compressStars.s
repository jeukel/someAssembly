.LC0:
	.string	"r+"
.LC1:
	.string	"file.txt"
.LC2:
	.string	"%s"
.LC3:
	.string	"w+"
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
	subq	$80, %rsp
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	fopen
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movq	-24(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	fread
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L2:
	cmpl	$40, -4(%rbp)
	jle	.L3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	fopen
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$1640, -8(%rbp)
	jmp	.L4
.L6:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc
	movb	%al, -25(%rbp)
	cmpb	$42, -25(%rbp)
	jne	.L5
	addl	$1, -4(%rbp)
.L5:
	subl	$1, -8(%rbp)
.L4:
	cmpl	$0, -8(%rbp)
	jne	.L6
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$.LC3, %esi
	movl	$.LC1, %edi
	call	fopen
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L7
.L9:
	cmpl	$39, -12(%rbp)
	jne	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$42, %edi
	call	fputc
	addl	$1, -12(%rbp)
	subl	$1, -4(%rbp)
.L7:
	cmpl	$0, -4(%rbp)
	jne	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc

