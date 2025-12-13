/*
 * File:   main.c
 * Author: TranVy
 *
 * Created on December 7, 2025, 3:51 PM
 */

#include "main.h"
#include <xc.h>

void main(void) {
    ADC_Init();
    PORTB = 0X00;
    TRISB = 0X00;
    while (1) {
        if (ADC_Read(0) > 50) {
            PORTB = 0xff;
        } else {
            PORTB = 0x00;
        }
        
    }
}
