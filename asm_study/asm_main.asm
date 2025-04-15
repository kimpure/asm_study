global asm_main

section .text

asm_main:
    ; mul 의 곱하는 인자는 eax 반환 값은 edx:eax 에 저장


    push rbp ; rbp 스텍에추가
    push rdi ; rdi 스텍에 추가
    sub rsp, 0xc8 ; rsp = rsp - 0xc8
    lea rbp, [rsp] ; rbp 포인터를 rsp 의 값으로

    ; rcx rdx r8 r9 는 인자 (파라미터) 에서 쓰이는에들
    mov rcx, 0x1
    mov rdx, 0x2
    mov r8, 0x3
    mov r9, 0x4

    ;call a ; a 호출

    ; call 에서 return (반환) 됀 값들은 rax eax 등 ax 계열에 들어감
    mov ebx, eax

    lea rsp, [rbp + 0xc8] ; rsp 포인터를 rbp + 0xc8 의 값으로
    pop rdi ; rdi 에 rdi 다시 채우기
    pop rbp ; rbp 에 rbp 다시 

    ret
