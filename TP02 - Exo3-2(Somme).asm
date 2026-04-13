;2. Write an Assembly program that calculates the sum of the first 10 natural numbers (1 + 2 + 3 
+ ... + 10). Use the instruc ons MOV, CMP, JNE, ADD, DEC, or INC. 

/////////////////////////////////////////////////////////////////////////////

%include "asm_io.asm"           ; Pour utiliser la bibliothèque asm_io pour la lecture et l'affichage
global main                     ; Déclaration du main en global, ce qui rend le label visible de l'extérieur
segment .data
                                ; Déclaration des variables non initialisées
        somme : db 0
segment .bss
segment .text
                                ; Section pour le code
main :                          ; Label pointant vers le début du programme
                                ; Instructions du programme
        mov ecx, 1               ; Notre compteur est initialisé à 1
    boucle :                    ; Label qui indique le début de notre boucle
        cmp ecx, 10              ; On compare notre compteur avec la valeur limite (10)
        jg fin                  ; Si cx > 10 alors on a atteint la limite => on se déplace vers la fin de la boucle
        add [somme], ecx         ; somme <- somme + cx
        add ecx, 1               ; cx <- cx + 1, on incrémente notre compteur
        jmp boucle              ; On reboucle
    fin :
        mov eax, [somme]         ; ax <- somme que nous avons obtenu dans ax pour pouvoir l'afficher en utlisant print_int
        call print_int          ; Appel de la fonction pour afficher le contenu de ax (qui correspond à la somme)
        call print_nl
mov ebx, 0                       ; Code de sortie du programme
mov eax, 1                       ; Numéro de la commande exit
int 0x80                        ; Interruption Linux : le programme rend la main au système