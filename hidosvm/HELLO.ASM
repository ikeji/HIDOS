        ASSUME CS:CODE, DS:CODE
CODE    SEGMENT

        ORG     100h
START:  MOV     DX, OFFSET HELLO
        MOV     AH, 09H
        INT     21H
        MOV     AH, 4CH
        MOV     AL, 00H
        INT     21H

HELLO   DB      'Hello',0ch, 0ah, '$'

CODE    ENDS
        END     START
