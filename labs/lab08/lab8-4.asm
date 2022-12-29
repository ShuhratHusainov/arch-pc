%include 'in_out.asm'
SECTION .data
    msgA:	DB 'Input A: ',0
    msgX:       DB 'Input X: ',0

SECTION .bss
    A:	RESB 80
    X:  RESB 80
    result:     RESB 80

SECTION .text
    GLOBAL _start

_start:
    mov eax,msgA
    call sprint
    mov ecx,A
    mov edx,80
    call sread
    mov eax,A
    call atoi 
    mov [A],eax

    mov eax,msgX
    call sprint
    mov ecx,X
    mov edx,80
    call sread 
    mov eax,X
    call atoi
    mov [X],eax   
;_________________algorithm____________________

    mov ebx, [X]
    mov edx, [A]
    cmp ebx, edx
    ja first
    jmp second

first:
    mov eax,[X]
    mov ebx,[A]
    sub eax,ebx
    mov ebx,2
    mul ebx
    call iprintLF 
    call quit
second:
    mov eax,15
    call iprintLF 
    call quit
