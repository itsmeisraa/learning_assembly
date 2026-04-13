%include "asm_io.inc"
global main
segment .data
	msg: db "Bonne journée", 10
segment .bss
	x: resb 1
segment .text

main:
	
	mov ecx, 5
	mov eax, msg
boucle: 
	call print_string
	loop boucle
	
	mov ebx, 0
	mov eax, 1
	int 0x80
	
	
	
