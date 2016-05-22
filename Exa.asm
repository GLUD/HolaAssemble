section .data
a equ 5h
b equ 4h 
 
section .bss
c resb 1

section .text
global main

main:
mov rax, b
;sub rax, '0'
mov rbx, a
;sub rbx, '0' 
add rax, rbx
add rax, '0'
mov [c], rax
;mostrar pantalla
mov rax, 4
mov rbx, 1
mov rcx, c
mov rdx, 1
int 80h
;Finalizar
mov rax, 1
mov rbx, 0
int 80h  

