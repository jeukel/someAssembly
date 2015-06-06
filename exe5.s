.LC0:
	.string	"r+" #String que se utiliza para abrir un archivo para lectura
.LC1:
	.string	"file.txt" #Archivo que vamos a leer
.LC2:
	.string	"%s" #String que se utiliza para formateo
.LC3:
	.string	"w+" #String que se utiliza para crear un archivo
	.text
	.globl	main
	.type	main, @function
main:
.LFB0: #Abrimos el archivo, declaramos un entero
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	$.LC0, %esi
	movl	$.LC1, %edi
	call	fopen
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3: #Leemos y printemos 
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
.L2:#Bloque para enciclar la lectura y se encarga de crear variables
	cmpl	$40, -4(%rbp)
	jle	.L3  #Llama al bloque para printear
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
.L6: #Tomamos caracter, comparamos con asterisco
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fgetc
	movb	%al, -25(%rbp)
	cmpb	$42, -25(%rbp)
	jne	.L5
	addl	$1, -4(%rbp)
.L5:#Removemos 1 al contador
	subl	$1, -8(%rbp)
.L4:#bloque que crea un  ciclo y si no entra al cilo cierra y abre
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
.L9:#Bloque que que escribe una nueva linea si esta al final
	cmpl	$39, -12(%rbp)
	jne	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:#Bloque que escribe asterisco en el archivo.
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$42, %edi
	call	fputc
	addl	$1, -12(%rbp)
	subl	$1, -4(%rbp)
.L7:# bloque final que crea un ciclo y si no , cierra y termina.
	cmpl	$0, -4(%rbp)
	jne	.L9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	leave
	ret

