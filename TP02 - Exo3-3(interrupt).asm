%include "asm_io.inc"
global main
segment .data
	msg: db "Bonne journée", 10
segment .bss
	x: resb 1
segment .text

main:
	
	mov ecx, 5
boucle: 
	mov ebx, 1
	mov edx, 15
	mov [x], ecx
	mov ecx, msg
	mov eax, 4
	int 0x80
	mov ecx, [x]
	loop boucle
	
	mov ebx, 0
	mov eax, 1
	int 0x80
	
	
	
