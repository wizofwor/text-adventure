;subroutines

;--- Subroutine: PRINT ---;
;
; input x(lo), y(hi)
; print chars in a loop
; quit when recive #00 value

!zone print {
PRINT:
	stx targetL		
	sty targetH		 

	ldy #0
-	lda (targetL),y
	cmp #00
	beq .end

	jsr CHROUT
	iny
	jmp -

.end
	rts	
}