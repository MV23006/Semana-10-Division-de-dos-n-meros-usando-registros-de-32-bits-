section .text
    global _start

_start:
    mov eax, 20    ; Dividendo
    mov ebx, 4     ; Divisor

    xor edx, edx   ; Limpia EDX antes de dividir
    div ebx        ; Divide EAX entre EBX, cociente en EAX, residuo en EDX

    mov rax, 60    ; syscall: exit
    xor rdi, rdi   ; Código de salida 0
    syscall
