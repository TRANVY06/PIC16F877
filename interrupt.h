
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> 
#ifdef	__cplusplus

#endif /* __cplusplus */

void __interrupt() isr(void) {
    if (RBIE == 1 && RBIF == 1) {

        read_dataPortB = PORTB & 0b00000110;
        if (read_dataPortB == 0x02) // Check for RB2
            RE2 = 0;
        else if (read_dataPortB == 0x04) // Check for RB1
            RE2 = 1;

        RBIF = 0;
    }
}

void Initialize_interrupt() {
    RBIF = 0;
    RBIE = 1;
    GIE = 1;
    IOCB = 0x07;
}

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */
unsigned int read_dataPortB;



