section .data
    ball_radius db 5
    ball_width db 10
    ball_height db 10
    ball_speed_x db 3
    ball_speed_y db 3
    ball_color db 0xFF, 0xFF, 0xFF ; White color

section .bss
    ball_x resw 1    ; Reserve 2 bytes for X position (word size)
    ball_y resw 1    ; Reserve 2 bytes for Y position (word size)

section .text
global init_ball
global move_ball
global draw_ball

init_ball:
    ; Initialize ball position
    mov word [ball_x], 400 ; Starting X position (fits in 2 bytes)
    mov word [ball_y], 300 ; Starting Y position (fits in 2 bytes)
    ret

move_ball:
    ; Move the ball based on its speed
    ; Example: Update ball_x and ball_y
    ret

draw_ball:
    ; Draw the ball on the canvas
    ; Drawing logic should be implemented in utils.asm
    ret