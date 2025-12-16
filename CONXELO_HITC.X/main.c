/*
 * File:   main.c
 * Author: Embedded PIC16F887
 * Line Follower ? 6 IR + 2 BTS7960
 */

#include "Piclb_byNK.h"


// ================== MAIN ==================

void main(void) {

    // ---------- C?U HÌNH I/O ----------
    ANSEL = 0;
    ANSELH = 0;

    TRISB = 0xFF; // RB0?RB5: c?m bi?n
    TRISD = 0xF0; // RD0, RD1: enable BTS
    TRISC = 0xF8;

    PORTD = 0x00;

    // ---------- PWM ----------
    analogWrite_init(255); // t?n s? PWM
    // ---------- CH?Y ----------
    while (1) {
        if (RD5 == 1) {
            autocar = false;
            drivercar = true;
        }
        if (RD4 == 1) {
            autocar = true;
            drivercar = false;
        }
        if (autocar == true) {
            __delay_ms(500);
            read_line_Error();
            motor_control();
        }
    }
}
