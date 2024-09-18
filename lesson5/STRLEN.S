_EXIT       1
.SECT       .TEXT
            PUSH        str
            CALL        STRLEN
            ADD         SP,2
            CMP         CX,0
            JGE         G
            PUSH        CX
            JMP         EX
G:
            PUSH        0
EX:         
            PUSH        _EXIT
            SYS
STRLEN:
            PUSH        BP
            MOV         BP,SP
            MOV         AX, 0
            MOV         CX,-1
            REP         SCASB
            NOT         CX
            DEC         CX
            MOV         SP,BP
            POP         BP
            RET

.SECT       .DATA    
str:        .ASCIZ      "hello"                       