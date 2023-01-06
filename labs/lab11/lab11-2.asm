%include 'in_out.asm'
SECTION .data
    msg:	DB 'Input your name: ',0
    filename: DB 'name.txt',0
    my_name: DB 'My name is:',0
SECTION .bss
    X:	RESB 80

SECTION .text
    GLOBAL _start

_start:

    mov eax,msg
    call sprint

    mov ecx,X
    mov edx,80
    call sread

    mov ecx, 0777o
    mov ebx, filename
    mov eax, 8
    int 80h
 
    mov esi, eax 

    mov eax, my_name
    call slen 

    mov edx, eax 
    mov ecx, my_name
    mov ebx, esi 
    mov eax, 4
    int 80h 

    mov ebx, esi 
    mov eax, 6 
    int 80h

    mov ecx,1 
    mov ebx, filename 
    mov eax, 5
    int 80h 

    mov esi, eax  
   
    mov edx, 2 
    mov ecx,0
    mov ebx, eax 
    mov eax, 19 
    int 80h 
    

    mov eax, X
    call slen 
   
    mov edx,eax 
    mov ecx, X 
    mov ebx, esi 
    mov eax, 4
    int 80h

    mov ebx, esi 
    mov eax, 6 
    int 80h 
    


    call quit




