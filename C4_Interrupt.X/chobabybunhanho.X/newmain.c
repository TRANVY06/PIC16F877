/*
 * File:   newmain.c
 * Author: TranVy
 *
 * Created on December 7, 2025, 6:15 PM
 */

#include "newxc8_header.h"

void initU()//UART
{
    TRISC6 = 0; // TX
    TRISC7 = 1; // RX

    SYNC = 0; // Asynchronous
    SPEN = 1; // Enable serial port
    
    BRG16 = 0;
    BRGH = 1; // High speed
    SPBRG = 25; // 9600 baud @ 20MHz (n?u b?n dùng 8MHz thì báo tôi)

    TX9 = 0;
    TXEN = 1; // Enable transmit
    CREN = 1;
}

void send(char data)//SEND
{
    while (!TXIF); // ??i buffer r?ng
    TXREG = data;
}

void sendString(char *str) {
    while (*str != '\0') {
        send(*str);
        str++;
    }
}

void ADCinit() {
    ADCON0 = 0X41;
    ADCON1 = 0X00;
}

unsigned int ADCread(unsigned char pin) {
    if (pin > 7) {
        return 0;
    }
    ADCON0 &= 0XC5;
    ADCON0 |= pin << 3;
    __delay_ms(2);
    GO_DONE = 1;
    while (GO_DONE);
    return ADRESH;
}

void main(void) {
    ADCinit();
    initU();
    PORTB = 0X00;
    TRISB = 0X00;
    while (1) {
        if (ADCread(0) > 100) {
            PORTB = 0XFF;
        } else {
            PORTB = 0X00;
        }
        unsigned int value = ADCread(0);
        char buff[20];
        sprintf(buff, "khoangcach: %u cm\n", value);
        sendString(buff);
        __delay_ms(0);

    }
}
