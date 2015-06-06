.LC0:
	.string	"Ingrese la altura del arbol: "
.LC1:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	$0, -4(%rbp)
	jmp	.L3
.L4:
	movl	$42, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L4
	movl	$10, %edi
	call	putchar
	addl	$1, -8(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L5
	movl	$0, %eax
	leave
	ret
.LFE0:
	.size	main, .-main
