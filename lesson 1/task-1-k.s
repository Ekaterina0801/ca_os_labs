.SECT .TEXT

        MOV     AX, (x)    
        ADD     CX, AX                           ! move x to AX
        MUL     AX                 ! AX = x^2
        ADD     BX, AX              ! BX=AX=x^2
        MUL     BX                  ! AX=x^4
        MOV     DX, 2               ! DX=2
        MUL     DX                  ! AX=2x^4
        ADD     CX, AX              ! CX=2x^4, AX is empty
        MOV     AX, 0
        ADD     AX, BX              ! AX=x^2
        MOV     DX, 3               ! DX=3
        MUL     DX                  ! AX=3x^2
        SUB     CX, AX              ! CX=2x^4-3x^2
        SUB     CX, 5               ! CX= 2x^4-3x^2+x-5
        MOV     (r), CX
.SECT .DATA
x:     .WORD    7

.SECT .BSS
r:     .SPACE   2
