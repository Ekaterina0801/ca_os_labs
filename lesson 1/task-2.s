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
        ADD         SP,6
LOOP L1
        PUSH        e
        PUSH        _PRINTF
        SYS    
        ADD         SP,4
        PUSH        0
        PUSH        _EXIT

        

.SECT .DATA
fmt:    .ASCIZ       "%d\n"
n:      .WORD        2
k:      .WORD        5
e:      .ASCIZ       "\n"

.SECT  .BSS
