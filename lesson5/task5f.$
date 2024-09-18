_EXIT = 	1 
_READ	=	3  
_WRITE	=	4  
_OPEN	=	5  
_CLOSE	=	6  
_CREAT	=	8  
_LSEEK	=	19 
_GETCHAR =	117	! five system subroutine numbers  
_SPRINTF =	121  
_PUTCHAR =	122  
_SSCANF =	125 
_PRINTF	=	127 
STDIN	=	0	! three initially opened file descriptors 
STDOUT	=	1 
STDERR	=	2
.SECT   .TEXT

	PUSH	0
        PUSH    file_name
	PUSH	_OPEN	
	SYS
        CMP     AX, -1
	JZ	ERROR
        MOV     BX, AX
1:        
        PUSH    2
	PUSH	SI
	PUSH	BX
	PUSH	_READ
        SYS
        ADD     SP, 8
        CMP     AX, 0
        JLE     LIF2
        CMP     (SI), 0
        JLE     LIF
        PUSH    DX
        PUSH    fmt
        PUSH    _PRINTF
        SYS
        ADD     SP, 6
LIF:        
        ADD     DX, 2
        JMP     1b
LIF2:
	PUSH	e
        PUSH    _PRINTF
        SYS
	PUSH	BX
	PUSH 	_CLOSE
	SYS
        ADD     SP, 8
        PUSH    AX
        PUSH    _EXIT
        SYS

ERROR:		

        PUSH    str_error
        PUSH    _PRINTF         ! AX fmt _PRINTF
        SYS
        ADD     SP, 4
        PUSH    0
        PUSH    _EXIT
        SYS
	
       
.SECT   .DATA
file_name:    .ASCIZ  "./test.dat"
str_error:    .ASCIZ  "Error! \n"	
fmt:   .ASCIZ       "%d "
e:     .ASCIZ       "\n"

.SECT   .BSS
buf:	.SPACE	2
