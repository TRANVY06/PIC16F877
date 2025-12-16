subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og1 "

pagewidth 120

	opt flic

	processor	16F887
include "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc\16f887.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTA equ 05h ;# 
# 230 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTB equ 06h ;# 
# 292 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTC equ 07h ;# 
# 354 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTD equ 08h ;# 
# 416 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTE equ 09h ;# 
# 454 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PCLATH equ 0Ah ;# 
# 461 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
INTCON equ 0Bh ;# 
# 539 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PIR1 equ 0Ch ;# 
# 595 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PIR2 equ 0Dh ;# 
# 652 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR1 equ 0Eh ;# 
# 659 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR1L equ 0Eh ;# 
# 666 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR1H equ 0Fh ;# 
# 673 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
T1CON equ 010h ;# 
# 767 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR2 equ 011h ;# 
# 774 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
T2CON equ 012h ;# 
# 845 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPBUF equ 013h ;# 
# 852 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPCON equ 014h ;# 
# 922 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR1 equ 015h ;# 
# 929 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR1L equ 015h ;# 
# 936 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR1H equ 016h ;# 
# 943 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCP1CON equ 017h ;# 
# 1040 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
RCSTA equ 018h ;# 
# 1135 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TXREG equ 019h ;# 
# 1142 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
RCREG equ 01Ah ;# 
# 1149 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1156 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1163 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1170 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1240 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ADRESH equ 01Eh ;# 
# 1247 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1348 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
OPTION_REG equ 081h ;# 
# 1418 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISA equ 085h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISB equ 086h ;# 
# 1542 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISC equ 087h ;# 
# 1604 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISD equ 088h ;# 
# 1666 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISE equ 089h ;# 
# 1704 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PIE1 equ 08Ch ;# 
# 1760 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PIE2 equ 08Dh ;# 
# 1817 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PCON equ 08Eh ;# 
# 1864 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
OSCCON equ 08Fh ;# 
# 1929 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
OSCTUNE equ 090h ;# 
# 1981 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPCON2 equ 091h ;# 
# 2043 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PR2 equ 092h ;# 
# 2050 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPADD equ 093h ;# 
# 2057 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPMSK equ 093h ;# 
# 2062 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
MSK equ 093h ;# 
# 2179 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPSTAT equ 094h ;# 
# 2348 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
WPUB equ 095h ;# 
# 2418 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
IOCB equ 096h ;# 
# 2488 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
VRCON equ 097h ;# 
# 2558 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TXSTA equ 098h ;# 
# 2644 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SPBRG equ 099h ;# 
# 2706 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2776 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2846 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2928 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2972 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ADRESL equ 09Eh ;# 
# 2979 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3013 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
WDTCON equ 0105h ;# 
# 3066 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3131 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3196 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3247 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEDATA equ 010Ch ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEDAT equ 010Ch ;# 
# 3259 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEADR equ 010Dh ;# 
# 3266 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEDATH equ 010Eh ;# 
# 3273 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEADRH equ 010Fh ;# 
# 3280 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SRCON equ 0185h ;# 
# 3337 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3389 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ANSEL equ 0188h ;# 
# 3451 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ANSELH equ 0189h ;# 
# 3501 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EECON1 equ 018Ch ;# 
# 3546 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EECON2 equ 018Dh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
INDF equ 00h ;# 
# 61 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR0 equ 01h ;# 
# 68 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PCL equ 02h ;# 
# 75 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
STATUS equ 03h ;# 
# 161 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
FSR equ 04h ;# 
# 168 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTA equ 05h ;# 
# 230 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTB equ 06h ;# 
# 292 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTC equ 07h ;# 
# 354 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTD equ 08h ;# 
# 416 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PORTE equ 09h ;# 
# 454 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PCLATH equ 0Ah ;# 
# 461 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
INTCON equ 0Bh ;# 
# 539 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PIR1 equ 0Ch ;# 
# 595 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PIR2 equ 0Dh ;# 
# 652 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR1 equ 0Eh ;# 
# 659 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR1L equ 0Eh ;# 
# 666 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR1H equ 0Fh ;# 
# 673 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
T1CON equ 010h ;# 
# 767 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TMR2 equ 011h ;# 
# 774 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
T2CON equ 012h ;# 
# 845 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPBUF equ 013h ;# 
# 852 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPCON equ 014h ;# 
# 922 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR1 equ 015h ;# 
# 929 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR1L equ 015h ;# 
# 936 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR1H equ 016h ;# 
# 943 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCP1CON equ 017h ;# 
# 1040 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
RCSTA equ 018h ;# 
# 1135 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TXREG equ 019h ;# 
# 1142 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
RCREG equ 01Ah ;# 
# 1149 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR2 equ 01Bh ;# 
# 1156 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR2L equ 01Bh ;# 
# 1163 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCPR2H equ 01Ch ;# 
# 1170 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CCP2CON equ 01Dh ;# 
# 1240 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ADRESH equ 01Eh ;# 
# 1247 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ADCON0 equ 01Fh ;# 
# 1348 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
OPTION_REG equ 081h ;# 
# 1418 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISA equ 085h ;# 
# 1480 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISB equ 086h ;# 
# 1542 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISC equ 087h ;# 
# 1604 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISD equ 088h ;# 
# 1666 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TRISE equ 089h ;# 
# 1704 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PIE1 equ 08Ch ;# 
# 1760 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PIE2 equ 08Dh ;# 
# 1817 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PCON equ 08Eh ;# 
# 1864 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
OSCCON equ 08Fh ;# 
# 1929 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
OSCTUNE equ 090h ;# 
# 1981 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPCON2 equ 091h ;# 
# 2043 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PR2 equ 092h ;# 
# 2050 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPADD equ 093h ;# 
# 2057 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPMSK equ 093h ;# 
# 2062 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
MSK equ 093h ;# 
# 2179 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SSPSTAT equ 094h ;# 
# 2348 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
WPUB equ 095h ;# 
# 2418 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
IOCB equ 096h ;# 
# 2488 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
VRCON equ 097h ;# 
# 2558 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
TXSTA equ 098h ;# 
# 2644 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SPBRG equ 099h ;# 
# 2706 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SPBRGH equ 09Ah ;# 
# 2776 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PWM1CON equ 09Bh ;# 
# 2846 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ECCPAS equ 09Ch ;# 
# 2928 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
PSTRCON equ 09Dh ;# 
# 2972 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ADRESL equ 09Eh ;# 
# 2979 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ADCON1 equ 09Fh ;# 
# 3013 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
WDTCON equ 0105h ;# 
# 3066 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CM1CON0 equ 0107h ;# 
# 3131 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CM2CON0 equ 0108h ;# 
# 3196 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
CM2CON1 equ 0109h ;# 
# 3247 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEDATA equ 010Ch ;# 
# 3252 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEDAT equ 010Ch ;# 
# 3259 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEADR equ 010Dh ;# 
# 3266 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEDATH equ 010Eh ;# 
# 3273 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EEADRH equ 010Fh ;# 
# 3280 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
SRCON equ 0185h ;# 
# 3337 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
BAUDCTL equ 0187h ;# 
# 3389 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ANSEL equ 0188h ;# 
# 3451 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
ANSELH equ 0189h ;# 
# 3501 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EECON1 equ 018Ch ;# 
# 3546 "C:/Program Files/Microchip/MPLABX/v6.25/packs/Microchip/PIC16Fxxx_DFP/1.6.156/xc8\pic\include\proc/pic16f887.h"
EECON2 equ 018Dh ;# 
	debug_source C
	FNCALL	_main,_DITHANG
	FNCALL	_main,_setup_pwm
	FNROOT	_main
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"./main.h"
	line	26

;initializer for _d
	retlw	0FAh
	line	25

;initializer for _c
	retlw	04Bh
	line	24

;initializer for _b
	retlw	0A0h
	line	23

;initializer for _i
	retlw	03Ch
	line	22

;initializer for _a
	retlw	07Dh
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_T2CON
_T2CON	set	0x12
	global	_PORTC
_PORTC	set	0x7
	global	_CCP2CON
_CCP2CON	set	0x1D
	global	_CCPR2L
_CCPR2L	set	0x1B
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_TMR2
_TMR2	set	0x11
	global	_RB5
_RB5	set	0x35
	global	_RB4
_RB4	set	0x34
	global	_RB3
_RB3	set	0x33
	global	_RB0
_RB0	set	0x30
	global	_RB2
_RB2	set	0x32
	global	_RB1
_RB1	set	0x31
	global	_RE0
_RE0	set	0x48
	global	_TMR2ON
_TMR2ON	set	0x92
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_ADCON1
_ADCON1	set	0x9F
	global	_PR2
_PR2	set	0x92
	global	_TRISE0
_TRISE0	set	0x448
	global	_TRISC2
_TRISC2	set	0x43A
	global	_TRISC1
_TRISC1	set	0x439
	global	_ANSELH
_ANSELH	set	0x189
	global	_ANSEL
_ANSEL	set	0x188
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "ON"
	config CP = "ON"
	config CPD = "ON"
	config BOREN = "ON"
	config LVP = "OFF"
	config WRT = "OFF"
	file	"dist/default/production\Bai_2_PWM.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"./main.h"
	line	26
_d:
       ds      1

psect	dataCOMMON
	file	"./main.h"
	line	25
_c:
       ds      1

psect	dataCOMMON
	file	"./main.h"
	line	24
_b:
       ds      1

psect	dataCOMMON
	file	"./main.h"
	line	23
_i:
       ds      1

psect	dataCOMMON
	file	"./main.h"
	line	22
_a:
       ds      1

	file	"dist/default/production\Bai_2_PWM.X.production.s"
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
	fcall	__pidataCOMMON+2		;fetch initializer
	movwf	__pdataCOMMON+2&07fh		
	fcall	__pidataCOMMON+3		;fetch initializer
	movwf	__pdataCOMMON+3&07fh		
	fcall	__pidataCOMMON+4		;fetch initializer
	movwf	__pdataCOMMON+4&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_setup_pwm:	; 1 bytes @ 0x0
?_DITHANG:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
??_setup_pwm:	; 1 bytes @ 0x0
??_DITHANG:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        5
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      0       5
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;!                            _DITHANG
;!                          _setup_pwm
;! ---------------------------------------------------------------------------------
;! (1) _setup_pwm                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _DITHANG                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _DITHANG
;!   _setup_pwm
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BANK3               96      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BANK0               80      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!COMMON              14      0       5     35.7%
;!BITCOMMON           14      0       0      0.0%
;!DATA                 0      0       5      0.0%
;!STACK                0      0       0      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 40 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_DITHANG
;;		_setup_pwm
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"main.c"
	line	40
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	40
	
_main:	
;incstack = 0
	callstack 7
; Regs used in _main: [status,2+status,0+pclath+cstack]
	line	42
	
l669:	
;main.c: 42:     ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	43
;main.c: 43:     ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	44
;main.c: 44:     ADCON1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(159)^080h	;volatile
	line	45
;main.c: 45:     TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	46
	
l671:	
;main.c: 46:     PORTD = 0x0F;
	movlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	47
	
l673:	
;main.c: 47:     setup_pwm();
	fcall	_setup_pwm
	line	48
	
l675:	
;main.c: 48:     TRISB = 0xFF;
	movlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	49
	
l677:	
;main.c: 49:     TRISE0 = 0;
	bcf	(1096/8)^080h,(1096)&7	;volatile
	line	50
	
l679:	
;main.c: 50:     RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7	;volatile
	line	51
	
l681:	
;main.c: 51:     PORTB = 0x00;
	clrf	(6)	;volatile
	line	53
	
l683:	
;main.c: 53:         if (RB1 == 1 && RB2 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l79
u10:
	
l685:	
	btfss	(50/8),(50)&7	;volatile
	goto	u21
	goto	u20
u21:
	goto	l79
u20:
	line	54
	
l687:	
;main.c: 54:             DITHANG();
	fcall	_DITHANG
	line	56
;main.c: 56:         } else if (RB1 == 1 && RB0 == 1) {
	goto	l683
	
l79:	
	btfss	(49/8),(49)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l81
u30:
	
l689:	
	btfss	(48/8),(48)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l81
u40:
	line	58
	
l691:	
;main.c: 58:             PORTD = 0x02;
	movlw	02h
	movwf	(8)	;volatile
	line	59
	movlw	07Dh
	movwf	(21)	;volatile
	line	60
;main.c: 60:             CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	line	61
	
l693:	
;main.c: 61:             CCPR2L = 0;
	clrf	(27)	;volatile
	line	62
;main.c: 62:             CCP2CON = 0x00;
	clrf	(29)	;volatile
	line	63
;main.c: 63:         } else if (RB3 == 1 && RB2 == 1) {
	goto	l683
	
l81:	
	btfss	(51/8),(51)&7	;volatile
	goto	u51
	goto	u50
u51:
	goto	l83
u50:
	
l695:	
	btfss	(50/8),(50)&7	;volatile
	goto	u61
	goto	u60
u61:
	goto	l83
u60:
	line	65
	
l697:	
;main.c: 65:             PORTD = 0x01;
	movlw	01h
	movwf	(8)	;volatile
	line	66
	movlw	07Dh
	movwf	(21)	;volatile
	line	67
;main.c: 67:             CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	goto	l693
	line	70
	
l83:	
	btfss	(48/8),(48)&7	;volatile
	goto	u71
	goto	u70
u71:
	goto	l85
u70:
	line	72
	
l701:	
;main.c: 72:             PORTD = 0x02;
	movlw	02h
	movwf	(8)	;volatile
	line	73
	movlw	0A0h
	movwf	(21)	;volatile
	line	74
;main.c: 74:             CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	goto	l693
	line	77
	
l85:	
	btfss	(51/8),(51)&7	;volatile
	goto	u81
	goto	u80
u81:
	goto	l87
u80:
	line	79
	
l705:	
;main.c: 79:             PORTD = 0x01;
	movlw	01h
	movwf	(8)	;volatile
	line	80
	movlw	0A0h
	movwf	(21)	;volatile
	line	81
;main.c: 81:             CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	goto	l693
	line	84
	
l87:	
	btfss	(50/8),(50)&7	;volatile
	goto	u91
	goto	u90
u91:
	goto	l89
u90:
	line	85
	
l709:	
;main.c: 85:             PORTD = 0x01;
	movlw	01h
	movwf	(8)	;volatile
	line	86
	movlw	04Bh
	movwf	(21)	;volatile
	line	87
;main.c: 87:             CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	goto	l693
	line	90
	
l89:	
	btfss	(49/8),(49)&7	;volatile
	goto	u101
	goto	u100
u101:
	goto	l91
u100:
	goto	l709
	line	96
	
l91:	
	btfss	(48/8),(48)&7	;volatile
	goto	u111
	goto	u110
u111:
	goto	l93
u110:
	
l717:	
	btfss	(49/8),(49)&7	;volatile
	goto	u121
	goto	u120
u121:
	goto	l93
u120:
	
l719:	
	btfss	(50/8),(50)&7	;volatile
	goto	u131
	goto	u130
u131:
	goto	l93
u130:
	line	97
	
l721:	
;main.c: 97:             PORTD = 0x02;
	movlw	02h
	movwf	(8)	;volatile
	line	98
	movlw	04Bh
	movwf	(21)	;volatile
	line	99
;main.c: 99:             CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	goto	l693
	line	102
	
l93:	
	btfss	(51/8),(51)&7	;volatile
	goto	u141
	goto	u140
u141:
	goto	l95
u140:
	
l725:	
	btfss	(49/8),(49)&7	;volatile
	goto	u151
	goto	u150
u151:
	goto	l95
u150:
	
l727:	
	btfss	(50/8),(50)&7	;volatile
	goto	u161
	goto	u160
u161:
	goto	l95
u160:
	goto	l709
	line	108
	
l95:	
	btfss	(48/8),(48)&7	;volatile
	goto	u171
	goto	u170
u171:
	goto	l97
u170:
	
l733:	
	btfss	(49/8),(49)&7	;volatile
	goto	u181
	goto	u180
u181:
	goto	l97
u180:
	
l735:	
	btfss	(50/8),(50)&7	;volatile
	goto	u191
	goto	u190
u191:
	goto	l97
u190:
	
l737:	
	btfss	(51/8),(51)&7	;volatile
	goto	u201
	goto	u200
u201:
	goto	l97
u200:
	line	109
	
l739:	
;main.c: 109:             PORTD = 0x01;
	movlw	01h
	movwf	(8)	;volatile
	line	110
	movlw	03Ch
	movwf	(21)	;volatile
	line	111
;main.c: 111:             CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	goto	l693
	line	114
	
l97:	
	btfss	(52/8),(52)&7	;volatile
	goto	u211
	goto	u210
u211:
	goto	l99
u210:
	line	115
	
l743:	
;main.c: 115:             PORTD = 0x02;
	movlw	02h
	movwf	(8)	;volatile
	line	116
	movlw	0FAh
	movwf	(21)	;volatile
	line	117
;main.c: 117:             CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	goto	l693
	line	120
	
l99:	
	btfss	(53/8),(53)&7	;volatile
	goto	u221
	goto	u220
u221:
	goto	l751
u220:
	line	121
	
l747:	
;main.c: 121:             PORTD = 0x01;
	movlw	01h
	movwf	(8)	;volatile
	line	122
	movlw	0FAh
	movwf	(21)	;volatile
	line	123
;main.c: 123:             CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	goto	l693
	line	128
	
l751:	
;main.c: 128:             CCPR1L = 0;
	clrf	(21)	;volatile
	line	129
;main.c: 129:             CCP1CON = 0x00;
	clrf	(23)	;volatile
	line	130
;main.c: 130:             CCPR2L = 0;
	clrf	(27)	;volatile
	line	131
;main.c: 131:             CCP2CON = 0x00;
	clrf	(29)	;volatile
	goto	l683
	global	start
	ljmp	start
	callstack 0
	line	156
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_setup_pwm

;; *************** function _setup_pwm *****************
;; Defined at:
;;		line 10 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	10
global __ptext1
__ptext1:	;psect for function _setup_pwm
psect	text1
	file	"main.c"
	line	10
	
_setup_pwm:	
;incstack = 0
	callstack 7
; Regs used in _setup_pwm: [status,2]
	line	11
	
l649:	
;main.c: 11:     TMR2 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(17)	;volatile
	line	12
	
l651:	
;main.c: 12:     PR2 = 229;
	movlw	0E5h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	13
;main.c: 13:     CCPR1L = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	14
;main.c: 14:     CCP1CON = 0;
	clrf	(23)	;volatile
	line	15
;main.c: 15:     CCPR2L = 0;
	clrf	(27)	;volatile
	line	16
;main.c: 16:     CCP2CON = 0;
	clrf	(29)	;volatile
	line	17
	
l653:	
;main.c: 17:     TRISC1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7	;volatile
	line	18
	
l655:	
;main.c: 18:     TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7	;volatile
	line	19
;main.c: 19:     PORTC = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	20
;main.c: 20:     T2CON = 0b00000000;
	clrf	(18)	;volatile
	line	21
	
l657:	
;main.c: 21:     TMR2ON = 1;
	bsf	(146/8),(146)&7	;volatile
	line	22
	
l67:	
	return
	callstack 0
GLOBAL	__end_of_setup_pwm
	__end_of_setup_pwm:
	signat	_setup_pwm,89
	global	_DITHANG

;; *************** function _DITHANG *****************
;; Defined at:
;;		line 24 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	24
global __ptext2
__ptext2:	;psect for function _DITHANG
psect	text2
	file	"main.c"
	line	24
	
_DITHANG:	
;incstack = 0
	callstack 7
; Regs used in _DITHANG: [status,2]
	line	25
	
l659:	
;main.c: 25:     PORTD = 0xFF;
	movlw	0FFh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	26
	movlw	03Ch
	movwf	(21)	;volatile
	line	27
;main.c: 27:     CCP1CON = 0x0C;
	movlw	0Ch
	movwf	(23)	;volatile
	line	28
	
l661:	
;main.c: 28:     CCPR2L = 0;
	clrf	(27)	;volatile
	line	29
;main.c: 29:     CCP2CON = 0x00;
	clrf	(29)	;volatile
	line	30
	
l70:	
	return
	callstack 0
GLOBAL	__end_of_DITHANG
	__end_of_DITHANG:
	signat	_DITHANG,89
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,0x7E,2	;btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	global wtemp0
	wtemp0 set btemp+0
	global wtemp0a
	wtemp0a set btemp+1
	global ttemp0a
	ttemp0a set btemp+1
	global ltemp0a
	ltemp0a set btemp+2
	end
