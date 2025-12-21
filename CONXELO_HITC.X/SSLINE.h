/*
 * File SSLINE.h
 */

#ifndef SSLINE_H
#define SSLINE_H
// ================== THAM SO CHINH ==================
#define BASE_SPEED     130     // t?c ?? c? b?n
/* Xe ch?y nhanh
 * ? BASE_SPEED (150 ? 180)
 */
#define KP             23    // ?? nh?y qu?o
/* Xe b? l?c 
   ? KP (ví d? 15 ? 10)
 * Xe ôm line y?u 
 * ? KP (15 ? 20)
 */
#define KD              10
#define MAX_SPEED      255
// ================== BIEN TOÀN CUC ==================
#define TURN_SPEED     200
//#define LOST_SPEED     150
#define MOTOR_R_COMP 6
#define LOST_LIMIT  300
int Error;
int base;
int kd_local;
int kp_local;
unsigned char limit_pwm(int val);
void read_line_Error(void);
void motor_control(void);
#endif





