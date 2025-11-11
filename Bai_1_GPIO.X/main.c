/*
 * File:   main.c
 * Author: ?t ?t
 *
 * Created on October 26, 2025, 2:46 PM
 */

#include "main.h"
#include <ctype.h>

unsigned char isButtonNumber() {
    unsigned char i;
    for (i = 0; i <= 15; i++)
        if (key_code[i] == 1) {
            numberValue = arrayMapOfNumber[i];
            return 1;
        }
    return 0;
}

int Number() {
    if (key_code[13] == 1)
        return 0;
    if (key_code[0] == 1)
        return 1;
    if (key_code[1] == 1)
        return 2;
    if (key_code[2] == 1)
        return 3;
    if (key_code[4] == 1)
        return 4;
    if (key_code[5] == 1)
        return 5;
    if (key_code[6] == 1)
        return 6;
    if (key_code[8] == 1)
        return 7;
    if (key_code[9] == 1)
        return 8;
    if (key_code[10] == 1)
        return 9;
}
void main(void) {
    init_key_matrix();
    lcd_init();
    lcd_gotoxy(0, 0);
    lcd_puts("Welcome Embedded");
    __delay_ms(1000);
    lcd_clear();

    while (1) {
        scan_key_matrix();   // quét ?? c?p nh?t key_code[]
        isButtonNumber();
        lcd_gotoxy(0, 0);
        if (isprint(numberValue)) 
            printf("%c ", numberValue);
        else
            printf("%d ", numberValue);

    }
}

