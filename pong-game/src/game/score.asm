section .data
    player1_score db 0
    player2_score db 0
    score_display db 'Player 1: 0  Player 2: 0', 0

section .text
global update_score
global display_score

update_score:
    ; Update the score based on the player who scored
    ; Input: AL - player number (1 or 2)
    ; Output: updated scores in player1_score and player2_score

    cmp al, 1
    je .increment_player1
    cmp al, 2
    je .increment_player2
    ret

.increment_player1:
    inc byte [player1_score]
    jmp .update_display

.increment_player2:
    inc byte [player2_score]

.update_display:
    ; Update the score display string
    movzx rax, byte [player1_score]
    mov [score_display + 10], al ; Update Player 1 score in display
    movzx rax, byte [player2_score]
    mov [score_display + 26], al ; Update Player 2 score in display
    ret

display_score:
    ; Display the current score on the screen
    ; This function would typically interface with the drawing utilities
    ; to render the score_display string on the canvas
    ret