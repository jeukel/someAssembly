	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
Ltmp6:
	.cfi_offset %rbx, -24
	leaq	L_str(%rip), %rdi
	callq	_puts
	leaq	L_.str1(%rip), %rbx
	leaq	-12(%rbp), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_scanf
	leaq	L_str15(%rip), %rdi
	callq	_puts
	leaq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	_scanf
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	cmpl	$20, %eax
	jg	LBB0_2
## BB#1:
	cmpl	$1, %ecx
	je	LBB0_4
LBB0_2:
	cmpl	$12, %ecx
	jne	LBB0_5
## BB#3:
	cmpl	$22, %eax
	jl	LBB0_5
LBB0_4:
	leaq	L_str27(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_5:
	cmpl	$22, %eax
	jl	LBB0_7
## BB#6:
	cmpl	$1, %ecx
	je	LBB0_9
LBB0_7:
	cmpl	$2, %ecx
	jne	LBB0_10
## BB#8:
	cmpl	$21, %eax
	jg	LBB0_10
LBB0_9:
	leaq	L_str26(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_10:
	cmpl	$22, %eax
	jl	LBB0_12
## BB#11:
	cmpl	$2, %ecx
	je	LBB0_14
LBB0_12:
	cmpl	$3, %ecx
	jne	LBB0_15
## BB#13:
	cmpl	$20, %eax
	jg	LBB0_15
LBB0_14:
	leaq	L_str25(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_15:
	cmpl	$21, %eax
	jl	LBB0_17
## BB#16:
	cmpl	$3, %ecx
	je	LBB0_19
LBB0_17:
	cmpl	$4, %ecx
	jne	LBB0_20
## BB#18:
	cmpl	$20, %eax
	jg	LBB0_20
LBB0_19:
	leaq	L_str24(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_20:
	cmpl	$21, %eax
	jl	LBB0_22
## BB#21:
	cmpl	$4, %ecx
	je	LBB0_24
LBB0_22:
	cmpl	$5, %ecx
	jne	LBB0_25
## BB#23:
	cmpl	$21, %eax
	jg	LBB0_25
LBB0_24:
	leaq	L_str23(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_25:
	cmpl	$22, %eax
	jl	LBB0_27
## BB#26:
	cmpl	$5, %ecx
	je	LBB0_29
LBB0_27:
	cmpl	$6, %ecx
	jne	LBB0_30
## BB#28:
	cmpl	$21, %eax
	jg	LBB0_30
LBB0_29:
	leaq	L_str22(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_30:
	cmpl	$22, %eax
	jl	LBB0_32
## BB#31:
	cmpl	$6, %ecx
	je	LBB0_34
LBB0_32:
	cmpl	$7, %ecx
	jne	LBB0_35
## BB#33:
	cmpl	$22, %eax
	jg	LBB0_35
LBB0_34:
	leaq	L_str21(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_35:
	cmpl	$23, %eax
	jl	LBB0_37
## BB#36:
	cmpl	$7, %ecx
	je	LBB0_39
LBB0_37:
	cmpl	$8, %ecx
	jne	LBB0_40
## BB#38:
	cmpl	$22, %eax
	jg	LBB0_40
LBB0_39:
	leaq	L_str20(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_40:
	cmpl	$23, %eax
	jl	LBB0_42
## BB#41:
	cmpl	$8, %ecx
	je	LBB0_44
LBB0_42:
	cmpl	$9, %ecx
	jne	LBB0_45
## BB#43:
	cmpl	$22, %eax
	jg	LBB0_45
LBB0_44:
	leaq	L_str19(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_45:
	cmpl	$23, %eax
	jl	LBB0_47
## BB#46:
	cmpl	$9, %ecx
	je	LBB0_49
LBB0_47:
	cmpl	$10, %ecx
	jne	LBB0_50
## BB#48:
	cmpl	$22, %eax
	jg	LBB0_50
LBB0_49:
	leaq	L_str18(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_50:
	cmpl	$23, %eax
	jl	LBB0_52
## BB#51:
	cmpl	$10, %ecx
	je	LBB0_54
LBB0_52:
	cmpl	$11, %ecx
	jne	LBB0_55
## BB#53:
	cmpl	$21, %eax
	jg	LBB0_55
LBB0_54:
	leaq	L_str17(%rip), %rdi
	callq	_puts
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
LBB0_55:
	cmpl	$22, %eax
	jl	LBB0_57
## BB#56:
	cmpl	$11, %ecx
	je	LBB0_59
LBB0_57:
	cmpl	$12, %ecx
	jne	LBB0_60
## BB#58:
	cmpl	$21, %eax
	jg	LBB0_60
LBB0_59:
	leaq	L_str16(%rip), %rdi
	callq	_puts
LBB0_60:
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str1:                                ## @.str1
	.asciz	"%d"

	.align	4                       ## @str
L_str:
	.asciz	"Ingrese el numero del mes de su nacimiento:"

	.align	4                       ## @str15
L_str15:
	.asciz	"Ingrese el dia de su nacimiento:"

	.align	4                       ## @str16
L_str16:
	.asciz	"\n Usted es Sagitario "

	.align	4                       ## @str17
L_str17:
	.asciz	"\n Usted es Escorpio "

	.align	4                       ## @str18
L_str18:
	.asciz	"\n Usted es Libra "

	.align	4                       ## @str19
L_str19:
	.asciz	"\n Usted es Virgo "

L_str20:                                ## @str20
	.asciz	"\n Usted es Leo "

	.align	4                       ## @str21
L_str21:
	.asciz	"\n Usted es Cancer "

	.align	4                       ## @str22
L_str22:
	.asciz	"\n Usted es Geminis "

	.align	4                       ## @str23
L_str23:
	.asciz	"\n Usted es Tauro "

	.align	4                       ## @str24
L_str24:
	.asciz	"\n Usted es Aries "

	.align	4                       ## @str25
L_str25:
	.asciz	"\n Usted es Piscis "

	.align	4                       ## @str26
L_str26:
	.asciz	"\n Usted es Acuario "

	.align	4                       ## @str27
L_str27:
	.asciz	"\n Usted es Capricornio "


.subsections_via_symbols
