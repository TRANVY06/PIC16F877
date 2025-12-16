/*
 RD7  RB6     RD5              RD4       RD3    RD2   RD1   RD0 
  x    x    drivercar       autocar      LPWM   RPWM  LPWM  RPWM
                                         Phai   Phai  Trái  Trái
 */

#define MoveForward     0x05 //PORTD=0x05 xe tien 
#define MoveBackward    0x0A //PORTD=0x0A xe lùi 
#define TurnRight       0x09 //PORTD=0x09 xe xoay phai 
#define TurnLeft        0x06 //PORTD=0x06 xe xoay trái 


extern bool autocar = false;
extern bool drivercar = false;