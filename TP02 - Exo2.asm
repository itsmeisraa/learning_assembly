;2. Write a program that performs the addi on of two numbers using registers to store then numbers. 
; TP2 la deuxième question sur la somme ont utilisant les registres 


%include "asm_io.asm"				; Pour utiliser la bibliothèque asm_io pour la lecture et l'affichage

global main 						; déclaration de main en global, ce qui rend le label visible de l'extérieur

segment .data
									; déclarations des variables initialisées 
	

		
segment .bss

									; déclarations des variables non initialisées 
segment .text 

main: 
mov eax, 15
mov ebx, 20
add eax, ebx  ; add eax,20


call print_int
call print_nl

mov ebx, 0
mov eax, 1

int 0x80
//////////////////////////////////////////////////////////////////////////////////////////////////
;3. Write a program that reads two integers and returns the sum of these two integers. 

; TP2 la troisieme question sur la somme qui permet de lire deux entiens 

%include "asm_io.asm"				; Pour utiliser la bibliothèque asm_io pour la lecture et l'affichage

global main 
segment .data
									; déclarations des variables initialisées 
	

		
segment .bss

									; déclarations des variables non initialisées 
segment .text 

main: 
call read_int
mov ebx, eax
call read_int
 add eax, ebx                                                                                           

call print_int

mov ebx, 0
mov eax, 1

int 0x80

///////////////////////////////////////////////////////////////////
;4. Write a program that prompts the user to enter two numbers and then displays their sum. 
; TP2 la 4eme question sur la somme qui permet de lire deux entiens avec des messages 


%include "asm_io.asm"				; Pour utiliser la bibliothèque asm_io pour la lecture et l'affichage

global main 						; déclaration de main en global, ce qui rend le label visible de l'extérieur

segment .data
								; déclarations des variables initialisées 
		msg1 : db "Donner le premier nombre : ", 0
		msg2 : db "Donner le deuxième nombre : ", 0
                msg3 : db "le resultat est: ",0								; déclarations des variables initialisées 
	

		
segment .bss

									; déclarations des variables non initialisées 
segment .text 
   main: 
mov eax, msg1
call print_string
call print_nl
call read_int
mov ebx, eax
mov eax, msg2
call print_string
call print_nl
call read_int
add ebx,eax
mov eax, msg3
call print_string
call print_nl
mov eax, ebx
call print_int
call print_nl


mov ebx, 0
mov eax, 1

int 0x80


