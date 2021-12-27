opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 11162"

opt pagewidth 120

	opt pm

	processor	18F46K80
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
skipnz macro
	btfsc	status,2
	endm
	global	__ramtop
	global	__accesstop
# 19 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXERRCNT equ 0E41h ;# 
# 41 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXERRCNT equ 0E42h ;# 
# 63 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
BRGCON1 equ 0E43h ;# 
# 86 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
BRGCON2 equ 0E44h ;# 
# 113 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
BRGCON3 equ 0E45h ;# 
# 133 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFCON0 equ 0E46h ;# 
# 152 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFCON1 equ 0E47h ;# 
# 171 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF6SIDH equ 0E48h ;# 
# 224 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF6SIDL equ 0E49h ;# 
# 271 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF6EIDH equ 0E4Ah ;# 
# 324 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF6EIDL equ 0E4Bh ;# 
# 377 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF7SIDH equ 0E4Ch ;# 
# 430 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF7SIDL equ 0E4Dh ;# 
# 477 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF7EIDH equ 0E4Eh ;# 
# 530 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF7EIDL equ 0E4Fh ;# 
# 583 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF8SIDH equ 0E50h ;# 
# 636 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF8SIDL equ 0E51h ;# 
# 683 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF8EIDH equ 0E52h ;# 
# 736 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF8EIDL equ 0E53h ;# 
# 789 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF9SIDH equ 0E54h ;# 
# 842 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF9SIDL equ 0E55h ;# 
# 889 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF9EIDH equ 0E56h ;# 
# 942 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF9EIDL equ 0E57h ;# 
# 995 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF10SIDH equ 0E58h ;# 
# 1048 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF10SIDL equ 0E59h ;# 
# 1095 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF10EIDH equ 0E5Ah ;# 
# 1148 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF10EIDL equ 0E5Bh ;# 
# 1201 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF11SIDH equ 0E5Ch ;# 
# 1254 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF11SIDL equ 0E5Dh ;# 
# 1301 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF11EIDH equ 0E5Eh ;# 
# 1354 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF11EIDL equ 0E5Fh ;# 
# 1407 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF12SIDH equ 0E60h ;# 
# 1460 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF12SIDL equ 0E61h ;# 
# 1507 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF12EIDH equ 0E62h ;# 
# 1560 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF12EIDL equ 0E63h ;# 
# 1613 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF13SIDH equ 0E64h ;# 
# 1666 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF13SIDL equ 0E65h ;# 
# 1713 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF13EIDH equ 0E66h ;# 
# 1766 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF13EIDL equ 0E67h ;# 
# 1819 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF14SIDH equ 0E68h ;# 
# 1872 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF14SIDL equ 0E69h ;# 
# 1919 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF14EIDH equ 0E6Ah ;# 
# 1972 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF14EIDL equ 0E6Bh ;# 
# 2025 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF15SIDH equ 0E6Ch ;# 
# 2078 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF15SIDL equ 0E6Dh ;# 
# 2125 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF15EIDH equ 0E6Eh ;# 
# 2178 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF15EIDL equ 0E6Fh ;# 
# 2231 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SDFLC equ 0E70h ;# 
# 2250 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFBCON0 equ 0E71h ;# 
# 2276 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFBCON1 equ 0E72h ;# 
# 2302 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFBCON2 equ 0E73h ;# 
# 2328 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFBCON3 equ 0E74h ;# 
# 2354 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFBCON4 equ 0E75h ;# 
# 2380 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFBCON5 equ 0E76h ;# 
# 2406 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFBCON6 equ 0E77h ;# 
# 2432 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXFBCON7 equ 0E78h ;# 
# 2458 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
MSEL0 equ 0E79h ;# 
# 2483 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
MSEL1 equ 0E7Ah ;# 
# 2508 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
MSEL2 equ 0E7Bh ;# 
# 2533 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
MSEL3 equ 0E7Ch ;# 
# 2558 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
BSEL0 equ 0E7Dh ;# 
# 2576 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
BIE0 equ 0E7Eh ;# 
# 2602 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXBIE equ 0E7Fh ;# 
# 2629 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0CON equ 0E80h ;# 
# 2740 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0SIDH equ 0E81h ;# 
# 2793 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0SIDL equ 0E82h ;# 
# 2844 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0EIDH equ 0E83h ;# 
# 2897 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0EIDL equ 0E84h ;# 
# 2950 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0DLC equ 0E85h ;# 
# 3004 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0D0 equ 0E86h ;# 
# 3026 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0D1 equ 0E87h ;# 
# 3048 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0D2 equ 0E88h ;# 
# 3070 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0D3 equ 0E89h ;# 
# 3092 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0D4 equ 0E8Ah ;# 
# 3114 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0D5 equ 0E8Bh ;# 
# 3136 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0D6 equ 0E8Ch ;# 
# 3158 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B0D7 equ 0E8Dh ;# 
# 3180 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO9 equ 0E8Eh ;# 
# 3221 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO9 equ 0E8Fh ;# 
# 3258 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1CON equ 0E90h ;# 
# 3369 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1SIDH equ 0E91h ;# 
# 3422 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1SIDL equ 0E92h ;# 
# 3473 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1EIDH equ 0E93h ;# 
# 3526 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1EIDL equ 0E94h ;# 
# 3579 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1DLC equ 0E95h ;# 
# 3633 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1D0 equ 0E96h ;# 
# 3655 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1D1 equ 0E97h ;# 
# 3677 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1D2 equ 0E98h ;# 
# 3699 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1D3 equ 0E99h ;# 
# 3721 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1D4 equ 0E9Ah ;# 
# 3743 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1D5 equ 0E9Bh ;# 
# 3765 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1D6 equ 0E9Ch ;# 
# 3787 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B1D7 equ 0E9Dh ;# 
# 3809 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO8 equ 0E9Eh ;# 
# 3850 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO8 equ 0E9Fh ;# 
# 3887 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2CON equ 0EA0h ;# 
# 3998 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2SIDH equ 0EA1h ;# 
# 4051 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2SIDL equ 0EA2h ;# 
# 4106 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2EIDH equ 0EA3h ;# 
# 4159 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2EIDL equ 0EA4h ;# 
# 4212 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2DLC equ 0EA5h ;# 
# 4266 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2D0 equ 0EA6h ;# 
# 4288 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2D1 equ 0EA7h ;# 
# 4310 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2D2 equ 0EA8h ;# 
# 4332 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2D3 equ 0EA9h ;# 
# 4354 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2D4 equ 0EAAh ;# 
# 4376 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2D5 equ 0EABh ;# 
# 4398 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2D6 equ 0EACh ;# 
# 4420 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B2D7 equ 0EADh ;# 
# 4442 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO7 equ 0EAEh ;# 
# 4483 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO7 equ 0EAFh ;# 
# 4520 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3CON equ 0EB0h ;# 
# 4631 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3SIDH equ 0EB1h ;# 
# 4684 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3SIDL equ 0EB2h ;# 
# 4739 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3EIDH equ 0EB3h ;# 
# 4792 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3EIDL equ 0EB4h ;# 
# 4845 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3DLC equ 0EB5h ;# 
# 4899 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3D0 equ 0EB6h ;# 
# 4921 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3D1 equ 0EB7h ;# 
# 4943 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3D2 equ 0EB8h ;# 
# 4965 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3D3 equ 0EB9h ;# 
# 4987 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3D4 equ 0EBAh ;# 
# 5009 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3D5 equ 0EBBh ;# 
# 5031 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3D6 equ 0EBCh ;# 
# 5053 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B3D7 equ 0EBDh ;# 
# 5075 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO6 equ 0EBEh ;# 
# 5116 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO6 equ 0EBFh ;# 
# 5153 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4CON equ 0EC0h ;# 
# 5264 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4SIDH equ 0EC1h ;# 
# 5317 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4SIDL equ 0EC2h ;# 
# 5372 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4EIDH equ 0EC3h ;# 
# 5425 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4EIDL equ 0EC4h ;# 
# 5478 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4DLC equ 0EC5h ;# 
# 5532 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4D0 equ 0EC6h ;# 
# 5554 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4D1 equ 0EC7h ;# 
# 5576 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4D2 equ 0EC8h ;# 
# 5598 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4D3 equ 0EC9h ;# 
# 5620 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4D4 equ 0ECAh ;# 
# 5642 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4D5 equ 0ECBh ;# 
# 5664 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4D6 equ 0ECCh ;# 
# 5686 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B4D7 equ 0ECDh ;# 
# 5708 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO5 equ 0ECEh ;# 
# 5749 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO5 equ 0ECFh ;# 
# 5786 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5CON equ 0ED0h ;# 
# 5897 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5SIDH equ 0ED1h ;# 
# 5950 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5SIDL equ 0ED2h ;# 
# 6005 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5EIDH equ 0ED3h ;# 
# 6058 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5EIDL equ 0ED4h ;# 
# 6111 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5DLC equ 0ED5h ;# 
# 6165 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5D0 equ 0ED6h ;# 
# 6187 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5D1 equ 0ED7h ;# 
# 6209 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5D2 equ 0ED8h ;# 
# 6231 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5D3 equ 0ED9h ;# 
# 6253 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5D4 equ 0EDAh ;# 
# 6275 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5D5 equ 0EDBh ;# 
# 6297 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5D6 equ 0EDCh ;# 
# 6319 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
B5D7 equ 0EDDh ;# 
# 6341 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO4 equ 0EDEh ;# 
# 6382 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO4 equ 0EDFh ;# 
# 6419 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF0SIDH equ 0EE0h ;# 
# 6472 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF0SIDL equ 0EE1h ;# 
# 6519 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF0EIDH equ 0EE2h ;# 
# 6572 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF0EIDL equ 0EE3h ;# 
# 6625 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF1SIDH equ 0EE4h ;# 
# 6678 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF1SIDL equ 0EE5h ;# 
# 6725 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF1EIDH equ 0EE6h ;# 
# 6778 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF1EIDL equ 0EE7h ;# 
# 6831 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF2SIDH equ 0EE8h ;# 
# 6884 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF2SIDL equ 0EE9h ;# 
# 6931 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF2EIDH equ 0EEAh ;# 
# 6984 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF2EIDL equ 0EEBh ;# 
# 7037 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF3SIDH equ 0EECh ;# 
# 7090 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF3SIDL equ 0EEDh ;# 
# 7137 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF3EIDH equ 0EEEh ;# 
# 7190 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF3EIDL equ 0EEFh ;# 
# 7243 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF4SIDH equ 0EF0h ;# 
# 7296 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF4SIDL equ 0EF1h ;# 
# 7343 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF4EIDH equ 0EF2h ;# 
# 7396 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF4EIDL equ 0EF3h ;# 
# 7449 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF5SIDH equ 0EF4h ;# 
# 7502 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF5SIDL equ 0EF5h ;# 
# 7549 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF5EIDH equ 0EF6h ;# 
# 7602 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXF5EIDL equ 0EF7h ;# 
# 7655 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXM0SIDH equ 0EF8h ;# 
# 7708 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXM0SIDL equ 0EF9h ;# 
# 7755 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXM0EIDH equ 0EFAh ;# 
# 7808 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXM0EIDL equ 0EFBh ;# 
# 7861 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXM1SIDH equ 0EFCh ;# 
# 7914 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXM1SIDL equ 0EFDh ;# 
# 7961 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXM1EIDH equ 0EFEh ;# 
# 8014 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXM1EIDL equ 0EFFh ;# 
# 8067 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2CON equ 0F00h ;# 
# 8116 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2SIDH equ 0F01h ;# 
# 8169 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2SIDL equ 0F02h ;# 
# 8216 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2EIDH equ 0F03h ;# 
# 8269 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2EIDL equ 0F04h ;# 
# 8322 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2DLC equ 0F05h ;# 
# 8361 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2D0 equ 0F06h ;# 
# 8383 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2D1 equ 0F07h ;# 
# 8405 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2D2 equ 0F08h ;# 
# 8427 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2D3 equ 0F09h ;# 
# 8449 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2D4 equ 0F0Ah ;# 
# 8471 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2D5 equ 0F0Bh ;# 
# 8493 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2D6 equ 0F0Ch ;# 
# 8515 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB2D7 equ 0F0Dh ;# 
# 8537 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO3 equ 0F0Eh ;# 
# 8578 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO3 equ 0F0Fh ;# 
# 8615 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1CON equ 0F10h ;# 
# 8664 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1SIDH equ 0F11h ;# 
# 8717 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1SIDL equ 0F12h ;# 
# 8764 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1EIDH equ 0F13h ;# 
# 8817 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1EIDL equ 0F14h ;# 
# 8870 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1DLC equ 0F15h ;# 
# 8909 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1D0 equ 0F16h ;# 
# 8931 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1D1 equ 0F17h ;# 
# 8953 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1D2 equ 0F18h ;# 
# 8975 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1D3 equ 0F19h ;# 
# 8997 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1D4 equ 0F1Ah ;# 
# 9019 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1D5 equ 0F1Bh ;# 
# 9041 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1D6 equ 0F1Ch ;# 
# 9063 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB1D7 equ 0F1Dh ;# 
# 9085 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO2 equ 0F1Eh ;# 
# 9126 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO2 equ 0F1Fh ;# 
# 9163 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0CON equ 0F20h ;# 
# 9212 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0SIDH equ 0F21h ;# 
# 9265 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0SIDL equ 0F22h ;# 
# 9312 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0EIDH equ 0F23h ;# 
# 9365 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0EIDL equ 0F24h ;# 
# 9418 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0DLC equ 0F25h ;# 
# 9457 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0D0 equ 0F26h ;# 
# 9479 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0D1 equ 0F27h ;# 
# 9501 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0D2 equ 0F28h ;# 
# 9523 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0D3 equ 0F29h ;# 
# 9545 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0D4 equ 0F2Ah ;# 
# 9567 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0D5 equ 0F2Bh ;# 
# 9589 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0D6 equ 0F2Ch ;# 
# 9611 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXB0D7 equ 0F2Dh ;# 
# 9633 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO1 equ 0F2Eh ;# 
# 9674 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO1 equ 0F2Fh ;# 
# 9711 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1CON equ 0F30h ;# 
# 9781 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1SIDH equ 0F31h ;# 
# 9834 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1SIDL equ 0F32h ;# 
# 9885 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1EIDH equ 0F33h ;# 
# 9938 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1EIDL equ 0F34h ;# 
# 9991 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1DLC equ 0F35h ;# 
# 10040 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1D0 equ 0F36h ;# 
# 10062 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1D1 equ 0F37h ;# 
# 10084 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1D2 equ 0F38h ;# 
# 10106 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1D3 equ 0F39h ;# 
# 10128 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1D4 equ 0F3Ah ;# 
# 10150 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1D5 equ 0F3Bh ;# 
# 10172 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1D6 equ 0F3Ch ;# 
# 10194 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB1D7 equ 0F3Dh ;# 
# 10216 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT_RO0 equ 0F3Eh ;# 
# 10257 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON_RO0 equ 0F3Fh ;# 
# 10294 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PSPCON equ 0F46h ;# 
# 10310 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCP5CON equ 0F47h ;# 
# 10336 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR5 equ 0F48h ;# 
# 10342 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR5L equ 0F48h ;# 
# 10354 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR5H equ 0F49h ;# 
# 10366 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCP4CON equ 0F4Ah ;# 
# 10392 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR4 equ 0F4Bh ;# 
# 10398 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR4L equ 0F4Bh ;# 
# 10410 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR4H equ 0F4Ch ;# 
# 10422 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCP3CON equ 0F4Dh ;# 
# 10448 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR3 equ 0F4Eh ;# 
# 10454 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR3L equ 0F4Eh ;# 
# 10466 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR3H equ 0F4Fh ;# 
# 10478 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCP2CON equ 0F50h ;# 
# 10483 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ECCP2CON equ 0F50h ;# 
# 10529 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR2 equ 0F51h ;# 
# 10535 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR2L equ 0F51h ;# 
# 10547 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR2H equ 0F52h ;# 
# 10559 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CTMUICON equ 0F53h ;# 
# 10582 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CTMUCONL equ 0F54h ;# 
# 10607 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CTMUCONH equ 0F55h ;# 
# 10626 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PADCFG1 equ 0F56h ;# 
# 10644 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PMD2 equ 0F57h ;# 
# 10658 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PMD1 equ 0F58h ;# 
# 10680 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PMD0 equ 0F59h ;# 
# 10707 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
IOCB equ 0F5Ah ;# 
# 10723 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
WPUB equ 0F5Bh ;# 
# 10742 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ANCON1 equ 0F5Ch ;# 
# 10787 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ANCON0 equ 0F5Dh ;# 
# 10837 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CM2CON equ 0F5Eh ;# 
# 10842 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CM2CON1 equ 0F5Eh ;# 
# 10946 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CM1CON equ 0F5Fh ;# 
# 10951 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CM1CON1 equ 0F5Fh ;# 
# 11069 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0CON equ 0F60h ;# 
# 11143 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0SIDH equ 0F61h ;# 
# 11196 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0SIDL equ 0F62h ;# 
# 11247 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0EIDH equ 0F63h ;# 
# 11300 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0EIDL equ 0F64h ;# 
# 11353 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0DLC equ 0F65h ;# 
# 11402 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0D0 equ 0F66h ;# 
# 11424 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0D1 equ 0F67h ;# 
# 11446 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0D2 equ 0F68h ;# 
# 11468 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0D3 equ 0F69h ;# 
# 11490 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0D4 equ 0F6Ah ;# 
# 11512 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0D5 equ 0F6Bh ;# 
# 11534 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0D6 equ 0F6Ch ;# 
# 11556 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RXB0D7 equ 0F6Dh ;# 
# 11578 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANSTAT equ 0F6Eh ;# 
# 11619 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CANCON equ 0F6Fh ;# 
# 11656 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CIOCON equ 0F70h ;# 
# 11673 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
COMSTAT equ 0F71h ;# 
# 11722 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ECANCON equ 0F72h ;# 
# 11746 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
EEDATA equ 0F73h ;# 
# 11758 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
EEADR equ 0F74h ;# 
# 11770 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
EEADRH equ 0F75h ;# 
# 11782 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIE5 equ 0F76h ;# 
# 11807 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIR5 equ 0F77h ;# 
# 11832 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
IPR5 equ 0F78h ;# 
# 11872 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXREG2 equ 0F79h ;# 
# 11884 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RCREG2 equ 0F7Ah ;# 
# 11896 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SPBRG2 equ 0F7Bh ;# 
# 11908 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SPBRGH2 equ 0F7Ch ;# 
# 11920 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SPBRGH1 equ 0F7Dh ;# 
# 11932 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
EECON2 equ 0F7Eh ;# 
# 11944 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
EECON1 equ 0F7Fh ;# 
# 11967 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PORTA equ 0F80h ;# 
# 12004 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PORTB equ 0F81h ;# 
# 12030 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PORTC equ 0F82h ;# 
# 12064 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PORTD equ 0F83h ;# 
# 12090 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PORTE equ 0F84h ;# 
# 12190 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR4 equ 0F87h ;# 
# 12202 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
T4CON equ 0F88h ;# 
# 12225 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
LATA equ 0F89h ;# 
# 12278 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
LATB equ 0F8Ah ;# 
# 12331 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
LATC equ 0F8Bh ;# 
# 12384 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
LATD equ 0F8Ch ;# 
# 12437 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
LATE equ 0F8Dh ;# 
# 12485 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SLRCON equ 0F90h ;# 
# 12501 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ODCON equ 0F91h ;# 
# 12520 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TRISA equ 0F92h ;# 
# 12542 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TRISB equ 0F93h ;# 
# 12564 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TRISC equ 0F94h ;# 
# 12586 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TRISD equ 0F95h ;# 
# 12608 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TRISE equ 0F96h ;# 
# 12625 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPTMRS equ 0F99h ;# 
# 12641 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
REFOCON equ 0F9Ah ;# 
# 12663 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
OSCTUNE equ 0F9Bh ;# 
# 12685 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PSTR1CON equ 0F9Ch ;# 
# 12708 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIE1 equ 0F9Dh ;# 
# 12732 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIR1 equ 0F9Eh ;# 
# 12756 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
IPR1 equ 0F9Fh ;# 
# 12780 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIE2 equ 0FA0h ;# 
# 12801 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIR2 equ 0FA1h ;# 
# 12822 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
IPR2 equ 0FA2h ;# 
# 12843 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIE3 equ 0FA3h ;# 
# 12884 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIR3 equ 0FA4h ;# 
# 12909 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
IPR3 equ 0FA5h ;# 
# 12934 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RCSTA2 equ 0FA6h ;# 
# 12974 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
BAUDCON1 equ 0FA7h ;# 
# 13048 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
HLVDCON equ 0FA8h ;# 
# 13070 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PR4 equ 0FA9h ;# 
# 13082 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
T1GCON equ 0FAAh ;# 
# 13118 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RCSTA1 equ 0FABh ;# 
# 13123 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RCSTA equ 0FABh ;# 
# 13221 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXSTA1 equ 0FACh ;# 
# 13226 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXSTA equ 0FACh ;# 
# 13304 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXREG1 equ 0FADh ;# 
# 13309 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXREG equ 0FADh ;# 
# 13327 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RCREG1 equ 0FAEh ;# 
# 13332 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RCREG equ 0FAEh ;# 
# 13350 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SPBRG1 equ 0FAFh ;# 
# 13355 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SPBRG equ 0FAFh ;# 
# 13373 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
T3GCON equ 0FB0h ;# 
# 13409 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
T3CON equ 0FB1h ;# 
# 13449 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR3 equ 0FB2h ;# 
# 13461 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR3L equ 0FB2h ;# 
# 13473 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR3H equ 0FB3h ;# 
# 13485 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CMSTAT equ 0FB4h ;# 
# 13490 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CMSTATUS equ 0FB4h ;# 
# 13528 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CVRCON equ 0FB5h ;# 
# 13558 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIE4 equ 0FB6h ;# 
# 13577 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PIR4 equ 0FB7h ;# 
# 13596 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
IPR4 equ 0FB8h ;# 
# 13618 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
BAUDCON2 equ 0FB9h ;# 
# 13680 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TXSTA2 equ 0FBAh ;# 
# 13716 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCP1CON equ 0FBBh ;# 
# 13721 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ECCP1CON equ 0FBBh ;# 
# 13773 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR1 equ 0FBCh ;# 
# 13779 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR1L equ 0FBCh ;# 
# 13791 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
CCPR1H equ 0FBDh ;# 
# 13803 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ECCP1DEL equ 0FBEh ;# 
# 13808 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PWM1CON equ 0FBEh ;# 
# 13846 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ECCP1AS equ 0FBFh ;# 
# 13870 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ADCON2 equ 0FC0h ;# 
# 13893 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ADCON1 equ 0FC1h ;# 
# 13930 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ADCON0 equ 0FC2h ;# 
# 13977 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ADRES equ 0FC3h ;# 
# 13989 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ADRESL equ 0FC3h ;# 
# 14001 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
ADRESH equ 0FC4h ;# 
# 14013 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SSPCON2 equ 0FC5h ;# 
# 14040 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SSPCON1 equ 0FC6h ;# 
# 14062 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SSPSTAT equ 0FC7h ;# 
# 14158 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SSPADD equ 0FC8h ;# 
# 14180 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
SSPBUF equ 0FC9h ;# 
# 14192 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
T2CON equ 0FCAh ;# 
# 14215 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PR2 equ 0FCBh ;# 
# 14220 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
MEMCON equ 0FCBh ;# 
# 14238 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR2 equ 0FCCh ;# 
# 14250 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
T1CON equ 0FCDh ;# 
# 14286 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR1 equ 0FCEh ;# 
# 14298 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR1L equ 0FCEh ;# 
# 14310 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR1H equ 0FCFh ;# 
# 14322 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
RCON equ 0FD0h ;# 
# 14372 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
WDTCON equ 0FD1h ;# 
# 14394 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
OSCCON2 equ 0FD2h ;# 
# 14418 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
OSCCON equ 0FD3h ;# 
# 14442 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
T0CON equ 0FD5h ;# 
# 14464 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR0 equ 0FD6h ;# 
# 14476 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR0L equ 0FD6h ;# 
# 14488 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TMR0H equ 0FD7h ;# 
# 14500 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
STATUS equ 0FD8h ;# 
# 14531 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
FSR2 equ 0FD9h ;# 
# 14543 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
FSR2L equ 0FD9h ;# 
# 14555 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
FSR2H equ 0FDAh ;# 
# 14567 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PLUSW2 equ 0FDBh ;# 
# 14579 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PREINC2 equ 0FDCh ;# 
# 14591 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
POSTDEC2 equ 0FDDh ;# 
# 14603 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
POSTINC2 equ 0FDEh ;# 
# 14615 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
INDF2 equ 0FDFh ;# 
# 14627 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
BSR equ 0FE0h ;# 
# 14639 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
FSR1 equ 0FE1h ;# 
# 14651 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
FSR1L equ 0FE1h ;# 
# 14663 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
FSR1H equ 0FE2h ;# 
# 14675 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PLUSW1 equ 0FE3h ;# 
# 14687 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PREINC1 equ 0FE4h ;# 
# 14699 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
POSTDEC1 equ 0FE5h ;# 
# 14711 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
POSTINC1 equ 0FE6h ;# 
# 14723 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
INDF1 equ 0FE7h ;# 
# 14735 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
WREG equ 0FE8h ;# 
# 14747 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
FSR0 equ 0FE9h ;# 
# 14759 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
FSR0L equ 0FE9h ;# 
# 14771 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
FSR0H equ 0FEAh ;# 
# 14783 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PLUSW0 equ 0FEBh ;# 
# 14795 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PREINC0 equ 0FECh ;# 
# 14807 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
POSTDEC0 equ 0FEDh ;# 
# 14819 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
POSTINC0 equ 0FEEh ;# 
# 14831 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
INDF0 equ 0FEFh ;# 
# 14843 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
INTCON3 equ 0FF0h ;# 
# 14872 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
INTCON2 equ 0FF1h ;# 
# 14902 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
INTCON equ 0FF2h ;# 
# 14907 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
INTCON1 equ 0FF2h ;# 
# 14999 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PROD equ 0FF3h ;# 
# 15011 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PRODL equ 0FF3h ;# 
# 15023 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PRODH equ 0FF4h ;# 
# 15035 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TABLAT equ 0FF5h ;# 
# 15047 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TBLPTR equ 0FF6h ;# 
# 15059 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TBLPTRL equ 0FF6h ;# 
# 15071 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TBLPTRH equ 0FF7h ;# 
# 15083 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TBLPTRU equ 0FF8h ;# 
# 15095 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PCLAT equ 0FF9h ;# 
# 15100 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PC equ 0FF9h ;# 
# 15118 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PCL equ 0FF9h ;# 
# 15130 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PCLATH equ 0FFAh ;# 
# 15142 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
PCLATU equ 0FFBh ;# 
# 15154 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
STKPTR equ 0FFCh ;# 
# 15178 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TOS equ 0FFDh ;# 
# 15190 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TOSL equ 0FFDh ;# 
# 15202 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TOSH equ 0FFEh ;# 
# 15214 "C:\Program Files (x86)\HI-TECH Software\PICC-18\9.80\include\pic18f46k80.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_loop
	FNROOT	_main
	FNCALL	intlevel2,_high_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_servo_time_val
	global	_count
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_INTCON
_INTCON	set	0xFF2
	global	_INTCON2
_INTCON2	set	0xFF1
	global	_IPR1
_IPR1	set	0xF9F
	global	_LATB
_LATB	set	0xF8A
	global	_LATD
_LATD	set	0xF8C
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_PIE1
_PIE1	set	0xF9D
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_PORTB
_PORTB	set	0xF81
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_T1CONbits
_T1CONbits	set	0xFCD
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TMR1H
_TMR1H	set	0xFCF
	global	_TMR1L
_TMR1L	set	0xFCE
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISD
_TRISD	set	0xF95
	global	_PLLEN
_PLLEN	set	0x7CDE
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR1IF
_TMR1IF	set	0x7CF0
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
; #config settings
	file	"18lf46k80.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

psect	bssCOMRAM,class=COMRAM,space=1
global __pbssCOMRAM
__pbssCOMRAM:
	global	_servo_time_val
_servo_time_val:
       ds      18
	global	_count
_count:
       ds      1
psect	cinit
; Clear objects allocated to COMRAM (19 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	19
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1
global __pcstackCOMRAM
__pcstackCOMRAM:
	global	?_loop
?_loop:	; 0 bytes @ 0x0
	global	??_loop
??_loop:	; 0 bytes @ 0x0
	global	?_high_isr
?_high_isr:	; 0 bytes @ 0x0
	global	??_high_isr
??_high_isr:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         19
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95      0      19
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14           65      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _high_isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK14
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;!                               _loop
;! ---------------------------------------------------------------------------------
;! (1) _loop                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _high_isr                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _loop
;!
;! _high_isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             E40      0       0      35        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK13          100      0       0      31        0.0%
;!BANK13             100      0       0      32        0.0%
;!BITBANK12          100      0       0      29        0.0%
;!BANK12             100      0       0      30        0.0%
;!BITBANK11          100      0       0      27        0.0%
;!BANK11             100      0       0      28        0.0%
;!BITBANK10          100      0       0      25        0.0%
;!BANK10             100      0       0      26        0.0%
;!BITBANK9           100      0       0      23        0.0%
;!BANK9              100      0       0      24        0.0%
;!BITBANK8           100      0       0      21        0.0%
;!BANK8              100      0       0      22        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK3           100      0       0      11        0.0%
;!BANK3              100      0       0      12        0.0%
;!BITBANK2           100      0       0       9        0.0%
;!BANK2              100      0       0      10        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100      0       0       8        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F      0      13       1       20.0%
;!BITBANK14           41      0       0      33        0.0%
;!BANK14              41      0       0      34        0.0%
;!BITSFR_2             0      0       0      40        0.0%
;!SFR_2                0      0       0      40        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       1       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      13       6        0.0%
;!DATA                 0      0      14       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 73 in file "C:\Programming\Pic Microcontrollers\8 bit pic\Wip\robot\18f46k80 basic robot\lab1_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pclat, tosl, structret, tblptrl, tblptrh, tblptru, prodl, prodh, bsr, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_loop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
psect	text0
	file	"C:\Programming\Pic Microcontrollers\8 bit pic\Wip\robot\18f46k80 basic robot\lab1_led.c"
	line	73
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
	opt	stack 29
	line	74
	
l707:
;lab1_led.c: 74: OSCCON = 0b01110000;
	movlw	low(070h)
	movwf	((c:4051)),c	;volatile
	line	75
	
l709:
;lab1_led.c: 75: PLLEN = 1;
	bsf	c:(31966/8),(31966)&7	;volatile
	line	76
	
l711:
;lab1_led.c: 76: ADCON0 = 0;
	clrf	((c:4034)),c	;volatile
	line	77
	
l713:
;lab1_led.c: 77: ADCON1 = 0;
	clrf	((c:4033)),c	;volatile
	line	78
;lab1_led.c: 78: ADCON2 = 0b000000011;
	movlw	low(03h)
	movwf	((c:4032)),c	;volatile
	line	79
	
l715:
;lab1_led.c: 79: TRISD = 0b00000000;
	clrf	((c:3989)),c	;volatile
	line	80
	
l717:
;lab1_led.c: 80: TRISA = 0b00000000;
	clrf	((c:3986)),c	;volatile
	line	81
	
l719:
;lab1_led.c: 81: TRISB = 0b00000000;
	clrf	((c:3987)),c	;volatile
	line	82
	
l721:
;lab1_led.c: 82: LATB = 0;
	clrf	((c:3978)),c	;volatile
	line	84
;lab1_led.c: 84: INTCON = 0b11100000;
	movlw	low(0E0h)
	movwf	((c:4082)),c	;volatile
	line	85
;lab1_led.c: 85: INTCON2 = 0b00000100;
	movlw	low(04h)
	movwf	((c:4081)),c	;volatile
	line	86
;lab1_led.c: 86: PIE1 = 0b0000001;
	movlw	low(01h)
	movwf	((c:3997)),c	;volatile
	line	87
;lab1_led.c: 87: IPR1 = 0b0000001;
	movlw	low(01h)
	movwf	((c:3999)),c	;volatile
	line	89
	
l723:
;lab1_led.c: 89: T0CONbits.T08BIT = 0;
	bcf	((c:4053)),c,6	;volatile
	line	90
	
l725:
;lab1_led.c: 90: T0CONbits.T0CS = 0;
	bcf	((c:4053)),c,5	;volatile
	line	91
	
l727:
;lab1_led.c: 91: T0CONbits.PSA = 0;
	bcf	((c:4053)),c,3	;volatile
	line	92
	
l729:
;lab1_led.c: 92: T0CONbits.T0PS2 = 0;
	bcf	((c:4053)),c,2	;volatile
	line	93
	
l731:
;lab1_led.c: 93: T0CONbits.T0PS1 = 0;
	bcf	((c:4053)),c,1	;volatile
	line	94
	
l733:
;lab1_led.c: 94: T0CONbits.T0PS0 = 1;
	bsf	((c:4053)),c,0	;volatile
	line	95
;lab1_led.c: 95: TMR0H = 0x63;
	movlw	low(063h)
	movwf	((c:4055)),c	;volatile
	line	96
;lab1_led.c: 96: TMR0L = 0xC0;
	movlw	low(0C0h)
	movwf	((c:4054)),c	;volatile
	line	98
	
l735:
;lab1_led.c: 98: T0CONbits.TMR0ON = 1;
	bsf	((c:4053)),c,7	;volatile
	line	103
	
l737:
;lab1_led.c: 103: T1CONbits.T1CKPS1 = 0;
	bcf	((c:4045)),c,5	;volatile
	line	104
	
l739:
;lab1_led.c: 104: T1CONbits.T1CKPS0 = 1;
	bsf	((c:4045)),c,4	;volatile
	line	105
	
l741:
;lab1_led.c: 105: T1CONbits.T1OSCEN = 1;
	bsf	((c:4045)),c,3	;volatile
	line	106
	
l743:
;lab1_led.c: 106: T1CONbits.NOT_T1SYNC = 1;
	bsf	((c:4045)),c,2	;volatile
	line	107
;lab1_led.c: 107: T1CONbits.TMR1CS = 0;
	movlw	((0 & ((1<<2)-1))<<6)|not (((1<<2)-1)<<6)
	andwf	((c:4045)),c	;volatile
	line	109
;lab1_led.c: 109: TMR1H = 0xe8;
	movlw	low(0E8h)
	movwf	((c:4047)),c	;volatile
	line	110
;lab1_led.c: 110: TMR1L = 0x90;
	movlw	low(090h)
	movwf	((c:4046)),c	;volatile
	line	111
	
l745:
;lab1_led.c: 111: T1CONbits.TMR1ON = 1;
	bsf	((c:4045)),c,0	;volatile
	line	112
	
l747:
;lab1_led.c: 112: loop();
	call	_loop	;wreg free
	line	113
	
l90:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_loop

;; *************** function _loop *****************
;; Defined at:
;;		line 117 in file "C:\Programming\Pic Microcontrollers\8 bit pic\Wip\robot\18f46k80 basic robot\lab1_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
psect	text1
	file	"C:\Programming\Pic Microcontrollers\8 bit pic\Wip\robot\18f46k80 basic robot\lab1_led.c"
	line	117
	global	__size_of_loop
	__size_of_loop	equ	__end_of_loop-_loop
	
_loop:
	opt	stack 29
	line	119
;lab1_led.c: 119: while (1)
	
l93:
	line	121
;lab1_led.c: 120: {
;lab1_led.c: 121: LATD = 255;
	setf	((c:3980)),c	;volatile
	goto	l93
	return
	opt stack 0
psect	text2,class=CODE,space=0,reloc=2
global __ptext2
__ptext2:
	line	157
GLOBAL	__end_of_loop
	__end_of_loop:
	signat	_loop,88
	global	_high_isr

;; *************** function _high_isr *****************
;; Defined at:
;;		line 18 in file "C:\Programming\Pic Microcontrollers\8 bit pic\Wip\robot\18f46k80 basic robot\lab1_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode
psect	intcode
	file	"C:\Programming\Pic Microcontrollers\8 bit pic\Wip\robot\18f46k80 basic robot\lab1_led.c"
	line	18
	global	__size_of_high_isr
	__size_of_high_isr	equ	__end_of_high_isr-_high_isr
	
_high_isr:
	opt	stack 29
	line	19
	
i2l675:
;lab1_led.c: 19: if(TMR0IF)
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u1_41
	goto	i2u1_40
i2u1_41:
	goto	i2l687
i2u1_40:
	line	21
	
i2l677:
;lab1_led.c: 20: {
;lab1_led.c: 21: T0CONbits.TMR0ON = 0;
	bcf	((c:4053)),c,7	;volatile
	line	22
	
i2l679:
;lab1_led.c: 22: TMR0H = 0x63;
	movlw	low(063h)
	movwf	((c:4055)),c	;volatile
	line	23
;lab1_led.c: 23: TMR0L = 0xC0;
	movlw	low(0C0h)
	movwf	((c:4054)),c	;volatile
	line	24
;lab1_led.c: 24: TMR1H = 0xe8;
	movlw	low(0E8h)
	movwf	((c:4047)),c	;volatile
	line	25
;lab1_led.c: 25: TMR1L = 0x90;
	movlw	low(090h)
	movwf	((c:4046)),c	;volatile
	line	26
	
i2l681:
;lab1_led.c: 26: count = 0;
	clrf	((c:_count)),c
	line	27
	
i2l683:
;lab1_led.c: 27: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	29
	
i2l685:
;lab1_led.c: 29: T0CONbits.TMR0ON = 1;
	bsf	((c:4053)),c,7	;volatile
	line	33
	
i2l687:
;lab1_led.c: 30: }
;lab1_led.c: 33: if(PIR1bits.TMR1IF == 1 && PIE1bits.TMR1IE == 1)
	
	btfss	((c:3998)),c,0	;volatile
	goto	i2u2_41
	goto	i2u2_40
i2u2_41:
	goto	i2l82
i2u2_40:
	
i2l689:
	
	btfss	((c:3997)),c,0	;volatile
	goto	i2u3_41
	goto	i2u3_40
i2u3_41:
	goto	i2l82
i2u3_40:
	line	35
	
i2l691:
;lab1_led.c: 34: {
;lab1_led.c: 35: T1CONbits.TMR1ON = 0;
	bcf	((c:4045)),c,0	;volatile
	line	36
	
i2l693:
;lab1_led.c: 36: count++;
	incf	((c:_count)),c
	line	37
;lab1_led.c: 37: switch(count){
	goto	i2l705
	line	38
	
i2l695:
	movlw	low(01h)
	movwf	((c:3969)),c	;volatile
	line	40
;lab1_led.c: 40: TMR1H = servo_time_val[0] >> 8 & 0x00ff;
	movf	((c:_servo_time_val+1)),c,w
	movwf	((c:4047)),c	;volatile
	line	41
	
i2l697:
;lab1_led.c: 41: TMR1L = servo_time_val[0] & 0x0011;
	movf	((c:_servo_time_val)),c,w
	andlw	low(011h)
	movwf	((c:4046)),c	;volatile
	line	42
;lab1_led.c: 42: break;
	goto	i2l79
	line	43
	
i2l699:
	movlw	low(02h)
	movwf	((c:3969)),c	;volatile
	line	45
;lab1_led.c: 45: TMR1H = servo_time_val[1] >> 8 & 0x00ff;
	movf	(1+((c:_servo_time_val)+02h)),c,w
	movwf	((c:4047)),c	;volatile
	line	46
	
i2l701:
;lab1_led.c: 46: TMR1L = servo_time_val[1] & 0x0011;
	movf	(0+((c:_servo_time_val)+02h)),c,w
	andlw	low(011h)
	movwf	((c:4046)),c	;volatile
	line	47
;lab1_led.c: 47: break;
	goto	i2l79
	line	48
;lab1_led.c: 48: case 3: PORTB = 0x00;
	
i2l81:
	clrf	((c:3969)),c	;volatile
	line	50
;lab1_led.c: 50: TMR1H = 0x00;
	clrf	((c:4047)),c	;volatile
	line	51
;lab1_led.c: 51: TMR1L = 0x00;
	clrf	((c:4046)),c	;volatile
	line	52
;lab1_led.c: 52: break;
	goto	i2l79
	line	37
	
i2l705:
	movf	((c:_count)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	i2l695
	xorlw	2^1	; case 2
	skipnz
	goto	i2l699
	xorlw	3^2	; case 3
	skipnz
	goto	i2l81
	goto	i2l79

	line	53
	
i2l79:
	line	57
;lab1_led.c: 57: TMR1IF = 0;
	bcf	c:(31984/8),(31984)&7	;volatile
	line	58
;lab1_led.c: 58: T1CONbits.TMR1ON = 1;
	bsf	((c:4045)),c,0	;volatile
	line	61
	
i2l82:
	retfie f
	opt stack 0
GLOBAL	__end_of_high_isr
	__end_of_high_isr:
	signat	_high_isr,88
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1
psect	intcode
	PSECT	rparam,class=COMRAM,space=1
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
