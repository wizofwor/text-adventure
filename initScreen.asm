	lda #$00
	sta $d020
	sta $d021

	+CLEAR_SCREEN


	ldx #0
	ldy #0
	clc
	jsr PLOT 	; move cursor to top

	+PRINT $0A, text1	; title
	+PRINT $0f, text2	; introduction
	+PRINT $05, text3	; ask for name

;---------------------------------------------------------- 
;	Player name promt
;
;----------------------------------------------------------
;	read player name
;	into 'pname'

!zone player_name_prompt {
namePrompt:			;get player name 
	lda #$07
	sta CURCOL

.scan:
	RETRN = $0D		; return key
	DELET = $14		; delete key
	jsr GETIN		; get char
	cmp #00
	beq scan
	cmp #RETRN
	beq .endScan
	cmp #DELET
	beq pname_delete 

	jsr pname_add	; add char to PNAME
	jsr CHROUT 		; print char to screen

 	jmp .scan 

pname_add:
	ldx pname_len	; get index
	sta pname,x		; put char
	inx 			; increase index
	cpx #PNAME_DIM+1; compare with string size
	beq .error
	stx pname_len	; store increased size	
	rts

pname_delete:
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
}

	+PRINT $0f, pname
