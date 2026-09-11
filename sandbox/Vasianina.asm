format ELF
public _start

section '.text' executable

_start:
    ; 1. Вывод Фамилии
    mov eax, 4          ; sys_write (4)
    mov ebx, 1          ; stdout (1)
    mov ecx, last_name  ; адрес строки
    mov edx, len_last   ; длина строки
    int 0x80

    ; 2. Вывод Имени
    mov eax, 4
    mov ebx, 1
    mov ecx, first_name
    mov edx, len_first
    int 0x80

    ; 3. Вывод Отчества
    mov eax, 4
    mov ebx, 1
    mov ecx, patronymic
    mov edx, len_patr
    int 0x80

    ; 4. Завершение программы (sys_exit)
    mov eax, 1          ; sys_exit (1)
    xor ebx, ebx        ; код возврата 0
    int 0x80

section '.data' writeable

last_name   db "Vasianina", 0xA
len_last    = $ - last_name

first_name  db "Anastasia", 0xA
len_first   = $ - first_name

patronymic  db "Alecsandrovna", 0xA
len_patr    = $ - patronymic