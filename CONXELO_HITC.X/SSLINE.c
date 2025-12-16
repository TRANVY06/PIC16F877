#include "Piclb_byNK.h"

unsigned int Error=0;
// ================== HÀM GI?I H?N PWM ==================
//----------Ch?ng l?ch h??ng-----------

void Bu_lech(void) {
    // bù l?ch ph?i
    __delay_us(2000);
    RD1 = 0; // t?t bánh trái r?t ng?n
    __delay_us(50);
    RD1 = 1;
}

unsigned char limit_pwm(int val) {
    if (val > MAX_SPEED) return MAX_SPEED;
    if (val < 0) return 0;
    return val;
}

// ================== ??C C?M BI?N ==================

void read_line_Error(void) {
    Error = 0;

    if (RB5) Error -= 6; // ngoài cùng trái
    if (RB5 && RB3) Error -= 4;
    if (RB3) Error -= 3; // trái trong
    if (RB2 && RB3) Error -= 2;
    if (RB2) Error -= 1; // tâm trái

    if (RB1 && RB2) Error = 0;

    if (RB1) Error += 1; // tâm ph?i
    if (RB1 && RB0) Error += 2;
    if (RB0) Error += 3; // ph?i trong
    if (RB4 && RB0) Error += 4;
    if (RB4) Error += 6; // ngoài cùng ph?i

}

// ================== ?I?U KHI?N ??NG C? ==================

void motor_control(void) {
    unsigned char speed;

    speed = BASE_SPEED + KP * abs(Error);
    speed = limit_pwm(speed);

    analogWrite_8bits(speed, 0);

    if (Error == 0) {
 
        //        Bu_lech();
    } else if (Error > 0) { // l?ch ph?i

    } else if (Error < 0) { // l?ch trái

    }
}