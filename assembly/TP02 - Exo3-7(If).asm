%include "asm_io.inc"
global main
segment .data
	msg1: db "Donner x : ", 10, 0
segment .bss
	x: resb 1
segment .text

main:
	MOV EAX, msg1	
	CALL print_string
	CALL read_int
	MOV [x], EAX
	
	CMP byte [x], 3
	JNE sinon
	ADD byte [x], 2
	JMP finsi
	
sinon : SUB byte [x], 2

finsi : MOV EAX, [x]
	CALL print_int	

fin :	
	mov ebx, 0
	mov eax, 1
	int 0x80
	
