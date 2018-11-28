%include 'functions.asm'

section .text
global _start

_start:

mov ecx, 10 ; input
mov eax, 1 ; sum

next:
cmp ecx, 1
jle endfor

mul ecx

dec ecx
jmp next

endfor:

;the sum is already in eax
call iprintLF

end:
call quit
