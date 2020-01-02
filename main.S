    .global main
    .type main %function
main:
    str lr, [sp, #-4]!
    mov r0, #11
    mov r1, #22
    bl foo
    mov r1, r0
    ldr r0, L1
    bl printf
    ldr lr, [sp], #4
    bx lr
L1:
    .word .+4
    .ascii "sum %d\n\0"
