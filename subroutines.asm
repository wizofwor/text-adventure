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
;
; output temp0(#<destionation addr), temp1(#>destination addr)
; 

!MACRO SCANF .color, .label, .dimention { 	
	lda #.dimention 					
	sta temp2						
	lda #<.label
	sta temp0
	lda #>.label
	sta temp1
	jsr scanf
}

scann:
!zone player_name_prompt {
scanf:				
	lda #.color
	sta CURCOL

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
	ldx pname_len	; get index
	sta pname,x		; put char
	inx 			; increase index
	cpx #PNAME_DIM+1; compare with string size
	beq .error
	stx pname_len	; store increased size	
	jsr CHROUT 		; print char to screen
 	jmp .scan 

.deleteChar:
	ldx pname_len	; get index
	cpx #00
	beq +			; if zero quit
	jsr CHROUT		; update screen	
	dex				; decrease index
	lda #00
	sta pname,x		; erase char char
	stx pname_len	; store increased size
+	jmp .scan

.error
	ldx #00
	stx pname_len
	+PRINT $02, error1
	rts

.endScan
	rts
}

	