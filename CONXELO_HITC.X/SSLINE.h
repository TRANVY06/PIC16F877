
//#include "Piclb_byNK.h"
// ================== THAM S? CH?NH ==================
#define BASE_SPEED     150     // t?c ?? c? b?n
/* Xe ch?y nhanh
 * ? BASE_SPEED (150 ? 180)
 */
#define KP             20      // ?? nh?y qu?o
/* Xe b? l?c 
   ? KP (ví d? 15 ? 10)
 * Xe ôm line y?u 
 * ? KP (15 ? 20)

 */
#define MAX_SPEED      255
// ================== BI?N TOÀN C?C ==================
#ifndef SSLINE_H
#define SSLINE_H

extern unsigned int Error;

#endif
void Bu_lech(void);
unsigned char limit_pwm(int val);
void read_line_Error(void);
void motor_control(void);
