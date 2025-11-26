#include "main.h"
#include <string.h>
#include <ctype.h>
#include "interrupt.h"

bool ITR = false;

unsigned char isButtonNumber() {
    for (unsigned char i = 0; i < 16; i++) {
        if (key_code[i] == 1) {
            numberValue = arrayMapOfNumber[i];
            return 1;
        }
    }
    return 0;
}

void main(void) {
    ANSEL = 0;
    ANSELH = 0;

    TRISE = 0x00;
    TRISB = 0x01;

    PORTE = 0x00;

    OPTION_REGbits.nRBPU = 1;
    INTCONbits.RBIE = 0;
    INTCONbits.RBIF = 0;

    RE1 = 1;
    RE2 = 1;

    Showpass = false;

    init_key_matrix();
    lcd_init();

    lcd_gotoxy(0,0);
    lcd_puts("HELLO DAI CA");
    __delay_ms(800);

    lcd_clear();
    lcd_gotoxy(0,0);
    lcd_puts("PASS: ");

    while(1) {
        scan_key_matrix();

        if (isButtonNumber()) {

            if (numberValue == '#') {
                Checkpass();
                continue;
            }

            if (numberValue == '*') {
                CLEARPASS();
                continue;
            }

            if (numberValue == 'A' || numberValue == 'B') {
                PASSSTATUS();
                continue;
            }

            // ký t? s?
            ADD_CHAR(numberValue);
        }
    }
}
