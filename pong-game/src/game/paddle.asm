section .data
    paddle_width db 10
    paddle_height db 60
    paddle_speed db 5
    paddle_color db 0xFF, 0xFF, 0xFF ; White color

section .bss
    paddle_x resb 1
    paddle_y resb 1

section .text
    global init_paddle
    global move_paddle
    global draw_paddle

init_paddle:
    ; Initialize paddle position
    mov byte [paddle_x], 50 ; Starting X position
    mov byte [paddle_y], 100 ; Starting Y position
    ret

move_paddle:
    ; Move paddle based on input
    ; Input handling logic should be implemented in utils.asm
    ; Example: if up key pressed, decrease paddle_y
    ; Example: if down key pressed, increase paddle_y
    ret

draw_paddle:
    ; Draw the paddle on the canvas
    ; Drawing logic should be implemented in utils.asm
    ret