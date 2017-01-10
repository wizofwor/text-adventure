; Game Data

;rowAdress:
;	!for i,0,40 {!by (<SCREEN_RAM+40*i)}

view: !by 00 ;current view //(pseudo room)

; ----------------------------------------
; User input data structures
;
; pname	= player name
; instr	= input string

; Dimentions
PNAME_DIM = 16
INSTR_DIM = 40

; Memory allocations
; Indexes: 

; Data:
pname:	!for i,0,PNAME_DIM {!by 0}
instr:	!for i,0,INSTR_DIM {!by 0}

; ----------------------------------------
; Text messages
;	(ending with '0')


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

; ----------------------------------------
; View Names

VIEWS = #13

view_names:
vn0:	!scr"EV",0
vn1:	!scr"DURAK",0
vn2:	!scr"BAKKAL",0
vn3:	!scr"MEGALUX",0
vn4:	!scr"DURAK" ,0		;night time
vn5:	!scr"PARTI MEKANI",0
vn6:	!scr"KAHVE MASASI",0
vn7:	!scr"GIZLI ODA",0
vn8:	!scr"ORGA",0
vn9:	!scr"SIPSATTI",0
vn10:	!scr"IMAGINE",0
vn11:	!scr"UNCANNY",0
vn12:	!scr"JONGLOR",0

; ----------------------------------------
; View descriptions

vd0:	!scr"BURASI KUCUK BIR ODA. BIR KOSESINDE YAT-"
	!scr"AK VE ELBISE DOLABI, KARSIDA ISE CALISMA"
	!scr"MASASI UZERINDE BIR BILGISAYAR VAR. MASA"
	!scr"NIN ARKASINDAKI DUVARDA 80'LERDEN BIR   "
	!scr"OYUN POSTERI VAR. MASANIN UZERI BIRAZ   "
	!scr"KALABALIK. MASANIN ALTINDA BIR CEKMECE  VAR.",0

vd1:	!scr"YOL KENARINDA BILDIK SIKICI OTOBUS DUR- "
	!scr"AKLARINDAN BIRINDESIN. SENDEN BASKA BEK-"
	!scr"LEYEN KIMSE YOK. DURAGIN YANINDAKI CAM  "
	!scr"PANODA OTOBUS TARIFESI ASILI. YAN TARAF-"
	!scr"TA BIR BAKKAL VAR.",0

vd2:	!scr"BAKKAL EFENDI YILLARDIR ORADAYMIS GIBI  "
	!scr"BISKUVI VE CIKOLATA RAFLARININ ARASINDAN"
	!scr"SIRITIYOR. TEZGAHIN UZERINDE KARA KAPLI "
	!scr"VERESIYE DEFTERI, GRIPIN, SOLUCAN SEKER "
	!scr"VE HAZIR KAHVE VAR."
	!scr$0d,"-SELAM KUZEN. NE LAZIMDI?",0

vd3:	!scr"MEGALUX BARDAKLARI SOGUTMUS, FLOPPYLERI "
	!scr"HAZIRLAMIS BENI BEKLIYORMUS."
	!scr"- SELAM %. GOZLERIM YOLLARDA KALDI."
	!scr"ACAYIP GUZEL OYUNLARIM VAR. SU BARDAKLARI"
	!scr"DOLDURAYIM",0
	
vd4:	!scr"YINE DURAKTASIN. HAVA IYIDEN IYIYE KARAR-"
	!scr"MIS.",0

vd5:	!scr"PARTI MEKANI BIRAZ ISSIZ GIBI. MASALARIN"
	!scr"BIR KACI HARICINDEKILER BOS. HENUZ MUDA-"
	!scr"VIMLERDEN BAŞKA GELEN OLMAMIS. JONGLOR  " 
	!scr"ITE KAKA CALISTIGI HER HALINDEN BELLI"
	!scr"BIR BILGISAYARDA JOYSTICK ÇEVIRIYOR.    "
	!scr"IMAGINE VE SIPSATTI BIR KOSEDE MUHABBETI"
	!scr"DEMLEMEYE BASLAMISLAR. UNCANNY ISE HER  "
	!scr"ZAMANKI GIBI BIR KÖSEDE PIKSELLEMEYE"
	!scr"BASLAMIS BILE."
	!scr"GIRISTE KAYIT MAMASINDA ORGALARDAN BIRI "
	!scr"OTURUYOR. KARSISINDA DA KAHVE MASASI VAR.",0
	
vd6:	!scr"BURNUMA KAHVE KOKULARI GELIYOR. MASANIN "
	!scr"UZERIDNE KAHVE MAKINESI, YENINDA KAGIT  "
	!scr"BARDAKLAR, SEKER, KREMA VE BIR KAVANOZ  "
	!scr"KAHVE VAR.",0
	
vd7: 	!scr"ZZZT... BıZZT.. O DA NE! KAHVE MASASININ"
	!scr"ARKASINDA GIZLI BIR ODA VARMIS.         "
	!scr"DELIFISEK BURADA. ELLERI BAGLI. NELER DONUYOR?",0
	
vd8:	!scr"X SU ANDA COK ACELEM VAR.",0
	
vd9: 	!scr"-VAY VAY VAY MAHMUT GELMIS.",0
	
vd10: 	!scr"-NE ZAMANDIR GORUSMUYORDUK. NE VAR NE   "
	!scr"YOK?",0
	
vd11: 	!scr"-HMM. SURAYA KAHVE RENGI, ŞURAYA KOYU   "
	!scr"KAHVERENGI, ŞURAYA AÇIK KAHVE RENGI!",0
		
vd12:	!scr"MERHABA. SUPAPLEX OYNAR MISIN?",0

; ----------------------------------------
; General Commands 

gencmd:
	!scr"YARDIM"
	!scr"ETRAFI INCELE"
	!scr"ELIMNDE NE VAR"
	!scr"YANIMDA NE VAR"
	!scr"CIKIS"
	
; ----------------------------------------
; View Specific Commands
;

vcmd0:	!scr"CEKMECEYI AC",0
	!scr"CEKMECEYE BAK",0
	!scr"CUZDANI AL",0
	!scr"TELEFONU AL",0
	!scr"IYON KASATURASINI AL",0
	!scr"MEGELUX'E GIT",0
	!scr"CIK",0
	!scr"GIT",0
	!scr"EVET",0
	!scr"DURAGA GIT",0
	!scr"MASAYA BAK",0
vcmd1:

	!scr"TARIFEYI INCELE",0
	!scr"TARIFEYE BAK",0
	!scr"MEGALUX'UN EVINE GIT",0
	!scr"MEGALUX'E GIT",0
	!scr"PARTI MEKANINA GIT",0
	!scr"PARTIYE GIT",0
	!scr"BAKKALA GIR",0
	!scr"BAKKALA GIT",0
	!scr"EVE GIT",0
	!scr"EVE DON",0

vcmd2:
	!scr"XXX AL",0
	!scr"BISKUVI AL",0
	!scr"KAHVE AL",0
	!scr"KREMALI",0
	!scr"SADE",0
	!scr"KAFEINSIZ",0
	!scr"DURAGA GIT",0
	!scr"CIK",0

vcmd3:
	!scr"KONUS",0
	!scr"OYNA",0
	!scr"CIK",0
	!scr"DON",0
	!scr"DURAGA GIT",0
	
vcmd4:
	!scr"TARIFEYI INCELE",0
	!scr"PANOYU INCELE",0
	!scr"PANOYA BAK",0
	!scr"TARIFEYE BAK",0 
	!scr"MEGALUX'UN EVINE GIT",0
	!scr"MEGALUX'E GIT",0	
	!scr"PARTI MEKANINA GIT",0
	!scr"PARTIYE GIT",0
	!scr"BAKKALA GIR",0
	!scr"BAKKALA GIT",0
	!scr"EVE GIT",0
	!scr"EVE DON",0

vcmd5:
	!scr"JONGLOR’E GIT",0
	!scr"JONGLOR’UN YANINA GIT",0
	!scr"JONGLOR’LE KONUS",0
	!scr"IMAGINE’E GIT",0
	!scr"IMAGINE’IN YANINA GIT",0
	!scr"IMAGINE’LE KONUS",0
	!scr"SIPSATTI’YA GIT",0
	!scr"SIPSATTI’NIN YANINA GIT",0
	!scr"SIPSATTI’YLA KONUS",0
	!scr"UNCANNY’E GIT",0
	!scr"UNCANNY’NIN YANINA GIT",0
	!scr"UNCANNY’LE KONUS",0
	!scr"KAHVE MAKINESINE GIT",0
	!scr"KAHVE MAKINESININ YANINA GIT",0

vcmd6:
	!scr"KAHVE AL",0 
	!scr"KAVANOZU AL",0 

vcmd7:
	!scr"ELLERINI COZ",0

; ----------------------------------------
; Debug Data

test:
	!scr "TEST",0	