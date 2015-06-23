.file	"p3.c"
	.local	old
	.comm	old,60,32
	.local	new
	.comm	new,60,32
	.text
	.globl	initTermios
	.type	initTermios, @function
initTermios:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$old, %esi
	movl	$0, %edi
	call	tcgetattr
	movq	old(%rip), %rax
	movq	%rax, new(%rip)
	movq	old+8(%rip), %rax
	movq	%rax, new+8(%rip)
	movq	old+16(%rip), %rax
	movq	%rax, new+16(%rip)
	movq	old+24(%rip), %rax
	movq	%rax, new+24(%rip)
	movq	old+32(%rip), %rax
	movq	%rax, new+32(%rip)
	movq	old+40(%rip), %rax
	movq	%rax, new+40(%rip)
	movq	old+48(%rip), %rax
	movq	%rax, new+48(%rip)
	movl	old+56(%rip), %eax
	movl	%eax, new+56(%rip)
	movl	new+12(%rip), %eax
	andl	$-3, %eax
	movl	%eax, new+12(%rip)
	movl	new+12(%rip), %edx
	cmpl	$0, -4(%rbp)
	je	.L2
	movl	$8, %eax
	jmp	.L3
.L2:
	movl	$-9, %eax
.L3:
	andl	%edx, %eax
	movl	%eax, new+12(%rip)
	movl	$new, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	tcsetattr
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	initTermios, .-initTermios
	.globl	resetTermios
	.type	resetTermios, @function
resetTermios:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$old, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	tcsetattr
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	resetTermios, .-resetTermios
	.globl	getch_
	.type	getch_, @function
getch_:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	initTermios
	call	getchar
	movb	%al, -1(%rbp)
	call	resetTermios
	movzbl	-1(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	getch_, .-getch_
	.globl	getch
	.type	getch, @function
getch:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	getch_
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	getch, .-getch
	.globl	getche
	.type	getche, @function
getche:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edi
	call	getch_
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	getche, .-getche
	.globl	imprimir
	.type	imprimir, @function
imprimir:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	imprimir, .-imprimir
	.globl	numAleatorio
	.type	numAleatorio, @function
numAleatorio:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$1, -12(%rbp)
	movl	$6, -8(%rbp)
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	movl	-12(%rbp), %eax
	movl	-8(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cvtsi2sd	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	call	rand
	cvtsi2sd	%eax, %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	numAleatorio, .-numAleatorio
	.section	.rodata
	.align 8
.LC8:
	.string	"Por favor presione una tecla: "
.LC9:
	.string	"%s"
	.align 8
.LC10:
	.string	"++++++++========+++++++=========+++++++++==========+++++++++=======+++++++==="
	.align 8
.LC2:
	.string	".... | .... | ....\n.... | .... | ....\n------------------\n.... | XXXX | ....\n.... | XXXX | ....\n------------------\n.... | .... | ....\n.... | .... | ....\n"
	.align 8
.LC3:
	.string	".... | .... | XXXX\n.... | .... | XXXX\n------------------\n.... | .... | ....\n.... | .... | ....\n------------------\nXXXX | .... | ....\nXXXX | .... | ....\n"
	.align 8
.LC4:
	.string	".... | .... | XXXX\n.... | .... | XXXX\n------------------\n.... | XXXX | ....\n.... | XXXX | ....\n------------------\nXXXX | .... | ....\nXXXX | .... | ....\n"
	.align 8
.LC5:
	.string	"XXXX | .... | XXXX\nXXXX | .... | XXXX\n------------------\n.... | .... | ....\n.... | .... | ....\n------------------\nXXXX | .... | XXXX\nXXXX | .... | XXXX\n"
	.align 8
.LC6:
	.string	"XXXX | .... | XXXX\nXXXX | .... | XXXX\n------------------\n.... | XXXX | ....\n.... | XXXX | ....\n------------------\nXXXX | .... | XXXX\nXXXX | .... | XXXX\n"
	.align 8
.LC7:
	.string	"XXXX | XXXX | XXXX\nXXXX | XXXX | XXXX\n------------------\nXXXX | XXXX | XXXX\nXXXX | XXXX | XXXX\n------------------\nXXXX | XXXX | XXXX\nXXXX | XXXX | XXXX\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1000, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$50, -1000(%rbp)
	leaq	-992(%rbp), %rdx
	movl	$.LC2, %eax
	movl	$19, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movzbl	(%rax), %ecx
	movb	%cl, (%rdx)
	addq	$1, %rdx
	addq	$1, %rax
	leaq	-832(%rbp), %rdx
	movl	$.LC3, %eax
	movl	$19, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movzbl	(%rax), %ecx
	movb	%cl, (%rdx)
	addq	$1, %rdx
	addq	$1, %rax
	leaq	-672(%rbp), %rdx
	movl	$.LC4, %eax
	movl	$19, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movzbl	(%rax), %ecx
	movb	%cl, (%rdx)
	addq	$1, %rdx
	addq	$1, %rax
	leaq	-512(%rbp), %rdx
	movl	$.LC5, %eax
	movl	$19, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movzbl	(%rax), %ecx
	movb	%cl, (%rdx)
	addq	$1, %rdx
	addq	$1, %rax
	leaq	-352(%rbp), %rdx
	movl	$.LC6, %eax
	movl	$19, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movzbl	(%rax), %ecx
	movb	%cl, (%rdx)
	addq	$1, %rdx
	addq	$1, %rax
	leaq	-192(%rbp), %rdx
	movl	$.LC7, %eax
	movl	$19, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movzbl	(%rax), %ecx
	movb	%cl, (%rdx)
	addq	$1, %rdx
	addq	$1, %rax
	jmp	.L15
.L22:
	subl	$1, -1000(%rbp)
	movl	$.LC8, %edi
	call	puts
	call	getch
	movb	%al, -1001(%rbp)
	call	numAleatorio
	movl	%eax, -996(%rbp)
	cmpl	$1, -996(%rbp)
	jne	.L16
	leaq	-992(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L16:
	cmpl	$2, -996(%rbp)
	jne	.L17
	leaq	-832(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L17:
	cmpl	$3, -996(%rbp)
	jne	.L18
	leaq	-672(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L18:
	cmpl	$4, -996(%rbp)
	jne	.L19
	leaq	-512(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L19:
	cmpl	$5, -996(%rbp)
	jne	.L20
	leaq	-352(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L20:
	cmpl	$6, -996(%rbp)
	jne	.L21
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
.L21:
	movl	$.LC10, %edi
	call	puts
.L15:
	cmpl	$0, -1000(%rbp)
	jg	.L22
	movl	$0, %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L24
	call	__stack_chk_fail
.L24:
	addq	$1000, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1105199104
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
