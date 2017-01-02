rowAdress:
	!for i,0,40 {!by (<SCREEN_RAM+40*i)}

;---------------------------------------------------------- 
;	Input data structures
;
;----------------------------------------------------------
;	pname	= player name
;	instr	= input string

; 	Dimentions

PNAME_DIM = 24
INSTR_DIM = 24

; 	Memory allocations
;	Indexes: 
PNAME_LEN:	!by 0
INSTR_LEN:	!by 0

;	Data:
PNAME:	!for i,0,PNAME_DIM {!by 0}
INSTR:	!for i,0,INSTR_DIM {!by 0}

;---------------------------------------------------------- 
;	Text messages
;		(ending with '0')
;----------------------------------------------------------

text1:
	!scr "      ULTRA ONE'IN GIZEMLI HIKAYESI     ",$0D
	!scr "          WIZOFWOR/CGTR - 2016          ",$0D
	!by 0
text2:
	!scr "CGTR'NIN YENI PROJESI KAYIP. GELISTIRI- "
	!scr "CILER BIGBLUE, MEGALUX VE ZAK'TEN DE    "
	!scr "HABER ALINAMIYOR. YENIN PROJENIN TAMAM- "
	!scr "LANMASI ICIN GIZEMI COZMEN GEREKLI."
	!by 0
text3:
	!scr $0D,"ISMIN NEDIR?>",0	

; --- Text Messages, end ---	
	
	* = music
	!bin "res/Enjoy_the_Silence.sid",,$7c+2

	
