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
    if (val < 10) return 0;
    return val;
}

// ================== ??C C?M BI?N ==================

void read_line_Error(void) {
    int found = 0;
    if (RB3 == 1 && RB2 == 1 && RD0 == 1 ) {
        Error = 7;
        found = 1;
    } else if (RB3 == 1 && RB2 == 1 && RD5 == 1 ) {
        Error = -7;
        found = 1;
    } else if (RB5 == 1) {
        Error = -5;
        found = 1;
    } else if (RB0 == 1) {
        Error = 5;
        found = 1;
    } else if (RB4 == 1) {
        Error = -4;
        found = 1;
    } else if (RB1 == 1) {
        Error = 4;
        found = 1;
    } else if (RB4 == 1 && RB3 == 1) {
        Error = -2;
        found = 1;
    } else if (RB2 == 1 && RB1 == 1) {
        Error = 2;
        found = 1;
    } else if (RB3 == 1) {
        Error = -1;
        found = 1;
    } else if (RB2 == 1) {
        Error = 1;
        found = 1;
    } else if (RB4 == 1 && RB3 == 1 && RB2 == 1) { //GÓC QU?O L?N TRÁI
        Error = -3;
        found = 1;
    } else if (RB1 == 1 && RB3 == 1 && RB2 == 1) { //GÓC QU?O L?N PH?I 
        Error = 3;
        found = 1;
    } else if (RB3 == 1 && RB2 == 1) {
        Error = 0;
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
    int base, kp_local, kd_local;

    int d_error = Error - last_Error;

    // ====== M?T LINE ======
    if (lost_cnt > LOST_LIMIT) {
        if (last_Error > 0) {
            Status_Car(TurnLeft, TURN_SPEED, TURN_SPEED);
            //            if (lost_cnt  == 3000)
            //                Status_Car(MoveForward, LOST_SPEED, LOST_SPEED);
        } else {
            Status_Car(TurnRight, TURN_SPEED, TURN_SPEED);
            //            if (lost_cnt  == 3000)
            //                Status_Car(MoveForward, LOST_SPEED, LOST_SPEED);
        }
        return;
    }

    // ====== CH?N BASE & KP THEO ?? G?T ======
    if (abs(Error) <= 1) {
        base = BASE_SPEED;
        kp_local = KP;
        kd_local = KD;
    } else if (abs(Error) == 7) {
        base = BASE_SPEED - 100; // cua 90°
        kp_local = KP + 3;
        kd_local = KD + 5; // t?ng D khi cua g?t
    } else if (abs(Error) == 2) {
        base = BASE_SPEED - 25;
        kp_local = KP;
        kd_local = KD + 2;
    } else if (abs(Error) == 3) {
        base = BASE_SPEED - 50;
        kp_local = KP + 4;
        kd_local = KD + 5;
    } else if (abs(Error) >= 4 && abs(Error) <= 5) {
        base = BASE_SPEED - 75; // cua 90°
        kp_local = KP + 6;
        kd_local = KD + 6; // t?ng D khi cua g?t
    }

    // ====== PD ======
    int correction = kp_local * Error + kd_local * d_error;

    pwmL = base - correction;
    pwmR = base + correction + MOTOR_R_COMP;

    pwmL = limit_pwm(pwmL);
    pwmR = limit_pwm(pwmR);

    // ====== KHÓA BÁNH CH? KHI R?T G?T ======
    if (abs(Error) >= 2 && abs(Error) % 2 == 0) {
        if (Error > 0)
            Status_Car(TurnRight, pwmR < 10 ? correction : pwmR, pwmL < 50 ? correction : pwmL);
        else
            Status_Car(TurnLeft, pwmR < 10 ? correction : pwmR, pwmL < 50 ? correction : pwmL);
    }
    if (abs(Error) >= 2 && abs(Error) % 2 == 1) {
        if (Error > 0)
            Status_Car(TurnRight, pwmR < 30 ? correction : pwmR, pwmL < 30 ? correction : pwmL);
        else
            Status_Car(TurnLeft, pwmR < 30 ? correction : pwmR, pwmL < 30 ? correction : pwmL);
    } else {
        Car_Forward(pwmL, pwmR);
    }
}
