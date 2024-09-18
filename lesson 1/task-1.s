_PRINTF = 127
_EXIT = 1
.SECT .TEXT
        MOV         DX, (n)
        MOV         BX, (k)
        SUB         BX, DX
        ADD         BX, 1
        MOV         CX, BX
        MOV         BX, (n)
L1:              
        PUSH        BX
        ADD         BX, 1   
        PUSH        fmt
        PUSH        _PRINTF

        SYS 
LOOP L1
        

.SECT .DATA
fmt:    .ASCIZ       "%d\n"
n:      .WORD        2
k:      .WORD        5
