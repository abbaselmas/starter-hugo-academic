MOV AX, 0100h
MOV DS, AX
MOV BX, 1000h

MOV [BX],   5E00h
MOV [BX+2], 0B2D0h  ;3,000,000,000
MOV [BX+4], 0CA00h
MOV [BX+6], 3B9Ah   ;1,000,000,000

MOV AX,      [BX]
SUB AX,      [BX+4]
MOV [BX+8],  AX
MOV AX,      [BX+2]
SBB AX,      [BX+6] ; 2,000,000,000
MOV [BX+10], AX     ; 77359400h

MOV AH, 4Ch
INT 21h