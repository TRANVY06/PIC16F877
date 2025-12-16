#include <Servo.h>
#include <Wire.h>
#include <PS2X_lib.h>

Servo truc_chinh;
Servo truc_nang;
Servo truc_keo;
Servo gap;

#define PS2_DAT 13      // data
#define PS2_CMD 11      //command
#define PS2_CS 10       // attention
#define PS2_CLK 12      //clock
#define NGAT_PIC 9      //interrupt in pic
#define moveForward 8   //Go ahead
#define moveBackward 7  //Go back
#define turnRight 6     //turnRight
#define turnLeft 5      //turnLeft
#define AUTODRIVER 4    //The car's condition is auto run by sensor line
#define CARDRIVER 3     //The car's condition drive by PS2
#define SPEED 2         //The speed of the car
#define TRUC_CHINH A0
#define TRUC_NANG A1
#define TRUC_KEO A2
#define GAP A3
//#define pressures   true
#define pressures false
//#define rumble      true
#define rumble false
PS2X ps2x;  // tạo PS2 điều khiển lớp
int error = 0;
byte type = 0;
byte vibrate = 0;

bool Ps2 = false;
bool Auto = false;

void setup() {
  Serial.begin(57600);
  pinMode(NGAT_PIC, OUTPUT);
  pinMode(moveForward, OUTPUT);
  pinMode(moveBackward, OUTPUT);
  pinMode(turnRight, OUTPUT);
  pinMode(turnLeft, OUTPUT);
  pinMode(AUTODRIVER, OUTPUT);
  pinMode(CARDRIVER, OUTPUT);
  pinMode(SPEED, OUTPUT);
  error = ps2x.config_gamepad(PS2_CLK, PS2_CMD, PS2_CS, PS2_DAT, pressures, rumble);
  if (error == 0) {
    Serial.print("Đã tìm thấy bộ điều khiển ");
    Serial.print("pressures = ");
    if (pressures)
      Serial.println("true ");
    else
      Serial.println("false");
    Serial.print("rumble = ");
    if (rumble)
      Serial.println("true)");
    else
      Serial.println("false");
    Serial.println("Hãy thử tất cả các nút;");
    Serial.println("giữ L1 hoặc R1 sẽ in ra các giá trị analog.");
  } else if (error == 1)
    Serial.println("Không kết nối đc, thử lại...");

  else if (error == 2)
    Serial.println("Bộ điều khiển tìm thấy nhưng không chấp nhận lệnh");

  else if (error == 3)
    Serial.println("Bộ điều khiển từ chối để vào chế độ Pressures ");

  //  Serial.print(ps2x.Analog(1), HEX);
  type = ps2x.readType();
  switch (type) {
    case 0:
      Serial.print("Tay điều khiển không phù hợp ");
      break;
    case 1:
      Serial.print("Đã tìm thấy DualShock ");
      break;
    case 2:
      Serial.print("Đã tìm thấy GuitarHero ");
      break;
    case 3:
      Serial.print("Không dây của Sony DualShock điều khiển tìm thấy ");
      break;
  }
}

void loop() {
  if (error == 1)
    return;
  if (type == 2) {
    ps2x.read_gamepad();
  } else {
    ps2x.read_gamepad(false, vibrate);
    if (ps2x.ButtonPressed(PSB_PINK)) {  //Nhấn nút |_|(PINK) trên PS2 Ngắt toàn độ chế độ của pic
      digitalWrite(NGAT_PIC, HIGH);      //(RB6 trên pic)
      digitalWrite(AUTODRIVER, LOW);
      digitalWrite(CARDRIVER, LOW);
      bool Ps2 = false;
      bool Auto = false;
    }
    if (ps2x.ButtonPressed(PSB_RED)) {  //Nhấn nút O(RED) trên PS2 chuyển chế độ điều khiển bằng PS2
      digitalWrite(AUTODRIVER, LOW);
      digitalWrite(CARDRIVER, HIGH);  //(RD4 trên pic)
      bool Ps2 = true;
      bool Auto = false;
    }
    if (ps2x.ButtonPressed(PSB_BLUE)) {  //Nhấn nút X(BLUE) trên PS2 chuyển chế độ auto
      digitalWrite(AUTODRIVER, HIGH);    //(RD5 trên pic)
      digitalWrite(CARDRIVER, LOW);
      bool Ps2 = false;
      bool Auto = true;
    }
    if (Ps2 == true && Auto == false) {
      ps2x.read_gamepad();
      if (ps2x.ButtonPressed(PSB_L1))
        digitalWrite(moveForward, HIGH);
      else if (ps2x.ButtonPressed(PSB_R1))
        digitalWrite(moveBackward, HIGH);
      else if (ps2x.ButtonPressed(PSB_PAD_RIGHT))
        digitalWrite(turnRight, HIGH);
      else if (ps2x.ButtonPressed(PSB_PAD_LEFT))
        digitalWrite(turnLeft, HIGH);
    } else {
      digitalWrite(moveForward, LOW);
      digitalWrite(moveBackward, LOW);
      digitalWrite(turnRight, LOW);
      digitalWrite(turnLeft, LOW);
    }
  }
}
