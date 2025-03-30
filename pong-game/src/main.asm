section .data
    title db 'Pong Game', 0
    screenWidth equ 640
    screenHeight equ 480
    paddleWidth equ 10
    paddleHeight equ 60
    ballSize equ 10

section .bss
    player1Score resb 1
    player2Score resb 1
    paddle1Y resb 1
    paddle2Y resb 1
    ballX resb 1
    ballY resb 1
    ballVelocityX resb 1
    ballVelocityY resb 1

section .text
global _start

_start:
    ; Initialize game variables
    mov byte [player1Score], 0
    mov byte [player2Score], 0
    mov byte [paddle1Y], (screenHeight / 2) - (paddleHeight / 2)
    mov byte [paddle2Y], (screenHeight / 2) - (paddleHeight / 2)
    mov byte [ballX], screenWidth / 2
    mov byte [ballY], screenHeight / 2
    mov byte [ballVelocityX], 1
    mov byte [ballVelocityY], 1

    ; Start the game loop
    call gameLoop

gameLoop:
    ; Main game loop logic
    call updateGame
    call renderGame
    jmp gameLoop

updateGame:
    ; Update game state (paddle movement, ball movement, collision detection)
    ; (Implementation will be in utils.asm and other game files)
    ret

renderGame:
    ; Render the game state to the screen
    ; (Implementation will be in utils.asm)
    ret

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80