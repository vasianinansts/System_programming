format ELF
public _start

section '.data' writeable
    fam db 'Vasianina', 10
    fam_len = $ - fam
    name db 'Anastasia', 10
    name_len = $ - name
    pat db 'Alecsandrovna', 10
    pat_len = $ - pat

section '.text' executable
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, fam
    mov edx, fam_len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, name_len
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, pat
    mov edx, pat_len
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80