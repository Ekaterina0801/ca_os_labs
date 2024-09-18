_EXIT =     1
_PUTCHAR =  122

.SECT       .TEXT
            PUSH       string
            CALL       LAST_5
            PUSH       AX
            PUSH       fmt
            PUSH       127

            SYS
            PUSH       _EXIT
            SYS
LAST_5:
            PUSH       BP
            MOV        BP, SP
            PUSH       BX
            PUSH       4(BP)
            CALL       STRLEN
            ADD        SP,2
            MOV        BX, CX
            ADD        CX, 4(BP)
            DEC        CX
            MOV        SI, CX
            STD
L:
            LODSB
            ADD        DX,1
            CMP        AX,53
            JE         H

            LOOP       L   
            MOV        BX, -1
            JMP        H2
H:
            SUB        BX,DX
H2:
            MOV        AX,BX
            POP        BX
            MOV        SP,BP
            POP        BP
            RET

STRLEN:
            PUSH        BP
            MOV         BP,SP
            PUSH        DI
            MOV         AX, 0
            MOV         CX, -1
            MOV         DI, 4(BP)
            REP         SCASB
            NOT         CX
            DEC         CX
            POP         DI
            MOV         SP,BP
            POP         BP
            RET

.SECT       .DATA
string:     .ASCIZ      "583659"
end:        .WORD       0    
fmt:   .ASCIZ       "%d " 

.SECT       .BSS
