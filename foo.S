.section .vectors
vector_table:
    .word 0x20001000
    .word reset_handler
    .zero 400

    .section .text
    .align 1
    .type reset_handler, %function

reset_handler:
    mov r1, #7
    mov r2, #3
    mov r3, #2

    push {r1, r2, r3}

    mov r1, #5
    mov r2, #5
    mov r3, #5

    pop {r3, r2, r1}

    b .