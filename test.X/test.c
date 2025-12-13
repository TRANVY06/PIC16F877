/*
 * File:   test.c
 * Author: TranVy
 *
 * Created on December 8, 2025, 10:24 PM
 */


#include <xc.h>
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
void main(void) {
    ANSELH = 0;
    ANSEL = 0;
    PORTB = 0X00;
    PORTA = 0X00;
    PORTC = 0X00;
    PORTD = 0X00;
    TRISD = 0X00;
    TRISC = 0X00;
    TRISB = 0X00;
    TRISA = 0X00;
    while(1)
    {
        RB0=1;
//        PORTD = 0xFF;
//        PORTC = ~PORTC;
//        PORTB = ~PORTB;
//        PORTA = ~PORTA;
//        __delay_ms(500);
    }
}
