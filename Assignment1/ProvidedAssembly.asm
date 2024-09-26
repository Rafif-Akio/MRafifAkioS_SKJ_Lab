section .data
    num1 dw 5          ; Declare num1 with a value of 5 (16-bit word)
    num2 dw 10         ; Declare num2 with a value of 10 (16-bit word)
    result dw 0        ; Declare result to store the multiplication result (initially 0)

section .text
    global _start      ; Entry point for the program

_start:
    ; Load the value of num1 into the AX register
    mov ax, [num1]     ; AX = num1 (AX = 5)

    ; Multiply the value in AX (num1) by num2
    imul ax, [num2]    ; AX = AX * num2 (AX = 5 * 10 = 50)

    ; Store the result from AX into the result memory location
    mov [result], ax   ; result = 50

    ; Exit the program by calling the Linux exit system call (1) with status 0
    mov eax, 1         ; eax = 1 (system call number for exit)
    xor ebx, ebx       ; ebx = 0 (exit status = 0 for success)
    int 0x80           ; Trigger interrupt 0x80 to make the system call (exit)
