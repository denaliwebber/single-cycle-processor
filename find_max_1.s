main:
    mov sp, #128
    sub sp, sp, #20
    mov r0, #5
    str r0, [sp]
    mov r0, #7
    str r0, [sp, #4]
    mov r0, #2
    str r0, [sp, #8]
    mov r0, #1
    str r0, [sp, #12]
    mov r0, #9
    str r0, [sp, #16]
    mov r0, sp
    mov r1, #5
    bl find_max_a
end:
    b end
find_max_a:
    mov r2, #0
    ldr r12, [r0]
    mov r3, r12
loop:
    cmp r2, r1
    beq done
    add r0, r0, #4
    ldr r12, [r0]
    cmp r12, r3
    blt notmax
    mov r3, r12
notmax:
    add r2, r2, #1
    b loop
done:
    mov r0, r3
    bx lr