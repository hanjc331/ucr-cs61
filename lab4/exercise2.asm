;=================================================
; Name: <Collier, Craig>
; Username: ccoll010
; 
; Lab: <lab 4>
; Lab section: 23
; TA: Bryan Marsh
; 
;=================================================
.orig x3000
LD R1,DEC_0
LD R5,POINTER
LD R4,DEC_10

INPUT_LOOP
    STR R1,R5,#0
    ADD R5,R5,#1
    ADD R1,R1,#1
    ADD R4,R4,#-1
    BRnp INPUT_LOOP

LD R1,DEC_0
LD R5,POINTER
LD R4,DEC_10

OUTPUT_LOOP
    LDR R2,R5,#0
    ADD R0,R2,x0C
    ADD R0,R0,x0C
    ADD R0,R0,x0C
    ADD R0,R0,x0C
    OUT
    ADD R5,R5,#1
    ADD R1,R1,#1
    ADD R4,R4,#-1
    BRnp OUTPUT_LOOP
HALT

DEC_0 .FILL #0
DEC_10 .FILL #10
POINTER .FILL x4000
.orig x4000

ARRAY .BLKW #10
.end
