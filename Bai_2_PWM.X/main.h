/* 
 * File:   main.h
 * Author: ?t ?t
 *
 * Created on November 23, 2025, 10:13 AM
 */

#ifndef MAIN_H
#define	MAIN_H

#ifdef	__cplusplus
extern "C" {
#endif
    
#define _XTAL_FREQ 20000000
#include <htc.h>
#include <xc.h>

// B? hai dòng __CONFIG c?
// S? d?ng cú pháp m?i c?a XC8
#pragma config FOSC = HS        // High Speed Oscillator (Th?ch anh 20MHz)
#pragma config WDTE = OFF       // Watchdog Timer Disabled
#pragma config PWRTE = ON       // Power-up Timer Enabled
#pragma config CP = OFF   


#ifdef	__cplusplus
}
#endif

#endif	/* MAIN_H */

