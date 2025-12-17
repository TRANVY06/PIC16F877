/*
 * File SSLINE.h
 */
// ================== THAM SO CHINH ==================
#define BASE_SPEED     140     // t?c ?? c? b?n
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
// ================== BIEN TOÀN CUC ==================
#define TURN_SPEED     160
#define MOTOR_R_COMP 6
#define LOST_LIMIT  6   
#ifndef SSLINE_H
#define SSLINE_H

extern int Error;

#endif

unsigned char limit_pwm(int val);
void read_line_Error(void);
void motor_control(void);



