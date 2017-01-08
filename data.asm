rowAdress:
	!for i,0,40 {!by (<SCREEN_RAM+40*i)}
;----------------------------------------------------------
;	Variables
;----------------------------------------------------------

view: !by 00 ;current view //(pseudo room)


;---------------------------------------------------------- 
;	Input data structures
;
;----------------------------------------------------------
;	pname	= player name
;	instr	= input string

; 	Dimentions

PNAME_DIM = 16
INSTR_DIM = 40

; 	Memory allocations
;	Indexes: 
;pname_len:	!by 0
;instr_len:	!by 0

;	Data:
pname:	!for i,0,PNAME_DIM {!by 0}
instr:	!for i,0,INSTR_DIM {!by 0}

;---------------------------------------------------------- 
;	Text messages
;		(ending with '0')
;----------------------------------------------------------

text1:
	!scr "      ULTRA ONE'IN GIZEMLI HIKAYESI     ",$0D
	!scr "          WIZOFWOR/CGTR - 2016          ",$0D,0
text2:
	!scr "CGTR'NIN YENI PROJESI KAYIP. GELISTIRI- "
	!scr "CILER BIGBLUE, MEGALUX VE ZAK'TEN DE    "
	!scr "HABER ALINAMIYOR. YENIN PROJENIN TAMAM- "
	!scr "LANMASI ICIN GIZEMI COZMEN GEREKLI.",0
text3:
	!scr $0d,$0d,"ISMIN NEDIR? > ",0
text4:
	!scr $0d,"SELAM %"
	!scr $0d,"UNUTMA BU GUN MEGALUX'LE BULUSACAKSIN."
	!scr $0d,"YENI PROJESINDEN BAHSEDECEGINE SOZ VER-"
	!scr $0d,"MISTI.",0
text5:
	!scr $0d,$0d,"NE YAPMAK ISTERSIN? > ",0		
error1:
	!scr $0D,"AKLIM COK KARISTI. DAHA KISA LUTFEN!",0		

;---------------------------------------------------------- 
;	View descriptions
;		(ending with '0')
;----------------------------------------------------------

vDesc1:	
	; oda
	!scr "BURASI KUCUK BIR ODA. BIR KOSESINDE YAT-"
	!scr "AK VE ELBISE DOLABI, KARSIDA ISE CALISMA"
	!scr "MASASI UZERINDE BIR BILGISAYAR VAR. MASA"
	!scr "NIN ARKASINDAKI DUVARDA 80'LERDEN BIR   "
	!scr "OYUN POSTERI VAR. MASANIN UZERI BIRAZ   "
	!scr "KALABALIK. MASANIN ALTINDA BIR CEKMECE  VAR.",0

vDesc2:
	; durak
	!scr "YOL KANRINDA BILDIK SIKICI OTOBUS DURAK-"
	!scr "LARINDAN BIRINDESIN. SENDEN BASKA BEKLE-"
	!scr "YEN KIMSA YOK. DURAGIN YANINDAKI CAM PA-"
	!scr "NELDE OTOBUS TARIFESI ASILI. YAN TARAFTA"
	!scr "BIR BAKKAL VAR.",0

vDesc3:
	; bakkal
	!scr "BAKKAL EFENDI YILLARDIR ORADAYMIS GIBI  "
	!scr "BISKUVI VE CIKOLATA RAFLARININ ARASINDAN"
	!scr "SIRITIYOR. TEZGAHIN UZERINDE KARA KAPLI "
	!scr "VERESIYE DEFTERI, GRIPIN, SOLUCAN SEKER "
	!scr "VE HAZIR KAHVE VAR."
	!scr $0d,"-SELAM KUZEN. NE LAZIMDI?",0

vDesc4:
	; Megalux'un odası
	!scr "MEGALUX BARDAKLARI SOGUTMUS, FLOPPYLERI "
	!scr "HAZIRLAMIS BENI BEKLIYORMUS."
	!scr "- SELAM %. GOZLERIM YOLLARDA KALDI."
	!scr "ACAYIP GUZEL OYUNLARIM VAR. SU BARDAKLARI"
	!scr "DOLDURAYIM",0

vDesc6:
	; Parti mekanı
	!scr "PARTI MEKANI BIRAZ ISSIZ GIBI. MASALARIN"
	!scr "BIR KACI HARICINDEKILER BOS. HENUZ MUDA-"
	!scr "VIMLERDEN BAŞKA GELEN OLMAMIS. JONGLOR  " 
	!scr "ITE KAKA CALISTIGI HER HALINDEN BELLI"
	!scr "BIR BILGISAYARDA JOYSTICK ÇEVIRIYOR.    "
	!scr "IMAGINE VE SIPSATTI BIR KOSEDE MUHABBETI"
	!scr "DEMLEMEYE BASLAMISLAR. UNCANNY ISE HER  "
	!scr "ZAMANKI GIBI BIR KÖSEDE PIKSELLEMEYE"
	!scr "BASLAMIS BILE."
	!scr "GIRISTE KAYIT MAMASINDA ORGALARDAN BIRI "
	!scr "OTURUYOR. KARSISINDA DA KAHVE MASASI VAR.",0
	
vDesc7:
	; Kahve masası
	!scr "BURNUMA KAHVE KOKULARI GELIYOR. MASANIN "
	!scr "UZERIDNE KAHVE MAKINESI, YENINDA KAGIT  "
	!scr "BARDAKLAR, SEKER, KREMA VE BIR KAVANOZ  "
	!scr "KAHVE VAR.",0
	
vDesc8:
	; gizli oda
	!scr "ZZZT... BıZZT.. O DA NE! KAHVE MASASININ"
	!scr "ARKASINDA GIZLI BIR ODA VARMIS.         "
	!scr "DELIFISEK BURADA. ELLERI BAGLI. NELER DONUYOR?",0
	
vDesc9:
	;orga
	!scr "X SU ANDA COK ACELEM VAR.",0
	
vDesc10:
	;sipsatti
	!scr "-VAY VAY VAY MAHMUT GELMIS.",0
	
vDesc11:
	;imagine
	!scr "-NE ZAMANDIR GORUSMUYORDUK. NE VAR NE   "
	!scr "YOK?",0
	
vDesc12:
	;uncanny(grafiker)
	!scr "-HMM. SURAYA KAHVE RENGI, ŞURAYA KOYU   "
	!scr "KAHVERENGI, ŞURAYA AÇIK KAHVE RENGI!",0
		
vDesc13:
	;jonglör
	!scr "MERHABA. SUPAPLEX OYNAR MISIN?",0


; --- Text Messages, end ---	
	
test:
	!scr "TEST",0	