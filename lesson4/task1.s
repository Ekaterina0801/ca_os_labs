_PRINTF = 127
_EXIT = 1
.SECT   .TEXT
        MOV         SI, arr
        MOV         CX, end-arr
        SHR         CX, 1
        PUSH        CX
        PUSH        SI
        CALL        SUM_GREATER_10
        ADD         SP,4
        MOV         BX, AX
        PUSH        AX
        PUSH        fmt
        PUSH        _PRINTF 
        SYS
        ADD         SP,6
        PUSH        0
        PUSH        _EXIT
        SYS
SUM_GREATER_10:
        PUSH        BP
        MOV         BP, SP
        MOV         CX, 6(BP)
        MOV         SI, 4(BP)
1:
         CMP    (SI), 10
         JLE    LIF
         ADD    AX,(SI)
LIF:     ADD    SI,2
         LOOP   1b
         MOV    SP, BP
         POP    BP
         RET

.SECT   .DATA
fmt:    .ASCIZ       "%d "
arr:    .WORD   9,10,11,12,13
end:    .BYTE   0

.SECT   .BSS

