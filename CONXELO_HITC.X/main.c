/*
 * File:   main.c
 * Author: TranVy
 *
 * Created on December 12, 2025, 10:13 PM
 */

#include "main.h"
#include <xc.h>

void main(void) {
    ANSEL=0;
    ANSELH=0;
    TRISA=0x00;
    TRISB=0xFF;
    TRISC=Ox00;
    TRISD=0x00;
    PORTB=0x00;
    while(1){
          
    }
    return;
}
