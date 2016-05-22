			;1: fichero hola.asm
section .data		;2: Inicio de la seccion de datos
msg db "Hola!",10	;3:

section .text
	global main
	
	main:

	mov rax,4
	mov rbx,1
	mov rcx,msg
	mov rdx,6
	int 80h
	mov rax,1
	mov rbx,0
	int 80h 
