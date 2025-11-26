/*
 * File:   main.c
 * Author: TranVy
 *
 * Created on October 26, 2025, 3:13 PM
 */
#define _XTAL_FREQ 20000000
#include <stdbool.h>
#include <htc.h>
#include <xc.h>
// B? hai dòng __CONFIG c?
// S? d?ng cú pháp m?i c?a XC8
#pragma config FOSC = HS        // High Speed Oscillator (Th?ch anh 20MHz)
#pragma config WDTE = OFF       // Watchdog Timer Disabled
#pragma config PWRTE = ON       // Power-up Timer Enabled
#pragma config CP = OFF         // Code Protection Disabled
// ... các bit c?u hình khác
bool dem = false;
bool ngat = false;

unsigned char a[8] = {0b00000001, 0b00000010, 0b00000100, 0b00001000, 0b00010000, 0b00100000, 0b01000000, 0b10000000};

unsigned char PD[10] = {
    0xC0, //s? 0
    0xF9, //s? 1
    0xA4, //s? 2 
    0xB0, //s? 3  
    0x99, //s? 4
    0x92, //s? 5
    0x82, //s? 6 
    0xF8, //s? 7
    0x80, //s? 8
    0x90, //s? 9  
    0x90
};
unsigned char Button[10] = {
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
    0x6F
};

void ONOFFLED() {
    //B?t t?t ?èn theo th? t? 
    for (int i = 0; i < 8; i++) {
        PORTD = PORTD | a[i];
        __delay_ms(500);
        if (a[i] == 0b10000000) {
            break;

        }
    }
    for (int i = 7; i >= 0; i--) {
        PORTD &= ~a[i];
        __delay_ms(500);
    }
    __delay_ms(1000);
}

void CLTX() {
    //B?t t?t ?èn ch?n l?
    for (int b = 0; b < 8; b++) {
        if (b % 2 == 0) {
            PORTD = PORTD | a[b];
            __delay_ms(500);

        }
    }
    for (int c = 0; c < 8; c++) {
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


    for (int portd = 0; portd < 10; portd++) {
        PORTD = PD[portd];
        __delay_ms(500);
        if (portd == 9) {
            PORTC = PD[portc];
            portc = portc + 1;
            if (portc >= 10) {

                portc = 0;
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
    ADCON1 = 0;
    TRISD = 0x00;
    TRISC = 0x00;
    TRISE1 = 0;
    TRISE2 = 0;
    TRISB = 0x00;
    PORTB = 0x00;
    PORTD = 0xFF;
    //    PORTC = 0x00;
    //    PORTE = 0x00;
    //    nRBPU = 0; //cho phép dien tro kéo lên

    while (1) {
        for (int portd = 0; portd < 10; portd++) {
            PORTD = PD[portd];
            __delay_ms(500);
        }
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
