_PRINTF = 127
_EXIT = 1
.SECT .TEXT
        MOV         SI, arr
        MOV         CX, end-arr
        SHR         CX,1
        PUSH        CX
        PUSH        SI
        CALL        COUNTODD
        ADD         SP,4
        PUSH        0
        PUSH        _EXIT
        SYS
COUNTODD: 
        PUSH        BP
        MOV         BP, SP
        MOV         CX, 6(BP)
        MOV         SI, 4(BP)
1:
        CWD
        MOV        AX, (SI)  
        DIV        (k)
        CMP        DX,0
        JNE        LIF
        INC        BX
LIF:    ADD        SI,2
        LOOP       1b
        MOV        AX, BX
        ADD        SP, 6
        PUSH       (BX)
        PUSH       _PRINTF
        SYS
        MOV        SP, BP
        POP        BP
        RET

        

.SECT .DATA
fmt:    .ASCIZ       "%d "
arr:    .WORD        1,2,7,14,21,5,8
end:    .BYTE        0
nn:      .ASCIZ       "\n"
k:      .WORD        2

.SECT   .BSS
