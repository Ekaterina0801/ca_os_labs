
	_EXIT	= 1		
	_WRITE	= 4		
	_STDOUT	= 1		
.SECT .TEXT	


start:				
	MOV	    BX,de-hw	
	PUSH	BX		
	MOV     CX,10
	PUSH	hw		
	PUSH	_STDOUT		
	PUSH	_WRITE		
L1:	SYS	
	LOOP L1	
	ADD	SP,8		
	SUB	BX,AX		
	PUSH	BX	
	PUSH	_EXIT	
	SYS		
.SECT .DATA			
hw:				
.ASCII	"Hello World\n"		
de:	.BYTE	0		
.SECT .BSS
