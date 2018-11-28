%include 'functions.asm'

; for(int i = 0; i < 10; i++)


section .text
global _start

_start:

; init - i = 0
mov ecx, 0

next:
; check if i > 10
cmp ecx, 10
jge endfor

mov eax, ecx
call iprintLF

inc ecx
jmp next

endfor:



end:
call quit
