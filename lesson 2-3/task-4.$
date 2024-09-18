_PRINTF = 127
_EXIT = 1
.SECT .TEXT
        MOV         BX, (n)
        MOV         CX, (k)
        PUSH        BX
        PUSH        fmt
        PUSH        _PRINTF
        MOV         BP, SP
1: 
        MOV         4(BP), BX
        SYS
        ADD         BX, 1
        CMP         BX,CX
        JLE         1b
        ADD         SP, 6
        PUSH        e
        PUSH        _PRINTF
        SYS    
        ADD         SP,4
        PUSH        0
        PUSH        _EXIT
        SYS
        

.SECT .DATA
fmt:    .ASCIZ       "%d\n"
n:      .WORD        2
k:      .WORD        5
e:      .ASCIZ       "\n"
