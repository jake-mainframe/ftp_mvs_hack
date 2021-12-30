WTOSML   CSECT
*
* PREFIX TO SIMULATE R14 RETURN
*
         LR    R14,R15
         LA    R14,16(R14)
         BC    15,6(,R14)
         NOPR  0
EYE4     DC    XL4'CAFEBABE'
         USING *,R14
*
* WTO AND THEN EXIT
*
         DS    XL6
COPY     LA    R1,MSGWTO
         SVC   35
         SVC   03
MSGWTO   DC    XL4'00070000'
         DC    C'WTO'
EYE1     DC    XL4'CAFEBABE'
*
* Register EQUates
*
R0       EQU   0
R1       EQU   1
R2       EQU   2
R3       EQU   3
R4       EQU   4
R5       EQU   5
R6       EQU   6
R7       EQU   7
R8       EQU   8
R9       EQU   9
R10      EQU   10
R11      EQU   11
R12      EQU   12
R13      EQU   13
R14      EQU   14
R15      EQU   15
         END
