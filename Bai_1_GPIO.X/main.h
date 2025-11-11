/* 
 * File:   MAIN.h
 * Author: ?t ?t
 *
 * Created on November 3, 2025, 10:25 PM
 */

#ifndef MAIN_H
#define	MAIN_H

#define _XTAL_FREQ 4000000
#include <htc.h>
#include <xc.h>

#include "lcd.h"
#include"button.h"


// n?u trong button.h CH?A có thì thêm dòng này
void scan_key_matrix(void);

__CONFIG(0x3FF2);	//config_word 1
__CONFIG(0x3FFF);	//config_word 2

#define SetBit(Add, Pos)   Add |= (1 << Pos)
#define ClearBit(Add, Pos) Add &= ~(1 << Pos)


unsigned char arrayMapOfNumber [16] = {7,8,9,'A',4,5,6,'B',
                                       1,2,3,'C','*',0,'#','D'};
void Test_KeyMatrix(void);
void Test_KeyMatrix_OneKey(void);

const unsigned char segCC[10] = {
    0x3F,0x06,0x5B,0x4F,0x66,
    0x6D,0x7D,0x07,0x7F,0x6F
};
unsigned char numberValue;


#endif	/* MAIN_H */

