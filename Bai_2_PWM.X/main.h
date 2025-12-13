#define _XTAL_FREQ 20000000
//#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H
#include <xc.h> // include processor files - each processor file is guarded.  


#pragma config FOSC = HS       // High-Speed Oscillator (dùng th?ch anh ngoài > 4MHz, ? ?ây 24MHz)

#pragma config WDTE = OFF       // Watchdog Timer disabled

#pragma config PWRTE = ON       // Power-up Timer enabled

#pragma config BOREN = ON       // Brown-out Reset enabled

#pragma config LVP = OFF        // Low-Voltage Programming enabled

#pragma config CPD = ON        // Data EEPROM Memory Code Protection off

#pragma config WRT = OFF        // Flash Program Memory Write Protection off

#pragma config CP = ON  
extern unsigned char a=90;
extern unsigned char i=40;
extern unsigned char b=110;