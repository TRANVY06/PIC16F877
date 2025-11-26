#include "main.h"
#include <string.h>
#include <stdbool.h>
#include <xc.h>

unsigned char CT = 0;
unsigned char index = 0;
unsigned char InPutpassword[8] = "";   
unsigned char correctPassword[] = "7355608";
bool Showpass = false;

void LEDCONNECT() {
    RE1 = 0; __delay_ms(100);
    RE1 = 1; __delay_ms(100);
    RE1 = 0; __delay_ms(100);
    RE1 = 1; __delay_ms(100);
}

void LEDDISCONNECT() {
    RE2 = 0; __delay_ms(200);
    RE2 = 1; __delay_ms(200);
}

void Checkpass(void) {
    lcd_clear();

    if (strcmp((char*)InPutpassword, (char*)correctPassword) == 0) {
        lcd_gotoxy(0,0); lcd_puts("PASS CONNECT!");
        CT = 0;
        LEDCONNECT();
    } else {
        CT++;
        lcd_gotoxy(0,0); 
        lcd_puts("PASS WRONG!!");
        __delay_ms(500);
        lcd_clear();
        lcd_gotoxy(0,0);
        if (CT == 1)
            lcd_puts("CHO XIN 5 CHUC");
        else if (CT == 2)
            lcd_puts("NHO PASS KO!!!");
        else if (CT >= 3) {
            lcd_puts("LOCKED!!!");
            while(1) LEDDISCONNECT();
        }
        LEDDISCONNECT();
    }

    // reset password
    memset(InPutpassword, 0, sizeof(InPutpassword));
    index = 0;

    __delay_ms(700);
    lcd_clear();
    lcd_gotoxy(0,0);
    lcd_puts("PASS: ");
}


// ----------------------------
//  CLEAR PASS
// ----------------------------
void CLEARPASS(void) {
    memset(InPutpassword, 0, sizeof(InPutpassword));
    index = 0;

    lcd_gotoxy(6,0);
    lcd_puts("       ");   // xoá vùng password
    lcd_gotoxy(6,0);
}


// ----------------------------
//  UPDATE LCD HI?N TH?
// ----------------------------
void SHOW_LCD_PASS(void) {
    lcd_gotoxy(6,0);

    // xoá vùng c?
    for (unsigned char i=0; i<7; i++) lcd_putc(' ');
    lcd_gotoxy(6,0);

    if (Showpass) {
        for (unsigned char i=0; i<index; i++)
            lcd_putc(InPutpassword[i]);
    } else {
        for (unsigned char i=0; i<index; i++)
            lcd_putc('*');
    }
}


// ----------------------------
//  thêm ký t? m?i
// ----------------------------
void ADD_CHAR(unsigned char c) {
    if (index >= 7) return;

    InPutpassword[index++] = c;
    InPutpassword[index] = '\0';

    SHOW_LCD_PASS();
}


// ----------------------------
//  A/B ??i ch? ?? hi?n th?
// ----------------------------
void PASSSTATUS(void) {
    if (numberValue == 'A')
        Showpass = true;
    else if (numberValue == 'B')
        Showpass = false;

    SHOW_LCD_PASS();
}
