%include 'functions.asm'

section .text
global _start

_start:

;mov ecx, 10
pop ecx ;get input
mov eax, ecx ;sum
mov ebx, 1 ;counter
next:

add eax, ecx

inc ebx
cmp ebx, ecx

jle next

call iprintLF

end:
call quit



