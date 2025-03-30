section .data
    screenWidth dw 800          ; Use 'dw' for 2-byte values
    screenHeight dw 600         ; Use 'dw' for 2-byte values
    colorWhite db 255, 255, 255 ; RGB values fit in a single byte
    colorBlack db 0, 0, 0       ; RGB values fit in a single byte

section .text
global drawRect
global clearScreen

drawRect:
    ; Parameters: x, y, width, height, color
    ; Draw a rectangle on the screen
    ; Implementation depends on the specific graphics library used
    ret

clearScreen:
    ; Clear the screen with a specified color
    ; Implementation depends on the specific graphics library used
    ret