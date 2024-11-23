.section .vectors
vector_table:
    .word 0xABC0
    .word reset_handler
    .zero 400

    .section .text
    .align 1
    .type reset_handler, %function

reset_handler:
    mov r1, #7
    mov r2, #3

    add r3, r1, r2

    b piyush

piyush2:
    sub r4, r1, r2

    b end

piyush:
    mov r5, r3

    lsl r6, r5, #2

    b piyush2

end:
    bl .