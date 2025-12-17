/*
 * File CARDRIVER.h
 */
/*
 RD7  RB6         RD5         RD4          RD3    RD2   RD1   RD0 
  x  drivercar  autocar       NGAT         LPWM   RPWM  LPWM  RPWM
                                           Phai   Phai  Trái  Trái
 */

#define MoveForward     0x05 //PORTD=0x05 xe tien 
#define MoveBackward    0x0A //PORTD=0x0A xe lùi 
#define TurnRight       0x09 //PORTD=0x09 xe xoay phai 
#define TurnLeft        0x06 //PORTD=0x06 xe xoay trái 
#define MoveRight       0x01 //PORTD=0x01 xe ti?n ph?i 
#define MoveLeft        0x04 //PORTD=0x04 xe ti?n trái

void Status_Car(unsigned char status, unsigned int sp1, unsigned int sp2);
void Car_Forward(unsigned int pwmL, unsigned int pwmR); //only use to line tracking  
extern bool autocar ;
extern bool drivercar;