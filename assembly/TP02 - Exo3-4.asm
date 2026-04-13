;4. Write an Assembly program that displays the ques on: "Are we on Saturday? (1/0)". If '1' is entered, it displays "Have a great weekend", 
otherwise, it displays "Have a nice day". 
///////////////////////////////////////////////////////////////////////
%include "asm_io.asm"       ; Pour utiliser la bibliothèque asm_io pour la lecture et l'affichage
global main                 ; Déclaration du main en global, ce qui rend le label visible de l'extérieur
segment .data
                            ; Déclaration des variables initialisées
        msg1 : db "Somme-nous Samedi ? (1/0)",0
        msg2 : db "Bon week-end",  0
        msg3 : db "Bonne journée", 0
segment .bss
                            ; Déclaration des variables non initialisées
segment .text
                            ; Section pour le code
main :                      ; Label pointant vers le début du programme
                            ; Instructions du programme
        mov eax, msg1       ; met le contenu de msg1 dans eax
        call print_string
        call print_nl
        call read_int       ; lire une valeur
        cmp eax, 1          ; comparer la valeur lu avec 1
        je suite            ; si la valeur lu =1, aller à suite
        mov eax, msg3       ; met le contenu de msg3 dans eax
        call print_string
       call print_nl
        jmp fin             ; aller à fin
    suite :
        mov eax, msg2       ; met le contenu de msg2 dans eax
        call print_string
        call print_nl
fin :
mov ebx, 0                  ; Code de sortie du programme
mov eax, 1                  ; Numéro de la commande exit
int 0x80                    ; Interruption Linux : le programme rend la main au système