%include 'functions.asm'

; if (x = 10)... else ...

section .data
msg1 db 'In the true part.', 0
; len1 equ $ - msg1
msg2 db 'In the false part.', 0

section .text
global _start

_start:

mov eax, 19

cmp eax, 10
jne else

; true part

mov eax, msg1
call sprintLF

jmp endif

; false part
else:

mov eax, msg2
call sprintLF

endif:


call quit
