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
	FNROOT	_main
	global	_PORTD
_PORTD	set	0x8
	global	_PORTC
_PORTC	set	0x7
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_RB0
_RB0	set	0x30
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_ANSEL
_ANSEL	set	0x188
	global	_ANSELH
_ANSELH	set	0x189
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "HS"
	config WDTE = "OFF"
	config PWRTE = "ON"
	config CPD = "ON"
	config BOREN = "ON"
	config LVP = "OFF"
	config WRT = "OFF"
	file	"dist/default/production\test.X.production.s"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
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
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      0       0
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
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BITCOMMON           14      0       0      0.0%
;!BITBANK0            80      0       0      0.0%
;!BITBANK1            80      0       0      0.0%
;!BITBANK3            96      0       0      0.0%
;!BITBANK2            96      0       0      0.0%
;!COMMON              14      0       0      0.0%
;!BANK0               80      0       0      0.0%
;!BANK1               80      0       0      0.0%
;!BANK3               96      0       0      0.0%
;!BANK2               96      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0       0      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "test.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1,group=0
	file	"test.c"
	line	29
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"test.c"
	line	29
	
_main:	
;incstack = 0
	callstack 8
; Regs used in _main: [status,2]
	line	30
	
l574:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	line	31
	clrf	(392)^0180h	;volatile
	line	32
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	33
	clrf	(5)	;volatile
	line	34
	clrf	(7)	;volatile
	line	35
	clrf	(8)	;volatile
	line	36
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	37
	clrf	(135)^080h	;volatile
	line	38
	clrf	(134)^080h	;volatile
	line	39
	clrf	(133)^080h	;volatile
	line	42
	
l576:	
	bcf	status, 5	;RP0=0, select bank0
	bsf	(48/8),(48)&7	;volatile
	goto	l576
	global	start
	ljmp	start
	callstack 0
	line	49
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
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
