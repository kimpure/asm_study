global asm_main

section .text

asm_main:
    ; mul �� ���ϴ� ���ڴ� eax ��ȯ ���� edx:eax �� ����


    push rbp ; rbp ���ؿ��߰�
    push rdi ; rdi ���ؿ� �߰�
    sub rsp, 0xc8 ; rsp = rsp - 0xc8
    lea rbp, [rsp] ; rbp �����͸� rsp �� ������

    ; rcx rdx r8 r9 �� ���� (�Ķ����) ���� ���̴¿���
    mov rcx, 0x1
    mov rdx, 0x2
    mov r8, 0x3
    mov r9, 0x4

    ;call a ; a ȣ��

    ; call ���� return (��ȯ) �� ������ rax eax �� ax �迭�� ��
    mov ebx, eax

    lea rsp, [rbp + 0xc8] ; rsp �����͸� rbp + 0xc8 �� ������
    pop rdi ; rdi �� rdi �ٽ� ä���
    pop rbp ; rbp �� rbp �ٽ� 

    ret
