main:
    mov r0, #19
    mov sp, #128
    bl fib_rec_a
end:
    b end
fib_rec_a:
    sub sp, sp, #16
    cmp r0, #1
    bgt fib_rec_step
    b fend
fib_rec_step:
    str lr, [sp]
    str r0, [sp, #4]

    sub r0, r0, #1
    bl fib_rec_a

    str r0, [sp, #8]
    ldr r0, [sp, #4]

    sub r0, r0, #2
    bl fib_rec_a
    mov r1, r0

    ldr r0, [sp, #8]
    add r0, r0, r1
    ldr lr, [sp]
fend:
    add sp, sp, #16
    bx lr 