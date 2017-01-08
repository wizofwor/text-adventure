;subroutines

;--- Subroutine: PRINT ---
;
; input temp0(#<source add), temp1(#>source add)
; print chars in a loop
; quit when recive #00 value


!MACRO PRINT .color, .label {	; Print text using CHAROUT
	lda #.color
	sta CURCOL
	ldx #<.label
	stx temp0
	ldx #>.label
	stx temp1
	jsr print
}

!zone print
	.NULL = $00	; Null char
print:
	ldy #0
-	lda (temp0),y
	beq .out

	jsr CHROUT
	iny
	jmp -

.out
	rts	

;--- Subroutine: PRINTF ---
;
; input temp0(#<source add), temp1(#>source add)
; pname (player name)
;
; print chars in a loop
; quit when recive #00 value
; print play name when revieve char('%') 

!MACRO PRINTF .color, .label { 	; Print text using CHAROUT
	lda #.color 				; with used defined
	sta CURCOL 					; user name
	ldx #<.label
	stx temp0
	ldx #>.label
	stx temp1
	jsr printf
}	

!zone printf {
	.NAME = $25 ; Placeholder for player name   

printf: 
	ldy #0
-	lda (temp0),y
	beq .out
	cmp #.NAME
	beq .printName

	jsr CHROUT
	iny
	jmp -

.out
	rts	

.printName
	tya
	pha
	
	ldy #0
--	lda pname,y
	beq +

	jsr CHROUT
	iny
	jmp --

+	pla
	tay
	iny
	jmp -
}

;--- Subroutine: SCANF ---
; input temp0(#<destionation addr), temp1(#>destination addr)
; acc(color), temp2(string dimention)
;

!MACRO SCANF .color, .label, .dimention { 				
	lda #<.label
	sta temp0
	lda #>.label
	sta temp1
	lda #.dimention 					
	sta temp2	
	lda #.color
	jsr scanf
}

!zone player_name_prompt {
;temp0,temp1 < target address
;temp2: 	 < max string size
;temp3: 	 < index

scanf:				
	sta CURCOL
	lda #00
	sta temp3

.scan:
	RETRN = $0D		; return key
	DELET = $14		; delete key
	jsr GETIN		; get char
	cmp #00
	beq .scan
	cmp #RETRN
	beq .endScan
	cmp #DELET
	beq .deleteChar 

.addChar:
	ldy temp3		; get index
	cpy temp2 		; compare with max string size
	beq .scan 		; if index=max > do not add
	sta (temp0),y	; put char
	inc temp3		; increase index size	
	jsr CHROUT 		; print char to screen
 	jmp .scan 

.deleteChar:
	ldy temp3		; get index
	beq .scan		
	jsr CHROUT		; update screen	
	dey				; decrease index
	lda #00
	sta (temp0),y	; erase last char
	sty temp3		; store increased size
	jmp .scan

.endScan
	lda #$00
	ldy temp3		; get index
	sta (temp0),y	; put char
	rts
}

;--- Subroutine: STRCMP ---
; input:
; 	temp0(#<string1 addr), temp1(#>string1 addr)
;	temp2(#<string2 addr), temp3(#>string2 addr)
; 
; output:
;	Z(set if equal, cleared if different)
;	thus BEQ and BNE can be used. 
;
!MACRO STRCMP .string1, .string2 {
	lda #<.string1
	sta temp0
	lda #>.string1
	sta temp1
	lda #<.string2
	sta temp2
	lda #>.string2
	sta temp3
	jsr strcmp
}

!zone strcmp {
strcmp:
	ldy #00
-	lda (temp0),y
 	beq .end  		;test NULL char 
	cmp (temp2),y 	
	bne ++ 			;compare chars
	iny
	bne -
.end
	cmp (temp2),y
	bne ++
++	rts
}