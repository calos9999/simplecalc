.section .data
input_prompt: .asciz "Inserisci il primo numero: "
input_prompt_len = . - input_prompt

.section .bss
    .align 4
a: .space 4
    .align 4
b: .space 4
    .align 4
result: .space 4

.section .text
.global _start

_start:
    @ Stampa il prompt per l'inserimento del primo numero
    ldr r0, =1
    ldr r1, =input_prompt
    ldr r2, =input_prompt_len
    mov r7, #4
    svc 0
    
    @ Legge il primo numero da input
    ldr r0, =0
    ldr r1, =a
    ldr r2, =4
    mov r7, #3
    svc 0
    
    @ Stampa il prompt per l'inserimento del secondo numero
    @ (riutilizziamo le variabili di input)
    ldr r0, =1
    ldr r1, =input_prompt
    ldr r2, =input_prompt_len
    mov r7, #4
    svc 0
    
    @ Legge il secondo numero da input
    ldr r0, =0
    ldr r1, =b
    ldr r2, =4
    mov r7, #3
    svc 0
    
    @ Converte i numeri ASCII in interi
    ldr r0, =a
    ldrb r0, [r0]
    sub r0, r0, #'0'
    str r0, [a]
    
    ldr r0, =b
    ldrb r0, [r0]
    sub r0, r0, #'0'
    str r0, [b]
    
    @ Effettua il calcolo
    ldr r1, [a]
    ldr r2, [b]
    
    add r0, r1, r2   @ somma
    str r0, [result]
    
    sub r0, r1, r2   @ differenza
    str r0, [result, #4]
    
    mul r0, r1, r2   @ prodotto
    str r0, [result, #8]
    
    mov r0, r1
    mov r1, r2
    mov r7, #0x6      @ divisione
    svc 0
    str r0, [result, #12]
    
    mov r0, r1
    mov r1, r2
    mov r7, #0x6      @ resto
    svc 0
    str r0, [result, #16]
    
    mov r0, r1
    mov r1, r2
    mov r7, #0x7      @ potenza
    svc 0
    str r0, [result, #20]
    
    @ Stampa i risultati
    ldr r0, =1
    ldr r1, =result
    ldr r2, =24
    mov r7, #4
    svc 0
    
    @ Termina il programma
    mov r7, #1
    mov r0, #0
    svc 0
