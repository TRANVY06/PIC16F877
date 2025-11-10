/*
 * File:   main.c
 * Author: TranVy
 *
 * Created on October 26, 2025, 3:13 PM
 */
#define _XTAL_FREQ 4000000
#include <htc.h>
#include <stdbool.h>
#include <interrupt.h>
#include <xc.h>
__CONFIG(0x3FF2); //config_word 1
__CONFIG(0x3FFF); //config_word 2
bool dem = false;
bool ngat = false;
#include <xc.h>
int a[9] = {0b00000001, 0b00000010, 0b00000100, 0b00001000, 0b00010000, 0b00100000, 0b01000000, 0b10000000};

int PD[10] = {
    0x40, //s? 0
    0x79, //s? 1
    0x24, //s? 2 
    0x30, //s? 3  
    0x19, //s? 4
    0x12, //s? 5
    0x02, //s? 6 
    0x78, //s? 7
    0x00, //s? 8
    0x10, //s? 9  
    0x10
};
int Button[10] = {
    0x3F, // 0
    0x06, //1
    0x5B, //2
    0x4F, //3
    0x66, //4
    0x6D, //5
    0x7D, //6
    0x07, //7
    0x7F, //8
    0x6F, //9
    0x6F,
};

void ONOFFLED() {
    //B?t t?t ?èn theo th? t? 
    for (int i = 0; i < 10; i++) {
        PORTD = PORTD | a[i];
        __delay_ms(500);
        if (a[i] == 0b10000000) {
            break;

        }
    }
    for (int i = 9; i >= 0; i--) {
        PORTD &= ~a[i];
        __delay_ms(500);
    }
    __delay_ms(1000);
}

void CLTX() {
    //B?t t?t ?èn ch?n l?
    for (int b = 0; b < 10; b++) {
        if (b % 2 == 0) {
            PORTD = PORTD | a[b];
            __delay_ms(500);

        }
    }
    for (int c = 0; c < 10; c++) {
        if (c % 2 == 1) {
            PORTD = PORTD | a[c];
            __delay_ms(500);
        }
    }
    for (int i = 9; i >= 0; i--) {
        PORTD &= ~a[i];
        __delay_ms(500);
    }

}
int portc = 1;

void DEM() {

    while (1) {
        for (int portd = 0; portd < 10; portd++) {
            PORTD = PD[portd];
            __delay_ms(200);
            if (portd == 9) {
                PORTC = PD[portc];
                portc = portc + 1;
                if (portc >= 10) {

                    portc = 0;
                }
            }
        }

    }
}
int so = 0;
int portd, portc;

void BUTTON() {
    if (RB0 == 1) {
        for (int portd = 0; portd < 10; portd++) {
            PORTC = Button[portd];
            __delay_ms(500);
            if (portd == 9) {
                portd = -1;
                PORTD = Button[portc];
                portc = portc + 1;
                if (portc >= 10) {
                    portc = 0;
                }
            } else if (RB1 == 1) {
                break;
            }
        }
        __delay_ms(100);
    } else if (RB2 == 1) {
        portd = 0;
        portc = 0;
        PORTC = 0x3F;
        PORTD = 0x3F;
        __delay_ms(100);
    } else {
    }
}

void NHAYDEN() {
    if (RB0 == 0) {
        __delay_ms(20);
        if (RB0 == 0) {
            while (1) {
                RE1 = 1;
                __delay_ms(3000);
                RE1 = 0;
                __delay_ms(3000);
            }
        }
        //    } else if (RB1 == 0) {
        //        __delay_ms(20);
        //        if (RB1 == 0) {
        //            RE2 = 1;
        //        }
        //    } else if (RB2 == 0) {
        //        __delay_ms(20);
        //        if (RB2 == 0) {
        //            RE2 = 0;
        //        }
    }
}

void main(void) {
    ANSEL = 0;
    ANSELH = 0;
    TRISD = 0x00;
    TRISC = 0x00;
    TRISE1 = 0;
    TRISE2 = 0;
    WPUB = 0x07;
    TRISB = 0x07;
    PORTB = 0x00;
    PORTD = 0x00;
    PORTC = 0x00;
    PORTE = 0x00;
    nRBPU = 0; //cho phép dien tro kéo lên
    Initialize_interrupt();
    while (1) {
        NHAYDEN();
    }



    //PORTD=0x01;


    //    RD0 = 0;
    //    RD1 = 1;
    //    RD2 = 1;
    //    RD3 = 1;
    //    RD4 = 1;
    //    RD5 = 1;
    //    RD6 = 1;
    //    RD7 = 1;
    //    __delay_ms(500);
    //    RD0 = 0;
    //    RD1 = 0;
    //    RD2 = 0;
    //    RD3 = 0;
    //    RD4 = 0;
    //    RD5 = 0;
    //    RD6 = 0;
    //    RD7 = 0;
    //    __delay_ms(500);










    return;
}
