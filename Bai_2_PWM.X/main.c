/*
 * File:   main.c
 * Author: ?t ?t
 *
 * Created on November 23, 2025, 10:13 AM
 */

#include "main.h"

void setup_pwm() {
    TMR2 = 0x00;
    PR2 = 199;
    CCPR1L = 0;
    CCP1CON = 0;
    CCPR2L = 0;
    CCP2CON = 0;
    TRISC1 = 0;
    TRISC2 = 0;
    PORTC = 0;
    T2CON = 0b00000000;
    TMR2ON = 1;
}

void DITHANG() {
    PORTD = 0xFF;
    CCPR1L = i;
    CCP1CON = 0x0C;
    CCPR2L = 0;
    CCP2CON = 0x00;
}

void LUI() {
    CCPR2L = i;
    CCP2CON = 0x0C;
    CCPR1L = 0;
    CCP1CON = 0x00;
    __delay_ms(50);
}

void main(void) {

    ANSEL = 0;
    ANSELH = 0;
    ADCON1 = 0;
    TRISD = 0x00;
    PORTD = 0x0F;
    setup_pwm();
    TRISB = 0xFF;
    TRISE0 = 0;
    RE0 = 1;
    PORTB = 0x00;
    while (1) {
        if (RB1 == 1 && RB2 == 1) {// ?i th?ng 
            DITHANG();

        } else if (RB1 == 1 && RB0 == 1) {
            //            LUI();
            PORTD = 0x02; // Qu?o trái PORTD=0x01,qu?o Ph?i PORTD = 0x02;
            CCPR1L = a;
            CCP1CON = 0x0C;
            CCPR2L = 0;
            CCP2CON = 0x00;
        } else if (RB3 == 1 && RB2 == 1) {
            //            LUI();
            PORTD = 0x01; // Qu?o trái PORTD=0x01,qu?o Ph?i PORTD = 0x02;
            CCPR1L = a;
            CCP1CON = 0x0C;
            CCPR2L = 0;
            CCP2CON = 0x00;
        } else if (RB0 == 1) {
            //            LUI();
            PORTD = 0x02; // Qu?o trái PORTD=0x01,qu?o Ph?i PORTD = 0x02;
            CCPR1L = b;
            CCP1CON = 0x0C;
            CCPR2L = 0;
            CCP2CON = 0x00;
        } else if (RB3 == 1) {
            //            LUI();
            PORTD = 0x01; // Qu?o trái PORTD=0x01,qu?o Ph?i PORTD = 0x02;
            CCPR1L = b;
            CCP1CON = 0x0C;
            CCPR2L = 0;
            CCP2CON = 0x00;
        } else if (RB2 == 1) {
            PORTD = 0x01; // Qu?o trái PORTD=0x01,qu?o Ph?i PORTD = 0x02;
            CCPR1L = i;
            CCP1CON = 0x0C;
            CCPR2L = 0;
            CCP2CON = 0x00;
        } else if (RB1 == 1) {
            PORTD = 0x01; // Qu?o trái PORTD=0x01,qu?o Ph?i PORTD = 0x02;
            CCPR1L = i;
            CCP1CON = 0x0C;
            CCPR2L = 0;
            CCP2CON = 0x00;
        } else {
            //            if (RB0 == 1 && RB1 == 1 && RB2 == 1 && RB3 == 1) {
            CCPR1L = 0;
            CCP1CON = 0x00;
            CCPR2L = 0;
            CCP2CON = 0x00;
            //        }
        }
        //        PORTD = 0x02;
        //        CCPR2L = a;
        //        CCP2CON = 0x0C;
        //        CCPR1L = 0;
        //        CCP1CON = 0x00;
        //        __delay_ms(500);
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
