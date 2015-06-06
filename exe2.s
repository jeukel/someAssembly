.LC0:
	.string	"Please enter a number: "
.LC1:
	.string	"%lf"
.LC2:
	.string	"The square root is: %f \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	#SETS ENVIRONMENT
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	
	#FIRST USER CALL
	movl	$.LC0, %edi
	movl	$0, %eax
	
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	
	#SECOND USER CALL
	movl	$.LC1, %edi
	movl	$0, %eax
	
	call	__isoc99_scanf
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	call	sqrt
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	
	#THIRD USER CALL
	movl	$.LC2, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	ret
.LFE0:
	.size	main, .-main
