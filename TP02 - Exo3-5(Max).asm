%include "asm_io.inc"
global main
segment .data
	msg1: db "Donner le premier nombre : ", 10, 0
	msg2: db "Donner le deuxième nombre : ", 10, 0
	msg3: db "Le max : ", 0
segment .bss
segment .text

main:
	MOV EAX, msg1	
	CALL print_string
	CALL read_int
	MOV EBX, EAX
	
	MOV EAX, msg2
	CALL print_string
	CALL read_int
	MOV ECX, EAX
	
	CMP EBX, ECX
	JGE sup
	MOV EAX, msg3
	CALL print_string
	MOV EAX, ECX
	CALL print_int
	CALL print_nl
	JMP fin
	
sup :	MOV EAX, msg3
	CALL print_string
	MOV EAX, EBX
	CALL print_int
	CALL print_nl

fin :	
	mov ebx, 0
	mov eax, 1
	int 0x80
	
