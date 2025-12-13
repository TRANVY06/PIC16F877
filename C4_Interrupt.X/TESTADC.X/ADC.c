#include "main.h"

void ADC_Init() {
    ADCON0 = 0x41;
    ADCON1 = 0x00;
}

unsigned int ADC_Read(unsigned char channel) {
    if (channel > 7)
        return 0;
    ADCON0 &= 0xC5;
    ADCON0 |= channel << 3;
    __delay_ms(2);
    GO_DONE = 1;
    while (GO_DONE);
    return (ADRESH);
}
//    PORTB = 0X00;
//    TRISB = 0X00;
//    while(1)
//    {
//        RB0 = ~RB0;
//        __delay_ms(200);
//    }
//}
