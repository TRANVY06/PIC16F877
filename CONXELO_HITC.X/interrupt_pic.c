/*
 * File:   interrupt_pic.c
 * Author: TranVy
 *
 * Created on December 16, 2025, 10:24 AM
 */

#include "Piclb_byNK.h"

void __interrupt() isr(void) {
    if (RBIE == 1 && RBIF == 1) {
        read_dataPortB = PORTB & 0b01000000;
        if (read_dataPortB == 0x40) { // Check for RB2
            autocar = false;
            drivercar = false;
            RE0=1;
        } 

        RBIF = 0;
    }
}

void Initialize_interrupt() {
    RBIF = 0;
    RBIE = 1;
    GIE = 1;
    IOCB = 0x07;
}
