/*
 * File:   main.c
 * Author: ?t ?t
 *
 * Created on November 23, 2025, 10:13 AM
 */

#include "main.h"

unsigned char i;

void setup_pwm() {
    TMR2 = 0x00;
    PR2 = 199;
    CCPR1L = i;
    CCP1CON = 0;
    CCPR2L = i;
    CCP2CON = 0;
    TRISC1 = 0;
    TRISC2 = 0;
    PORTC = 0;
    T2CON = 0b00000000;
    TMR2ON = 1;
}

void main(void) {

    ADCON1 = 0;
    TRISD = 0x00;
    PORTD = 0x0F;
    setup_pwm();
    TRISB1 = 0xFF;
    TRISE0 = 0;
    RE0 = 1;

    while (1) {
        //        if (RB0 == 1) {
//        for (i = 0; i < 200; i++) {
                        i = 200;
            PORTD = 0x3C;
//            CCPR1L = i;
//            CCP1CON = 0x0C;
            CCPR2L = i;
            CCP2CON = 0x0C;
            __delay_ms(100);
//        }
        //        } else if (RB1 == 1) {
        //            CCPR2L = 200;
        //            CCP2CON = 0x0C;
        //            CCP1CON = 0;
        //        } else {
        //            CCPR2L = 0;
        //            CCP2CON = 0;
        //            CCPR1L = 0;
        //            CCP1CON = 0;
        //        }
    }



    return;
}
