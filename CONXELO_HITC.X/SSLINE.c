/*
 * File SSLINE.c
 
 */
#include "Piclb_byNK.h"
#include <stdlib.h>
int Error = 0;
static int last_Error = 0;
static unsigned int lost_cnt = 0;
// ================== HÀM GI?I H?N PWM ==================
//----------Ch?ng l?ch h??ng-----------

unsigned char limit_pwm(int val) {
    if (val > MAX_SPEED) return MAX_SPEED;
    if (val < 0) return 0;
    return val;
}

// ================== ??C C?M BI?N ==================

void read_line_Error(void) {
    int found = 0;
    if (RB3 == 1 && RB2 == 1) {
        Error = 0;
        found = 1;
    } else if (RB5 == 1) {
        Error = -4;
        found = 1;
    } else if (RB0 == 1) {
        Error = 4;
        found = 1;
    } else if (RB4 == 1) {
        Error = -2;
        found = 1;
    } else if (RB1 == 1) {
        Error = 2;
        found = 1;
    } else if (RB3 == 1) {
        Error = -1;
        found = 1;
    } else if (RB2 == 1) {
        Error = 1;
        found = 1;
    }

    if (found) {
        last_Error = Error;
        lost_cnt = 0;

    } else {
        Error = last_Error;
        lost_cnt++;
    }

}



// ================== ?I?U KHI?N ??NG C? ==================

void motor_control(void) {

    int pwmL, pwmR;
    int correction = KP * Error;
    // ======  M?T LINE ? QUAY THEO H??NG CU?I ======
    if (lost_cnt > LOST_LIMIT) {
        if (last_Error > 0)
            Status_Car(TurnRight, TURN_SPEED, TURN_SPEED);
        else
            Status_Car(TurnLeft, TURN_SPEED, TURN_SPEED);
        return;
    }
    // ======  PID TH??NG ======
    pwmL = BASE_SPEED - correction;
    pwmR = BASE_SPEED + correction + MOTOR_R_COMP;

    pwmL = limit_pwm(pwmL);
    pwmR = limit_pwm(pwmR);
    // ======  L?CH L?N ? KHÓA BÁNH ======
    if (abs(Error) >= 2) {
        if (Error > 0)
            Status_Car(TurnRight, pwmL, pwmR);
        else if (Error < 0)
            Status_Car(TurnLeft, pwmL, pwmR);
        return;
    } else
        Car_Forward(pwmL, pwmR);
}