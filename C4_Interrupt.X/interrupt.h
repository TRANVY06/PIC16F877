
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H
#include "stdbool.h"
#include <xc.h> 

#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */

    //CODE HERE
    unsigned int read_dataPortB;

    void __interrupt() isr(void) {
        
        if (RBIE == 1 && RBIF == 1) {

            read_dataPortB = PORTB & 0b00000001;
            if (read_dataPortB == 0x01) { // Check for RB2
                RE2 = 1;
                
            }
        }
    }

    void Initialize_interrupt() {
        RBIF = 0;
        RBIE = 0;
        GIE = 0;
        IOCB = 0;
    }

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */

