/*
 * File:   main.c
 * Author: Embedded PIC16F887
 * Line Follower ? 6 IR + 2 BTS7960
 */

#include "Piclb_byNK.h"

bool drivercar = false;
bool autocar = false;
// ================== MAIN ==================

void main(void) {

    // ---------- C?U HÌNH I/O ----------
    ANSEL = 0;
    ANSELH = 0;

    TRISB = 0xFF; // RB0?RB5: c?m bi?n
    TRISD = 0xF0;
    /*  RD0?RD3: BTS7960 DIR
        RD4?RD5: MODE select (Auto / PS2)
     */
    TRISC = 0xF8;
    TRISE = 0x00;
    PORTB = 0x00;


    PORTD = 0x00;

    // ---------- PWM ----------
    analogWrite_init(255); // t?n s? PWM
    //-----------ITR------------
    Initialize_interrupt();
    // ---------- CH?Y ----------
    while (1) {
        PORTE = 0x00;

        if (RD4 == 1) {
            __delay_ms(20);
            if (RD4 == 1) {
                autocar = false;
                drivercar = false;
                Car_Forward(0, 0);
            }
        } else if (RD6 == 1) {
            __delay_ms(20);
            if (RD6 == 1) {
                autocar = false;
                drivercar = true;
            }
        } else if (RD5 == 1) {
            __delay_ms(20);
            if (RD5 == 1) {
                autocar = true;
                drivercar = false;
                while (RD5 == 1);
            }
        }
        if (autocar == true && drivercar == false) {
            while (1) {
                read_line_Error();
                motor_control();
                if (RD4 == 1) {
                    __delay_ms(20);
                    if (RD4 == 1) {
                        autocar = false;
                        drivercar = false;
                        Car_Forward(0, 0);
                        break;
                    }
                }
                //                            if (RB0 == 1)
//                Status_Car(MoveForward, 255, 255);
            }
        }
        while (autocar == false && drivercar == true) {
            if (RC3 == 1) {
                __delay_ms(20);
                if (RC3 == 1) {
                    Status_Car(MoveForward, 150, 150);
                }
            } else if (RC4 == 1) {
                __delay_ms(20);
                if (RC4 == 1) {
                    Status_Car(MoveBackward, 150, 150);
                }
            }  else if (RC5 == 1) {
                __delay_ms(20);
                if (RC5 == 1) {
                    Status_Car(TurnRight, 150, 150);
                }
            } else if (RC6 == 1) {
                __delay_ms(20);
                if (RC6 == 1) {
                    Status_Car(TurnLeft, 150, 150);
                }
            } else
                if (RD4 == 1) {
                __delay_ms(20);
                if (RD4 == 1) {
                    autocar = false;
                    drivercar = false;
                    Car_Forward(0, 0);
                    break;
                }
            }
        }
    }
}
