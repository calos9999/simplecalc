section .data
    input_prompt db "Inserisci il primo numero: ", 0
    input_prompt_len equ $ - input_prompt

section .bss
    a resb 4
    b resb 4
    result resb 4

section .text
    global _start

_start:
    ; Stampa il prompt per l'inserimento del primo numero
    mov eax, 4
    mov ebx, 1
    mov ecx, input_prompt
    mov edx, input_prompt_len
    int 0x80
    
    ; Legge il primo numero da input
    mov eax, 3
    mov ebx, 0
    mov ecx, a
    mov edx, 4
    int 0x80
    
    ; Stampa il prompt per l'inserimento del secondo numero
    ; (riutilizziamo le variabili di input)
    mov eax, 4
    mov ebx, 1
    mov ecx, input_prompt
    mov edx, input_prompt_len
    int 0x80
    
    ; Legge il secondo numero da input
    mov eax, 3
    mov ebx, 0
    mov ecx, b
    mov edx, 4
    int 0x80
    
    ; Converte i numeri ASCII in interi
    mov eax, dword [a]
    sub eax, '0'
    mov dword [a], eax
    
    mov eax, dword [b]
    sub eax, '0'
    mov dword [b], eax
    
    ; Effettua il calcolo
    add eax, dword [a]     ; somma
    mov dword [result], eax
    
    sub eax, dword [a]     ; differenza
    mov dword [result + 4], eax
    
    imul eax, dword [a]    ; prodotto
    mov dword [result + 8], eax
    
    xor edx, edx
    idiv dword [b]         ; divisione
    mov dword [result + 12], eax
    
    mov eax, edx           ; resto
    mov dword [result + 16], eax
    
    mov eax, dword [a]
    mov ecx, dword [b]
    xor edx, edx
    mov ebx, 1
    int 0x80               ; potenza

    mov dword [result + 20], eax
    
    ; Stampa i risultati
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 24
    int 0x80
    
    ; Termina il programma
    mov eax, 1
    xor ebx, ebx
    int 0x80
