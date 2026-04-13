;6. Write an Assembly program that determines whether a number is even or odd. 
///////////////////////////////////////////////////////////
; En utilisant div sur 8 bits
%include "asm_io.asm"               ; Pour utiliser la bibliothèque asm_io pour la lecture et l'affichage
global main                         ; Déclaration du main en global, ce qui rend le label visible de l'extérieur
segment .data
                                    ; Déclaration des variables initialisées
            msg1 : db "A est pair",  0
            msg2 : db "A est impair", 0
            msgA : db "Donner A : ",  0
segment .bss
                                    ; Déclaration des variables non initialisées
segment .text
                                    ; Section pour le code
main :                              ; Label pointant vers le début du programme
                                    ; Instructions du programme
        mov eax, msgA
        call print_string           ; Afficher le message d'indication
        call read_int
        mov bl, 2                   ; Nous allons utiliser le registre bl (8 bits) au lieu de ebx (32 bits)
        div bl                      ; Diviser la valeur lue sur bl (8 bits) => reste de la division sera dans ah
        cmp ah, 0                   ; comparer le reste de la division avec 0
        je pair                     ; si le reste de la division=0, aller à pair
        mov eax, msg2               ; met le contenu de msg2 dans eax
        call print_string
        jmp fin                     ; aller à fin
    pair:
        mov eax, msg1
        call print_string
fin :
    mov ebx, 0                      ; Code de sortie du programme
    mov eax, 1                      ; Numéro de la commande exit
    int 0x80                        ; Interruption Linux : le programme rend la main au système