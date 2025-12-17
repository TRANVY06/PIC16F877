#include "Piclb_byNK.h"

// ====== DÙNG CHO PS2 / MANUAL ======
void Status_Car(unsigned char status, unsigned int sp1, unsigned int sp2) {
    PORTD &= 0xF0;
    PORTD |= status;
    analogWrite_8bits(sp1, sp2);
        /* status==>
    ==>MoveForward     0x05 //PORTD=0x05 xe tien 
       MoveBackward    0x0A //PORTD=0x0A xe lùi 
       TurnRight       0x09 //PORTD=0x09 xe xoay phai 
       TurnLeft        0x06 //PORTD=0x06 xe xoay trai  
       MoveRight       0x01 //PORTD=0x01 xe tie  phai 
       MoveLeft        0x04 //PORTD=0x04 xe tien trái
     */
}

// ====== DÙNG RIÊNG CHO LINE FOLLOWER ======
void Car_Forward(unsigned int pwmL, unsigned int pwmR) {
    PORTD &= 0xF0;
    PORTD |= MoveForward;
    analogWrite_8bits(pwmL, pwmR);
}
